using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class LoadScene : MonoBehaviour 
{
    public void Load(string scenename)
    {
        Debug.Log("loading scene " + scenename);
        SceneManager.LoadScene(scenename);
    }
}
