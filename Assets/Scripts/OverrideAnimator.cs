using System.Collections;
using System.Collections.Generic;
using UnityEngine;

// The unity timeline post-extrapolate function is continuing to contrain my object's position even when set to None, so here's a simple script
// to disable an animator on Start and reenable it on Disable.
public class OverrideAnimator : MonoBehaviour {
    public Animator target;
	// Use this for initialization
	void Start () {
        target.enabled = false;
	}

    // this shouldn't be becessary, but, well.
    private void Update()
    {
        target.enabled = false;
    }

    // Update is called once per frame
    void OnDisable () {
        target.enabled = true;
	}
}
