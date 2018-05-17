using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AlignPaddle : MonoBehaviour {
	public Transform leftHandle;
	public Transform rightHandle;

	// Update is called once per frame
	void Update () {
		Vector3 handlesSeparation = rightHandle.position - leftHandle.position;
		transform.position = leftHandle.position += handlesSeparation / 2;
		transform.LookAt (leftHandle.position);
	}
}
