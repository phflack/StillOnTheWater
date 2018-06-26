using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class trackPaddleInWater : MonoBehaviour {
	public Transform lastCollisionTransform;
	public Transform referenceTransform;
    public Vector3 lastEntryPoint;
    public List<Vector3> points = new List<Vector3> ();
	public int averagingBufferLength = 40;

	// Use this for initialization
	void Start () {
	}
	
	// Update is called once per frame
	void Update ()
    {
        if (points != null && points.Count > 0)
        {
			lastEntryPoint = points[points.Count - (Mathf.Min(averagingBufferLength, points.Count) - 1)];
        }
    }

	void OnTriggerEnter(Collider c){
		if (c.transform == lastCollisionTransform) {
		} else {
			lastCollisionTransform = c.gameObject.transform;
		}
		points.Clear ();
        StartCoroutine(AutoClear());
		points.Add(transform.position - referenceTransform.position);
	}

	void OnTriggerExit(Collider c) {
		if (c.transform == lastCollisionTransform) {
			lastCollisionTransform = null;
            lastEntryPoint = Vector3.zero;
			totalMotion = Vector3.zero;
            points.Clear();
		}
	}

//	Vector3 enterCollisionPoint;
	public Vector3 totalMotion;
	void OnTriggerStay(Collider c) {
//		Debug.Log ("currently colliding with " + c.gameObject.name);
		totalMotion = Vector3.zero;
		points.Add(transform.position - referenceTransform.position);
		if (points.Count > averagingBufferLength * 5) {
			points = points.GetRange (points.Count - averagingBufferLength - 1, averagingBufferLength);
		}
		if (points != null && points.Count > 0) {
			for (int i = points.Count - (Mathf.Min (averagingBufferLength, points.Count) - 1); i < points.Count - 1; i++) {
				totalMotion += points [i] - points [i - 1];
			}
		}
	}

	void OnDrawGizmos() {
		if (points != null && points.Count > 0) {
			Gizmos.color = Color.cyan;
			for (int i = points.Count - (Mathf.Min (averagingBufferLength, points.Count) - 1); i < points.Count - 1; i++) {
				Gizmos.DrawLine (points [i - 1], points [i]);
			}
			Gizmos.color = Color.red;
            Gizmos.DrawRay(lastEntryPoint + referenceTransform.position, totalMotion);
		}
	}

    private IEnumerator AutoClear()
    {
        yield return new WaitForSeconds(1.5f);
        points.Clear();
        lastEntryPoint = Vector3.zero;
    }
}
