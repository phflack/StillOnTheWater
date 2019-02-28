using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ArtifactSpot : MonoBehaviour {

    public GameObject associatedArtifact;
    public ArtifactManager parent;
    public string characterName;

	// Use this for initialization
	void Start () {
        associatedArtifact.GetComponent<VRTK.VRTK_InteractableObject>().InteractableObjectUngrabbed += new VRTK.InteractableObjectEventHandler(handleDrop);

    }
	
	void handleDrop (object o, VRTK.InteractableObjectEventArgs e) {
        associatedArtifact.transform.position = transform.position;
        associatedArtifact.transform.parent = transform;
        associatedArtifact.GetComponent<VRTK.VRTK_InteractableObject>().isGrabbable = false;
        parent.addObject(characterName, associatedArtifact);

    }
}
