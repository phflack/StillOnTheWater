using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CinematicFollow : MonoBehaviour {

    public bool isStarted = false;
    public float speed;

    public Cinemachine.CinemachineTrackedDolly vCam;

	// Use this for initialization
	void Start () {
        vCam = GetComponent<Cinemachine.CinemachineTrackedDolly>();
	}
	
	// Update is called once per frame
	void Update () {
		if(Input.GetKeyDown(KeyCode.Space) && !isStarted)
        {
            isStarted = true;
        }

        if(isStarted)
        {
            vCam.m_PathPosition += speed * Time.deltaTime;

        }
	}
}
