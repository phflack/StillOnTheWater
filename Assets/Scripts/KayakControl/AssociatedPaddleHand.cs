using System.Collections;
using System.Collections.Generic;
using UnityEngine;

// this is used by the paddle grabby hands managers located on the kayak paddle to figure out which hand
// to reveal and which to disabled when grabbing the paddle handle.
public class AssociatedPaddleHand : MonoBehaviour {
	[Header("Paddle Hand meshRenderer or skinnedMeshRenderer")]
	public MeshRenderer paddleHandMeshRend;
	public SkinnedMeshRenderer paddleHandSkinnedMeshRend;
	
		[Header("Regular Hand to be disabled on paddleGrab")]
	public MeshRenderer normalHandMeshRend;
	public SkinnedMeshRenderer normalHandSkinnedMeshRend;
}
