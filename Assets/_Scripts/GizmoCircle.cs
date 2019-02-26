using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GizmoCircle : MonoBehaviour {
	#if UNITY_EDITOR
	public static int numPointsPerCircle = 32;
	public static void DrawCircle(Vector3 center, Vector3 axis, float radius) {
		Vector3 prevPoint = radius * Vector3.forward;
		Vector3 currentPoint;
		Quaternion rotation = Quaternion.AngleAxis(360f/((float)numPointsPerCircle), axis);
		for (int i = 0; i < numPointsPerCircle; i++) {
			currentPoint = rotation * prevPoint;
			Gizmos.DrawLine (center+prevPoint, center+currentPoint);
			prevPoint = currentPoint;
		}
	}
	#endif
}
