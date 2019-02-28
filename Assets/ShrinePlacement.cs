using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ShrinePlacement : MonoBehaviour {

    public ArtifactManager artifactManager;
    public Transform[] spots;

    // Use this for initialization
    private void OnTriggerEnter(Collider other)
    {
        if(other.CompareTag("Kayak_World"))
        {
            int index = 0;
            foreach(GameObject g in artifactManager.angelaArtifacts)
            {
                MatchPositionAndRotationOverTime mp = g.AddComponent<MatchPositionAndRotationOverTime>();
                mp.target = spots[index];
                mp.GoNow();
                index++;
            }
        }
    }
}
