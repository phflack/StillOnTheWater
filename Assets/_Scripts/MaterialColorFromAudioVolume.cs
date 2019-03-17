using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Audio;
 public class MaterialColorFromAudioVolume : MonoBehaviour {
	 public Renderer[] renderers;
	 public Color colorA = Color.black, colorB = Color.white;
	 public string propertyName = "_EmissionColor";
     public AudioSource audioSource;
     public float updateStep = 0.1f;
     public int sampleDataLength = 1024;
 
     private float currentUpdateTime = 0f;
	 public float max_magnitude = .8f;
 
     public float clipLoudness;
     private float[] clipSampleData;
 
	 public float audioDelay;
     // Use this for initialization
	 Material instancedMaterial;
     void Awake () {
         if (!audioSource) {
            //  Debug.LogError(GetType() + ".Awake: there was no audioSource set.");
			audioSource = GetComponent<AudioSource>();
         }
		//  if (renderer != null) {
		// 	 instancedMaterial = renderer.material;
		//  }
         clipSampleData = new float[sampleDataLength];
	 }
     private void OnEnable()
	 {
		audioSource.PlayDelayed(audioDelay);
	 }
	 float viewStrength = 0f;
     void Update () {
         currentUpdateTime += Time.deltaTime;
		 if (currentUpdateTime >= updateStep) {
             currentUpdateTime = 0f;
             if (audioSource.clip != null) {
				 audioSource.clip.GetData(clipSampleData, audioSource.timeSamples); //I read 1024 samples, which is about 80 ms on a 44khz stereo clip, beginning at the current sample position of the clip.
             	clipLoudness = 0f;
             	foreach (var sample in clipSampleData) {
             	    clipLoudness += Mathf.Abs(sample);
             	}
             	clipLoudness /= sampleDataLength; //clipLoudness is what you are looking for
			 }
		 }
		clipLoudness = Mathf.Clamp01(clipLoudness / max_magnitude);
		viewStrength = Mathf.Lerp(viewStrength, clipLoudness, 8f * Time.deltaTime);
		//  mixer.GetFloat("MyExposedParam", out clipLoudness);
		if ( renderers != null ) {
			foreach (Renderer r in renderers) {
				r.material.SetColor(propertyName, Color.Lerp(colorA, colorB, viewStrength));
			}
		}
     }
 
 }