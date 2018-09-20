using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PaddleTutorialManager : MonoBehaviour {
	public PaddleGripManager gripManager;
	public Fade_GenericGroup reachOut, leftButtonPrompt, rightButtonPrompt, moveYourArms;
	public float stillnessThreshold = .5f;
	public float HandPromptDelay = 10f;
	public float ArmsPromptDelay = 8f;
	public Rigidbody kayakRb;

	Coroutine TimedHandPrompts;
	private void Start()
	{
		gripManager.PaddleFullyGrabbed -= PaddleFullyGrabbed;
		gripManager.PaddleFullyGrabbed += PaddleFullyGrabbed;
		gripManager.PaddleFullyUngrabbed -= PaddleFullyUngrabbed;
		gripManager.PaddleFullyUngrabbed += PaddleFullyUngrabbed;
		leftButtonPrompt.gameObject.SetActive(false);
		rightButtonPrompt.gameObject.SetActive(false);
		reachOut.gameObject.SetActive(true);
		moveYourArms.gameObject.SetActive(false);
		TimedHandPrompts = StartCoroutine(ActivateHandPromptsAfterTime());
	}
	// Update is called once per frame
	Coroutine ArmPromptRoutine;
	void Update () {
		// reachOut.gameObject.SetActive(!gripManager.RhGrabbed && !gripManager.LhGrabbed);
		// leftButtonPrompt.gameObject.SetActive(!gripManager.LhGrabbed);
		// rightButtonPrompt.gameObject.SetActive(!gripManager.RhGrabbed);
		// moveYourArms.gameObject.SetActive(gripManager.RhGrabbed && gripManager.LhGrabbed);
		if((gripManager.RhGrabbed && gripManager.LhGrabbed) ) {
			if (kayakRb.velocity.magnitude > stillnessThreshold) {
				if (ArmPromptRoutine != null) {
					StopCoroutine(ArmPromptRoutine);
					if (moveYourArms.gameObject.activeInHierarchy) {
						moveYourArms.PlayFadeEffect(FadeEffect.FadeOut);
					}
					ArmPromptRoutine = null;
				}
			} else {
				if (ArmPromptRoutine == null) {
					ArmPromptRoutine = StartCoroutine(ReactivateArmsPromptAfterTime());
				}
			}
		}
	}
	bool waitingForFullGrab = false;
	private void PaddleFullyGrabbed() {
		// Debug.Log("PaddleFullyGrabbed");
		if (TimedHandPrompts!= null){StopCoroutine(TimedHandPrompts);}
		// leftButtonPrompt.gameObject.SetActive(false);
		rightButtonPrompt.gameObject.SetActive(false);
		reachOut.gameObject.SetActive(false);
		moveYourArms.gameObject.SetActive(true);
		waitingForFullGrab = false;
	}

	private IEnumerator ActivateHandPromptsAfterTime() {
		yield return new WaitForSeconds(HandPromptDelay);
		waitingForFullGrab = true;
		// leftButtonPrompt.gameObject.SetActive(true);
		rightButtonPrompt.gameObject.SetActive(true);
		reachOut.gameObject.SetActive(false);
		moveYourArms.gameObject.SetActive(false);
		TimedHandPrompts = null;
	}

	private void PaddleFullyUngrabbed() {
		// Debug.Log("PaddleFullyUngrabbed");
		if (!waitingForFullGrab) {
			if (TimedHandPrompts != null) {StopCoroutine(TimedHandPrompts);}
			TimedHandPrompts = StartCoroutine(ActivateHandPromptsAfterTime());
			// leftButtonPrompt.gameObject.SetActive(false);
			rightButtonPrompt.gameObject.SetActive(false);
			reachOut.gameObject.SetActive(true);
			moveYourArms.gameObject.SetActive(false);
		}
		if(ArmPromptRoutine != null) {
			StopCoroutine(ArmPromptRoutine);
			ArmPromptRoutine = null;
		}
	}

	private IEnumerator ReactivateArmsPromptAfterTime() {
		yield return new WaitForSeconds(ArmsPromptDelay);
		if((gripManager.RhGrabbed && gripManager.LhGrabbed) ) {
			moveYourArms.gameObject.SetActive(true);
		}
		ArmPromptRoutine = null;
	}
}
