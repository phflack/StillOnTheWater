using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BuildMap : MonoBehaviour
{
	public GameObject map;
	public float chance;

	//Use this for initialization
	void Start()
	{
		if(Random.Range(0, 100) < chance * 100)
		{
			Instantiate(map, transform);
		}
	}
	
	// Update is called once per frame
	void Update()
	{
		
	}
}