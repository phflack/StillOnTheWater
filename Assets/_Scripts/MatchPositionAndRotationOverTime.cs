using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MatchPositionAndRotationOverTime : MonoBehaviour {
	public Transform target;
	public AnimationCurve curve = AnimationCurve.EaseInOut(0f, 0f, 1f, 1f);
	public float time = 2f;
	
	[Tooltip("check this box while game is running to send the object now, for debug purposes")]
	public bool sendNow = false;
	
	// Update is called once per frame
	void Update () {
		if (sendNow) {
			sendNow = false;
			GoNow();
		}	
	}

	public void GoNow() {
		StopAllCoroutines();
		StartCoroutine(GoToTarget());
	}

	private IEnumerator GoToTarget() {
		float curTime = 0f;
		Vector3 startPosition = transform.position;
		Quaternion startRotation = transform.rotation;
		while (curTime < time) {
			Debug.DrawLine(transform.position, target.position, Color.red);
			float interpolator = curve.Evaluate(Mathf.InverseLerp(0f, time, curTime));
			transform.position = Vector3.Lerp(startPosition, target.position, interpolator);
			transform.rotation = Quaternion.Lerp(startRotation, target.rotation, interpolator);
			curTime += Time.deltaTime;
			yield return new WaitForEndOfFrame();
		}
		transform.position = target.position;
		transform.rotation = target.rotation;
	}
}
