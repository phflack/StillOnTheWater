using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class gizbo : MonoBehaviour {

	// Use this for initializationvoid
	/// <summary>
	/// Callback to draw gizmos that are pickable and always drawn.
	/// </summary>
	void OnDrawGizmos()
	{
		Gizmos.color = Color.cyan;
		Gizmos.DrawSphere(transform.position, 1f);
	}
}
