using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PushOffDirt : MonoBehaviour {
	public Transform refTransform;
	public Rigidbody target;
	public Vector3 direction = Vector3.right;
	public float raycastDistance = 2f;
	public LayerMask terrainLayers;
	Vector3 lastPos;
	private void OnEnable()
	{
		lastPos = refTransform.position;
	}
	// Update is called once per frame
	void LateUpdate () {
		RaycastHit hit;
		if (Physics.Raycast(transform.position, transform.TransformDirection(direction), out hit, raycastDistance, terrainLayers)) {
			Vector3 translation = -(refTransform.position - lastPos).XZVector(); // hand delta
			translation *= Mathf.Clamp01(Vector3.Dot(translation.normalized, hit.normal));
			//Debug.Log(Vector3.Dot(translation, hit.normal));
			Debug.DrawRay(hit.point, hit.normal, Color.red);
			Debug.DrawRay(hit.point, translation.normalized, Color.blue);
			// Debug.Log("pushing " + refTransform.name);
			target.AddForce(translation *300f, ForceMode.Acceleration);
		}
		lastPos = refTransform.position;
	}

	private void OnDrawGizmosSelected()
	{
		Gizmos.color = Color.cyan;
		Gizmos.DrawLine(transform.position, transform.position + transform.TransformDirection(direction) * raycastDistance);
	}

}
