using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpiritInteractionTrigger : MonoBehaviour {

    public GameObject kayakTriggerCollider;

    public AudioSource source;

    public GameObject[] artifacts = new GameObject[5];
    public Transform[] artifactSpots = new Transform[5];

    bool hasMoved = false;

    private void Update()
    {
        if(Input.GetKeyDown(KeyCode.Q))
        {
            if(!source.isPlaying)
            {
                source.Play();
            }
        }
    }

    void OnTriggerEnter(Collider other)
    {
        if(other.name == kayakTriggerCollider.name)
        {
            if(!source.isPlaying)
            {
                source.Play();
            }


            if(!hasMoved)
            {
                hasMoved = true;

                for(int index= 0;  index < 5; index++)
                {
                    artifacts[index].transform.position = artifactSpots[index].position;

                }


            }

        }
    }
}
