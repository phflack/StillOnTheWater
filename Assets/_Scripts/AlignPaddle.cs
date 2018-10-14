using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[ExecuteInEditMode]
public class AlignPaddle : MonoBehaviour {
	public Transform leftHandle;
	public Transform rightHandle;

	// Update is called once per frame
	void LateUpdate () {
		Vector3 handlesSeparation = rightHandle.position - leftHandle.position;
		transform.position = leftHandle.position + handlesSeparation / 2f;
		transform.LookAt (leftHandle.position);
        // TODO: get paddle to hit things , such as the kayak. 
		//GetComponent<Rigidbody> ().MovePosition (leftHandle.position + (handlesSeparation/2f));
		//GetComponent<Rigidbody> ().MoveRotation(Quaternion.LookRotation(-handlesSeparation));
	}
}
