using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class shaftEnable : MonoBehaviour {

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	
	void Awake() {
    GetComponent<Camera>().depthTextureMode = DepthTextureMode.Depth;
}
	
	void Update () {
		
	}
}
