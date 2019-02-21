using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FadeIn : MonoBehaviour {

    public float fadeTime = 0.8f;
    public Material m;

    public bool fadingIn= false;
    public bool fadingOut = false;

	// Use this for initialization
	void Start () {
        m.color = new Color(0, 0, 0, 1f);
        fadingIn = true;
	}
	
	// Update is called once per frame
	void Update () {
        if (m.color.a > 0 && fadingIn)
        {
            m.color = new Color(0, 0, 0, m.color.a - ((1 / fadeTime) * Time.deltaTime));
        }
        else if(m.color.a <= 0 && fadingIn)
        {
            fadingIn = false; //we're done here
        }
        else if(fadingOut)
        {
            if (m.color.a < 1)
            {
                m.color = new Color(0, 0, 0, m.color.a + ((1 / fadeTime) * Time.deltaTime));
            }
            else //we're done
            {
                fadingOut = false;
            }


        }
    }

    public void fadeIn()
    {
        fadingIn = true;
    }

    public void fadeOut()
    {
        fadingOut = true;
    }
}
