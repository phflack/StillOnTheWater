using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RiverGen : MonoBehaviour
{
	public GameObject riverTile;

	private GameObject kayak;
	private bool spawned;
	private int timeout;

	private void Start()
	{
		kayak = GameObject.FindGameObjectsWithTag("Player")[0];
		spawned = false;
		timeout = 600;
	}

	private void Update()
	{
		//if(timeout > 0)
		//{
		//	timeout--;
		//	return;
		//}

		if(spawned)
			return;

		if(kayak.transform.position.x < transform.position.x + 128)
			return;

		//spawn the new tile
		Instantiate(riverTile, transform.position + Vector3.right * 192, Quaternion.identity);
		//riverTile.transform.Translate(transform.position + Vector3.forward * 192);
		//riverTile.transform.position = transform.position + new Vector3(192, 0, 0);
		spawned = true;

		//delete self
		Destroy(gameObject);
	}
}
