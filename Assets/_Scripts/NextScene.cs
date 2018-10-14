using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NextScene : MonoBehaviour {

    public Fading f;

    public float fadeTime = 0.8f;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {

        if(Input.GetButton("A") || Input.GetKey(KeyCode.A))
        {

            //move to next scene

            //float fadeTime = GameObject.Find("FadeManager").GetComponent<Fading>().BeginFade(1);


            f.fadeStarted = true;
            StartCoroutine(fade(fadeTime));


        }

        if(Input.GetKey(KeyCode.Escape))
        {

            Application.Quit();

        }
		
	}
    IEnumerator fade(float time)
    {

        yield return new WaitForSeconds(time);

        UnityEngine.SceneManagement.SceneManager.LoadScene(1);

    }
}
