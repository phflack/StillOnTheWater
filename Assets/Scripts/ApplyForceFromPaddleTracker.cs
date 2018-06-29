using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ApplyForceFromPaddleTracker : MonoBehaviour {
    public Text debugBox;
	Vector3 local_velocity;
    float local_Yrotation_rate = 0f;
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
	public trackPaddleHeadInWater[] tracking;
    
    // reduces the effect of a paddle motion on the boat. appoximates mass.
	public float resultantForceMultiplier = .1f;
    public float resultantRotationForceCoefficient;

    // Use this for initialization
    void Start () {
		local_velocity = Vector3.zero;
        local_Yrotation_rate = 0f;
	}

    // update physics in fixed update but apply velocity each frame in Update
    Vector3 totalForce;
    float torque = 0f;
    void FixedUpdate () {
	    totalForce = Vector3.zero;
        torque = 0f;
        foreach (trackPaddleHeadInWater paddle in tracking) {
            // river velocity should just be additive with paddling.
            // 2f forward paddle + 2f forward river = zero motion.
            // 2f backward paddle (normal paddling) + 2f forward river = 4f motion. (paddling down a moving a river makes you go fast)
            // 0f paddle + 2f forward river = 2f motion.
            
            // Note that we transform the paddle and river directions from world orientation to local orientation. Paddle vectors are relative to the boat, but with no regard for boat orientation.

            // [unmodified force on the kayak]
            //    |     				                                                                         [motion vector of paddles]
            //    |     				                                                                             |                     [motion vector of river flow]
            //    |     				                                                            [-1 to apply backward paddling as forward motion]
            //    |     				                                                                  |         |                        |                                                                                                     [coefficient reducing power of paddle input on kayak. This approximates mass, or the strength of the paddler, maybe]
            //    |     				                                                                  |         |                        |                                                                                                         |
			totalForce += (transform.InverseTransformDirection(-paddle.totalMotion) + transform.InverseTransformDirection(riverVelocityWorld)) * resultantForceMultiplier;

			// Get position in local space coordinates, so we can see which side the paddling occured on
			Vector3 relativePosition = transform.InverseTransformDirection(paddle.lastEntryPoint);
            float rotationIncrease = Mathf.Sign (relativePosition.x) * transform.InverseTransformDirection(paddle.totalMotion).z* resultantRotationForceCoefficient * Mathf.Min(1f, 1f/Vector3.Magnitude (local_velocity));

            // i was occasionally getting NaN from something above, which would permanently invalidate the torque value. TODO: figure out why 
            //  for now, just canceling any NaN input is good enough.
            if (!float.IsNaN(rotationIncrease))
            {
                torque += rotationIncrease;
            }
        }

        // i think that friction should probs be applied before the river velocity? or somehow excepting river velocity? or be applied to the component
        // exceeding river velocity? 
        // I'm not certain, but with river velocity always applied, I think it'll work out that the kayak has a reasonable minimum speed when not moving.
        // anyway, I also set a maximum speed, which probably shouldn't be linear but here we are: 
        totalForce = Vector3.Min(totalForce, maxInputForceMagnitudeLocal);

        // now we apply the force to velocity and torque to rotation
        local_velocity += totalForce;
        local_Yrotation_rate += torque;

        // and apply drag to it: (drag coefficient * velocity squared)
        // real drag is velocity = initialVelocity - drag * time * velocity^2. skipping time var because we're in fixed update.
        // TODO: different drag coefficients for lateral or forward motion. Because the boat is aerodynamic in one directioN!
        local_velocity -= drag * Vector3.SqrMagnitude(local_velocity) * local_velocity.normalized;
        local_Yrotation_rate -= angularDrag * local_Yrotation_rate * local_Yrotation_rate  * Mathf.Sign(local_Yrotation_rate);

        // Controller Haptics Time
        VRTK.VRTK_ControllerReference left = VRTK.VRTK_ControllerReference.GetControllerReference(VRTK.VRTK_DeviceFinder.GetControllerLeftHand());
        VRTK.VRTK_ControllerReference right = VRTK.VRTK_ControllerReference.GetControllerReference(VRTK.VRTK_DeviceFinder.GetControllerRightHand());
        VRTK.VRTK_ControllerHaptics.CancelHapticPulse(left);
        VRTK.VRTK_ControllerHaptics.CancelHapticPulse(right);
        // multiply by 10f because totalForce is usually very small
        VRTK.VRTK_ControllerHaptics.TriggerHapticPulse(left, Mathf.Min(totalForce.magnitude * 10f, 1f),1f,.04f);
        VRTK.VRTK_ControllerHaptics.TriggerHapticPulse(right, Mathf.Min(totalForce.magnitude * 10f, 1f), 1f, .04f);

        // this may not happen while the river is moving, but if we have nearly neglible velocity, stop the boat.
        if (local_velocity.magnitude <= .0001)
        {
            Debug.Log("hitting neglible velocity");
            local_velocity = Vector3.zero;
        }

        // Throw some helpful debug text in front of yer eyes
        debugBox.text = "L(" + tracking[0].totalMotion.z + "): " + transform.InverseTransformDirection(tracking[0].lastEntryPoint).ToString() + "\n" +
                                   "R(" + tracking[1].totalMotion.z + "): " + transform.InverseTransformDirection(tracking[1].lastEntryPoint).ToString() + "\n" +
                                   "Rotation: " + local_Yrotation_rate + "\n" +
                                   "Velocity: " + local_velocity.magnitude +  local_velocity;
    }


    // update physics in fixed update but apply velocity each frame in Update
    void Update() {
		if (!float.IsNaN (-local_Yrotation_rate * Time.deltaTime)) {
			transform.localRotation = transform.localRotation * Quaternion.AngleAxis(-local_Yrotation_rate * Time.deltaTime, Vector3.up);
		}

		// calculate vector to add to position for this frame. Remove theY1 velocity of the vector. There shouldn't be any Y, but it couldn't hurt to be careful.
        Vector3 positionDelta = (local_velocity.x * transform.right + local_velocity.z* transform.forward) * Time.deltaTime;
        transform.position = transform.position + positionDelta;
    }

	void OnDrawGizmos() {
		Gizmos.color = Color.red;
        // draw the velocity vector at the front of the boat.
		Vector3 positionDelta = (local_velocity.x * transform.right + local_velocity.z* transform.forward);
		Gizmos.DrawRay (noseRefTransform.position, positionDelta);
        // draw a vector to visualize the rotation of the boat
        Gizmos.DrawRay(noseRefTransform.position, new Vector3(0f, 0f, local_Yrotation_rate));
    }
}
