using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public enum FadeEffect{None, FadeIn, FadeOut}
public enum GraphicType{Image, Text, SpriteRenderer, RawImage}
public class Fade_Generic : MonoBehaviour {
	public GraphicType graphic_Type = GraphicType.Image;

	public Text text;
	public Image image;
	public RawImage raw_Image;
	public SpriteRenderer sprite_Renderer;

	public FadeEffect start_Effect = FadeEffect.FadeIn;

	public float time = .5f;
	public GameObject DeactivateAfterFadeOut;

	Color clearColor;
	public Color color = Color.white;

	// Use this for initialization
	void OnEnable () {
		switch(graphic_Type) {
			case GraphicType.Image:
				if (image == null) {
					image = GetComponent<Image>();
				}
				// color = image.color;
				break;
			case GraphicType.Text:
				if (text == null) {
					text = GetComponent<Text>();
				}
				// color = text.color;
				break;
			case GraphicType.RawImage:
				if (raw_Image == null) {
					raw_Image = GetComponent<RawImage>();
				}
				// color = raw_Image.color;
				break;
			case GraphicType.SpriteRenderer:
				if (sprite_Renderer == null) {
					sprite_Renderer = GetComponent<SpriteRenderer>();
				}
				// color = sprite_Renderer.color;
				break;

		}

		clearColor = color;
		clearColor.a = 0f;
		PlayFadeEffect(start_Effect);
	}
	
	public void FadeOut(){
		if (GetComponent<Fade_GenericGroup>() != null) {
			Debug.Log(gameObject.name + " | You're calling FadeOut() on an individual graphic that also has a Fade_GenericGroup attached to it. You might have meant to tell the whole group to fade!");
		}
		PlayFadeEffect(FadeEffect.FadeOut);	
	}

	public void PlayFadeEffect(string effect) {
		//Debug.Log(gameObject.name + " --- " + color);
		FadeEffect parsed_enum = (FadeEffect)System.Enum.Parse( typeof( FadeEffect ), effect );
		PlayFadeEffect(parsed_enum);
	}

	public void PlayFadeEffect(FadeEffect effect) {
		//Debug.Log(gameObject.name + " --- " + color);
		switch(effect){
			case FadeEffect.None:
			break;
			case FadeEffect.FadeIn:
				StartCoroutine(FadeIn(time));
			break;
		case FadeEffect.FadeOut:
			if (gameObject.activeInHierarchy) {
				StartCoroutine (FadeOut (time));
			}
			break;
		}
	}

	public void PlayFadeEffect(FadeEffect effect, float _overrideTime) {
		switch (effect) {
		case FadeEffect.None:
			break;
		case FadeEffect.FadeIn:
			StartCoroutine (FadeIn (_overrideTime));
			break;
		case FadeEffect.FadeOut:
			if (gameObject.activeInHierarchy){
				StartCoroutine (FadeOut (_overrideTime));
		}
			break;
		}
	}

	private IEnumerator FadeIn(float _time) {
		float currTime = 0f;
		while (currTime < _time) {
			//Debug.Log(currTime + " / " + _time);
			currTime += Time.deltaTime;
			float lerpVal = Mathf.InverseLerp(0f, _time, currTime);
			switch(graphic_Type) {
				case GraphicType.Image:
						image.color = Color.Lerp(clearColor, color, lerpVal);
					
					break;
				case GraphicType.Text:
						text.color = Color.Lerp(clearColor, color, lerpVal);
					
					break;
				case GraphicType.RawImage:
						raw_Image.color = Color.Lerp(clearColor, color, lerpVal);
					
					break;
				case GraphicType.SpriteRenderer:
						sprite_Renderer.color = Color.Lerp(clearColor, color, lerpVal);
					
					break;
			}
			yield return new WaitForEndOfFrame();
		} 
	}

	private IEnumerator FadeOut(float _time) {
	float currTime = 0f;
		while (currTime < _time) {
			currTime += Time.deltaTime;
			// invert the lerp. Inlerp.
			float lerpVal = (1f - Mathf.InverseLerp(0f, _time, currTime));
			switch(graphic_Type) {
				case GraphicType.Image:
						image.color = Color.Lerp(clearColor, color, lerpVal);
					
					break;
				case GraphicType.Text:
						text.color = Color.Lerp(clearColor, color, lerpVal);
					
					break;
				case GraphicType.RawImage:
						raw_Image.color = Color.Lerp(clearColor, color, lerpVal);
					
					break;
				case GraphicType.SpriteRenderer:
						sprite_Renderer.color = Color.Lerp(clearColor, color, lerpVal);
					
					break;
			}
			yield return new WaitForEndOfFrame();
		}
		if (DeactivateAfterFadeOut != null) {
			DeactivateAfterFadeOut.SetActive(false);
		}
	}
}
