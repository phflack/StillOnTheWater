using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MoveTowardPlacementPointBehavior : MonoBehaviour {
	public float moveSpeed = 2f;
	public void BeginMoveTowardPlacementPoint(PlacementPointIndicator p) {
		StartCoroutine(MoveTowardPlacementPoint(p.objectPositionTransform));
	}

	private IEnumerator MoveTowardPlacementPoint(Transform target){
		// TODO: consider have a constant lerp time instead of a speed;
		while (Vector3.Distance(transform.position, target.position) > .001f){
			transform.position = Vector3.MoveTowards (transform.position, target.position, moveSpeed * Time.deltaTime);
			yield return new WaitForEndOfFrame ();
		}
	}
}
