using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayAudioOnNewCasetteSnapped : MonoBehaviour {
    public GameObject snappedObject;
    public VRTK.VRTK_SnapDropZone dropzone;
    public AudioSource myAudioSource;

	// Use this for initialization
	void Start () {
        snappedObject = dropzone.GetCurrentSnappedObject();
	}

    // Update is called once per frame
    void Update()
    {
        GameObject newestSnappedObject = dropzone.GetCurrentSnappedObject();
        // if the snapped object of this frame is not null but it was last frame, we have a new casette in the player!
        if (snappedObject == null && newestSnappedObject != null)
        {
            if (myAudioSource.isPlaying)
            {
                myAudioSource.Stop();
            }
            myAudioSource.clip = newestSnappedObject.GetComponent<CassetteAudio>().myAudioClip;
            myAudioSource.Play();
        }
        else if (snappedObject != null && newestSnappedObject == null)
        {
            if (myAudioSource.isPlaying)
            {
                myAudioSource.Stop();
            }
        }
        snappedObject = newestSnappedObject;
    }
}
