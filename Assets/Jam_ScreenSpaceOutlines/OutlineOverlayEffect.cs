using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class OutlineOverlayEffect : MonoBehaviour {
	Material mat;
	public RenderTexture OutlineCameraOutput;
	// Use this for initialization
	void Start () {
		mat = new Material (Shader.Find("Hidden/OutlineOverlay"));
		mat.SetTexture ("_OutlineOutputTex", OutlineCameraOutput);
	}
	
	void OnRenderImage(RenderTexture src, RenderTexture dest) {
		Graphics.Blit(src, dest, mat);
	}
}
