using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EmitAtParticleCollisionPoints : MonoBehaviour {
	public ParticleSystem impactParticle;
	ParticleSystem ps;
	List<ParticleCollisionEvent> collisionEvents;
	public float scale = .02f;
	public bool impact = true;
	private void Start()
	{
		collisionEvents = new List<ParticleCollisionEvent>();
		ps = GetComponent<ParticleSystem>();
	}
	private void OnParticleCollision(GameObject other)
	{
		ParticlePhysicsExtensions.GetCollisionEvents(ps,other,collisionEvents);
		ParticleSystem.EmitParams ep = new ParticleSystem.EmitParams();
		foreach(ParticleCollisionEvent collision in collisionEvents) {
			impactParticle.transform.position = collision.intersection;
			// impactParticle.startSize = .01f * Mathf.Clamp01(1f-collision.velocity.magnitude);
			// ep.position = collision.intersection;
			ep.startSize = scale * (impact ? Mathf.Clamp01(1f - collision.velocity.magnitude) : 1f);
			impactParticle.Emit(ep, 1);
		}
	}
}
