using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using VRTK;

public class PaddleGripManager : MonoBehaviour {
	public GameObject RightVRTKobj, LeftVRTKobj, PaddleGeoObj;
	public ConfigurableJoint RightJointObj, LeftJointObj;
	public bool RhGrabbed, LhGrabbed;
	public TrackVelocityFromTransformPosition manualPaddleVelocityTracking;
	public float paddleThrowMultiplier = 1f;
	public float returnTime = 1.5f;
	public float returnDelay = 2f;
	public float paddleReturnDistanceThreshold = 8f;
	public bool looseGripMode = true;


	Vector3 RhInitialAnchorPos, LhInitialAnchorPos, InitialPaddlePos;
	Quaternion InitialPaddleRotation;

	public delegate void PaddleGrabAction();
	
	public PaddleGrabAction RightHandGrabbed, RightHandUngrabbed, LeftHandGrabbed, LeftHandUngrabbed, PaddleFullyGrabbed,PaddleFullyUngrabbed;


	// Use this for initialization
	void Start () {
		RhInitialAnchorPos = RightJointObj.connectedAnchor;
		LhInitialAnchorPos = LeftJointObj.connectedAnchor;
		RightJointObj.gameObject.SetActive(RhGrabbed);
		LeftJointObj.gameObject.SetActive(LhGrabbed);
		InitialPaddlePos = PaddleGeoObj.transform.localPosition;
		InitialPaddleRotation = PaddleGeoObj.transform.localRotation;
	}

	private void OnEnable()
	{
		VRTK.VRTK_InteractableObject Rvrtkobj = RightVRTKobj.GetComponent<VRTK.VRTK_InteractableObject>();
		VRTK.VRTK_InteractableObject Lvrtkobj =  LeftVRTKobj.GetComponent<VRTK.VRTK_InteractableObject>();
		Rvrtkobj.InteractableObjectGrabbed -= SetRhGrabbed;
		Rvrtkobj.InteractableObjectGrabbed += SetRhGrabbed;
		Rvrtkobj.InteractableObjectUngrabbed -= SetRhUnGrabbed;
		Rvrtkobj.InteractableObjectUngrabbed += SetRhUnGrabbed;
		Lvrtkobj.InteractableObjectGrabbed -=   SetLhGrabbed;
		Lvrtkobj.InteractableObjectGrabbed +=   SetLhGrabbed;
		Lvrtkobj.InteractableObjectUngrabbed -= SetLhUnGrabbed;
		Lvrtkobj.InteractableObjectUngrabbed += SetLhUnGrabbed;
	}

	private void OnDisable()
	{
		VRTK.VRTK_InteractableObject Rvrtkobj = RightVRTKobj.GetComponent<VRTK.VRTK_InteractableObject>();
		VRTK.VRTK_InteractableObject Lvrtkobj =  LeftVRTKobj.GetComponent<VRTK.VRTK_InteractableObject>();
		Rvrtkobj.InteractableObjectGrabbed -= SetRhGrabbed;
		Rvrtkobj.InteractableObjectUngrabbed -= SetRhUnGrabbed;
		Lvrtkobj.InteractableObjectGrabbed -=   SetLhGrabbed;
		Lvrtkobj.InteractableObjectUngrabbed -= SetLhUnGrabbed;
	}
	
	// Update is called once per frame
	Coroutine returnRoutine;
	void Update () {
		if (!RhGrabbed) {
			RightVRTKobj.transform.position = PaddleGeoObj.transform.TransformPoint(RhInitialAnchorPos);
		}
		if (!LhGrabbed) {
			LeftVRTKobj.transform.position = PaddleGeoObj.transform.TransformPoint(LhInitialAnchorPos);
		}
		
		// if (returnRoutine == null && Vector3.Distance(PaddleGeoObj.transform.localPosition, InitialPaddlePos) > paddleReturnDistanceThreshold) {
		// 	returnRoutine = StartCoroutine(ReturnPaddle());
		// }
		if (returnRoutine == null && (!RhGrabbed && !LhGrabbed)) {
			returnRoutine = StartCoroutine(ReturnPaddle());
		}
	}

	private void SetRhGrabbed(object sender, InteractableObjectEventArgs args){
		RightVRTKobj.transform.position = RightVRTKobj.GetComponent<VRTK.VRTK_InteractableObject>().GetGrabbingObject().transform.position;
		RhGrabbed = true;
		if (LhGrabbed) {
			Rigidbody paddleRb = PaddleGeoObj.GetComponent<Rigidbody>();
			paddleRb.isKinematic = false;
			paddleRb.detectCollisions = true;
			paddleRb.useGravity = true;
			if (returnRoutine != null){StopCoroutine(returnRoutine);}	
			returnRoutine = null;
			
			if (PaddleFullyGrabbed!=null) {PaddleFullyGrabbed();}
		}
		if (RightHandGrabbed!=null) {RightHandGrabbed();}
		 UpdateJointsAndAnchors();	
	}
	private void SetRhUnGrabbed(object sender, InteractableObjectEventArgs args){
		RhGrabbed = false;
		if (RightHandUngrabbed!=null) {RightHandUngrabbed();}
		if (!LhGrabbed && PaddleFullyUngrabbed != null) { PaddleFullyUngrabbed();} 
		 UpdateJointsAndAnchors();	
	}
	private void SetLhGrabbed(object sender, InteractableObjectEventArgs args){
		LeftVRTKobj.transform.position = LeftVRTKobj.GetComponent<VRTK.VRTK_InteractableObject>().GetGrabbingObject().transform.position;
		LhGrabbed = true;
		if (RhGrabbed) {
			Rigidbody paddleRb = PaddleGeoObj.GetComponent<Rigidbody>();
			paddleRb.isKinematic = false;
			paddleRb.detectCollisions = true;
			paddleRb.useGravity = true;
			if (returnRoutine != null){StopCoroutine(returnRoutine);}		
			returnRoutine = null;
			
			if (PaddleFullyGrabbed!=null) {PaddleFullyGrabbed();}
		}
		if (LeftHandGrabbed!=null) {LeftHandGrabbed();}
		 UpdateJointsAndAnchors();	
	}
	private void SetLhUnGrabbed(object sender, InteractableObjectEventArgs args){
		LhGrabbed = false;
		if (LeftHandUngrabbed!=null) {LeftHandUngrabbed();}
		if (!RhGrabbed && PaddleFullyUngrabbed != null) { PaddleFullyUngrabbed();} 
		 UpdateJointsAndAnchors();	
	}

	private void UpdateJointsAndAnchors() {
		if (RhGrabbed && LhGrabbed) {
			RightJointObj.connectedAnchor = RhInitialAnchorPos;
			LeftJointObj.connectedAnchor = LhInitialAnchorPos;
			// RightJointObj.angularXMotion = ConfigurableJointMotion.Free;
			// RightJointObj.angularYMotion = ConfigurableJointMotion.Free;
			// RightJointObj.angularZMotion = ConfigurableJointMotion.Free;
			// LeftJointObj.angularXMotion = ConfigurableJointMotion.Free;
			// LeftJointObj.angularYMotion = ConfigurableJointMotion.Free;
			// LeftJointObj.angularZMotion = ConfigurableJointMotion.Free;
			RightJointObj.gameObject.SetActive(true);
			LeftJointObj.gameObject.SetActive(true);
		} else if (RhGrabbed && !LhGrabbed) {
			RightJointObj.connectedAnchor = new Vector3(RightVRTKobj.transform.localPosition.x, 0f, 0f);
			// RightJointObj.angularXMotion = ConfigurableJointMotion.Locked;
			// RightJointObj.angularYMotion = ConfigurableJointMotion.Locked;
			// RightJointObj.angularZMotion = ConfigurableJointMotion.Locked;
			LeftJointObj.connectedAnchor = LhInitialAnchorPos;
			RightJointObj.gameObject.SetActive(true);
			LeftJointObj.gameObject.SetActive(false);
		} else if (LhGrabbed && !RhGrabbed) {
			RightJointObj.connectedAnchor = RhInitialAnchorPos;
			LeftJointObj.connectedAnchor = new Vector3(LeftVRTKobj.transform.localPosition.x, 0f, 0f);
			// LeftJointObj.angularXMotion = ConfigurableJointMotion.Locked;
			// LeftJointObj.angularYMotion = ConfigurableJointMotion.Locked;
			// LeftJointObj.angularZMotion = ConfigurableJointMotion.Locked;
			RightJointObj.gameObject.SetActive(false);
			LeftJointObj.gameObject.SetActive(true);
		} else {
			RightJointObj.connectedAnchor = RhInitialAnchorPos;
			LeftJointObj.connectedAnchor = LhInitialAnchorPos;
			// RightJointObj.angularXMotion = ConfigurableJointMotion.Free;
			// RightJointObj.angularYMotion = ConfigurableJointMotion.Free;
			// RightJointObj.angularZMotion = ConfigurableJointMotion.Free;
			// LeftJointObj.angularXMotion = ConfigurableJointMotion.Free;
			// LeftJointObj.angularYMotion = ConfigurableJointMotion.Free;
			// LeftJointObj.angularZMotion = ConfigurableJointMotion.Free;
			RightJointObj.gameObject.SetActive(false);
			LeftJointObj.gameObject.SetActive(false);
			PaddleGeoObj.GetComponent<Rigidbody>().velocity = manualPaddleVelocityTracking.currentVelocity.normalized * paddleThrowMultiplier * Mathf.Min(manualPaddleVelocityTracking.currentVelocity.magnitude, 8f);
		}
	}

	private IEnumerator ReturnPaddle () {
		//yield return new WaitForSeconds(returnDelay);
		Vector3 returnFromPosition = PaddleGeoObj.transform.localPosition;
		Quaternion returnFromRotation = PaddleGeoObj.transform.localRotation;
		Rigidbody paddleRb = PaddleGeoObj.GetComponent<Rigidbody>();
		paddleRb.velocity = Vector3.zero;
		paddleRb.angularVelocity = Vector3.zero;
		paddleRb.isKinematic = true;
		paddleRb.detectCollisions = false;
		paddleRb.useGravity = false;
		yield return new WaitForSeconds(returnDelay);
		

		float currTime = 0f;
		while (returnRoutine != null){//currTime < returnTime){
			currTime += Time.deltaTime;
			PaddleGeoObj.transform.localPosition = Vector3.Lerp(returnFromPosition, InitialPaddlePos, Mathf.InverseLerp(0f, returnTime, currTime));
			PaddleGeoObj.transform.localRotation = Quaternion.Lerp(returnFromRotation, InitialPaddleRotation, Mathf.InverseLerp(0f, returnTime, currTime)); 
			yield return new WaitForEndOfFrame();
		}
		
		// paddleRb.isKinematic = false;
		// paddleRb.detectCollisions = true;
		// paddleRb.useGravity = true;
		returnRoutine = null;
	}

	// private void OnDrawGizmos()
	// {
	// 	Gizmos.color = Color.green;
	// 	Gizmos.DrawWireSphere(transform.TransformPoint(InitialPaddlePos), paddleReturnDistanceThreshold);
	// }
}
