using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PositionRipple : MonoBehaviour {
	public Transform target;
	public Vector3 axis;
	public float maxDistance;
	public LayerMask layerMask;
	public bool bidirectional = false;
	public Color color = Color.cyan;
	ParticleSystem particleSystem;

	private void OnEnable()
	{
		particleSystem = GetComponent<ParticleSystem>();
	}

	public bool isOnForReal = false; // isPlaying does NOT mean the system is emitting
	void Update () {
		RaycastHit hit;
		if (Physics.Raycast(target.position, target.TransformDirection(axis.normalized), out hit, maxDistance, layerMask)) {
			transform.position = hit.point;
			Debug.Log(hit.transform.gameObject.name);

			if (!isOnForReal) {
				particleSystem.Play();
				isOnForReal = true;
				Debug.Log("START");
			}
		} else {
			if (isOnForReal) {
				particleSystem.Stop();
				isOnForReal = false;
				Debug.Log("STOP");
			}
		}
	}

	void OnDrawGizmosSelected() {
		Gizmos.color = color;
		Gizmos.DrawLine(target.position, target.position + target.TransformDirection(axis.normalized) * maxDistance);
		RaycastHit hit;
		if (Physics.Raycast(target.position, target.TransformDirection(axis.normalized), out hit, maxDistance, layerMask)) {
			Gizmos.DrawSphere(hit.point, .3f);
		}
	}
}
