using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class CollectableRange : MonoBehaviour {
	public Transform trackedTransform;
	public RangeLevel far, close, closer, closest;
	enum DistanceLevel {Far, Close, Closer, Closest}
	DistanceLevel currentDistanceLevel;
	DistanceLevel CurrentDistanceLevel {
		get{return currentDistanceLevel;}
		set{
			if (!currentDistanceLevel.Equals(value)) {
				switch (value) {
					case DistanceLevel.Far:
						far.OnEnter.Invoke();
						Debug.Log("FAR");
					break;
					case DistanceLevel.Close:
						close.OnEnter.Invoke();
						Debug.Log("CLOSE");
					break;
					case DistanceLevel.Closer:
						closer.OnEnter.Invoke();
						Debug.Log("CLOSER");
					break;
					case DistanceLevel.Closest:
						closest.OnEnter.Invoke();
						Debug.Log("CLOSEST");
					break;
				}
			}
			currentDistanceLevel = value;
		}
	}

	private void Update()
	{
		float distance = Vector3.Distance(trackedTransform.position, transform.position);
		if (distance < closest.range) {
			CurrentDistanceLevel = DistanceLevel.Closest;
		} else if (distance < closer.range) {
			CurrentDistanceLevel = DistanceLevel.Closer;
		} else if (distance < close.range) {
			CurrentDistanceLevel = DistanceLevel.Close;
		} else if (distance < far.range) {
			CurrentDistanceLevel = DistanceLevel.Far;
		}

	}

	private void OnDrawGizmos()
	{
		Gizmos.color = far.color;
		GizmoCircle.DrawCircle(transform.position, Vector3.up, far.range);
		Gizmos.color = close.color;
		GizmoCircle.DrawCircle(transform.position, Vector3.up, close.range);
		Gizmos.color = closer.color;
		GizmoCircle.DrawCircle(transform.position, Vector3.up, closer.range);
		Gizmos.color = closest.color;
		GizmoCircle.DrawCircle(transform.position, Vector3.up, closest.range);
	}
}

[System.Serializable]
public class RangeLevel {
	public Color color = Color.green;
	public float range = 1f;
	public UnityEvent OnEnter;
}
