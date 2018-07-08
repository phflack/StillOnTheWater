using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PlacementPointIndicator : MonoBehaviour {
	public bool isSelected = false;
	public Image UIelement;
	public float maxSize, minSize;
	public float lerpSpeed = .3f;
	public float currentLerpValue;
	public Transform objectPositionTransform;
	public GameObject attachedBody;

	void Start() {
		isSelected = false;
		currentLerpValue = minSize;
	}

	void Update() {
		if (isSelected) {
			currentLerpValue = currentLerpValue + lerpSpeed * Time.deltaTime;
			currentLerpValue = Mathf.Min (1f, currentLerpValue);
		} else {
			currentLerpValue = currentLerpValue - lerpSpeed * Time.deltaTime;
			currentLerpValue = Mathf.Max (0f, currentLerpValue);
		}

		UIelement.color = Color.Lerp(Color.white, Color.cyan, currentLerpValue);
		UIelement.rectTransform.localScale = Vector3.one * Mathf.Lerp(minSize, maxSize, currentLerpValue);
	}
}