using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RotateCameraWithXboxControls : MonoBehaviour {
	Camera mainCam;
	public float rotationSpeed = 60f;
	public bool flipX = false;
	public bool flipY = false;
	float totalx = 0f;
	float totaly = 0f;

	// Use this for initialization
	void Start () {
		mainCam = GetComponent<Camera> ();
	}
	
	// Update is called once per frame
	void Update () {
		float xInput = Input.GetAxis ("RightStickX");
		float yInput = Input.GetAxis ("RightStickY");
		Debug.Log (xInput + "," + yInput);
		if (flipX) { xInput *= -1; }
		if (flipY) { yInput *= -1; }
		totalx += yInput * rotationSpeed;
		totaly += xInput * rotationSpeed;

		Quaternion prevRotation = mainCam.transform.rotation;
		prevRotation = Quaternion.Euler (new Vector3 (totalx, totaly, 0f));
		mainCam.transform.rotation = prevRotation;
	}
}
