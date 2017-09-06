using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DuckMove : MonoBehaviour {

    [Range(.5f, 8f)]
    public float duckSpeed = .5f;
   
    

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {

        transform.position += Vector3.right * Time.deltaTime * duckSpeed;
    }
}
