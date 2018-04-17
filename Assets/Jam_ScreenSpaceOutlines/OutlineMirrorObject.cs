using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class OutlineMirrorObject : MonoBehaviour {
	public static bool AllOutlinesShouldChill = false;

	public GameObject[] OutlineMeshes;
	public GameObject MirrorObjectPrefab;
	List<GameObject> MirrorObjects;
	public bool activeOutlines = true;

	// Use this for initialization
	void Start () {
		MirrorObjects = new List<GameObject> ();
		foreach (GameObject omr in OutlineMeshes) {
			MeshFilter m = omr.GetComponent<MeshFilter> ();
			GameObject go = Instantiate (MirrorObjectPrefab,omr.transform);
			MirrorObjects.Add (go);
//			go.transform.SetParent (omr.transform);
//			go.transform.localPosition = Vector3.zero;
//			go.transform.localRotation = Quaternion.identity;
//			go.transform.localScale = omr.transform.localScale;
			go.GetComponent<MeshFilter> ().mesh = m.mesh;
		}
	}
	
	// Update is called once per frame
	void Update () {
		foreach (GameObject g in MirrorObjects) {
			g.SetActive (activeOutlines && !AllOutlinesShouldChill);
		}
	}
}
