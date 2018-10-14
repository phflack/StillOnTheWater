using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LookAtCamera : MonoBehaviour {
	public Transform target; //child of MainCamera, local Pos (0,0,5000);
	public bool InvertZ;

	// Use this for initialization
	void Start () {
		if (target == null) {
			target = Camera.main.transform;
		}
	}
	
	// Update is called once per frame
	void Update () {
		if (target == null) {
			target = Camera.main.transform;
		}
		if (InvertZ) {
			transform.rotation = Quaternion.LookRotation(-(target.position - transform.position));
		} else {
			transform.rotation = Quaternion.LookRotation((target.position - transform.position));
		}
		// transform.LookAt (target);
	}
}
