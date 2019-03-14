using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;

public class ObjectFly : MonoBehaviour
{
    public bool playNow = false;
    bool played = false;
    public Transform triggerer;
    public float radius = 5f;
    public ArtifactManager artifacts;
    public Transform[] positions;
   
    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.O))
        {
            for(int i = 0; i< positions.Length; i++)
            {
                artifacts.artifacts[i].GetComponent<MatchPositionAndRotationOverTime>().target = positions[i];
                artifacts.artifacts[i].GetComponent<MatchPositionAndRotationOverTime>().GoNow();
            }
            played = true;
            this.enabled = false;
        }
        if (!played && triggerer != null && Vector3.Distance(transform.position, triggerer.position) < radius)
        {
            for (int i = 0; i < positions.Length; i++)
            {
                artifacts.artifacts[i].gameObject.transform.parent = null;
                artifacts.artifacts[i].GetComponent<MatchPositionAndRotationOverTime>().target = positions[i];
                artifacts.artifacts[i].GetComponent<MatchPositionAndRotationOverTime>().GoNow();
            }
            played = true;
        }
    }

}