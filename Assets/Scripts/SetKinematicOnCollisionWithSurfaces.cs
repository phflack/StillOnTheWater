using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Rigidbody))]
public class SetKinematicOnCollisionWithSurfaces : MonoBehaviour {
    public LayerMask layers;
    private Rigidbody my_rb;
    public float disableDelay = 1f;

	// Use this for initialization
	void Start () {
        my_rb = GetComponent<Rigidbody>();	
	}
	
	// Update is called once per frame
	void Update () {

	}

    private void OnCollisionEnter(Collision c)
    {
        if (layers == (layers | (1 << c.gameObject.layer)))
        {
            StartCoroutine(SetKinematic());
        }
    }

    public void CancelDisable()
    {
        StopAllCoroutines();
        my_rb.isKinematic = false;
        Debug.Log("Setting is kinematic to false");
        my_rb.useGravity = true;
    }

    private IEnumerator SetKinematic()
    {
        yield return new WaitForSeconds(disableDelay);
        my_rb.isKinematic = true;
        my_rb.useGravity = false;
    }
}
