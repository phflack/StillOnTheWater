using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TrackVelocityFromTransformPosition : MonoBehaviour {
	Vector3 lastPosition;
	public Vector3 currentVelocity;

	// Use this for initialization
	void Start () {
		lastPosition = transform.position;	
	}
	
	// Update is called once per frame
	void Update () {
		currentVelocity = (transform.position - lastPosition) / Time.deltaTime;
		lastPosition = transform.position;
	}
}
