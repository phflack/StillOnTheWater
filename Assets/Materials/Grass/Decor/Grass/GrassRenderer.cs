using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[ExecuteInEditMode]
public class GrassRenderer : MonoBehaviour {

    public Mesh grassMesh;
    public Material grassMaterial;

    public Vector2 size;
    [Range(0, 1022)]
    public int numGrasses;
    public int seed;

    public float startHeight = 1000;
    public float GrassOffSet = 0f;
	public LayerMask mask;

    // Use this for initialization
    void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        Debug.Log(grassMaterial.enableInstancing);
        Random.InitState(seed);
        List<Matrix4x4> matrices = new List<Matrix4x4>(numGrasses);
        for(int i = 0; i < numGrasses; i++)
        {
            Vector3 origin = transform.position;
            origin.y = startHeight;
            origin.x += size.x * Random.Range(-.5f, .5f);
            origin.z += size.y * Random.Range(-.5f, .5f);
            Ray ray = new Ray(origin, Vector3.down);
            RaycastHit hit;
            if(Physics.Raycast(ray, out hit,1000f,mask))
            {
                //origin = hit.point;
                origin = hit.point + (Vector3.up * GrassOffSet);
                matrices.Add(Matrix4x4.TRS(origin, Quaternion.identity, Vector3.one /*/* Random.Range(.5f, 5))*/));
            }
        }
        Graphics.DrawMeshInstanced(grassMesh,0, grassMaterial, matrices, null, UnityEngine.Rendering.ShadowCastingMode.Off);
	}
}
