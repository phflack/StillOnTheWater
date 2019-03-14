using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using VRTK;

public class Artifact : MonoBehaviour {
    public MatchPositionAndRotationOverTime mover;
    public ArtifactManager parent;

	// Use this for initialization
	void Start () {
        GetComponent<VRTK_InteractableObject>().InteractableObjectUngrabbed += new InteractableObjectEventHandler(addThis);
    }

    public void addThis(object sender, InteractableObjectEventArgs e)
    {
        parent.addArtifact(this);
    }

    // Update is called once per frame
    void Update () {
		
	}
}
