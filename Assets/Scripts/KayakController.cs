using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class KayakController : MonoBehaviour
{
	public float turnSpeed;
	public float acc;
	public float baseAcc;
	public float maxSpeed;
	public float riverStrength;

    public float lerpTime;

	private Vector3 velocity; //velocity is in world coordinates

	//Use this for initialization
	private void Start()
	{
		velocity = new Vector3();
	}

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("Obstacle") || other.gameObject.CompareTag("Terrain"))
        {

            //back to main menu
           UnityEngine.SceneManagement.SceneManager.LoadScene(2);

        }
    }

    //Update is called once per frame
    private void Update()
	{

        if (Input.GetKey(KeyCode.Escape))
        {

            UnityEngine.SceneManagement.SceneManager.LoadScene(0);

        }

        //Debug.Log("X" + Input.GetAxis("Horizontal") + " Y" + Input.GetAxis("Vertical"));

        //do the rotation thing first
        transform.Rotate(0, Input.GetAxis("Horizontal") * turnSpeed * Time.deltaTime, 0);
        float multiplier = 1;

        if(Input.GetAxis("Vertical") > 0)
        {
            multiplier = 4f;

        }
        //see how fast we'd be going if we just went with it
        Vector3 target = transform.forward * multiplier + getRiverFlow(); // + velocity;
        //* (Input.GetAxis("Vertical") * acc + baseAcc)

        if (target.magnitude > maxSpeed)  //too fast? slow it down then
			target = target.normalized * maxSpeed;

		//velocity = target;
        velocity = Vector3.Slerp(velocity, target, lerpTime);
        
		//actually move it
		transform.Translate(transform.InverseTransformVector(velocity * Time.deltaTime)); //translate is in local coordinates
	}

	private Vector3 getRiverFlow()
	{
		return new Vector3(riverStrength, 0, 0);
	}
}
