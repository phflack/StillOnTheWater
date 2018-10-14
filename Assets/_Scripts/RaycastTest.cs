using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RaycastTest : MonoBehaviour {
	public LayerMask layerMask;
	
	void OnDrawGizmos()
	{
		RaycastHit hit;
		if (Physics.Raycast(transform.position, Vector3.down, out hit, 100f, layerMask)) {
			Gizmos.color = Color.red;
			Gizmos.DrawLine(transform.position, hit.point);
			Gizmos.color = Color.red * .5f;
			Gizmos.DrawSphere(hit.point, .3f);
		} else {
			Gizmos.color = Color.red;
			Gizmos.DrawLine(transform.position, transform.position + Vector3.down * 100f);
		}
	}
}
