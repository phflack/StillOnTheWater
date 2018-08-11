using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
// Note that the order of this enum list matters.
// e.g. inspecting and offering should occur later than requesting, and later in this script I compare 
// current state > HOLDINGOUTHAND_REQUESTING and so on, to determine of requesting has happened yet.
public enum SPECTRE_ANIM_STATE
{
    IDLE,
    WAVING,
    HOLDINGOUTHAND_REQUESTING,
    INSPECTING,
    HOLDINGOUTHAND_OFFERING,
    GONE
}

[RequireComponent(typeof(Animator))]
public class SpectreAnimationControl : MonoBehaviour {
    // vars referring to player distance tracking
    public float beginWavingDistance = 20f;
    public float holdOutHandDistance = 6f;
    public Transform playerTransform;

    // vars facilitating 'trade' (player giving journal, spectre giving tape)
    public GameObject GiftCasette;
    public VRTK.VRTK_SnapDropZone handDropZone;
    public float inspectionTime = 8f;
    GameObject currentSnappedObjectInHand;

    public GameObject[] visualparts;
    public Text text;
    Color clearWhite;

    // cached reference to animator controller
    Animator animator;

    // Current_animation_state is a property so we can automatically update the animator whenever this variable
    // changes, instead of having update the animator immediately after changing this variable, and probably forgetting to do so at least once.
    public SPECTRE_ANIM_STATE current_animation_state;
    public SPECTRE_ANIM_STATE Current_animation_state
    {
        get { return current_animation_state; }
        set {
            current_animation_state = value;
            // Each of the states in the animator controller im working with right now for the spectre transition to the next state at the end of their animation
            // when the variable "stage" is the int that represents the next state. if animations don't trigger consider checking that the variable is still called "stage"
            // or that the transitions still look at it!
            animator.SetInteger("stage", (int)current_animation_state);
        }
    }
    // Use this for initialization
    void Start () {
        animator = GetComponent<Animator>();
        // TODO: find out how to get snap events instead of constantly monitoring the snapped object
        //    state for changes.
        currentSnappedObjectInHand = handDropZone.GetCurrentSnappedObject();
        SetIdle();
        clearWhite = Color.white;
        clearWhite.a = 0f;
        text.color = clearWhite;
    }

    // Update is called once per frame
    // allocated-once variables
    float distanceFromPlayer;
    GameObject newestSnappedObject;
    void Update () {
        // 1: update animations according to distance from player
        distanceFromPlayer = Vector3.Distance(transform.position, playerTransform.position);
        // Checking the smaller distance first to avoid multiple comparisons
        if (distanceFromPlayer < holdOutHandDistance)
        {
            // if the spectre isn't already holding out his hand requesting something or any subsequent states, initiate requesting hand.
            // This comparison means, "is the current state before 'requesting' in the sequence?". or "Has the spectre already held out his hand to request the journal".
            // This avoids manually checking for each subequent state individually, but depends on the ordering of the enum list.
            if ((int)Current_animation_state < (int)SPECTRE_ANIM_STATE.HOLDINGOUTHAND_REQUESTING) 
            {
                SetHandHeldOut_Requesting();
            }
        } else if (distanceFromPlayer < beginWavingDistance) {
            // if the player is in the area before interacting with spectre or getting very close (very close means holdOutHandDistance), begin waving at the player.
            if ((int)Current_animation_state < (int)SPECTRE_ANIM_STATE.WAVING)
            {
                SetWaving();
            }
        }

        // 2: during the hand held out states, check for changes to the snapped object ( or lack
        //   there of) of the VRTK drop zone on the spectre's hand.
        if (Current_animation_state == SPECTRE_ANIM_STATE.HOLDINGOUTHAND_REQUESTING) {
            newestSnappedObject = handDropZone.GetCurrentSnappedObject();
            // if the snapped object of this frame is not null but it was last frame, we have a new casette in the player!
            if (currentSnappedObjectInHand == null && newestSnappedObject != null && newestSnappedObject.CompareTag("PlayerGiftToSpectre"))
            {
                newestSnappedObject.GetComponent<Rigidbody>().isKinematic = true;
                newestSnappedObject.GetComponent<Rigidbody>().useGravity = false;
                SetInspecting();
            }
            currentSnappedObjectInHand = newestSnappedObject;
        }

        // we don't do anything here because inspecting ends after a set time, instead of on the completion
        //   of a condition. SetInspecting() triggers a coroutine which calls SetOffering() after a specified number of seconds.
       // if (Current_animation_state == SPECTRE_ANIM_STATE.INSPECTING)
       // {
       // }


        // 2: during the hand held out states, check for changes to the snapped object ( or lack
        //   there of) of the VRTK drop zone on the spectre's hand.
        if (Current_animation_state == SPECTRE_ANIM_STATE.HOLDINGOUTHAND_OFFERING) {
            newestSnappedObject = handDropZone.GetCurrentSnappedObject();
            Debug.Log(currentSnappedObjectInHand);
            // if the snapped object of this frame is  null but it was not last frame, then the player took the object
            if ( newestSnappedObject == null)
            {
//                GiftCasette.GetComponent<Rigidbody>().isKinematic = false;
//                GiftCasette.GetComponent<Rigidbody>().useGravity = true;
               // animator.enabled = false;
                StartCoroutine(FadeOut());
                foreach (GameObject go in visualparts)
                {
                    go.SetActive(false);
                }
                Current_animation_state = SPECTRE_ANIM_STATE.GONE;
            }
        }

    }

    // The following is a set of methods that arer used at the moment an animation is triggered. 
    // I expect to use this to associate speech bubbles or audio cues with the change in the spectre's state.
    // NOTE that each of these methods should only be called when the animation/state is changed, and not during the the animation or state.

    // anything the should happen when Idle is initiated
    private void SetIdle()
    {
        GiftCasette.SetActive(false);
        Current_animation_state = SPECTRE_ANIM_STATE.IDLE;
    }
    // anything that should happen when Waving is Initiated
    private void SetWaving()
    {
        Current_animation_state = SPECTRE_ANIM_STATE.WAVING;
    }
    // anything that should happen when the spectre holds his hand out, expecting the journal
    private void SetHandHeldOut_Requesting()
    {
        StartCoroutine(FadeIn());
        text.text = "TRADE?";
        Current_animation_state = SPECTRE_ANIM_STATE.HOLDINGOUTHAND_REQUESTING;
    }
    // anything that should happen when the spectre brings the journal to his face, inspecting it
    private void SetInspecting()
    {
        Current_animation_state = SPECTRE_ANIM_STATE.INSPECTING;
        StartCoroutine(EndInspectingStateAfterSeconds(inspectionTime));
        StartCoroutine(FadeOut());
    }

    // scheduled transition from inspecting the player's gift to offering the third tape
    private IEnumerator EndInspectingStateAfterSeconds(float _seconds)
    {
        yield return new WaitForSeconds(_seconds);
        GameObject giftTape = handDropZone.GetCurrentSnappedObject();
        handDropZone.ForceUnsnap();
        giftTape.SetActive(false);
        yield return new WaitForSeconds(_seconds/2f);
        SetHandHeldOut_Offering();
    }

    // anything that should happen when the spectre holds his hand out, offering the third tape
    private void SetHandHeldOut_Offering()
    {
        StartCoroutine(FadeIn());
        text.text = "TAKE?";
        // activate the gift casette and snap into the handsnapzone.
        GiftCasette.SetActive(true);
        handDropZone.ForceSnap(GiftCasette);
        currentSnappedObjectInHand = handDropZone.GetCurrentSnappedObject();
        Current_animation_state = SPECTRE_ANIM_STATE.HOLDINGOUTHAND_OFFERING;
    }

    // Using Gizmos to visualize the distances chosen for waving and holding out hand.
    // TODO: find a way to draw the edge of a flat circle
    void OnDrawGizmos()
    {
        Gizmos.color = Color.red;
        Gizmos.DrawWireSphere(transform.position, beginWavingDistance);
        Gizmos.color = Color.magenta;
        Gizmos.DrawWireSphere(transform.position, holdOutHandDistance);
    }


    private IEnumerator FadeIn()
    {
        float _time = 0f;
        while (_time < 1f)
        {
            _time += Time.deltaTime;
            text.color = Color.Lerp(clearWhite, Color.white, Mathf.InverseLerp(0f, 1f, _time));
            yield return new WaitForEndOfFrame();
        }
    }

    private IEnumerator FadeOut()
    {
        float _time = 0f;
        while (_time < 1f)
        {
            _time += Time.deltaTime;
            text.color = Color.Lerp( Color.white, clearWhite, Mathf.InverseLerp(0f, 1f, _time));
            yield return new WaitForEndOfFrame();
        }
    }
}
