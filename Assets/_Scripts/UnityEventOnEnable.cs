using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
public class UnityEventOnEnable : MonoBehaviour {
	public UnityEvent OnEnabled;
	// Use this for initializatio
	
	void OnEnable() {
		OnEnabled.Invoke();
	}
}
