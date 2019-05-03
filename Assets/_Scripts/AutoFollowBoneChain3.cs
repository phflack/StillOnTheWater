using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AutoFollowBoneChain3 : MonoBehaviour {
	public List<Transform> bones;
	public List<Vector3> pathPoints;
	public float boneInterval = 10f;
	// Use this for initialization
	void Start () {
		if (pathPoints == null) {pathPoints = new List<Vector3>();}
		for (int i = 0; i < bones.Count; i++) {
			pathPoints.Add(bones[i].position);
		}
		lastHeadPosition = bones[0].position;
	}
	
	// public bool keyboardHeadMotion = true;
	// Update is called once per frame
	Vector3 lastHeadPosition;
	void Update () {
		float headSpeed = (bones[0].position - lastHeadPosition).magnitude;
		if (Vector3.Distance(pathPoints[0], bones[0].position) > boneInterval) {
			// first catch up all the bones
			for (int i = 1; i < bones.Count; i++) {
				bones [i].position = pathPoints [i];
			}

			//then add a new point
			for (int i = pathPoints.Count - 2; i >= 0; i--) {
					pathPoints [i + 1] = pathPoints [i];
				}
				pathPoints [0] = (bones [0].position - pathPoints [0]).normalized * boneInterval + pathPoints [0]; 
		}

		for (int i = 1; i < bones.Count; i++) {
			Vector3 distanceToTargetPoint = (pathPoints [i] - bones [i].position);
			if (distanceToTargetPoint.magnitude > headSpeed) {
				bones[i].position = bones[i].position + headSpeed * distanceToTargetPoint.normalized;// * Time.deltaTime;
				// bones [i].gameObject.GetComponent<Rigidbody> ().velocity = speed * distanceToTargetPoint.normalized;
			} else {
				// float additionalMovement = (distanceToTargetPoint.magnitude - headSpeed);
				// bones[i].position = pathPoints[i] + additionalMovement * (pathPoints[i-1] -pathPoints[i]); 
				// bones [i].gameObject.GetComponent<Rigidbody> ().velocity = Vector3.zero;
			}
			bones [i].LookAt( (i+1 >= bones.Count) ? (bones[i-1].position) : (bones[i].position-((bones [i + 1].position)-bones[i].position)), Vector3.up);
			bones[i].rotation = Quaternion.AngleAxis(-90f, bones[i].right) * bones[i].rotation;
		}
		lastHeadPosition = bones[0].position;
	}

	public bool drawGizmos;
	private void OnDrawGizmos()
	{
		if (!drawGizmos) return;
		Transform lastBone = null;
		if (bones != null) {
			foreach(Transform bone in bones) {
				Gizmos.color = Color.cyan;
				Gizmos.DrawSphere(bone.position, .2f);
				if (lastBone != null) {
					Gizmos.color = Color.white;
					Gizmos.DrawLine(lastBone.position, bone.position);
				}
				lastBone = bone;
			}
		}

		if (pathPoints != null) {
			foreach(Vector3 point in pathPoints) {
				Gizmos.color = Color.red;
				Gizmos.DrawCube(point, 1f * Vector3.one);
			}
		}
	}
}
