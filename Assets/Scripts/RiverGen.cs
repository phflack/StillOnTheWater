using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RiverGen : MonoBehaviour
{
	public GameObject riverTile;

	private GameObject kayak;
<<<<<<< HEAD
	private bool spawned;
	private int timeout;
=======
>>>>>>> 61efbc412567960f61126f20890a82fc62d13c6f

	private void Start()
	{
		kayak = GameObject.FindGameObjectsWithTag("Player")[0];
<<<<<<< HEAD
		spawned = false;
		timeout = 600;
=======
>>>>>>> 61efbc412567960f61126f20890a82fc62d13c6f
	}

	private void Update()
	{
<<<<<<< HEAD
		//if(timeout > 0)
		//{
		//	timeout--;
		//	return;
		//}

		if(spawned)
			return;

=======
>>>>>>> 61efbc412567960f61126f20890a82fc62d13c6f
		if(kayak.transform.position.x < transform.position.x + 128)
			return;

		//spawn the new tile
		Instantiate(riverTile, transform.position + Vector3.right * 192, Quaternion.identity);
<<<<<<< HEAD
		//riverTile.transform.Translate(transform.position + Vector3.forward * 192);
		//riverTile.transform.position = transform.position + new Vector3(192, 0, 0);
		spawned = true;
=======
>>>>>>> 61efbc412567960f61126f20890a82fc62d13c6f

		//delete self
		Destroy(gameObject);
	}
}
