using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EndSceneManager : MonoBehaviour
{

    public AudioSource music;

    // Use this for initialization
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {

        if (Input.GetKey("joystick button 0") || Input.GetKey(KeyCode.A))
        {

            //move to next scene
          //  float fadeTime = GameObject.Find("FadeManager").GetComponent<Fading>().BeginFade(1);
            //StartCoroutine(fade(fadeTime));

        }

        if (Input.GetKey(KeyCode.Escape))
        {

            Application.Quit();

        }

    }

    IEnumerator fade(float time)
    {
        yield return new WaitForSeconds(time);

        UnityEngine.SceneManagement.SceneManager.LoadScene(0);

    }


    
}
