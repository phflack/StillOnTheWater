using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ObjectViewerCamera : MonoBehaviour {
	public static ObjectViewerCamera instance;
	public Transform ObjectViewPoint;
	public GameObject ButtonHintCanvas;
	GameObject currentObject;
	GameObject originalObject;

	public KeyCode confirmKey;
	public KeyCode cancelKey;

	void Start() {
		instance = this;
		ButtonHintCanvas.SetActive (false);
	}

	public void SetViewObject(GameObject go, Quaternion rotat, Vector3 posit) {
		if (currentObject != null) {
			Destroy (currentObject);
		}
		currentObject = Instantiate (go, ObjectViewPoint);
		if (currentObject.GetComponent<OutlineMirrorObject> () != null) {
			currentObject.GetComponent<OutlineMirrorObject> ().activeOutlines = false;
		}
		currentObject.transform.localPosition = posit;
		currentObject.transform.rotation = rotat;
		originalObject = go;
		ButtonHintCanvas.SetActive (true);
	}

	void Update() {
		if (Input.GetKeyUp (confirmKey)) {
			OutlineMirrorObject.AllOutlinesShouldChill = false;
			if (originalObject.GetComponent<CassetteAudio> () != null) {
				originalObject.GetComponent<CassetteAudio> ().PlayAudio ();
				Destroy (currentObject);
				Debug.Log("Playing audio");
				ButtonHintCanvas.SetActive (false);
			}
		}
		if (Input.GetKeyUp (cancelKey)) {
			OutlineMirrorObject.AllOutlinesShouldChill = false;
			if (currentObject != null) {
				Destroy (currentObject);
				ButtonHintCanvas.SetActive (false);
			}
		}
	}
}
