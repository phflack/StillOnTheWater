using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class InteractWithObjects : MonoBehaviour {
	public LayerMask InteractableLayers;
	OutlineMirrorObject LatestInteractableObject;
	public Text InteractableLabel;

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
			}
		} else {
			if (LatestInteractableObject != null) {
				LatestInteractableObject.activeOutlines = false;
				InteractableLabel.text = "";
			}		
		}
	}
}
