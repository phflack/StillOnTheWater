using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PositionSplashParticlesAtWaterContactPoints : MonoBehaviour {
	public ParticleSystem[] particleSystems;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	void OnTriggerEnter(Collider c) {
		Debug.Log ("colliding with " + c.gameObject.name);
		if (c.gameObject.CompareTag ("Water")) {
			foreach (ParticleSystem p in particleSystems) {
				Debug.Log ("Emitting water particles from " + p.gameObject.name);
				p.transform.rotation = Quaternion.Euler (Vector3.zero);
				p.Emit (20);
			}
		}
	}
}
