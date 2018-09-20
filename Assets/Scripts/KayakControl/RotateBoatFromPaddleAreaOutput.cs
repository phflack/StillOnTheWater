using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RotateBoatFromPaddleAreaOutput : MonoBehaviour {
	public TrackPaddleInWater leftPaddleArea, rightPaddleArea;
	public float TorqueForceMultiplier = .1f;
	public Rigidbody rigidBody;
	public bool scaleWithRigidbodyForwardVelocity = false;

	public bool LeftRotationPrimed, RightRotationPrimed;

	float leftAdditiveTurnStrength, rightAdditiveTurnStrength;

	// Use this for initialization
	void Start () {
		leftPaddleArea.OnEndStroke += LeftAreaStroke;
		rightPaddleArea.OnEndStroke += RightAreaStroke;
	}
	int prevPaddleSign = 0;
	
	// Update is called once per frame
	void Update () {
		if (leftPaddleArea.smoothedMotionVector.magnitude > rightPaddleArea.smoothedMotionVector.magnitude) {
			// use left is left is stronger
			
			// naively focus on the z comoponent
			float z = leftPaddleArea.smoothedMotionVector.z;
			// if (!LeftRotationPrimed) {
				z *= leftAdditiveTurnStrength;
			// }
			// positive z is backward paddling, negative z is forward paddling.
			if (scaleWithRigidbodyForwardVelocity && rigidBody.velocity.magnitude > 0) {
				z *= Mathf.Clamp01(1f-rigidBody.transform.InverseTransformDirection(rigidBody.velocity).z / 4f);
			}
			rigidBody.AddRelativeTorque(new Vector3(0f, z * -TorqueForceMultiplier, 0f), ForceMode.Force);
			prevPaddleSign = -1;
		} else {
			// user right

			// naively focus on the z comoponent
			float z = rightPaddleArea.smoothedMotionVector.z;
			// if (!RightRotationPrimed) {
				z *= rightAdditiveTurnStrength;
			// }
			// positive z is backward paddling, negative z is forward paddling.
			if (scaleWithRigidbodyForwardVelocity && rigidBody.velocity.magnitude > 0) {
				z *= Mathf.Clamp01(1f-rigidBody.transform.InverseTransformDirection(rigidBody.velocity).z / 4f);
			}
			rigidBody.AddRelativeTorque(new Vector3(0f, z * TorqueForceMultiplier, 0f), ForceMode.Force);
			prevPaddleSign = 1;
		}
	}

	private void LeftAreaStroke() {
		// LeftRotationPrimed = true;
		// RightRotationPrimed = false;
		leftAdditiveTurnStrength += .3f;
		rightAdditiveTurnStrength = .3f;
	}
	private void RightAreaStroke() {
		// RightRotationPrimed = true;
		// LeftRotationPrimed = false;
		leftAdditiveTurnStrength = .3f;
		rightAdditiveTurnStrength += .3f;
	}
}
