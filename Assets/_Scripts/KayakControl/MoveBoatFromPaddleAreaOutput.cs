using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MoveBoatFromPaddleAreaOutput : MonoBehaviour {
	public TrackPaddleInWater leftPaddleArea, rightPaddleArea;
	public Vector3 PushForceScale = new Vector3(3f, 0f, 13f);
	public Rigidbody rigidBody;
	// Use this for initialization
	void Start () {
	}
	
	// Update is called once per frame
	void Update () {
		if (leftPaddleArea.smoothedMotionVector.magnitude > rightPaddleArea.smoothedMotionVector.magnitude) {
			// use left is left is stronger
			
			// naively focus on the z comoponent
			// float z = leftPaddleArea.smoothedMotionVector.z;
			// float x = leftPaddleArea.smoothedMotionVector.x;
			// Debug.Log(x);
			// positive z is backward paddling, negative z is forward paddling.
			// rigidBody.AddRelativeForce(new Vector3(-x * PushForceScale.x, 0f, -z * PushForceScale.z), ForceMode.Force);
			rigidBody.AddRelativeForce(Vector3.Scale(-leftPaddleArea.smoothedMotionVector, PushForceScale), ForceMode.Force);
		} else {
			// user right

			// naively focus on the z comoponent
			// float z = rightPaddleArea.smoothedMotionVector.z;
			// float x = rightPaddleArea.smoothedMotionVector.x;
			
			// Debug.Log(z);
			// positive z is backward paddling, negative z is forward paddling.
			// rigidBody.AddRelativeForce(new Vector3(-x * PushForceScale.x, 0f, -z * PushForceScale.z), ForceMode.Force);
			rigidBody.AddRelativeForce(Vector3.Scale(-rightPaddleArea.smoothedMotionVector, PushForceScale), ForceMode.Force);
		}
	}
}
