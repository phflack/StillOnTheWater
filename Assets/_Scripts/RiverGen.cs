using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RiverGen : MonoBehaviour
{
	public GameObject riverTile;

	private GameObject kayak;

	private void Start()
	{
		kayak = GameObject.FindGameObjectsWithTag("Player")[0];
	}

	private void Update()
	{
		if(kayak.transform.position.x < transform.position.x + 128)
			return;

		//spawn the new tile
		Instantiate(riverTile, transform.position + Vector3.right * 192, Quaternion.identity);

		//delete self
		Destroy(gameObject);
	}
}
