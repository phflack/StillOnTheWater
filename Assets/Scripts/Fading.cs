using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Fading : MonoBehaviour {
    
    public float fadeTime = 0.8f;

    public bool fadeStarted = false;

    public Light fadeLight;
    public Light fadeLight2;
    public Material m;

    private int fadeDir = -1; //direction to fade -1 = fade in, +1 = fade out

    private void Start()
    {
        fadeStarted = false;
        m.color = new Color(m.color.r, m.color.g, m.color.b, 0f);
    }

    void Update()
    {
        if(fadeStarted)
        {
            if (m.color.a < 1)
            {
                m.color = new Color(m.color.r, m.color.g, m.color.b, m.color.a + ((1 / fadeTime) * Time.deltaTime));
            }

        }
        

    }

    public float BeginFade(int direction)
    {

        fadeDir = direction;
        return (fadeTime);

    }

    private void OnLevelWasLoaded(int level)
    {
        BeginFade(-1);
    }
}