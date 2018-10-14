using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ClampVelocity : MonoBehaviour {
	Rigidbody rb;
	public float maxVelocityMagnitude = 10f;
	public Transform basket;
	// Use this for initialization
	void Start () {
		rb = GetComponent<Rigidbody>();	
		//RecalculateVelocityLimit();
	}
	
	// Update is called once per frame
	void Update () {
		rb.velocity = rb.velocity.normalized * Mathf.Min(rb.velocity.magnitude, maxVelocityMagnitude);
	}

	public void RecalculateVelocityLimit() {
		float angleInRadians = Mathf.Deg2Rad * 45f;
		float distanceXZfromBasket = Vector3.Distance(Vector3.Scale(transform.position, new Vector3(1f, 0f, 1f)), Vector3.Scale(basket.position, new Vector3(1f, 0f, 1f)));
		//           (5ft from toss height to basket height)
		maxVelocityMagnitude = Mathf.Sqrt( (1.524f * (Mathf.Pow(distanceXZfromBasket, 2f))) / (Mathf.Cos(angleInRadians) * Mathf.Sin(angleInRadians))  +
		   ((distanceXZfromBasket) * Mathf.Cos(angleInRadians) * .5f * (9.8f)) / Mathf.Sin(angleInRadians));
		Debug.Log(maxVelocityMagnitude);
	}
}
