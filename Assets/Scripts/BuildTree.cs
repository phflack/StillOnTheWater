using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BuildTree : MonoBehaviour
{
	public GameObject tree;
	public float chance;

	//Use this for initialization
	void Start()
	{
		if (Random.Range(0, 100) < chance * 100)
		{
			Instantiate(tree, transform);
		}
	}

	// Update is called once per frame
	void Update()
	{

	}
}