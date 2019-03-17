using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using VRTK;

public class ArtifactManager : MonoBehaviour {

    public GameObject[] artifacts;
    public int index = 0;
    public GameObject[] bones;

    private void Start()
    {
    }

    public void addArtifact(Artifact artifact)
    {
        artifact.mover.target = bones[index].transform;
        artifact.mover.GoNow();
        artifact.transform.parent = bones[index].transform;
        artifacts[index] = artifact.gameObject;
        index++;
    }
}
