using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MoveBoatFromPaddleAreaOutput : MonoBehaviour {
	public TrackPaddleInWater leftPaddleArea, rightPaddleArea;
	public float PushForceMultiplier = .1f;
	public Rigidbody rigidBody;
	// Use this for initialization
	void Start () {
	}
	
	// Update is called once per frame
	void Update () {
		if (leftPaddleArea.smoothedMotionVector.magnitude > rightPaddleArea.smoothedMotionVector.magnitude) {
			// use left is left is stronger

			// naively focus on the z comoponent
			float z = leftPaddleArea.smoothedMotionVector.z;
			// Debug.Log(z);
			// positive z is backward paddling, negative z is forward paddling.
			rigidBody.AddRelativeForce(new Vector3(0f, 0f, -z * PushForceMultiplier), ForceMode.Force);
		} else {
			// user right

			// naively focus on the z comoponent
			float z = rightPaddleArea.smoothedMotionVector.z;
			// Debug.Log(z);
			// positive z is backward paddling, negative z is forward paddling.
			rigidBody.AddRelativeForce(new Vector3(0f, 0f, -z * PushForceMultiplier), ForceMode.Force);
		}
	}
}
