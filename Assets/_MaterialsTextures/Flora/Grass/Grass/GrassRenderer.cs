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
	public float hitNormalThreshold;

	Vector3 origin;
	Ray ray;
	RaycastHit hit;
	List<Matrix4x4> matrices;

    // Use this for initialization
    void Start () {
		origin = transform.position;
//		StartCoroutine (GrassUpdate ());
		StartCoroutine(GrassUpdate());
	}
	
	// Update is called once per frame
	public IEnumerator GrassUpdate () {
		
//        Debug.Log(grassMaterial.enableInstancing);
        Random.InitState(seed);
        matrices = new List<Matrix4x4>(numGrasses);
        for(int i = 0; i < numGrasses; i++)
        {
			ray = new Ray(new Vector3(origin.x + size.x * Random.Range(-.5f,.5f), startHeight,origin.z + size.y * Random.Range(-.5f,.5f)), Vector3.down);
            if(Physics.Raycast(ray, out hit,1000f,mask))
            {
				if (Vector3.Dot (hit.normal, Vector3.up) > hitNormalThreshold) {
					matrices.Add (Matrix4x4.TRS ((hit.point + (Vector3.up * GrassOffSet)), Quaternion.AngleAxis(Random.Range(0f, 360f), Vector3.up), Vector3.one));
				}
            }
        }
		yield return new WaitForSeconds (2f);
		StartCoroutine(GrassUpdate());
	}

	void Update() {
		Graphics.DrawMeshInstanced(grassMesh,0, grassMaterial, matrices, null, UnityEngine.Rendering.ShadowCastingMode.Off);
	}

    private void OnDrawGizmosSelected()
    {
        Gizmos.color = Color.green * new Vector4(1f,1f,1f,.5f);
        Gizmos.DrawCube(transform.position + (-startHeight / 2f) * Vector3.up, new Vector3 (size.x, startHeight, size.y));
    }
}
