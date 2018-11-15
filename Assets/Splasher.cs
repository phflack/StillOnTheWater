using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Splasher : MonoBehaviour {
	public SimultanouesParticleSystemBurst splashParticles;
	public Transform mainDrops;
	public Transform splashDisk;
	public TrackPaddleInWater paddleArea;
	private void Start()
	{
		paddleArea.OnBeginStroke -= PlaySplash;
		paddleArea.OnBeginStroke += PlaySplash;
	}
	public ParticleSystem mainDropsParticleSystem;
	public void PlaySplash(Vector3 position, Vector3 _velocity) {
		position.y = transform.position.y;
		transform.position = position;
		float magnitude = Mathf.InverseLerp(0f, 4f, _velocity.magnitude);
		splashDisk.transform.position = transform.position + .05f * -Vector3.up + (1f - magnitude) * .2f *-Vector3.up;
		mainDrops.forward = Vector3.Reflect(_velocity, Vector3.up);
		var main = mainDropsParticleSystem.main; 
		main.startSpeed = new ParticleSystem.MinMaxCurve(.3f * magnitude, 1.5f * magnitude);

		splashParticles.Play(magnitude);
	}
}
