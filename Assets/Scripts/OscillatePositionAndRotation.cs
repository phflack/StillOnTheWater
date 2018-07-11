using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class OscillatePositionAndRotation : MonoBehaviour {
	public bool randomizePosition = true;
	public Vector3 position;
	public bool randomizeRotation = true;
	public Vector3 rotation;

	private Vector3 initialPosition;
	private Vector3 initialRotation;


	public float timeFactor = 6f;
	public float randomPositionMagnitude = .04f;
	public float randomRotationMagnitude = 10f;

	// Use this for initialization
	void Start () {
		initialPosition = transform.localPosition;
		initialRotation = transform.localRotation.eulerAngles;
		if (randomizePosition) {
			position.x = (Random.value * 2f - 1f) * randomPositionMagnitude;
			position.y = (Random.value * 2f - 1f) * randomPositionMagnitude;
			position.z = (Random.value * 2f - 1f) * randomPositionMagnitude;
		}
		if (randomizeRotation) {
			rotation.x = (Random.value * 2f - 1f) * randomRotationMagnitude;
			rotation.y = (Random.value * 2f - 1f) * randomRotationMagnitude;
			rotation.z = (Random.value * 2f - 1f) * randomRotationMagnitude;
		}
	}
	
	// Update is called once per frame
	void Update () {
		transform.localPosition = initialPosition + Mathf.Sin (Time.realtimeSinceStartup * timeFactor) * position;
		if (!rotation.Equals (Vector3.zero)) {
			transform.localRotation = Quaternion.Euler (initialRotation + Mathf.Sin (Time.realtimeSinceStartup * timeFactor) * rotation);
		}
	}
}
