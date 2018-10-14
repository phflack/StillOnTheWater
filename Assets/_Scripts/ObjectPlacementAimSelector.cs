using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using VRTK;

[RequireComponent(typeof(LineRenderer))]
public class ObjectPlacementAimSelector : MonoBehaviour {
	public float sphereCastRadius = 1f;
	public float maxSphereCastDistance = 5f;
	public LayerMask ObjectPlacementPointLayers;
	public PlacementPointIndicator selectedPlacementPoint;

	RaycastHit hit;
	PlacementPointIndicator placementPoint;
	public LineRenderer _lineRenderer;

	void Start() {
		_lineRenderer.enabled = false;
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
	public void EnablePlacementPointIndicatorsAndSelector ()
    {
        _lineRenderer.SetPosition(0, transform.position);
        Camera activeVRCam = VRCameraReferences.instance.ActiveVRCamera;
		_lineRenderer.enabled = true;
		// enable the droppableObjectsUI tag in the camera's culling mask.
		activeVRCam.cullingMask |= 1 << LayerMask.NameToLayer("DroppableObjectsUI");
        Debug.Log("attmepting to enable UI");
	}

	public void DisablePlacementPointIndicatorsAndSelector ()
    {
        _lineRenderer.SetPosition(0, transform.position);
        Camera activeVRCam = VRCameraReferences.instance.ActiveVRCamera;
		_lineRenderer.enabled = false;
		// Disable the droppableObjectsUI tag in the camera's culling mask.
		activeVRCam.cullingMask &= ~(1 << LayerMask.NameToLayer("DroppableObjectsUI"));
        Debug.Log("attmepting to disable UI");
    }
}
