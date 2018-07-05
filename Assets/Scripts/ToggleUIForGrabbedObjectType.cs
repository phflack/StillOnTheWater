using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ToggleUIForGrabbedObjectType : MonoBehaviour {
	public string decorativeObjectTag = "DecorativeObject";
	public ObjectPlacementAimSelector objPlacementAimSelector;
	// This seems maybe a little less robust? I'm not sure, but it's much easier than accessing VRTK's static references as
	//   well as doing some logic to figure out if this is the left or right controller.
	// We need this to check if the opposite controller is also holding an object of the currently active type. For example, 
	//   if we let go of a decorative object, we would only disable the decorative object UI if the other hand is not holding 
	//   a decorative object too. 
	public VRTK.VRTK_InteractGrab otherController;

	public void OnGrabInteractableObject(object obj, VRTK.ObjectInteractEventArgs args){
		// When an object is picked up, check if it's a decorative object and activate the aimed selector
		if (obj != null && obj.GetType () == typeof(GameObject) && ((GameObject)obj).CompareTag (decorativeObjectTag)) {
			objPlacementAimSelector.gameObject.SetActive (true);
		}
	}

	// TODO: this doesn't match the title of this script but it's the most convenient place to trigger the event
	//     for moving the held object to the selector.
	public void OnUnGrabInteractableObject(object obj, VRTK.ObjectInteractEventArgs args){
		// When an object is picked up, check if it's a decorative object and activate the aimed selector
		if (obj != null && obj.GetType () == typeof(GameObject) && ((GameObject)obj).CompareTag (decorativeObjectTag)) {
			if (otherController.GetGrabbedObject () != null && !otherController.GetGrabbedObject ().CompareTag (decorativeObjectTag)) {
				objPlacementAimSelector.gameObject.SetActive (false);
			}
			if (objPlacementAimSelector.selectedPlacementPoint != null) {
				((GameObject)obj).GetComponent<MoveTowardPlacementPointBehavior> ().BeginMoveTowardPlacementPoint (objPlacementAimSelector.selectedPlacementPoint);
			}
		}
	}
}
