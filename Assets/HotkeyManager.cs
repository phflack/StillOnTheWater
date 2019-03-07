using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HotkeyManager : MonoBehaviour {


    public Transform[] hotkeyLocations = new Transform[9];

    public GameObject kayakGroup;

    public FadeIn kayakFader;

    public float fadePadding = .2f;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		if(Input.GetKeyDown(KeyCode.Alpha1) || Input.GetKeyDown(KeyCode.Keypad1))
        {
            StartCoroutine(moveKayak(0));
        }
        if (Input.GetKeyDown(KeyCode.Alpha2) || Input.GetKeyDown(KeyCode.Keypad2))
        {
            StartCoroutine(moveKayak(1));
        }
        if (Input.GetKeyDown(KeyCode.Alpha3) || Input.GetKeyDown(KeyCode.Keypad3))
        {
            StartCoroutine(moveKayak(2));
        }
        if (Input.GetKeyDown(KeyCode.Alpha4) || Input.GetKeyDown(KeyCode.Keypad4))
        {
            StartCoroutine(moveKayak(3));
        }
        if (Input.GetKeyDown(KeyCode.Alpha5) || Input.GetKeyDown(KeyCode.Keypad5))
        {
            StartCoroutine(moveKayak(4));
        }
        if (Input.GetKeyDown(KeyCode.Alpha6) || Input.GetKeyDown(KeyCode.Keypad6))
        {
            StartCoroutine(moveKayak(5));
        }
        if (Input.GetKeyDown(KeyCode.Alpha7) || Input.GetKeyDown(KeyCode.Keypad7))
        {
            StartCoroutine(moveKayak(6));
        }
        if (Input.GetKeyDown(KeyCode.Alpha8) || Input.GetKeyDown(KeyCode.Keypad8))
        {
            StartCoroutine(moveKayak(7));
        }
        if (Input.GetKeyDown(KeyCode.Alpha9) || Input.GetKeyDown(KeyCode.Keypad9))
        {
            StartCoroutine(moveKayak(8));
        }
       
    }


    public IEnumerator moveKayak(int hotkeyLocation)
    {
        //this is where we move the stuff and we fade
        if(hotkeyLocations[hotkeyLocation] != null)
        {
            kayakFader.fadeOut();

            yield return new WaitForSeconds(kayakFader.fadeTime + fadePadding);

            kayakGroup.transform.position = new Vector3(hotkeyLocations[hotkeyLocation].position.x, kayakGroup.transform.position.y, hotkeyLocations[hotkeyLocation].position.z);
            //move it in the dark

            yield return new WaitForSeconds(fadePadding);

            kayakFader.fadeIn();


        }
    }
}
