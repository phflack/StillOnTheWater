using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SimultanouesParticleSystemBurst : MonoBehaviour {
	public ParticleSystemBurst[] bursts;

	public void Play() {
		foreach (ParticleSystemBurst b in bursts){
			b.particleSystem.Emit(b.numParticles);
		} 
	}
	public void Play(float numParticlesScale) {
		foreach (ParticleSystemBurst b in bursts){
			int resultOfScale = (int)(b.numParticles * numParticlesScale);
			Debug.Log(b.particleSystem.gameObject.name + "," + b.numParticles + "," + numParticlesScale + "," + resultOfScale);
			b.particleSystem.Emit((int)Mathf.Max(1f, (float)resultOfScale));
		} 
	}
}

[System.Serializable]
public class ParticleSystemBurst {
	public ParticleSystem particleSystem;
	public int numParticles;
}

