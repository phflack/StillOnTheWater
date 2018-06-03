using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ApplyForceFromPaddleTracker : MonoBehaviour {
	Vector3 cool_velocity;
	public float drag;
	public Transform noseRefTransform;


	public trackPaddleInWater[] tracking;
//	private Rigidbody rb;
	public float resultantForceMultiplier = .1f;
	// Use this for initialization
	void Start () {
//		rb = GetComponent<Rigidbody> ();
		cool_velocity = Vector3.zero;
	}
	
	// Update is called once per frame
	void FixedUpdate () {
		Vector3 totalForce = Vector3.zero;
		foreach (trackPaddleInWater p in tracking) {
			Debug.Log("Why?");
			totalForce += p.totalMotion * -resultantForceMultiplier;
		}
		cool_velocity += totalForce;
		cool_velocity -= drag * Vector3.SqrMagnitude(cool_velocity) * cool_velocity.normalized;
		if (cool_velocity.magnitude <= .01) {
			cool_velocity = Vector3.zero;
		}
		
//		rb.velocity += totalForce;
	}

	void Update() {
		transform.position = transform.position + new Vector3(cool_velocity.x, 0f, cool_velocity.z) * Time.deltaTime;
	}

	void OnDrawGizmos() {
		Gizmos.color = Color.red;
		Gizmos.DrawRay (noseRefTransform.position, new Vector3(cool_velocity.x, 0f, cool_velocity.z));
	}
}
