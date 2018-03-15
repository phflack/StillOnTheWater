using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SoundFader : MonoBehaviour {

    public bool fade = false;
    public AudioSource Sound;

    public float time;

	// Use this for initialization
	void Start () {
		
	}
    
	
	// Update is called once per frame
	void Update () {

        if (Input.GetKey("joystick button 0") || Input.GetKey(KeyCode.A))
        {
            fade = true;
        }
            if (fade)
        {
            Sound.volume -= (1/time) * Time.deltaTime;


        }



	}
}
