using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MiddlePoint : MonoBehaviour {
	public Transform LabelPoint;
	public Transform ButtonPoint;
	private float PosZ;
	// Use this for initialization
	void Start () {
		PosZ = transform.localPosition.z;
	}
	
	// Update is called once per frame
	void Update () {
		transform.localPosition = new Vector3((LabelPoint.localPosition.x+ButtonPoint.localPosition.x)/2.0f, (LabelPoint.localPosition.y+ButtonPoint.localPosition.y)/2.0f,PosZ);
	}
}
