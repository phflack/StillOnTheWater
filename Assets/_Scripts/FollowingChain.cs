using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FollowingChain : MonoBehaviour {
	public Transform[] _joints;
	List<FollowingChainJoint> joints;
	// Use this for initialization
	void Start () {
		joints = new List<FollowingChainJoint>();
		foreach (Transform j in _joints) {
			joints.Add(new FollowingChainJoint(j));
		}
	}
	
	float headPositionDelta, distToNext;
	Vector3 offsetFromNext;
	FollowingChainJoint next, thisJoint;
	// Update is called once per frame
	void Update () {
		headPositionDelta = joints[0].velocity.magnitude; 
		// skip the 'head'
		Vector3 startPoint;
		for(int i = 1; i < joints.Count; i++) {
			next = joints[i-1];
			thisJoint = joints[i];
			offsetFromNext = next.lastPinnedPosition - thisJoint.jointTransform.position;
			distToNext = offsetFromNext.magnitude;
			startPoint = thisJoint.jointTransform.position;
			// if we would move past our target
			if (headPositionDelta > distToNext) {
				// move to target
				thisJoint.Move(offsetFromNext);
				// set new target
				next.PinCurrentPosition();
				// move the leftover distance toward the new target
				float extraMove = headPositionDelta - distToNext;
				offsetFromNext = next.lastPinnedPosition - thisJoint.jointTransform.position;
				thisJoint.Move(offsetFromNext.normalized * extraMove);
			} else {
				thisJoint.Move(offsetFromNext.normalized * headPositionDelta);
			}
			Debug.DrawLine(startPoint, (startPoint + offsetFromNext), Color.red);
			// update joint info
			thisJoint.RecordLastFramePosition();
			// thisJoint.PinCurrentPosition();
		}
		// update head joint info
		joints[0].RecordLastFramePosition();
		// joints[0].PinCurrentPosition();
	}
}

public class FollowingChainJoint {
	public Transform jointTransform;
	public Vector3 lastPinnedPosition;
	public Vector3 lastFramePosition;

	public Vector3 velocity {
		get {
			return jointTransform.position - lastFramePosition;
		}
	}
	
	public FollowingChainJoint(Transform t) {
		jointTransform = t;
		lastFramePosition = t.position;
		lastFramePosition = t.position;
		PinCurrentPosition();
		RecordLastFramePosition();
	}

	public void RecordLastFramePosition() {
		lastFramePosition = jointTransform.position;
	}

	public void PinCurrentPosition() {
		lastPinnedPosition = jointTransform.position;
	}

	public void Move(Vector3 offset) {
		jointTransform.position = jointTransform.position + offset;
	}
}
