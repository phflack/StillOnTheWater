using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

public class MyShortcuts : MonoBehaviour {
	[MenuItem("GameObject/ToggleActive %#a")]
	static void ToggleActive() {
		foreach(GameObject go in Selection.gameObjects) {
			go.SetActive(!go.activeSelf);
		}
	}

	[MenuItem("GameObject/AddEmptyGameObjectNext %DOWN")]
	static void AddEmptyGameObjectNext() {
		Transform lastSelection = Selection.gameObjects[Selection.gameObjects.Length-1].transform;
		GameObject newGo = new GameObject("Empty GameObject");
		newGo.transform.SetParent(lastSelection.parent);
		newGo.transform.SetSiblingIndex(lastSelection.GetSiblingIndex()+1);
		Undo.RegisterCreatedObjectUndo(newGo, "Empty GameObject created by addEmptyGameObjectNext");
	}
	
	[MenuItem("GameObject/AddEmptyGameObjectPrev %UP")]
	static void AddEmptyGameObjectPREV() {
		Transform firstSelection = Selection.gameObjects[0].transform;
		GameObject newGo = new GameObject("Empty GameObject");
		newGo.transform.SetParent(firstSelection.parent);
		newGo.transform.SetSiblingIndex(firstSelection.GetSiblingIndex());
		Undo.RegisterCreatedObjectUndo(newGo, "Empty GameObject created by addEmptyGameObjectPrev");
	}

	[MenuItem("GameObject/AddSelectionToNewGroupObject %G")]
	static void AddSelectionToNewGroupObject() {
		Transform firstSelection = Selection.gameObjects[0].transform;
		GameObject newGo = new GameObject("Group");
		newGo.gameObject.transform.position = firstSelection.transform.position;
		newGo.transform.SetParent(firstSelection.parent);
		newGo.transform.SetSiblingIndex(firstSelection.GetSiblingIndex());
		foreach(GameObject go in Selection.gameObjects) {
			go.transform.SetParent(newGo.transform);
		}
		Selection.activeObject = newGo;
	}
}
