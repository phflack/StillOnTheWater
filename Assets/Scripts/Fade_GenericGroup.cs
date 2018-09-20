using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Fade_GenericGroup : MonoBehaviour {
	public Fade_Generic[] targets;

	void Start() {
		if (targets == null || targets.Length == 0) {
			FillTargetsList();
		}
	}

	public void FadeOut() {
		PlayFadeEffect(FadeEffect.FadeOut);
	}

	public void PlayFadeEffect(string effect) {
		foreach(Fade_Generic target in targets){
			target.PlayFadeEffect(effect);
		}
	}

	public void PlayFadeEffect(FadeEffect effect) {
		foreach(Fade_Generic target in targets){
			target.PlayFadeEffect(effect);
		}
	}

	public void PlayFadeEffect(FadeEffect effect, float _overrideTime) {
		foreach(Fade_Generic target in targets){
			target.PlayFadeEffect(effect, _overrideTime);
		}
	}

	public void FillTargetsList() {
		targets = GetComponentsInChildren<Fade_Generic>(true);
	}
}
