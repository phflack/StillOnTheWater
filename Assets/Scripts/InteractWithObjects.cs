using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class InteractWithObjects : MonoBehaviour {
	public LayerMask InteractableLayers;
	OutlineMirrorObject LatestInteractableObject;
	public Text InteractableLabel;

	public KeyCode interactKey;

	// Update is called once per frame
	void Update () {
		RaycastHit hit;
		if (Physics.Raycast (transform.position, transform.forward, out hit, 4f, InteractableLayers)) {
			OutlineMirrorObject newObject = hit.collider.gameObject.GetComponent<OutlineMirrorObject> ();
			if (newObject != null && newObject != LatestInteractableObject) {
				if (LatestInteractableObject != null) {
					LatestInteractableObject.activeOutlines = false;
					InteractableLabel.text = "";
				}
				LatestInteractableObject = newObject;
			} else if (LatestInteractableObject != null) {
				LatestInteractableObject.activeOutlines = true;
				InteractableLabel.text = LatestInteractableObject.gameObject.name.ToUpper ();
				if (Input.GetKeyUp (interactKey)) {
					OutlineMirrorObject.AllOutlinesShouldChill = true;
					// this is temrporarily a hard coded viewing rotation for casettes.
					ObjectViewerCamera.instance.SetViewObject (LatestInteractableObject.gameObject, Quaternion.Euler(new Vector3 (5f,180f,-5f)), Vector3.zero);
				}
			}
		} else {
			if (LatestInteractableObject != null) {
				LatestInteractableObject.activeOutlines = false;
				InteractableLabel.text = "";
			}		
		}

		// this is hacky and bad and should be changed when the state changes instead of reflecting a seemingly unrelated variable.
		if (OutlineMirrorObject.AllOutlinesShouldChill) {
			InteractableLabel.text = "";
		}
	}
}
