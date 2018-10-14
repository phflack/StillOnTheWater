using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LimitVelocity : MonoBehaviour {
	public Vector3 LocalLimits;
	Rigidbody rb;
	// Use this for initialization
	void Start () {
		rb = GetComponent<Rigidbody>();
	}
	
	// Update is called once per frame
	void Update () {
		Vector3 currentVelocity = transform.InverseTransformDirection(rb.velocity);
		rb.velocity = transform.TransformDirection(Vector3.Max(Vector3.Min(currentVelocity, LocalLimits), -LocalLimits));
	}
}
