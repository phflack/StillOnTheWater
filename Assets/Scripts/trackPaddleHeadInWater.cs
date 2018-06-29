using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class trackPaddleHeadInWater : MonoBehaviour {
    // The last transform this paddle head collided with.
	public Transform lastCollisionTransform;
    // The transform to make all paddling vectors relative to (always the kayak, but maybe a different boat, in the future?)
	public Transform referenceTransform;
    // The place where the oar entered the water, or, depending on the averagingBufferLength, the oldest point we're interested in when calculating the paddle motion vector.
    public Vector3 lastEntryPoint;
    // The list of points that should be cleared every time the paddle head leaves the water.
    public List<Vector3> points = new List<Vector3> ();
    // the number of points along the recent path of the paddle that we average to determine the motion vector.
	public int averagingBufferLength = 40;


	// Update is called once per frame
	void Update ()
    {
        if (points != null && points.Count > 0)
        {
            // move the 'last entry point' up the list, so that we only keep interest in the most recent <averagingBufferLength> points in the paddling path.
            // TODO: I should be culling the list of extra items here.
			lastEntryPoint = points[points.Count - (Mathf.Min(averagingBufferLength, points.Count) - 1)];
        }
    }

    // Clear the points list when the paddle reEnters the water, and add the new position.
	void OnTriggerEnter(Collider c){
		if (c.transform == lastCollisionTransform) {
		} else {
			lastCollisionTransform = c.gameObject.transform;
		}
		points.Clear ();
        StartCoroutine(AutoClear());
		points.Add(transform.position - referenceTransform.position);
	}

    // reset all variables when the paddle is out of the water.
	void OnTriggerExit(Collider c) {
		if (c.transform == lastCollisionTransform) {
			lastCollisionTransform = null;
            lastEntryPoint = Vector3.zero;
			totalMotion = Vector3.zero;
            points.Clear();
		}
	}

    // WHILE the paddle is in the water, track its position and add it to the list each frame. 
    //  then, recalculate the average motion vector.
    // TODO: there's no need to add up all the vectors; you can just do last position first posiion.
    // Total motion is used in ApplyForceFromPaddleTracker.cs to move the kayak. (and also below, to draw some gizmos)
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

    // automatically clear the list of points after the seconds.
    // TODO: This may not be the best way to manage the size of the points vector. 
    private IEnumerator AutoClear()
    {
        yield return new WaitForSeconds(3f);
        points.Clear();
        lastEntryPoint = Vector3.zero;
    }
}
