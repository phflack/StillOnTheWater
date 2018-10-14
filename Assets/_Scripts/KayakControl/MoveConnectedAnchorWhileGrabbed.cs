using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using VRTK;
public class MoveConnectedAnchorWhileGrabbed : MonoBehaviour {
	VRTK_InteractableObject vrtkobj;
	public bool MoveX, MoveY, MoveZ;
	ConfigurableJoint joint;

	Coroutine realignRoutine;

	private void OnEnable()
	{
		vrtkobj = GetComponent<VRTK_InteractableObject>();
		joint = GetComponent<ConfigurableJoint>();
		vrtkobj.InteractableObjectGrabbed   -= OnSelfGrabbed;
		vrtkobj.InteractableObjectUngrabbed -= OnSelfUnGrabbed;
		
		vrtkobj.InteractableObjectGrabbed   += OnSelfGrabbed;
		vrtkobj.InteractableObjectUngrabbed += OnSelfUnGrabbed;
	}
	
	private void OnDisable()
	{
		vrtkobj.InteractableObjectGrabbed   -= OnSelfGrabbed;
		vrtkobj.InteractableObjectUngrabbed -= OnSelfUnGrabbed;
	}
	// Update is called once per frame
	void Update () {
	}

	private void OnSelfGrabbed(object sender, InteractableObjectEventArgs args) {
		if (realignRoutine != null) {StopCoroutine(realignRoutine);}
		realignRoutine = StartCoroutine(RealignConnectedAnchor());
	}
	private void OnSelfUnGrabbed(object sender, InteractableObjectEventArgs args) {
		if (realignRoutine != null) {StopCoroutine(realignRoutine);}
	}

	private IEnumerator RealignConnectedAnchor() {
		while (true) {
			Vector3 newAnchor = joint.connectedAnchor;
			if (MoveX) {
				newAnchor.x = transform.localPosition.x;
			}
			if (MoveY) {
				newAnchor.y = transform.localPosition.y;
			}
			if (MoveZ) {
				newAnchor.z = transform.localPosition.z;
			}
			joint.connectedAnchor = newAnchor;
			yield return new WaitForEndOfFrame();
		}
	}
}
