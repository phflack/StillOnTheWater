using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class IncreaseAngularDragFromZVelocity : MonoBehaviour {
	Rigidbody rb;
	public float strength = .3f;
	float initialAngularDrag;
	// Use this for initialization
	void Start () {
		rb = GetComponent<Rigidbody>();
		initialAngularDrag = rb.angularDrag;
	}
	
	// Update is called once per frame
	void Update () {
		float zVelocity = Mathf.Abs(transform.InverseTransformDirection(rb.velocity).z);
		rb.angularDrag = initialAngularDrag + strength * zVelocity;
	}
}
