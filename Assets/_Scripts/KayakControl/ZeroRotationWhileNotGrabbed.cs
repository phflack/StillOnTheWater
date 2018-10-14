using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ZeroRotationWhileNotGrabbed : MonoBehaviour {
	Quaternion startRotation;
	Rigidbody rb;
	VRTK.VRTK_InteractableObject vrtkobj;
	public GameObject relativeTo;
	// Use this for initialization
	void Start () {
		rb = GetComponent<Rigidbody>();
		startRotation = Quaternion.Inverse(relativeTo.transform.rotation) * transform.rotation;
		vrtkobj = GetComponent<VRTK.VRTK_InteractableObject>();
	}
	
	// Update is called once per frame
	void Update () {
		if (!vrtkobj.IsGrabbed()) {
			rb.angularVelocity = Vector3.zero;
			transform.rotation = relativeTo.transform.rotation * startRotation;
		}
	}
}
