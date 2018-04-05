using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DrawObjectsInstancedManager : MonoBehaviour {
	// I hope this works lol
	void Update () {
		if (DrawObjectsInstanced.meshes == null) {
			return;
		}
		foreach (string meshGroupIdentifier in DrawObjectsInstanced.meshes.Keys) {
			Debug.Log ("GPUInstance drawing Object Group \"" + meshGroupIdentifier + "\". (" + DrawObjectsInstanced.transformationMatriceses[meshGroupIdentifier].Count + " instances)");
			Graphics.DrawMeshInstanced(DrawObjectsInstanced.meshes[meshGroupIdentifier],
										0,
										DrawObjectsInstanced.materials[meshGroupIdentifier],
										DrawObjectsInstanced.transformationMatriceses[meshGroupIdentifier],
										null,
										UnityEngine.Rendering.ShadowCastingMode.On
									 );
		}
	}
}
