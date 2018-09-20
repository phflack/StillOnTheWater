using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TrackPaddleInWater : MonoBehaviour {
	public Vector3 smoothedMotionVector = Vector3.zero;
	public float PaddleTrackingTimeStep = .1f;
	public float MotionVectorTime = .8f;
	private int pointsPerMotionVectorCalculation;
	public Transform relativeTo;
	public List<Vector3> points;
	List<float> pointIntervals;
	public delegate void StrokeAction();
	public event StrokeAction OnBeginStroke;
	public event StrokeAction OnEndStroke;
	public OVRInput.Controller controllerToVibrate;

	private void Start()
	{
		points = new List<Vector3>();
		pointIntervals = new List<float>();
		pointsPerMotionVectorCalculation = (int)(MotionVectorTime / PaddleTrackingTimeStep);
	}

	private void Update()
	{
		CalculateSmoothedMotionVector();
		VibrateController();
	}

	private void OnDisable()
	{
		StopAllCoroutines();	
		smoothedMotionVector = Vector3.zero;
	}

	Transform presentPaddle;
	Coroutine trackPaddleRoutine;
	private void OnTriggerEnter(Collider other)
	{
		if (other.tag.Equals("Paddle")) {
			// if (trackPaddleRoutine == null) {
				presentPaddle = other.transform;
				trackPaddleRoutine = StartCoroutine(TrackPaddle());
			// }
		}
	}

	private void OnTriggerExit(Collider other)
	{
		if (other.tag.Equals("Paddle")) {
			if (trackPaddleRoutine != null) {
				// StopCoroutine(trackPaddleRoutine);
				presentPaddle = null;
			}
		}
	}
	
	private IEnumerator TrackPaddle() {
		if (OnBeginStroke != null) {
			OnBeginStroke();
		}
		float lastTime = Time.time;
		while (presentPaddle != null) {
			SetNextPoint(relativeTo.InverseTransformPoint(presentPaddle.position));
			SetLastInterval(Time.time - lastTime);
			lastTime = Time.time;
			yield return new WaitForSeconds(PaddleTrackingTimeStep);
		}
		points = new List<Vector3>();
		pointIntervals = new List<float>();
		if (OnEndStroke != null){OnEndStroke();}
	}

	private void SetNextPoint(Vector3 point){
		points.Insert(0, point);
		if (points.Count > pointsPerMotionVectorCalculation) {
			points.RemoveAt(points.Count-1);
		}
		
	}
	private void SetLastInterval(float interval) {
		pointIntervals.Insert(0, interval);
		if (pointIntervals.Count > pointsPerMotionVectorCalculation) {
			pointIntervals.RemoveAt(pointIntervals.Count-1);
		}
	}
	Vector3 rawVector;
	private void CalculateSmoothedMotionVector() {
		if (points.Count == 0 || trackPaddleRoutine == null) {
			smoothedMotionVector = Vector3.zero;
			return;
		}
		rawVector = points[0] - points[points.Count-1];
		float fullTime = 0f;
		foreach(float interval in pointIntervals){
			fullTime += interval;
		}
		smoothedMotionVector = (rawVector / fullTime).XZVector();
		// the above line can sometimes produce NaN or Infinity vector components when fullTime is 0f. In this cases we'd best just ignore the motion entirely:
		if (float.IsNaN(smoothedMotionVector.x) || float.IsNaN(smoothedMotionVector.y) || float.IsNaN(smoothedMotionVector.z) ||
		float.IsInfinity(smoothedMotionVector.x) || float.IsInfinity(smoothedMotionVector.y) || float.IsInfinity(smoothedMotionVector.z)) {
			smoothedMotionVector = Vector3.zero;
		}
	}

	private void VibrateController() {
		OVRInput.SetControllerVibration(Mathf.Clamp01(Mathf.Abs(smoothedMotionVector.magnitude / 4f) * .05f), Mathf.Clamp01(Mathf.Abs(smoothedMotionVector.magnitude / 4f)), controllerToVibrate);
	}

	private void OnDrawGizmos()
	{
		Gizmos.color = Color.red;
		Gizmos.DrawLine(transform.position + Vector3.up, transform.position + Vector3.up + relativeTo.TransformDirection(smoothedMotionVector));
		// Gizmos.color = Color.Lerp(Color.red, Color.clear, .4f);
		// Gizmos.DrawCube(transform.position, transform.localScale);
		// Gizmos.color = Color.red;
		// // Gizmos.DrawWireCube(transform.position, );
	}

}
