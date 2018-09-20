using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using VRTK;

public class ActivateJointsWhileGrabbing : MonoBehaviour {
	VRTK_InteractableObject vrtkobj;
	public GameObject jointObject;

	Coroutine realignRoutine;

	private void OnEnable()
	{
		vrtkobj = GetComponent<VRTK_InteractableObject>();
		vrtkobj.InteractableObjectGrabbed   -= OnSelfGrabbed;
		vrtkobj.InteractableObjectUngrabbed -= OnSelfUnGrabbed;
		
		vrtkobj.InteractableObjectGrabbed   += OnSelfGrabbed;
		vrtkobj.InteractableObjectUngrabbed += OnSelfUnGrabbed;
		jointObject.SetActive(false);
	}
	
	private void OnDisable()
	{
		vrtkobj.InteractableObjectGrabbed   -= OnSelfGrabbed;
		vrtkobj.InteractableObjectUngrabbed -= OnSelfUnGrabbed;
	}

	private void OnSelfGrabbed(object sender, InteractableObjectEventArgs args) {
		jointObject.SetActive(true);
	}
	private void OnSelfUnGrabbed(object sender, InteractableObjectEventArgs args) {
		jointObject.SetActive(false);
	}
}
