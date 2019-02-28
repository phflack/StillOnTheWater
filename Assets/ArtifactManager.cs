using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ArtifactManager : MonoBehaviour {

    public List<GameObject> angelaArtifacts;

	// Use this for initialization
	void Start () {
        angelaArtifacts = new List<GameObject>();
	}
	
	public void addObject(string characterName, GameObject obj)
    {
        if(characterName == "Angela")
        {
            angelaArtifacts.Add(obj);
        }
    }
}
