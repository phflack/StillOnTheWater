using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ImageEffect : MonoBehaviour {
	public Material mat;

	// Use this for initialization
	void Start () {
		if (GetComponent<Camera> ().targetTexture != null) {
			GetComponent<Camera> ().targetTexture.height = Screen.height;
			GetComponent<Camera> ().targetTexture.width = Screen.width;
		}
	}
	
	void OnRenderImage(RenderTexture src, RenderTexture dest) {
		Graphics.Blit(src, dest, mat);
	}
}
