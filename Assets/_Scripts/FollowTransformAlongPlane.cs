using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public enum Axis{X, Y, Z}
public class FollowTransformAlongPlane : MonoBehaviour {
	public Transform target;
	public float positionOnAxis;
	public Axis axis = Axis.X;
	// Use this for initialization
	void OnEnable () {
		Vector3 ogPosition = transform.position;
		switch(axis) {
			case Axis.X:
			ogPosition.x = positionOnAxis;
			break;
			case Axis.Y:
			ogPosition.y = positionOnAxis;
			break;
			case Axis.Z:
			ogPosition.z = positionOnAxis;
			break;
		}	
	}
	
	// Update is called once per frame
	void Update () {
		Vector3 targetPositionProject = Vector3.zero;
		switch(axis) {
			case Axis.X:
				Vector3.ProjectOnPlane(target.position - transform.position, Vector3.right);
			break;
			case Axis.Y:
				Vector3.ProjectOnPlane(target.position - transform.position, Vector3.up);
			break;
			case Axis.Z:
				Vector3.ProjectOnPlane(target.position - transform.position, Vector3.forward);
			break;
		}
	}
}
