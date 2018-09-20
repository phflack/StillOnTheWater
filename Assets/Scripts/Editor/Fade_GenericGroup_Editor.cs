using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEditor;

[CustomEditor (typeof(Fade_GenericGroup))]
public class Fade_GenericGroup_Editor : Editor {
	private Fade_GenericGroup fade_group_component;
	void OnEnable() {
		fade_group_component = (Fade_GenericGroup) target;
		if (fade_group_component.targets == null || targets.Length == 0) {
			fade_group_component.FillTargetsList();
		}
	}

	public override void OnInspectorGUI() {
		DrawDefaultInspector();
		if (GUILayout.Button("Find Children")) {
			fade_group_component.FillTargetsList();
		}
		if (GUILayout.Button("Auto-Add Fade_Generic Components")) {
			Image[] images = fade_group_component.gameObject.GetComponentsInChildren<Image>();
			Text[] Texts = fade_group_component.gameObject.GetComponentsInChildren<Text>();
			SpriteRenderer[] SpriteRenderers = fade_group_component.gameObject.GetComponentsInChildren<SpriteRenderer>();
			RawImage[] RawImages = fade_group_component.gameObject.GetComponentsInChildren<RawImage>();
			foreach(Image image in images) {
				if (image.gameObject.GetComponent<Fade_Generic>() == null){
					image.gameObject.AddComponent(typeof(Fade_Generic));
				}
			}
			foreach(Text text in Texts) {
				if (text.gameObject.GetComponent<Fade_Generic>() == null){
					text.gameObject.AddComponent(typeof(Fade_Generic));
				}
			}
			foreach(SpriteRenderer spriteRenderer in SpriteRenderers) {
				if (spriteRenderer.gameObject.GetComponent<Fade_Generic>() == null){
					spriteRenderer.gameObject.AddComponent(typeof(Fade_Generic));
				}
			}
			foreach(RawImage rawimage in RawImages) {
				if (rawimage.gameObject.GetComponent<Fade_Generic>() == null){
					rawimage.gameObject.AddComponent(typeof(Fade_Generic));
				}
			}
			fade_group_component.FillTargetsList();
		}
	}
}
