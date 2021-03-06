﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AlignMomentumAlongZAxis : MonoBehaviour {
	
	public float strength;
	public Rigidbody body;
	// Use this for initialization
	void Start () {
		
	}
	
	void Update () {
	// Update is called once per frame
		Vector3 currentVelocity = body.velocity;
		if (Mathf.Abs(transform.InverseTransformDirection(currentVelocity).x) < Mathf.Abs(transform.InverseTransformDirection(currentVelocity).z)) {
			Vector3 newVelocity;
			float interpolateValue = Mathf.Clamp01(currentVelocity.magnitude / 4f);
			if (transform.InverseTransformDirection(currentVelocity).z < 0) {
				newVelocity = Vector3.Lerp(currentVelocity, -body.transform.forward * currentVelocity.magnitude, Mathf.Clamp01(interpolateValue * strength));
			} else {			
				newVelocity = Vector3.Lerp(currentVelocity, body.transform.forward * currentVelocity.magnitude, Mathf.Clamp01(interpolateValue * strength));
			}
			body.velocity = newVelocity;
		}
	}
}
