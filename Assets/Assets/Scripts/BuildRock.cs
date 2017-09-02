using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BuildRock : MonoBehaviour
{
	public GameObject rock;
	public float chance;

	//Use this for initialization
	void Start()
	{
		if(Random.Range(0, 100) < chance * 100)
		{
			Instantiate(rock, transform);
		}
	}
	
	// Update is called once per frame
	void Update()
	{
		
	}
}