using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AddRandom : MonoBehaviour
{
	public GameObject[] objects;
	public int[] weights;

	private void Start()
	{
		if(weights.Length > 0)
		{
			int totalWeight = 0;
			foreach(int weight in weights)
				totalWeight += weight;
			int choice = Random.Range(0, totalWeight);
			for(int i = 0; i < objects.Length && choice >= 0; i++)
				if((choice -= weights[i]) < 0)
					Instantiate(objects[i], transform);
		}
		else
			Instantiate(objects[Random.Range(0, objects.Length)], transform);
	}
}