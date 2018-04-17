using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent (typeof(AudioSource))]
public class CassettePlayer : MonoBehaviour {
	public static CassettePlayer instance;
	AudioSource myAudioSource;
	bool playing = false;

	GameObject original;
	GameObject insertedCassette;

	public Transform[] cassettePlayerWheels;

	void Start() {
		instance = this;
		myAudioSource = GetComponent<AudioSource> ();
	}

	public void Stop() {
		playing = false;
		Destroy (insertedCassette);
		original.SetActive (true);
		myAudioSource.Stop ();
	}

	public void InsertCassetteAndPlay(GameObject _original) {
		if (original != null) {
			original.SetActive (true);
			Destroy(insertedCassette);
		}
		original = _original;
		insertedCassette = Instantiate (original, transform);
		insertedCassette.name = original.name;
		insertedCassette.transform.localRotation = Quaternion.Euler (0f, 0f, 0f);
		insertedCassette.transform.localPosition = new Vector3(0f, 0f, -.01f);
		insertedCassette.transform.localScale = new Vector3 (.9f, .9f, .9f);
		insertedCassette.GetComponent<OutlineMirrorObject> ().enabled = false;
		original.SetActive (false);
		myAudioSource.Stop ();
		playing = true;
		myAudioSource.Play ();
	}

	void Update() {
		if (playing) {
			foreach (Transform t in cassettePlayerWheels) {
				t.Rotate (new Vector3 (0f, 0f, 120f));
			}
		}
	}
}
