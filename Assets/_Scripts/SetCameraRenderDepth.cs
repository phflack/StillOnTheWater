using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SetCameraRenderDepth : MonoBehaviour {

	// Use this for initialization
	void Start () {
		StartCoroutine(MakeSureCameraRendersDepth());
	}
	
	private IEnumerator MakeSureCameraRendersDepth() {
		while (true) {
			if (Camera.main != null) Camera.main.depthTextureMode = DepthTextureMode.Depth;
			yield return new WaitForSeconds(1f);
		}
	}
}
