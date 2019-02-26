using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AutoFollowBoneChain : MonoBehaviour {
	public List<GameObject> parts;
	public List<Vector3> pathPoints;
	public float speed = 1f;
	public float threshold = .6f;
	public Transform directionTransform;

	// Use this for initialization
	void Start () {
		for (int i = 0; i < parts.Count; i++) {
			pathPoints.Add(parts[i].transform.position);
		}
	}
	
	// Update is called once per frame
	void Update () {
		if (Vector3.Distance (parts [0].transform.position, directionTransform.position) < (speed * 1.1f * Time.deltaTime)) {
//			Debug.Log ("A");
			for (int i = 0; i < parts.Count; i++) {
				parts [i].gameObject.GetComponent<Rigidbody> ().velocity = Vector3.zero;
			}
		} else {
			parts [0].GetComponent<Rigidbody> ().velocity = speed * (directionTransform.position - parts [0].transform.position).normalized;
		}

		if (true) {
			Debug.Log ("B (Still moving");
			if (Vector3.Distance (pathPoints [0], parts [0].transform.position) > threshold) {
				Debug.Log ("C (threshold exceeded)");
				for (int i = pathPoints.Count - 2; i >= 0; i--) {
					pathPoints [i + 1] = pathPoints [i];
				}
				pathPoints [0] = (parts [0].transform.position - pathPoints [0]).normalized * threshold + pathPoints [0]; 
			}

//		directionTransform.position = parts [0].transform.position;
//		parts [0].transform.LookAt (directionTransform.position);
			for (int i = 1; i < parts.Count; i++) {
				Vector3 distanceToTargetPoint = (pathPoints [i] - parts [i].transform.position);
				if (distanceToTargetPoint.magnitude > 1.1f * speed * Time.deltaTime) {
					parts [i].gameObject.GetComponent<Rigidbody> ().velocity = speed * distanceToTargetPoint.normalized;
				} else {
					parts [i].gameObject.GetComponent<Rigidbody> ().velocity = Vector3.zero;
				}
				parts [i].transform.up = -((parts [i - 1].transform.position) - parts[i].transform.position);
			}
		}
	}
}

// using System.Collections;
// using System.Collections.Generic;
// using UnityEngine;

// public class AutoFollowBoneChain : MonoBehaviour {
// 	public List<Transform> bones;
// 	public Vector3 forwardAxis;
// 	public List<Vector3> pathPoints;
// 	public float speed = 1f;
// 	public float threshold = .6f;
// 	// Use this for initialization
// 	void Start () {
// 		if (pathPoints == null) {pathPoints = new List<Vector3>();}
// 		for (int i = 0; i < bones.Count; i++) {
// 			pathPoints.Add(bones[i].position);
// 		}
// 	}
	
// 	// Update is called once per frame
// 	void Update () {
// 		if (Vector3.Distance)
// 	}

// 	private void OnDrawGizmos()
// 	{
// 		Transform lastBone = null;
// 		if (bones != null) {
// 			foreach(Transform bone in bones) {
// 				Gizmos.color = Color.green;
// 				Gizmos.DrawCube(bone.position, 1f * Vector3.one);
// 				if (lastBone != null) {
// 					Gizmos.color = Color.white;
// 					Gizmos.DrawLine(lastBone.position, bone.position);
// 				}
// 				lastBone = bone;
// 			}
// 		}
// 	}
// }
