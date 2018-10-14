using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PosiitonPaddle : MonoBehaviour {
	public Transform physicsPaddle;
	
	// Update is called once per frame
	void Update () {
		transform.position = physicsPaddle.position;
		transform.forward = physicsPaddle.right;	
	}
}
