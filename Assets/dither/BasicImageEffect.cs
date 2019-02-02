using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[ExecuteInEditMode]
// [ImageEffectAllowedInSceneView]
public class BasicImageEffect : MonoBehaviour {
	public Material effectMat;
	private void OnRenderImage(RenderTexture src, RenderTexture dest)
	{
		Graphics.Blit(src, dest, effectMat);
	}
}
