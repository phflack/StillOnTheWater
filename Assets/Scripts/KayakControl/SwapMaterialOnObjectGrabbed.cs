using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using VRTK;

public class SwapMaterialOnObjectGrabbed : MonoBehaviour {
	public VRTK.VRTK_InteractableObject grabbableObject;

	public Material ungrabbedMaterial, grabbedMaterial;

	AssociatedPaddleHand associatedPaddleHand;
	// Update is called once per frame
	void Update () {
		if (grabbableObject.IsGrabbed()) {
			associatedPaddleHand = grabbableObject.GetGrabbingObject().GetComponent<AssociatedPaddleHand>();
			if (associatedPaddleHand.paddleHandMeshRend != null) {
				associatedPaddleHand.paddleHandMeshRend.material = grabbedMaterial;
			} else if (associatedPaddleHand.paddleHandSkinnedMeshRend != null) {
				associatedPaddleHand.paddleHandSkinnedMeshRend.material = grabbedMaterial;
			}
			if (associatedPaddleHand.normalHandMeshRend != null) {
				associatedPaddleHand.normalHandMeshRend.enabled = false;
			} else if (associatedPaddleHand.normalHandSkinnedMeshRend != null) {
				associatedPaddleHand.normalHandSkinnedMeshRend.enabled = false;
			}
		} else  {
			if (associatedPaddleHand != null) {
				if (associatedPaddleHand.paddleHandMeshRend != null) {
					associatedPaddleHand.paddleHandMeshRend.material = ungrabbedMaterial;
				} else if (associatedPaddleHand.paddleHandSkinnedMeshRend != null) {
					associatedPaddleHand.paddleHandSkinnedMeshRend.material = ungrabbedMaterial;
				}
				if (associatedPaddleHand.normalHandMeshRend != null) {
					associatedPaddleHand.normalHandMeshRend.enabled = true;
				} else if (associatedPaddleHand.normalHandSkinnedMeshRend != null) {
					associatedPaddleHand.normalHandSkinnedMeshRend.enabled = true;
				}
				associatedPaddleHand = null;
			}
		}
	}
}
