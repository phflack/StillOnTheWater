using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CollectibleItemMotionController : MonoBehaviour {
	public Transform home, orbiting, following, player;
	public bool collected;

	// Use this for initialization
	void Start () {
		
	}
	
	Vector3 currentVelocity = Vector3.zero;
	public float maxSpeed = 8f;
	public float maxSpeedRepelled = 20f;
	public float smoothTime = .8f;
	public float smoothTimeRepelled = .1f;
	// Update is called once per frame
	void LateUpdate () {
		Transform target = home;
		if (collected) {
			target = following;
			// if (Vector3.Distance(transform.position, player.position) < 4f) {
			// 	target = orbiting;
			// }
		}
		if(Vector3.Distance(transform.position, target.position) > .01f) {
			if (Vector3.Distance(transform.position, player.position) < 2f) {
				transform.position = Vector3.SmoothDamp(transform.position, target.position, ref currentVelocity, smoothTimeRepelled, maxSpeedRepelled);	
			} else {
				transform.position = Vector3.SmoothDamp(transform.position, target.position, ref currentVelocity, smoothTime, maxSpeed);
			}	
		}
	}
}
