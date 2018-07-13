using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class OscillatePositionAndRotation : MonoBehaviour {
    public Transform target;
	public bool randomizePosition = true;
	public Vector3 position;
	public bool randomizeRotation = true;
	public Vector3 rotation;
    public float sinOffset = 0f;

	private Vector3 initialPosition;
	private Vector3 initialRotation;
    private float startTime;

	public float timeFactor = 6f;
	public float randomPositionMagnitude = .04f;
	public float randomRotationMagnitude = 10f;

	// Use this for initialization
	void Start () {
        if (target == null)
        {
            target = transform;
        }
		initialPosition = target.position;
		initialRotation = target.rotation.eulerAngles;
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
        startTime = Time.realtimeSinceStartup;

    }
	
	// Update is called once per frame
	void Update () {
		target.position = initialPosition + Mathf.Sin ((Time.realtimeSinceStartup - startTime) * timeFactor + sinOffset) * position;
		if (!rotation.Equals (Vector3.zero)) {
			target.rotation = Quaternion.Euler (initialRotation + Mathf.Sin ((Time.realtimeSinceStartup - startTime) * timeFactor + sinOffset) * rotation);
		}
	}
}
