using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ScanAndDelete : MonoBehaviour {

    // Use this for initialization

    [SerializeField]
    private bool scanned = false;

    public int check = 0;

    void OnTriggerEnter(Collision other)
    {
        if (other.gameObject.CompareTag("Scanner"))
        {
            Destroy(gameObject);
            scanned = true;
            check = 2;
        }
        if (other.gameObject.CompareTag("ObstacleKiller") && scanned == true)
        {
            Destroy(gameObject);
        }
    }
       
}
