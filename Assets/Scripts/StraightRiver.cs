using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class StraightRiver : MonoBehaviour
{
	//terrain variables
	public float minVariance;
	public float maxVariance;
	public float[] slice = {12f, 1f, -3f, 1f, 12f};

	//land variables
	public GameObject treeGen;
	public float treeDist;
	public float treeDistY;
	public float[] treeWeights;
	public int minTrees;
	public int maxTrees;
	public int maxTreeTries;
	public GameObject rockGen;
	public float rockDist;
	public int minRocks;
	public int maxRocks;
	public int maxRockTries;
	public GameObject specialGen;
	public float specialDist;
	public int maxSpecialTries;

	//water variables
	public GameObject debrisGen;
	public float debrisDist;
	public int minDebris;
	public int maxDebris;
	public int maxDebrisTries;
	
	private void Start()
	{
		genTerrain();
		genLand();
		genWater();
	}

	private void genTerrain()
	{
		Terrain terrain = GetComponent<Terrain>();
		int width = terrain.terrainData.heightmapWidth;
		int height = terrain.terrainData.heightmapHeight;
		float[,] tileHeights = new float[height, width];
		
		int multiplier = (height - 1) / (slice.Length - 1);
		for(int x = 0; x < slice.Length; x++)
			for(int y = 0; y < slice.Length; y++)
				tileHeights[y * multiplier, x * multiplier] = slice[y];

		GameObject[] terrains = GameObject.FindGameObjectsWithTag("Terrain");
		if(terrains.Length > 0)
		{
			GameObject right = terrains[0];
			for(int i = 0; i < terrains.Length; i++)
				if(right.transform.position.x < terrains[i].transform.position.x)
					right = terrains[i];

			float[,] rightHeightmap = right.GetComponent<Terrain>().terrainData.GetHeights(0, 0, width, height);

			for(int y = 0; y < height; y++)
				tileHeights[y, 0] = rightHeightmap[y, width - 1];
		}

		tileHeights = diamondSquare(tileHeights, height, width);

		float[,] heightMap = terrain.terrainData.GetHeights(0, 0, width, height);

		for(int x = 0; x < width; x++)
			for(int y = 0; y < height; y++)
				heightMap[y, x] = tileHeights[y, x] / 1000f + 0.1f;

		terrain.terrainData.SetHeights(0, 0, heightMap);
	}

	private void genLand()
	{
		Terrain terrain = GetComponent<Terrain>();

		//generate trees
		GameObject[] trees = GameObject.FindGameObjectsWithTag("Tree");
		List<GameObject> nearbyTrees = new List<GameObject>();
		foreach(GameObject tree in trees)
			if(tree.transform.position.x + treeDist >= transform.position.x)
				nearbyTrees.Add(tree);
		trees = nearbyTrees.ToArray();
		int numTrees = Random.Range(minTrees, maxTrees + 1);
		int tries = 0;
		GameObject[] placedTrees = new GameObject[numTrees];

		for(int i = 0; i < numTrees && tries++ < maxTreeTries; i++)
		{
			float x = Random.Range(0f, 64f);
			float y = Random.Range(0f, 64f);
			Vector3 pos = new Vector3(x, terrain.terrainData.GetInterpolatedHeight(x / 64, y / 64), y) + transform.position;
			Vector3 normal = terrain.terrainData.GetInterpolatedNormal(x / 64, y / 64);

			if(pos.y < 60.1) //underwater or too close
			{
				i--;
				tries--;
				continue;
			}

			bool good = true;
			for(int j = 0; j < i && good; j++)
				good = (pos - placedTrees[j].transform.position).magnitude + Mathf.Abs(pos.z - placedTrees[j].transform.position.z) * treeDistY > treeDist;
			for(int j = 0; j < trees.Length && good; j++)
				good = (pos - trees[j].transform.position).magnitude + Mathf.Abs(pos.z - trees[j].transform.position.z) * treeDistY > treeDist;

			if(good)
			{
				GameObject tree = Instantiate(treeGen, transform);
				tree.transform.position = pos;
				tree.transform.eulerAngles = normal;
				tree.transform.Rotate(0, Random.Range(0, 360), 0);
				placedTrees[i] = tree;
			}
			else //try to regen the tree
				i--;
		}

		//generate rocks
		int numRocks = Random.Range(minRocks, maxRocks + 1);
		tries = 0;
		for(int i = 0; i < numRocks && tries++ < maxRockTries; i++)
		{
			float x = Random.Range(0f, 64f);
			float y = Random.Range(16f, 48f);
			Vector3 pos = new Vector3(x, terrain.terrainData.GetInterpolatedHeight(x / 64, y / 64), y) + transform.position;
			Vector3 normal = terrain.terrainData.GetInterpolatedNormal(x / 64, y / 32);

			if(pos.y < 60) //underwater or too close
			{
				i--;
				tries--;
				continue;
			}

			bool good = true;
			for(int j = 0; j < placedTrees.Length && good; j++)
				good = (pos - placedTrees[j].transform.position).magnitude > rockDist;
			for(int j = 0; j < trees.Length && good; j++)
				good = (pos - trees[j].transform.position).magnitude > rockDist;

			if(good)
			{
				GameObject rock = Instantiate(rockGen, transform);
				rock.transform.position = pos;
				rock.transform.eulerAngles = normal;
				rock.transform.Rotate(0, Random.Range(0, 360), 0);
			}
			else //try to regen the tree
				i--;
		}

		//generate specials
		GameObject[] specials = GameObject.FindGameObjectsWithTag("Special");
		tries = 0;
		for(int i = 0; i < maxSpecialTries; i++)
		{
			float x = Random.Range(0f, 64f);
			float y = Random.Range(0f, 64f);
			Vector3 pos = new Vector3(x, terrain.terrainData.GetInterpolatedHeight(x / 64, y / 64), y) + transform.position;
			//Vector3 normal = terrain.terrainData.GetInterpolatedNormal(x / 64, y / 32);

			if(pos.y < 60) //underwater or too close
			{
				i--;
				tries--;
				continue;
			}

			bool good = true;
			for(int j = 0; j < i && good; j++)
				good = (pos - placedTrees[j].transform.position).magnitude > rockDist;
			for(int j = 0; j < specials.Length && good; j++)
				good = (pos - specials[j].transform.position).magnitude > specialDist;

			if(good)
			{
				GameObject special = Instantiate(specialGen, transform);
				special.transform.position = pos;
				//special.transform.eulerAngles = normal;
				//special.transform.Rotate(0, Random.Range(0, 360), 0);
			}
			else //try to regen the tree
				i--;
		}
	}

	private void genWater()
	{
		Terrain terrain = GetComponent<Terrain>();

		//generate debris
		GameObject[] debris = GameObject.FindGameObjectsWithTag("Debris");
		List<GameObject> nearbyDebris = new List<GameObject>();
		foreach(GameObject d in debris)
			if(d.transform.position.x + treeDist >= transform.position.x)
				nearbyDebris.Add(d);
		debris = nearbyDebris.ToArray();
		int numDebris = Random.Range(minDebris, maxDebris + 1);
		int tries = 0;
		GameObject[] placedDebris = new GameObject[numDebris];

		for(int i = 0; i < numDebris && tries++ < maxDebrisTries; i++)
		{
			float x = Random.Range(0f, 64f);
			float y = Random.Range(16f, 48f);
			float height = terrain.terrainData.GetInterpolatedHeight(x / 64, y / 64);
			Vector3 pos = new Vector3(x, 60, y) + transform.position;
			//Vector3 normal = terrain.terrainData.GetInterpolatedNormal(x / 64, y / 64);

			if(height > 59) //too close to surface
			{
				i--;
				tries--;
				continue;
			}

			bool good = true;
			for(int j = 0; j < i && good; j++)
				good = (pos - placedDebris[j].transform.position).magnitude + Mathf.Abs(pos.z - placedDebris[j].transform.position.z) * treeDistY > treeDist;
			for(int j = 0; j < debris.Length && good; j++)
				good = (pos - debris[j].transform.position).magnitude + Mathf.Abs(pos.z - debris[j].transform.position.z) * treeDistY > treeDist;

			if(good)
			{
				GameObject d = Instantiate(debrisGen, transform);
				d.transform.position = pos;
				//d.transform.eulerAngles = normal;
				//d.transform.Rotate(0, Random.Range(0, 360), 0);
				placedDebris[i] = d;
			}
			else //try to regen the debris
				i--;
		}
	}

	private float[,] diamondSquare(float[,] heightMap, int width, int height)
	{
		for(int pass = width - 1; pass > 0; pass /= 2)
		{
			for (int x = pass / 2; x < width; x += pass) //square
				for (int y = pass / 2; y < height; y += pass)
					if (heightMap[x, y] == 0) //only change if not already defined
					{
						float min = float.MaxValue;
						float max = float.MinValue;

						if (x - pass / 2 >= 0 && y - pass / 2 >= 0)
						{
							min = Mathf.Min(min, heightMap[x - pass / 2, y - pass / 2]);
							max = Mathf.Max(max, heightMap[x - pass / 2, y - pass / 2]);
						}

						if (x - pass / 2 >= 0 && y + pass / 2 < height)
						{
							min = Mathf.Min(min, heightMap[x - pass / 2, y + pass / 2]);
							max = Mathf.Max(max, heightMap[x - pass / 2, y + pass / 2]);
						}

						if (x + pass / 2 < width && y - pass / 2 >= 0)
						{
							min = Mathf.Min(min, heightMap[x + pass / 2, y - pass / 2]);
							max = Mathf.Max(max, heightMap[x + pass / 2, y - pass / 2]);
						}

						if (x + pass / 2 < width && y + pass / 2 < height)
						{
							min = Mathf.Min(min, heightMap[x + pass / 2, y + pass / 2]);
							max = Mathf.Max(max, heightMap[x + pass / 2, y + pass / 2]);
						}

						float range = max - min;
						heightMap[x, y] = Random.Range(range * minVariance, range * maxVariance) + min;
					}

			for (int x = pass / 2; x < width; x += pass) //diamond A
				for(int y = 0; y < height; y += pass)
					if(heightMap[x, y] == 0) //only change if not already defined
					{
						float min = float.MaxValue;
						float max = float.MinValue;

						if(x - pass / 2 >= 0)
						{
							min = Mathf.Min(min, heightMap[x - pass / 2, y]);
							max = Mathf.Max(max, heightMap[x - pass / 2, y]);
						}

						if(x + pass / 2 < width)
						{
							min = Mathf.Min(min, heightMap[x + pass / 2, y]);
							max = Mathf.Max(max, heightMap[x + pass / 2, y]);
						}

						if (y - pass / 2 >= 0)
						{
							min = Mathf.Min(min, heightMap[x, y - pass / 2]);
							max = Mathf.Max(max, heightMap[x, y - pass / 2]);
						}

						if (y + pass / 2 < height)
						{
							min = Mathf.Min(min, heightMap[x, y + pass / 2]);
							max = Mathf.Max(max, heightMap[x, y + pass / 2]);
						}

						float range = max - min;
						heightMap[x, y] = Random.Range(range * minVariance, range * maxVariance) + min;
					}

			for (int x = 0; x < width; x += pass) //diamond B
				for (int y = pass / 2; y < height; y += pass)
					if (heightMap[x, y] == 0) //only change if not already defined
					{
						float min = float.MaxValue;
						float max = float.MinValue;

						if (x - pass / 2 >= 0)
						{
							min = Mathf.Min(min, heightMap[x - pass / 2, y]);
							max = Mathf.Max(max, heightMap[x - pass / 2, y]);
						}

						if (x + pass / 2 < width)
						{
							min = Mathf.Min(min, heightMap[x + pass / 2, y]);
							max = Mathf.Max(max, heightMap[x + pass / 2, y]);
						}

						if (y - pass / 2 >= 0)
						{
							min = Mathf.Min(min, heightMap[x, y - pass / 2]);
							max = Mathf.Max(max, heightMap[x, y - pass / 2]);
						}

						if (y + pass / 2 < height)
						{
							min = Mathf.Min(min, heightMap[x, y + pass / 2]);
							max = Mathf.Max(max, heightMap[x, y + pass / 2]);
						}

						float range = max - min;
						heightMap[x, y] = Random.Range(range * minVariance, range * maxVariance) + min;
					}
		}

		return heightMap;
	}
}
