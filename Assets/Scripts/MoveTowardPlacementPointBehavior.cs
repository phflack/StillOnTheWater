using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MoveTowardPlacementPointBehavior : MonoBehaviour {
	public float moveSpeed = 13;
	public float jostleForce = 600f;

	public PlacementPointIndicator debugTarget;

	void Start() {
		if (debugTarget != null) {
			BeginMoveTowardPlacementPoint (debugTarget);
		}
	}

	public void BeginMoveTowardPlacementPoint(PlacementPointIndicator p) {
		// disable physics and collider to keep from clipping while it moves toward the hook. At the moment, physics are permanently disabled, 
		//   but I may want to re-enable physics after attaching it to a new joint on the hook.
		GetComponent<Rigidbody> ().Sleep ();
		GetComponentInChildren<SphereCollider> ().enabled = false;
//		GetComponent<SphereCollider> ().enabled = false;
		GetComponent<Rigidbody> ().isKinematic = true;
		StartCoroutine(MoveTowardPlacementPoint(p));
	}

	private IEnumerator MoveTowardPlacementPoint(PlacementPointIndicator p){
		yield return new WaitForSeconds (2f);
		Vector3 originalDirection = p.objectPositionTransform.position - transform.position;
		// TODO: consider have a constant lerp time instead of a speed;
		while (Vector3.Distance(transform.position, p.objectPositionTransform.position) > .01f){
			transform.position = Vector3.MoveTowards (transform.position, p.objectPositionTransform.position, moveSpeed * Time.deltaTime);
//            GetComponent<Rigidbody>().AddForce(moveSpeed * (target.position - transform.position).normalized, ForceMode.VelocityChange);
			yield return new WaitForEndOfFrame ();
		}

		transform.SetParent(p.objectPositionTransform);
		transform.localPosition = Vector3.zero;

		p.attachedBody.GetComponent<Rigidbody> ().AddForce (originalDirection.normalized * jostleForce);
//        GetComponent<Rigidbody>().useGravity = false;
//        GetComponent<Rigidbody>().constraints = RigidbodyConstraints.FreezePosition;
    }
}
