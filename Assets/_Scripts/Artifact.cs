using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using VRTK;

public class Artifact : MonoBehaviour {
    public MatchPositionAndRotationOverTime mover;
    public ArtifactManager parent;

    public bool sent = false;
    public bool pickedUp = false;

    public float floatDistance = 5f;
    public float floatTime = 2f;
    public float oscillateSpeed = 1f;
    bool goingUp = true;
    float floatTimeRemaining;
    public float oscillateAmplitude = .02f;
    float distancePerSecond;

    public ParticleSystem starParticles;
    public ParticleSystem haloParticles;

    public float flyTime = 5f;

    public Collider[] itemCollider;
    public Rigidbody itemRigidbody;
    float originalHeight;
	// Use this for initialization
	void Start () {
       
        originalHeight = transform.position.y;
        GetComponent<VRTK_InteractableObject>().InteractableObjectUngrabbed += new InteractableObjectEventHandler(addThis);
        
        GetComponent<VRTK_InteractableObject>().InteractableObjectGrabbed += new InteractableObjectEventHandler(stopFloating);
        distancePerSecond = floatDistance / floatTime;
        floatTimeRemaining = floatTime;
    }

    public void stopFloating(object sender, InteractableObjectEventArgs e)
    {
        
        pickedUp = true;
    }

    public void addThis(object sender, InteractableObjectEventArgs e)
    {
        parent.addArtifact(this);
        floatTimeRemaining = 0f;
        var em = starParticles.emission;
        em.enabled = false;
        var haloEm = haloParticles.emission;
        haloEm.enabled = false;
        foreach(Collider c in itemCollider)
        {
            Destroy(c);
        }
        Destroy(itemRigidbody);
    }

    // Update is called once per frame
    void Update () {
		if(sent || !pickedUp)
        {
            //floaty bois
            if (flyTime > 0 && sent)
            {
                flyTime -= Time.deltaTime;
                var em = starParticles.emission;
                var haloEm = haloParticles.emission;
                if (!em.enabled)
                {
                    em.enabled = true;

                    haloEm.enabled = true;
                }
            }
            else if (!sent)
            {
                floatTimeRemaining += Time.deltaTime;
                float distance = distancePerSecond * Time.deltaTime;
                distance = Mathf.Sin(oscillateSpeed * floatTimeRemaining) * oscillateAmplitude;
                // if (goingUp)
                // {
                transform.position = new Vector3(transform.position.x, originalHeight + distance, transform.position.z);
                // }
                // else
                // {
                //     transform.position = new Vector3(transform.position.x, transform.position.y - distance, transform.position.z);
                // }

                // if(floatTimeRemaining <= 0)
                // {
                //     goingUp = !goingUp;
                //     floatTimeRemaining = floatTime;
                // }
            }
        }
	}

    // private IEnumerator UpNDown() {
    //     float curTime = 0f;
        
    // }
}
