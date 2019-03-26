using UnityEngine;
using System.Collections;

// Copy meshes from children into the parent's Mesh.
// CombineInstance stores the list of meshes.  These are combined
// and assigned to the attached Mesh.

[RequireComponent(typeof(MeshFilter))]
[RequireComponent(typeof(MeshRenderer))]
public class CombineMeshes : MonoBehaviour
{
    void Start()
    {
        // foreach (Transform child in transform)
        //     child.position += transform.position;
        // transform.position = Vector3.zero;
        // transform.rotation = Quaternion.identity;

        MeshFilter[] meshFilters = GetComponentsInChildren<MeshFilter>();
        CombineInstance[] combine = new CombineInstance[meshFilters.Length-1];
        int index = 0;
        for (int i = 0; i < meshFilters.Length; i++)
        {
            if (meshFilters[i].sharedMesh == null) continue;
            combine[index].mesh = meshFilters[i].sharedMesh;
            combine[index++].transform = transform.worldToLocalMatrix * meshFilters[i].transform.localToWorldMatrix;
            meshFilters[i].GetComponent<Renderer>().enabled = false;
        }

        transform.GetComponent<MeshFilter>().mesh = new Mesh();
        transform.GetComponent<MeshFilter>().mesh.CombineMeshes(combine);
        GetComponent<Renderer>().material = meshFilters[1].GetComponent<Renderer>().sharedMaterial;     
    }
}