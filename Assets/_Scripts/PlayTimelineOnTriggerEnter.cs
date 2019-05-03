using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;

public class PlayTimelineOnTriggerEnter : MonoBehaviour {
	public PlayableDirector playableDirector;
	public Transform triggerer;
	public float radius=  5f;
	public LimitVelocity kayakVelocity;
	public float restoreSpeedDelay;

	private void Start()
	{
		if (playableDirector == null) playableDirector = GetComponent<PlayableDirector>();
	}
	public bool playNow = false;
	bool played = false;
	private void Update()
	{
		if (playNow && !played) {
			playNow = false;
			playableDirector.Play();
			played = true;
			if (kayakVelocity != null) StartCoroutine(TemporarilyLimitVelocity());
			// this.enabled = false;
		}
		if (!played && triggerer != null && Vector3.Distance(transform.position, triggerer.position) < radius) {
			playableDirector.Play();
			played = true;
			if (kayakVelocity != null) StartCoroutine(TemporarilyLimitVelocity());
			// this.enabled = false;
		}		
	}

	public bool drawGizmos = true;
	private void OnDrawGizmos()
	{
		if (drawGizmos) {
			Gizmos.color = Color.green;
			Gizmos.DrawWireSphere(transform.position, radius);
		}
	}

	private IEnumerator TemporarilyLimitVelocity () {
		Vector3 originalVelocity = kayakVelocity.LocalLimits;
		float curTime = 0f;
		while (curTime < 5f) {
			curTime += Time.deltaTime;
			kayakVelocity.LocalLimits = Vector3.Lerp(originalVelocity, Vector3.one * .3f, Mathf.InverseLerp(0f, 5f, curTime));
			yield return new WaitForEndOfFrame();
		}
		yield return new WaitForSeconds(restoreSpeedDelay);
		curTime = 0f;
		while (curTime < 5f) {
			curTime += Time.deltaTime;
			kayakVelocity.LocalLimits = Vector3.Lerp(Vector3.one * .3f, originalVelocity, Mathf.InverseLerp(0f, 5f, curTime));
			yield return new WaitForEndOfFrame();
		}
	}
}
