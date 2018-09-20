using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class alignXZtowardTarget : MonoBehaviour {
	public Transform target;
	Rigidbody rb;
	public float assistAmount;
	public bool correcting;
	
	private void Start()
	{
			rb = GetComponent<Rigidbody>();
	}

	// Use this for initialization
	void OnEnable () {
		VRTK.VRTK_InteractableObject selfVRTKobj = GetComponent<VRTK.VRTK_InteractableObject>();
		selfVRTKobj.InteractableObjectGrabbed -= SetCorrectingFalse;
		selfVRTKobj.InteractableObjectUngrabbed -= SetCorrectingTrue;	
		selfVRTKobj.InteractableObjectGrabbed += SetCorrectingFalse;
		selfVRTKobj.InteractableObjectUngrabbed += SetCorrectingTrue;
	}
	
	private void OnDisable()
	{
		VRTK.VRTK_InteractableObject selfVRTKobj = GetComponent<VRTK.VRTK_InteractableObject>();
		selfVRTKobj.InteractableObjectGrabbed -= SetCorrectingFalse;
		selfVRTKobj.InteractableObjectUngrabbed -= SetCorrectingTrue;	
	}

	bool previouslyGrabbed = false;
	// Update is called once per frame
	void Update () {
		if (correcting) {
			Vector3 currentVector = rb.velocity;
			Vector3 currentVectorNoVertical = currentVector;
			currentVectorNoVertical.y = 0;
			Vector3 correctVector = (target.position - transform.position).normalized;
			Vector3 newVector = Vector3.Lerp(currentVectorNoVertical.normalized, correctVector, assistAmount * Time.deltaTime) * currentVectorNoVertical.magnitude;
			rb.velocity = new Vector3(newVector.x, currentVector.y, newVector.z);
		}
	}

	private void SetCorrectingFalse(object sender, VRTK.InteractableObjectEventArgs args) {
		correcting = false;
	}
	private void SetCorrectingTrue(object sender, VRTK.InteractableObjectEventArgs args) {
		correcting = true;
	}
	
	private void OnCollisionEnter(Collision other)
	{
		correcting = false;
	}
}
