using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SoundMaster : MonoBehaviour {

    public AudioSource[] sounds = new AudioSource[9];

    public float minTimeBetweenSounds;
    public float maxTimeBetweenSounds;
    
    private float timer;


    // Use this for initialization
    void Start () {

        float r = Random.Range(minTimeBetweenSounds, maxTimeBetweenSounds);
        timer = r;

    }
	
	// Update is called once per frame
	void Update () {

        timer -= Time.deltaTime;

        if(timer <= 0)
        {
            Debug.Log("Play");
            PlaySound();
        }
		
	}

    void PlaySound()
    {
        int i = Random.Range(0, 8);
        sounds[i].Play();


        float r = Random.Range(minTimeBetweenSounds, maxTimeBetweenSounds);
        timer = r;



    }
}
