using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

[RequireComponent(typeof(MeshRenderer))]
public class FadeOutManager : MonoBehaviour {
    Material mat;
    public float transitionTime = 8f;
    public bool transitioning = false;
    public UnityEvent onFadeOut;

    private void Start()
    {
        mat = GetComponent<MeshRenderer>().material;
        StartFadeIn();
    }

    public void StartFadeOut()
    {
        if (!transitioning)
        {
            Debug.Log("not already transitioning. Starting Coroutine.");
            StartCoroutine(FadeOut());
            transitioning = true;

            Debug.Log("made it this far");
        }
    }

    public void StartFadeIn()
    {
        if (!transitioning)
        {
            StartCoroutine(FadeIn());
            transitioning = true;
        }
    }


    private IEnumerator FadeOut()
    {
        Debug.Log("Coroutine started");
        float lerpProgress = 0f;
        while (lerpProgress < 1f)
        {
            lerpProgress += Time.deltaTime / transitionTime;
            Color color = GetComponent<MeshRenderer>().material.GetColor("_Color");
            color.a = lerpProgress;
            GetComponent<MeshRenderer>().material.SetColor("_Color", color);
          //  GetComponent<MeshRenderer>().material = mat;
            yield return new WaitForEndOfFrame();
        }
        Debug.Log("here");
        onFadeOut.Invoke();
        transitioning = false;
    }


    private IEnumerator FadeIn()
    {
        float lerpProgress = 1f;
        while (lerpProgress > 0f)
        {
            lerpProgress -= Time.deltaTime / transitionTime;
            Color color = GetComponent<MeshRenderer>().material.GetColor("_Color");
            color.a = lerpProgress;
            GetComponent<MeshRenderer>().material.SetColor("_Color", color);
            //  GetComponent<MeshRenderer>().material = mat;
            yield return new WaitForEndOfFrame();
        }

        transitioning = false;
    }


}
