using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[ExecuteInEditMode]
public class spawnMeshAlongFaces : MonoBehaviour {
	Mesh mesh;
	public bool randomize;
	public bool keepOld = false;
	public int count = 10;
	public Vector3 worldSpawnAxis = Vector3.up;
	public float angleLimit = 45f;
	public float bias = 1f;
	public GameObject[] objs2Clone;
	public Vector3 alignmentAxis;
	public Vector3 postRotate;
	[Range(0f, 1f)]
	public float alignToNormal;


	GameObject instiatedObjectGroup;
	// Update is called once per frame
	void Update () {
		if (randomize) {
			randomize = false;
			if (!keepOld && instiatedObjectGroup != null) DestroyImmediate(instiatedObjectGroup);
			instiatedObjectGroup = new GameObject ("InstantiatedObjects");
			instiatedObjectGroup.transform.SetParent(transform);
			instiatedObjectGroup.transform.localPosition = Vector3.zero;
			mesh = GetComponent<MeshFilter>().sharedMesh;
			Vector3[] verts = mesh.vertices;
			Vector3[] norms = mesh.normals;
			int triCount = mesh.triangles.Length / 3;
			int placements = 0;
			while (placements < count) {
				int picktri = Random.Range(0, (mesh.triangles.Length/3)-1);
				int i = picktri*3;
				// for (int i = 0; i <= mesh.triangles.Length-3; i+=3) {
				Vector3[] vertices = {verts[mesh.triangles[i]], verts[mesh.triangles[i+1]], verts[mesh.triangles[i+2]]};
				Vector3[] normals = {norms[mesh.triangles[i]], norms[mesh.triangles[i+1]], norms[mesh.triangles[i+2]]};
				//Heron's forumla https://www.mathwarehouse.com/geometry/triangles/area/herons-formula-triangle-area.php
				float a = Vector3.Distance(vertices[0], vertices[1]);
				float b = Vector3.Distance(vertices[0], vertices[2]);
				float c = Vector3.Distance(vertices[2], vertices[1]);
				float s = (a + b + c) / 2;
				float area = Mathf.Sqrt(s*(s-a)*(s-b)*(s-c));
				Vector3 averageNormal =  transform.TransformDirection((normals[0] + normals[1] + normals[2]).normalized);
				if (Vector3.Angle(averageNormal, worldSpawnAxis) < angleLimit && Random.Range(0f, 1f) > (bias-area)) {
					// do some spawns
					float r1 = Random.Range(0f, 1f);
					float r2 = Random.Range(0f, 1f);
					// https://math.stackexchange.com/questions/18686/uniform-random-point-in-triangle
					Vector3 randomPoint = vertices[0]*(1-Mathf.Sqrt(r1)) + vertices[1]*(Mathf.Sqrt(r1)*(1-r2)) + vertices[2]*r2*Mathf.Sqrt(r1);
					randomPoint = transform.TransformPoint(randomPoint);
					// Debug.DrawRay((randomPoint), averageNormal, Color.red, 1f);
					if (objs2Clone != null && objs2Clone.Length > 0) {
						// using an aribitrary look forward vector
						GameObject newo = Instantiate(objs2Clone[Random.Range(0, objs2Clone.Length)], randomPoint, Quaternion.identity, instiatedObjectGroup.transform);
						Quaternion normalRotation = Quaternion.FromToRotation(newo.transform.TransformDirection(alignmentAxis), averageNormal);
						Quaternion worldSpawnAxisRotation = Quaternion.FromToRotation(newo.transform.TransformDirection(alignmentAxis), worldSpawnAxis);
						newo.transform.rotation = Quaternion.Lerp(worldSpawnAxisRotation, normalRotation, alignToNormal);
						// newo.transform.rotation *= Quaternion.AngleAxis(Random.Range(0f, 360f), transform.TransformDirection(alignmentAxis));
					}
					placements++;
				}
				// }
			}
			//UnityEditor.Undo.RegisterCreatedObjectUndo(instiatedObjectGroup, "Spawned some things on a mesh surface");
		}
	}

	private void OnDrawGizmosSelected()
	{
		Gizmos.color = Color.green;
		Gizmos.DrawLine(transform.position, transform.position+worldSpawnAxis *2);
	}
}
