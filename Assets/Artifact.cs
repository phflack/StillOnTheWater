using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using VRTK;

public class Artifact : MonoBehaviour {
    public MatchPositionAndRotationOverTime mover;
    public ArtifactManager parent;

    public bool sent = false;

    public float floatDistance = 5f;
    public float floatTime = 2f;

    bool goingUp = true;
    float floatTimeRemaining;

    float distancePerSecond;

    public float flyTime = 2f;

	// Use this for initialization
	void Start () {
        GetComponent<VRTK_InteractableObject>().InteractableObjectUngrabbed += new InteractableObjectEventHandler(addThis);
        distancePerSecond = floatDistance / floatTime;
        floatTimeRemaining = floatTime;
    }

    public void addThis(object sender, InteractableObjectEventArgs e)
    {
        parent.addArtifact(this);
    }

    // Update is called once per frame
    void Update () {
		if(sent)
        {
            //floaty bois
            if (flyTime > 0)
            {
                flyTime -= Time.deltaTime;
            }
            else
            {
                floatTimeRemaining -= Time.deltaTime;
                float distance = distancePerSecond * Time.deltaTime;
                if (goingUp)
                {
                    transform.position = new Vector3(transform.position.x, transform.position.y + distance, transform.position.z);
                    
                }
                else
                {
                    transform.position = new Vector3(transform.position.x, transform.position.y - distance, transform.position.z);
                }

                if(floatTimeRemaining <= 0)
                {
                    goingUp = !goingUp;
                    floatTimeRemaining = floatTime;
                }
            }
        }
	}
}
