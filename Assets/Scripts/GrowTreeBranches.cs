using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GrowTreeBranches : MonoBehaviour
{
	public GameObject branch;
	public GameObject[] trunkPath;
	public float[] minRots;
	public float[] maxRots;
	public float[] weights;
	public float minDist;
	public float rotDist;
	public int minBranches;
	public int maxBranches;
	public int maxTries;
	
	private void Start()
	{
		//distance of the trunkPath
		float distance = 0;
		float totalWeight = 0;
		//where each node on the trunkPath is (linearly)
		float[] trunkDists = new float[trunkPath.Length];
		trunkDists[0] = 0;
		float[] trunkWeights = new float[trunkPath.Length];
		trunkWeights[0] = 0;
		for(int i = 0; i < trunkPath.Length - 1; i++)
		{
			distance += (trunkPath[i].transform.position - trunkPath[i + 1].transform.position).magnitude;
			trunkDists[i + 1] = distance;
			totalWeight += (distance - trunkDists[i]) * (weights[i] + weights[i + 1]) / 2;
			trunkWeights[i + 1] = totalWeight;
		}

		int branchCount = Random.Range(minBranches, maxBranches + 1);
		GameObject[] placedBranches = new GameObject[branchCount];
		float[] rots = new float[branchCount];
		for(int i = 0, tries = 0; i < branchCount && tries++ < maxTries; i++)
		{
			float weight = Random.Range(0, totalWeight);
			float placement = 0;
			for(int j = 0; j < trunkWeights.Length - 1 && weight >= trunkWeights[j]; j++)
				if(weight < trunkWeights[j + 1])
					if(weights[j] == weights[j + 1]) //just a rectangle
						placement = (weight - trunkWeights[j]) / weights[j] + trunkDists[j];
					else //is a trapezoid
					{
						float slope = (weights[j + 1] - weights[j]) / (trunkDists[j + 1] - trunkDists[j]);
						float area = weight - trunkWeights[j];
						float b = weights[j]; //base is a keyword?

						placement = (Mathf.Sqrt(2 * area * slope + b * b) - b) / slope + trunkDists[j]; //http://www.wolframalpha.com/input/?i=solve+A%3DBH%2B0.5(H%5E2)S+for+H
					}

			float rotY = Random.Range(0, 360);
			float rotY2 = Random.Range(0, 360);
			float rotX = 0;
			Vector3 pos = trunkPath[trunkPath.Length - 1].transform.position;
			for(int j = 0; j < trunkDists.Length - 1 && placement >= trunkDists[j]; j++)
				if(placement < trunkDists[j + 1])
				{
					float ratio = (placement - trunkDists[j]) / (trunkDists[j + 1] - trunkDists[j]);
					rotX = Random.Range((minRots[j + 1] - minRots[j]) * ratio + minRots[j], (maxRots[j + 1] - maxRots[j]) * ratio + maxRots[j]);
					pos = (trunkPath[j + 1].transform.position - trunkPath[j].transform.position) * ratio + trunkPath[j].transform.position;
				}

			bool good = true;
			for(int j = 0; j < i && good; j++)
				good = ((pos - placedBranches[j].transform.position).magnitude + Mathf.Abs(rotY - rots[j]) * rotDist) > minDist;

			if(good) //place the branch
			{
				GameObject b = Instantiate(branch, transform);
				b.transform.Translate(pos - transform.position);
				b.transform.Rotate(0, rotY, 0);
				b.transform.Rotate(rotX, rotY2, 0);
				placedBranches[i] = b;
				rots[i] = rotY;
			}
			else //retry generation of this node
				i--;
		}

		/*Debug.Log("ADD BRANCHES NOW");
		int[] used = new int[maxBranches];
		for(int i = 0; i < used.Length; i++)
			used[i] = -1;
		int branchCount = Random.Range(minBranches, maxBranches + 1);

		for(int i = 0; i < branchCount; i++)
		{
			int selection = 0;
			bool notUsed = false;

			while(!notUsed)
			{
				selection = Random.Range(0, branchNodes.Length);
				notUsed = true;

				for(int j = 0; j < used.Length && notUsed; j++)
					notUsed = selection != used[j];
			}

			Debug.Log("ADDING BRANCH NOW");
			Instantiate(branches[Random.Range(0, branches.Length)], branchNodes[selection].transform);
			used[i] = selection;
		}*/
	}
}