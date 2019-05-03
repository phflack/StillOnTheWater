using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using VRTK;
public class MoveRelativeToTransformWhileButtonPressed : MonoBehaviour {
	public Transform refTransform;
	public SkinnedMeshRenderer meshForHilight;
	Vector3 lastPos;
	public VRTK_ControllerEvents controllerEvents;
	private void OnEnable()
	{
		lastPos = refTransform.position;
	}
	// Update is called once per frame
	void Update () {
		if (controllerEvents.IsButtonPressed(VRTK_ControllerEvents.ButtonAlias.ButtonTwoPress)) {
			transform.position -= (refTransform.position - lastPos).XZVector();
			meshForHilight.material.color = Color.cyan;
		} else {
			meshForHilight.material.color = Color.grey;
		}
		lastPos = refTransform.position;
	}
}
