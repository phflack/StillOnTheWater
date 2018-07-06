using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using VRTK;

public class ObjectPlacementAimSelector : MonoBehaviour {
	public float sphereCastRadius = 1f;
	public float maxSphereCastDistance = 5f;
	public LayerMask ObjectPlacementPointLayers;
	public PlacementPointIndicator selectedPlacementPoint;

	RaycastHit hit;
	PlacementPointIndicator placementPoint;
	LineRenderer _lineRenderer;

	void Start() {
		_lineRenderer.enabled = false;
	}

	void OnEnable() {
		_lineRenderer = GetComponent<LineRenderer> ();
		_lineRenderer.SetPosition (0, transform.position);
		EnablePlacementPointIndicatorsAndSelector ();
	}

	void OnDisable() {
		_lineRenderer = GetComponent<LineRenderer> ();
		_lineRenderer.SetPosition (0, transform.position);
		DisablePlacementPointIndicatorsAndSelector ();
	}

	// Constantly update the 'selected' placement indicator public reference while 
	void Update () {
		_lineRenderer.SetPosition (0, transform.position);
		if (Physics.SphereCast (transform.position, sphereCastRadius, transform.forward, out hit, maxSphereCastDistance, ObjectPlacementPointLayers.value)) {
			placementPoint = hit.collider.gameObject.GetComponent<PlacementPointIndicator> ();
			if (selectedPlacementPoint != null) {
				selectedPlacementPoint.isSelected = (false);
			}
			placementPoint.isSelected = (true);
			selectedPlacementPoint = placementPoint;
		} else {
			if (selectedPlacementPoint != null) {
				selectedPlacementPoint.isSelected = (false);
				selectedPlacementPoint = null;
			}
		}

		if (selectedPlacementPoint != null) {
			_lineRenderer.SetPosition (1, selectedPlacementPoint.transform.position);
		} else {
			_lineRenderer.SetPosition (1, transform.position + transform.forward * maxSphereCastDistance);
		}
	}

	void OnDrawGizmos() {
		Gizmos.color = Color.white;
		Gizmos.DrawRay (transform.position, transform.forward * maxSphereCastDistance);
	}

	// only cchanging the culling mask of the active camera because i don't expect the main camera to change during run time. Not like
	// people switch to Vive during a play session..
	private void EnablePlacementPointIndicatorsAndSelector (){
		Camera activeVRCam = VRCameraReferences.instance.ActiveVRCamera;
		_lineRenderer.enabled = true;
		// enable the droppableObjectsUI tag in the camera's culling mask.
		activeVRCam.cullingMask |= 1 << LayerMask.NameToLayer("DroppableObjectsUI");
        Debug.Log("attmepting to enable UI");
	}

	private void DisablePlacementPointIndicatorsAndSelector (){
		Camera activeVRCam = VRCameraReferences.instance.ActiveVRCamera;
		_lineRenderer.enabled = false;
		// Disable the droppableObjectsUI tag in the camera's culling mask.
		activeVRCam.cullingMask &= ~(1 << LayerMask.NameToLayer("DroppableObjectsUI"));
	}
}
