using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class KayakController : MonoBehaviour
{
	public float turnSpeed;
	public float acc;
	public float baseAcc;
	public float maxSpeed;
	public float riverStrength;

	private Vector3 velocity; //velocity is in world coordinates

	//Use this for initialization
	private void Start()
	{
		velocity = new Vector3();
	}
	
	//Update is called once per frame
	private void Update()
	{
		Debug.Log("X" + Input.GetAxis("Horizontal") + " Y" + Input.GetAxis("Vertical"));

		//do the rotation thing first
		transform.Rotate(0, Input.GetAxis("Horizontal") * turnSpeed * Time.deltaTime, 0);

		//see how fast we'd be going if we just went with it
		Vector3 target = transform.forward * (Input.GetAxis("Vertical") * acc + baseAcc) + getRiverFlow() + velocity;

		if (target.magnitude > maxSpeed)  //too fast? slow it down then
			target = target.normalized * maxSpeed;

		velocity = target;

		//actually move it
		transform.Translate(transform.InverseTransformVector(velocity * Time.deltaTime)); //translate is in local coordinates
	}

	private Vector3 getRiverFlow()
	{
		return new Vector3(riverStrength, 0, 0);
	}
}
