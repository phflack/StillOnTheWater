using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class KayakParkingZone : MonoBehaviour {
	public float radius = 5f;
	public float gravity = 1f;
	public float rotationalGravity = .1f;
	public Mesh GizmoMesh;
	
	public Rigidbody kayak;
	
	private void OnTriggerEnter(Collider other)
	{
		if (other.tag.Equals("Kayak_World")) {
			Debug.Log("detectedKayak " + other.gameObject.name);
			kayak = other.GetComponent<MeshCollider>().attachedRigidbody;
			if (kayak == null) {Debug.Log("there's no rididbody");}
		}
	}

	private void OnTriggerExit(Collider other)
	{
		if (other.tag.Equals("Kayak_World")) {
		// Debug.Log("park?" + other.tag + "," + other.gameObject.name);
		Debug.Log("kayak leaving?");
			kayak = null;
		}	
	}

	private void OnEnable()
	{
		GetComponent<SphereCollider>().radius = radius;
	}

	// Update is called once per frame
	private void FixedUpdate()
	{
		if (kayak != null) {
            Vector3 vectorToward = (transform.position - kayak.transform.position).XZVector();
            // // kayak.AddForce(gravity * vectorToward.normalized * (1f - (vectorToward.magnitude / radius)), ForceMode.Force);
            if (!(vectorToward.magnitude < .1f) && !(Vector3.Angle(vectorToward, kayak.velocity) < 90f && kayak.velocity.magnitude > gravity))
				kayak.transform.position = kayak.transform.position + gravity * vectorToward * Time.fixedDeltaTime * Mathf.Clamp01(1f - (vectorToward.magnitude / radius));
            float rotation = Vector3.SignedAngle(kayak.transform.forward, transform.forward, Vector3.up) * rotationalGravity * Time.fixedDeltaTime * Mathf.Clamp01(1f - (vectorToward.magnitude / radius));
            kayak.transform.rotation = kayak.transform.rotation * Quaternion.AngleAxis (rotation, Vector3.up);
		}
	}

	private void OnDrawGizmos()
	{
		Gizmos.color = Color.cyan;
		Gizmos.DrawMesh(GizmoMesh, transform.position, transform.rotation, new Vector3(.8f, .8f, .8f));
		Gizmos.color = new Vector4(0f,1f,1f,.5f);
		// Gizmos.DrawSphere(transform.position, radius);
		// Gizmos.color = Color.cyan;
		Gizmos.DrawWireSphere(transform.position, radius);
		Gizmos.DrawLine(transform.position, transform.position + transform.forward * radius);
	}
}
