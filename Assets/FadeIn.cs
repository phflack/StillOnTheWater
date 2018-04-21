using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FadeIn : MonoBehaviour {

    public float fadeTime = 0.8f;
    public Material m;

	// Use this for initialization
	void Start () {
        m.color = new Color(0, 0, 0, 1f);
	}
	
	// Update is called once per frame
	void Update () {
        if (m.color.a > 0)
        {
            m.color = new Color(0, 0, 0, m.color.a - ((1 / fadeTime) * Time.deltaTime));
        }
    }
}
