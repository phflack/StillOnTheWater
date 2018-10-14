using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DrawObjectsInstanced : MonoBehaviour {
	//	It is expected that there will be several different groups of similar objects for
	//    which it's desirable to use GPU isntancing, so we keep a static least of each important attribute
	// 	  of those groups, organized by an arbitrary unique identifier defined in the inspector.
	//
	// 	  each group 
	public static Dictionary<string, Mesh> meshes;
	public static Dictionary<string, List<Matrix4x4>> transformationMatriceses;
	public static Dictionary<string, Material> materials;

	//	public List<Matrix4x4> transformationMatrices;

	public string identifier;
	public Mesh mesh;
	public Material mat;

	// when set to true, transform matrix is recorded in Start(). otherwise, it is caused by RecordTransformation();
	public bool RecordTransformationOnStart = false;


    // Use this for initialization
    void Start()
    {
        if (meshes == null || transformationMatriceses == null || materials == null)
        {
//            Debug.Log("Initializing GPU Instance matrices...");
            meshes = new Dictionary<string, Mesh>();
            transformationMatriceses = new Dictionary<string, List<Matrix4x4>>();
            materials = new Dictionary<string, Material>();
        }
        if (!meshes.ContainsKey(identifier))
        {
//            Debug.Log("Adding GPU Instance group key: " + identifier + " - from object: " + gameObject.name);
            meshes[identifier] = mesh;
            transformationMatriceses[identifier] = new List<Matrix4x4>();
            materials[identifier] = mat;
        }

        if (RecordTransformationOnStart || true)
        {
            //oversimplified pruning of the list of trees. Chops of 650 trees  each time.
            if (transformationMatriceses[identifier].Count >= 1000)
            {
                for (int i = 0; i < transformationMatriceses[identifier].Count - 650; i++)
                {
                    transformationMatriceses[identifier][i] = transformationMatriceses[identifier][i + 650];
                }
                transformationMatriceses[identifier].RemoveRange(transformationMatriceses[identifier].Count - 650, 650);
            }
            transformationMatriceses[identifier].Add(Matrix4x4.TRS(transform.position, transform.rotation, transform.lossyScale));
        }
    }

	public void RecordTransformation() {
//		Debug.Log ("Recording Transformations");
		if (!RecordTransformationOnStart && false) {
//			transformationMatriceses [identifier].Add (Matrix4x4.TRS (transform.position, transform.rotation, transform.lossyScale));
		} else {
//			Debug.LogWarning ("Not Recording Object transformation because it was already recorded in Start()");
		}
	}
}
