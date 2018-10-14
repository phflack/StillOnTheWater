using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class collisionTest : MonoBehaviour {

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		// Debug.Log(gameObject.name + " collision test running...");
	}
	private void OnCollisionEnter(Collision other)
	{
		// Debug.Log("OnCollisionEnter in " + gameObject.name + " by " + other.gameObject.tag);
	}
	private void OnTriggerEnter(Collider other)
	{
		// Debug.Log("Ontriggerenter in " + gameObject.name + " by " + other.gameObject.tag);
	}
}
