using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;
using UnityEngine.UI;

[CustomEditor (typeof(Fade_Generic)), CanEditMultipleObjects]
public class Fade_Generic_Editor : Editor{
	public SerializedProperty graphic_Type;
	public SerializedProperty text, image, raw_Image, sprite_Renderer;
	public SerializedProperty start_Effect, time, DeactivateAfterFadeOut, color;
	private Fade_Generic fade_component;

	void OnEnable() {
		fade_component = (Fade_Generic)target;
		graphic_Type = serializedObject.FindProperty("graphic_Type");
		text = serializedObject.FindProperty("text");
		image = serializedObject.FindProperty("image");
		raw_Image = serializedObject.FindProperty("raw_Image");
		sprite_Renderer = serializedObject.FindProperty("sprite_Renderer");
		start_Effect = serializedObject.FindProperty("start_Effect");
		time = serializedObject.FindProperty("time");
		DeactivateAfterFadeOut = serializedObject.FindProperty("DeactivateAfterFadeOut");
		color = serializedObject.FindProperty("color");
		// if a target is not already selected,
		// attempt to guess which graphic type was intended by checking the other components present on this object
		if (fade_component.image == null && fade_component.text == null && fade_component.raw_Image == null && fade_component.sprite_Renderer == null) {
			if (fade_component.gameObject.GetComponent<Image>() != null) {
				fade_component.graphic_Type = GraphicType.Image;
				fade_component.image = fade_component.gameObject.GetComponent<Image>();
			} else if (fade_component.gameObject.GetComponent<Text>() != null) {
				fade_component.graphic_Type = GraphicType.Text;
				fade_component.text = fade_component.gameObject.GetComponent<Text>();
			} else if (fade_component.gameObject.GetComponent<RawImage>() != null) {
				fade_component.graphic_Type = GraphicType.RawImage;
				fade_component.raw_Image = fade_component.gameObject.GetComponent<RawImage>();
			} else if (fade_component.gameObject.GetComponent<SpriteRenderer>() != null) {
				fade_component.graphic_Type = GraphicType.SpriteRenderer;
				fade_component.sprite_Renderer = fade_component.gameObject.GetComponent<SpriteRenderer>();
			}
		}
	}

	public override void OnInspectorGUI() {
		// get the value of the current selection on the "Graphic_Type" enum dropdown,
		//   before beginChangeCheck()
		GraphicType previousGraphicType = GraphicType.Image;//serializedObject.FindProperty("graphic_Type").Value<GraphicType>();
		EditorGUI.BeginChangeCheck();		
		EditorGUILayout.PropertyField (graphic_Type);
		GraphicType _graphic_Type = GraphicType.Image;//graphic_Type.Value<GraphicType>();
		EditorGUI.indentLevel++;
		switch(_graphic_Type) {
			case GraphicType.Image:
				EditorGUILayout.PropertyField (image);
				break;
			case GraphicType.Text:
				EditorGUILayout.PropertyField (text);
				break;
			case GraphicType.RawImage:
				EditorGUILayout.PropertyField (raw_Image);		
				break;
			case GraphicType.SpriteRenderer:
				EditorGUILayout.PropertyField (sprite_Renderer);
				break;
		}
		EditorGUI.indentLevel--;
		EditorGUILayout.Space();
		EditorGUILayout.Space();
		EditorGUILayout.PropertyField(start_Effect);
		EditorGUILayout.PropertyField(time);
		EditorGUILayout.PropertyField(DeactivateAfterFadeOut);
		EditorGUILayout.PropertyField(color);
		if (GUILayout.Button("Match Target Color")) {
			switch(_graphic_Type) {
				case GraphicType.Image:
					if (fade_component.gameObject.GetComponent<Image>() != null) {
						fade_component.color = fade_component.gameObject.GetComponent<Image>().color;
					}
					break;
				case GraphicType.Text:
					if (fade_component.gameObject.GetComponent<Text>() != null) {
						fade_component.color = fade_component.gameObject.GetComponent<Text>().color;
					}
					break;
				case GraphicType.RawImage:
					if (fade_component.gameObject.GetComponent<RawImage>() != null) {
						fade_component.color = fade_component.gameObject.GetComponent<RawImage>().color;
					}
					break;
				case GraphicType.SpriteRenderer:
					if (fade_component.gameObject.GetComponent<SpriteRenderer>() != null) {
						fade_component.color = fade_component.gameObject.GetComponent<SpriteRenderer>().color;
					}
					break;
			}
		}
	
		if (EditorGUI.EndChangeCheck ()) {
			
			// apply property changes
			serializedObject.ApplyModifiedProperties ();
			// check if it's different
			if (previousGraphicType != _graphic_Type) {
				// try autofilling the required reference
				switch(_graphic_Type) {
					case GraphicType.Image:
						fade_component.image = fade_component.gameObject.GetComponent<Image>();
						break;
					case GraphicType.Text:
						fade_component.text = fade_component.gameObject.GetComponent<Text>();
						break;
					case GraphicType.RawImage:
						fade_component.raw_Image = fade_component.gameObject.GetComponent<RawImage>();
						break;
					case GraphicType.SpriteRenderer:
						fade_component.sprite_Renderer = fade_component.gameObject.GetComponent<SpriteRenderer>();
						break;
				}
			}
		}
	}
}