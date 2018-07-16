using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FadeOutOnTriggerEnter : MonoBehaviour {
    public string playerTag = "Player";
    public FadeOutManager FadeSphere;

    private void OnTriggerEnter(Collider other)
    {
        Debug.Log("EndColliderEntered");
        if (other.CompareTag(playerTag))
        {
            FadeSphere.StartFadeOut();
        }  else
        {
            Debug.Log(other.tag);
        }
    }
}
