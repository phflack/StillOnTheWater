using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EndSceneManager : MonoBehaviour
{

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
            UnityEngine.SceneManagement.SceneManager.LoadScene(0);

        }

        if (Input.GetKey(KeyCode.Escape))
        {

            Application.Quit();

        }

    }
}
