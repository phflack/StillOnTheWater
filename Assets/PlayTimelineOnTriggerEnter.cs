using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;

public class PlayTimelineOnTriggerEnter : MonoBehaviour {
	public PlayableDirector playableDirector;
	public Transform triggerer;
	public float radius=  5f;

	private void Start()
	{
		if (playableDirector == null) playableDirector = GetComponent<PlayableDirector>();
	}
	public bool playNow = false;
	bool played = false;
	private void Update()
	{
		if (playNow) {
			playNow = false;
			playableDirector.Play();
			played = true;
			this.enabled = false;
		}
		if (!played && triggerer != null && Vector3.Distance(transform.position, triggerer.position) < radius) {
			playableDirector.Play();
			played = true;
			this.enabled = false;
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
}
