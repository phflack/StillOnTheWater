using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public static class Vector3Extensions {
	public static Vector3 ProjectPointOnLine(this Vector3 point, Vector3 linePoint, Vector3 lineVec){		
 
		//get vector from point on line to point in space
		Vector3 linePointToPoint = point - linePoint;
 
		float t = Vector3.Dot(linePointToPoint, lineVec);
 
		return linePoint + lineVec * t;
	}

	public static Vector3 XZVector(this Vector3 vector)
	{
		return new Vector3(vector.x, 0f, vector.z);
	}

	public static float DistanceFlat(this Vector3 origin, Vector3 destination)
	{
		return Vector3.Distance(origin.XZVector(), destination.XZVector());
	}

	public static Vector3 VectorToward(this Vector3 origin, Vector3 destination) {
		return destination - origin;
	}
}
