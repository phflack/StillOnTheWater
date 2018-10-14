using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CassetteAudio : MonoBehaviour {
	public AudioClip myAudioClip;

	// Use this for initialization
	void Start () {
		if (myAudioClip == null) {
			Debug.LogError ("Be sure to include an AudioClip for cassette " + gameObject.name);
		}
	}
	
	public void PlayAudio() {
		CassettePlayer.instance.GetComponent<AudioSource> ().clip = myAudioClip;
		CassettePlayer.instance.InsertCassetteAndPlay (gameObject);
	}
}
