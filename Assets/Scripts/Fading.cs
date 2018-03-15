using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Fading : MonoBehaviour {

    public Texture2D fadeGraphic;
    public float fadeTime = 0.8f;
    

    private int drawDepth = -1000;

    private float alpha = 1.0f;
    private float vol = 0f;

    private int fadeDir = -1; //direction to fade -1 = fade in, +1 = fade out

    private void OnGUI()
    {
        alpha += fadeDir * fadeTime * Time.deltaTime;
        alpha = Mathf.Clamp01(alpha);


        GUI.color = new Color(GUI.color.r, GUI.color.g, GUI.color.b, alpha);

        GUI.depth = drawDepth;
        GUI.DrawTexture(new Rect(0, 0, Screen.width, Screen.height), fadeGraphic);
       
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
