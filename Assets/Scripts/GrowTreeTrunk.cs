using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GrowTreeTrunk : MonoBehaviour
{
	public GameObject[] trunks;

	//Use this for initialization
	void Start()
	{
		Debug.Log("MAKE TRUNK NOW");
		Instantiate(trunks[Random.Range(0, trunks.Length)], transform);
	}
	
	//Update is called once per frame
	void Update(){}
}