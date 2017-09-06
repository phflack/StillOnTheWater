using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TreeMover : MonoBehaviour {


    [Range(.5f, 5f)]
    public float floatSpeed = .5f;

    [Range(.5f, 8f)]
    public float spinSpeed = .5f;


    // Use this for initialization
    void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {

        transform.position += Vector3.left * Time.deltaTime * floatSpeed;

        transform.Rotate(Vector3.back * Time.deltaTime * spinSpeed);

    }
}
