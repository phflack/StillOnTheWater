using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LookAtVRCameras : MonoBehaviour {
	
	// Update is called once per frame
	void Update () {
		transform.LookAt (VRCameraReferences.instance.ActiveVRCamera.transform.position);
	}
}
