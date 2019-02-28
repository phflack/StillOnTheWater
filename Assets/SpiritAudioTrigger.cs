using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpiritAudioTrigger : MonoBehaviour {


    public AudioSource spiritMonologue;
    bool hasStarted = false;

    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.Q))
        {
            hasStarted = true;
            spiritMonologue.Play();
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if(other.CompareTag("Kayak_World") && !hasStarted)
        {
            
            hasStarted = true;
            spiritMonologue.Play();

        }
    }
}
