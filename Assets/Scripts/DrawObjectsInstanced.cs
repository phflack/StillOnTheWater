using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DrawObjectsInstanced : MonoBehaviour {
	public static List<Matrix4x4> transformationMatrices;

	public Mesh mesh;
	int count = 0;
	public Material mat;

	// Use this for initialization
	void Start () {
		count ++;
		transformationMatrices.Add (Matrix4x4.TRS (transform.position, transform.rotation, transform.localScale));
	}
	
	// Update is called once per frame
	void Update () {
		Graphics.DrawMeshInstanced(mesh,0, mat, transformationMatrices, null, UnityEngine.Rendering.ShadowCastingMode.On);
	}
}
