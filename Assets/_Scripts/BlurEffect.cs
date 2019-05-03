using UnityEngine;
using System;

[ExecuteInEditMode]
public class BlurEffect : MonoBehaviour {
	public Material translateDepthMaterial;
	[Range(1,15)]
	public int iterations = 4;
	public RenderTexture blurEffectTex;
	RenderTexture[] textures = new RenderTexture[16];
	public Shader blurShader;
	public Shader normalsShader;

	[NonSerialized]
	Material blur, normals;
	
	Camera cam;
	private void Start()
	{
		cam = GetComponent<Camera>();
	}

	void OnRenderImage (RenderTexture source, RenderTexture destination) {
		if (blur == null) {
			blur = new Material(blurShader);
			blur.hideFlags = HideFlags.HideAndDontSave;
		}
		if (normals == null) {
			normals = new Material(normalsShader);
			normals.hideFlags = HideFlags.HideAndDontSave;
		}
		int width = source.width / 2;
		int height = source.height / 2;
		RenderTextureFormat format = source.format;
		RenderTexture currentDestination = textures[0] = RenderTexture.GetTemporary(width, height, 24, source.format);

		Graphics.Blit(source, currentDestination, translateDepthMaterial); // first pass renders depth
		RenderTexture currentSource = currentDestination;
		int i = 1;
		for (i = 1; i < iterations; i++) {
			width /= 2;
			height /= 2;
			if (height < 2) {
				break;
			}
			currentDestination = textures[i] = RenderTexture.GetTemporary(width, height, 0, format);
			Graphics.Blit(currentSource, currentDestination, blur, 0);
			currentSource = currentDestination;
		}

		for (i -= 2; i >= 0; i--) {
			currentDestination = textures[i];
			textures[i] = null;
			Graphics.Blit(currentSource, currentDestination, blur, 1);
			RenderTexture.ReleaseTemporary(currentSource);
			currentSource = currentDestination;
		}

		Graphics.Blit(currentSource, destination, normals);
		RenderTexture.ReleaseTemporary(currentSource);
		//Shader.SetGlobalTexture("_WaterBlurTexture", blurEffectTex);
	}

	void Update()
	{
		if (cam == null) cam = GetComponent<Camera>();
		Shader.SetGlobalMatrix("_WaterBlurMatrix", cam.projectionMatrix * cam.worldToCameraMatrix);
	}
}