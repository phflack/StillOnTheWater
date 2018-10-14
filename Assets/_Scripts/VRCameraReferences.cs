using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class VRCameraReferences : MonoBehaviour {
	public Camera[] Cameras;
	public float CheckInterval_Seconds;
	public Camera ActiveVRCamera;
	public static VRCameraReferences instance;

	// Start the periodic active cam checking
	void Start () {
		if (instance == null && Cameras.Length > 0) {
			instance = this;
			ActiveVRCamera = Cameras [0];
			StartCoroutine (PeriodicallyCheckActiveCamera (CheckInterval_Seconds));
		} else {
			this.enabled = false;
			Debug.LogWarning ("No camera reference listed, or there are duplicate VRCameraReferences objects. shutting off");
		}
	}
	
	// Go through the list of VR camera references (configure in inspector before running) and return the first active one.
	private Camera GetActiveCamera () {
		foreach (Camera cam in Cameras) {
			if (cam.gameObject.activeInHierarchy) {
				return cam;
			}
		}
		return Cameras [0];
	}

	// Perform GetActiveCamera periodically.
	private IEnumerator PeriodicallyCheckActiveCamera(float time){
		while (gameObject.activeInHierarchy) {
			ActiveVRCamera = GetActiveCamera ();
			yield return new WaitForSeconds (time);
		}
	}
}
