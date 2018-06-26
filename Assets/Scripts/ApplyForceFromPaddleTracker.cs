using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ApplyForceFromPaddleTracker : MonoBehaviour {
    public Text debugBox;
	Vector3 cool_velocity;
    float cool_rotation = 0f;
    // a drag coefficient that should probably be split into x and z drag.
	public float drag;
    public float angularDrag;
    // the nose of the boat. 
	public Transform noseRefTransform;
    // a hard limit for the force you can apply to the boat, as VERy simple way of compensating
    // for the fact that players can swing the oar as fast as the like.
    public Vector3 maxInputForceMagnitudeLocal;

    // this will later be determined externally by zones in the river IN WORLD SPACE.
    public Vector3 riverVelocityWorld;

    // the paddling tracking scripts for each fin
	public trackPaddleInWater[] tracking;
    
    // reduces the effect of a paddle motion on the boat. appoximates mass.
	public float resultantForceMultiplier = .1f;
    public float resultantRotationForceCoefficient;

    // Use this for initialization
    void Start () {
		cool_velocity = Vector3.zero;
        cool_rotation = 0f;
	}

    // update physics in fixed update but apply velocity each frame in Update
    Vector3 totalForce;
    float rotationForce = 0f;
    void FixedUpdate () {
	    totalForce = Vector3.zero;
        rotationForce = 0f;
        foreach (trackPaddleInWater p in tracking) {
            // river velocity should just be additive. Right? yea. 
            // 2f forward paddle + 2f forward river = zero motion. right?
            // 2f backward paddle (normal paddling) + 2f forward river = 4f motion right?
            // 0f paddle + forward river = 0f motion.
            // if the total motion is 2f forward anf the river 2f forward, then the result
            // [unmodified force on the kayak]
            //    |     				                    [motion vector of paddles]
            //    |     				                          |             [motion vector of river flow]
            //    |     				             [-1 to apply backward paddling as forward motion]
            //    |     				                |         |               |                    [coefficient reducing power of paddle input on kayak. I guess this approximates mass?]
            //    |     				                |       nmu  |               |                       |
			totalForce += (transform.InverseTransformDirection(-p.totalMotion)) * resultantForceMultiplier;

			// Get position in local space coordinates, so we can choose to ignore strokes very close to the center of the kayak
			Vector3 relativePosition = (p.lastEntryPoint);
            /*Mathf.Abs (relativePosition.x*/
            //if (Mathf.Sign (rotationForce) != Mathf.Sign (cool_rotation)) {
            //cool_rotation = 0f;
            //}
            //				Debug.Log (rotationForce);
            //} else {
            //Debug.Log ("last Entry Point too close: " + transform.InverseTransformPoint(p.lastEntryPoint));

            float rotationIncrease = Mathf.Sign (relativePosition.x) *(-p.totalMotion).z* resultantRotationForceCoefficient / Vector3.Magnitude (cool_velocity);
            if (cool_velocity.magnitude > 1f)
            {
                rotationIncrease /= cool_velocity.magnitude;
            }
            if (!float.IsNaN(rotationIncrease))
            {
                rotationForce += rotationIncrease;
            }
        }
        Debug.Log(rotationForce);
        // i think that friction should probs be applied before the river velocity? or somehow excepting river velocity? or be applied to the component
        // exceeding river velocity? 
        // I'm not certain, but with river velocity always applied, I think it'll work out that the kayak has a reasonable minimum speed when not moving.
        // anyway, I also set a maximum speed, which probably shouldn't be linear but here we are: 
        totalForce = Vector3.Min(totalForce, maxInputForceMagnitudeLocal);
        // now we apply the force to velocity
        cool_velocity += totalForce;
        cool_rotation += rotationForce;
        // and apply drag to it: (drag coefficient * velocity squared)
        // TODO: different drag coefficients for lateral or forward motion. Because the boat is aerodynamic in one directioN!
        cool_velocity -= drag * Vector3.SqrMagnitude(cool_velocity) * cool_velocity.normalized;
		float prev_cool_rotation = cool_rotation;
        cool_rotation -= angularDrag * cool_rotation * cool_rotation  * Mathf.Sign(cool_rotation);
		Debug.Log ("previous angle: " + prev_cool_rotation + " | after deceleration: " + cool_rotation);
        VRTK.VRTK_ControllerReference left = VRTK.VRTK_ControllerReference.GetControllerReference(VRTK.VRTK_DeviceFinder.GetControllerLeftHand());
        VRTK.VRTK_ControllerReference right = VRTK.VRTK_ControllerReference.GetControllerReference(VRTK.VRTK_DeviceFinder.GetControllerRightHand());
        VRTK.VRTK_ControllerHaptics.CancelHapticPulse(left);
        VRTK.VRTK_ControllerHaptics.CancelHapticPulse(right);
        // multiply by 10f because totalForce is usually very small
        VRTK.VRTK_ControllerHaptics.TriggerHapticPulse(left, Mathf.Min(totalForce.magnitude * 15f, 1f),.6f,.04f);
        VRTK.VRTK_ControllerHaptics.TriggerHapticPulse(right, Mathf.Min(totalForce.magnitude * 15f, 1f), .6f, .04f);

        //      // this may not happen while the river is moving, but if we have nearly neglible velocity, stop the boat.
        //if (cool_velocity.magnitude <= .0001) {
        //          Debug.Log("hitting neglible velocity");
        //	cool_velocity = Vector3.zero;
        //}
        debugBox.text = "L(" + tracking[0].points.Count + "): " + tracking[0].lastEntryPoint.ToString() + "\n" +
                                   "R(" + tracking[1].points.Count + "): " + tracking[1].lastEntryPoint.ToString() + "\n" +
                                   "Rotation: " + cool_rotation + "\n" +
                                   "Velocity: " + cool_velocity.magnitude +  cool_velocity;
    }

    // update physics in fixed update but apply velocity each frame in Update
    void Update() {
		if (!float.IsNaN (-cool_rotation * Time.deltaTime)) {
			//            Debug.Log(-cool_rotation * Time.deltaTime);
//			transform.Rotate (0f, -cool_rotation * Time.deltaTime, 0f);
			transform.localRotation = transform.localRotation * Quaternion.AngleAxis(-cool_rotation * Time.deltaTime, Vector3.up);
			// rotate our momentum with the kayak's turn. TODO: This isn't really 1 to 1, and I hope to make this more realistic later.
//			cool_velocity = Quaternion.AngleAxis (cool_rotation * Time.deltaTime, Vector3.up) * cool_velocity;
		}

		// calculate vector to add to position for this frame. Remove the 1 velocity of the vector. I think this is redundant, tbh.
        Vector3 nuDelta = (cool_velocity.x * transform.right + cool_velocity.z* transform.forward) * Time.deltaTime;
        transform.position = transform.position + nuDelta;

    }

	void OnDrawGizmos() {
		Gizmos.color = Color.red;
        // draw the velocity vector at the front of the boat.
		Vector3 nuDelta = (cool_velocity.x * transform.right + cool_velocity.z* transform.forward);
		Gizmos.DrawRay (noseRefTransform.position, nuDelta);
        // draw a vector to visualize the rotation of the boat
        Gizmos.DrawRay(noseRefTransform.position, new Vector3(0f, 0f, cool_rotation));
    }
}
