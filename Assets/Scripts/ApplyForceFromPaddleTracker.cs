using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ApplyForceFromPaddleTracker : MonoBehaviour {
    public Text debugBox;
	Vector3 cool_velocity;
    float cool_rotation;
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
            //    |                      [motion vector of paddles]
            //    |                            |                       [motion vector of river flow]
            //    |               [-1 to apply backward paddling as forward motion]
            //    |                 |         |                           |                    [coefficient reducing power of paddle input on kayak. I guess this approximates mass?]
            //   |                  |         |                           |                       |
			totalForce += (transform.TransformDirection(-p.totalMotion) + riverVelocityWorld) * resultantForceMultiplier;
            // i think this should only set the rotation force if we're currently applying a force
            if (Mathf.Abs(p.lastEntryPoint.z) > .01)
            {
                rotationForce = Mathf.Sign(p.lastEntryPoint.z) * Mathf.Abs((-p.totalMotion + riverVelocityWorld).z) * resultantRotationForceCoefficient / Vector3.Magnitude(cool_velocity);
                if (Mathf.Sign(rotationForce) != Mathf.Sign(cool_rotation))
                {
                    cool_rotation = 0f;
                }
            }
        }
        // i think that friction should probs be applied before the river velocity? or somehow excepting river velocity? or be applied to the component
        // exceeding river velocity? 
        // I'm not certain, but with river velocity always applied, I think it'll work out that the kayak has a reasonable minimum speed when not moving.
        // anyway, I also set a maximum speed, which probably shouldn't be linear but here we are: 
        totalForce = Vector3.Min(totalForce, maxInputForceMagnitudeLocal);
        // now we apply the force to velocity
        cool_velocity += totalForce;
        cool_rotation += rotationForce;
        // and apply drag to it: (drag coefficient * velocity squared)
        // TODO: different drag coefficients for later or forward motion. Because the boat is aerodynamic in one directioN!
        cool_velocity -= drag * Vector3.SqrMagnitude(cool_velocity) * cool_velocity.normalized;
        cool_rotation -= angularDrag * cool_rotation * cool_rotation  * Mathf.Sign(cool_rotation);
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
        // calculate vector to add to position for this frame. Remove the 1 velocity of the vector. I think this is redundant, tbh.
        // this is backward because Paul was using x as forward when I got here
        Vector3 nuDelta = (-cool_velocity.x * transform.right + -cool_velocity.z* transform.forward) * Time.deltaTime;
        transform.position = transform.position + nuDelta;
        if (!float.IsNaN(-cool_rotation * Time.deltaTime))
        {
            Debug.Log(-cool_rotation * Time.deltaTime);
        }
        transform.Rotate(0f, -cool_rotation * Time.deltaTime, 0f);
    }

	void OnDrawGizmos() {
		Gizmos.color = Color.red;
        // draw the velocity vector at the front of the boat.
		Gizmos.DrawRay (noseRefTransform.position, new Vector3(cool_velocity.x, 0f, cool_velocity.z));
        // draw a vector to visualize the rotation of the boat
        Gizmos.DrawRay(noseRefTransform.position, new Vector3(0f, 0f, cool_rotation));
    }
}
