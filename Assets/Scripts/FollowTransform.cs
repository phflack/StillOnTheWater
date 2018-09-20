using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FollowTransform : MonoBehaviour {
	public Transform target;
	public bool followPosition = true;
	public bool followRotation = false;
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		if (followPosition) {
			transform.position = target.position;
		}
		if(followRotation) {
			transform.rotation = target.rotation;
		}
	}
}
