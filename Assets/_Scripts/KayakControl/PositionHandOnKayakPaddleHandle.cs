using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PositionHandOnKayakPaddleHandle : MonoBehaviour {
	public Transform Handle;
	public Transform Controller;
	public bool OnlyWhileHandIsGrabbingHandle;
	public VRTK.VRTK_InteractGrab Hand;
	Vector3 initialPosition;
	Quaternion initialRotation;

	// Use this for initialization
	void Start () {
		initialPosition = Handle.InverseTransformPoint(transform.position);
		initialRotation = Quaternion.Inverse(Handle.transform.rotation) * transform.rotation;
	}
	
	// Update is called once per frame
	void Update () {
		if (!OnlyWhileHandIsGrabbingHandle || Hand.GetGrabbedObject() != null && Hand.GetGrabbedObject().gameObject.tag.Equals("PaddleHandle")) {
			transform.position = Controller.position.ProjectPointOnLine(Handle.position, Handle.right);
			transform.rotation = Quaternion.LookRotation(Controller.forward, Vector3.Cross(-Handle.right, Controller.forward));
			Debug.DrawLine(Controller.position, transform.position, Color.red, .1f);
		} else {
			transform.position = Handle.TransformPoint(initialPosition);
			transform.rotation = Handle.transform.rotation * initialRotation;
		}
	}
}
