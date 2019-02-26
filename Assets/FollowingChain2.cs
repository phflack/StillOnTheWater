using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FollowingChain2 : MonoBehaviour {
	public Transform[] _joints;
	List<FollowingChain2Joint> joints;
	// Use this for initialization
	void Start () {
		joints = new List<FollowingChain2Joint>();
		foreach (Transform j in _joints) {
			joints.Add(new FollowingChain2Joint(j));
		}
	}
	
	float headPositionDelta, distToNext;
	Vector3 offsetFromNext;
	FollowingChain2Joint next, thisJoint;
	// Update is called once per frame
	void Update () {
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
				
			}
		}
	}
}

public class FollowingChain2Joint {
	public Transform jointTransform;
	public Vector3 lastPinnedPosition;
	public Vector3 lastFramePosition;

	public Vector3 velocity {
		get {
			return jointTransform.position - lastFramePosition;
		}
	}
	
	public FollowingChain2Joint(Transform t) {
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
