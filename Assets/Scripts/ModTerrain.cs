using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ModTerrain : MonoBehaviour
{
	public float minVariance;
	public float maxVariance;
	public int resolution;

	//Use this for initialization
	void Start()
	{
		float[,] tileHeights = new float[1025, 257];
		for (int x = 0; x <= 1024; x += 64)
		{
			tileHeights[x, 0] = 12;
			tileHeights[x, 64] = 1;
			tileHeights[x, 128] = -3;
			tileHeights[x, 192] = 1;
			tileHeights[x, 256] = 12;
		}
		/*for (int x = 0; x <= 1024; x += 32)
		{
			tileHeights[x, 0] = 12;
			tileHeights[x, 32] = 4;
			tileHeights[x, 64] = 2;
			tileHeights[x, 96] = -0.5f;
			tileHeights[x, 128] = -3;
			tileHeights[x, 160] = -0.5f;
			tileHeights[x, 192] = 2;
			tileHeights[x, 224] = 4;
			tileHeights[x, 256] = 12;
		}*/
		/*tileHeights[0, 0] = 9;
		tileHeights[128, 0] = 9;
		tileHeights[256, 0] = 9;
		tileHeights[0, 128] = -3;
		tileHeights[128, 128] = -3;
		tileHeights[256, 128] = -3;
		tileHeights[0, 256] = 9;
		tileHeights[128, 256] = 9;
		tileHeights[256, 256] = 9;*/

		tileHeights = diamondSquare(tileHeights, 1024, 256);

		Terrain terrain = Terrain.activeTerrain;
		int width = terrain.terrainData.heightmapWidth;
		int height = terrain.terrainData.heightmapHeight;
		//Debug.Log("test " + width + " " + height);

		float[,] heightMap = terrain.terrainData.GetHeights(0, 0, width, height);

		for(int x = 0; x <= 1024; x++)
			for(int y = 0; y <= 256; y++)
				heightMap[y * 50 / 256, x / 2] = tileHeights[x, y] / 1000f + 0.1f;

		/*for(int pass = 256; pass > 0; pass /= 2)
			for(int x = 0; x <= 256; x += pass)
				for(int z = 0; z <= 256; z += pass)
					//if(heightMap[(int)transform.position.z - 25 + z * 50 / 256, (int)transform.position.x + x * 50 / 256] == 0)
						heightMap[(int)transform.position.z - 25 + z * 50 / 256, (int)transform.position.x + x * 50 / 256] = tileHeights[x, z] / 1000f + 0.1f;*/
		
		/*for(int x = 0; x <= 256; x += 128)
			for(int z = 0; z <= 256; z += 128)
				heightMap[(int)transform.position.z - 25 + z * 50 / 256, (int)transform.position.x + x * 50 / 256] = tileHeights[x, z] / 1000f + 0.1f;*/

		terrain.terrainData.SetHeights(0, 0, heightMap);

		/*for(int x = 0; x <= 256; x++)
			//for(int y = 0; y <= 256; y++)
				Debug.Log("X" + x + " Y" + 0 + " Z" + tileHeights[x, 0]);*/
	}

	//Update is called once per frame
	void Update()
	{
		
	}

	private float[,] diamondSquare(float[,] heightMap, int width, int height)
	{
		for(int pass = 128; pass > 0; pass /= 2)
		{
			for (int x = pass / 2; x <= width; x += pass) //square
				for (int y = pass / 2; y <= height; y += pass)
					if (heightMap[x, y] == 0) //only change if not already defined
					{
						float min = float.MaxValue;
						float max = float.MinValue;

						if (x - pass / 2 >= 0 && y - pass / 2 >= 0)
						{
							min = Mathf.Min(min, heightMap[x - pass / 2, y - pass / 2]);
							max = Mathf.Max(max, heightMap[x - pass / 2, y - pass / 2]);
						}

						if (x - pass / 2 >= 0 && y + pass / 2 <= height)
						{
							min = Mathf.Min(min, heightMap[x - pass / 2, y + pass / 2]);
							max = Mathf.Max(max, heightMap[x - pass / 2, y + pass / 2]);
						}

						if (x + pass / 2 <= width && y - pass / 2 >= 0)
						{
							min = Mathf.Min(min, heightMap[x + pass / 2, y - pass / 2]);
							max = Mathf.Max(max, heightMap[x + pass / 2, y - pass / 2]);
						}

						if (x + pass / 2 <= width && y + pass / 2 <= height)
						{
							min = Mathf.Min(min, heightMap[x + pass / 2, y + pass / 2]);
							max = Mathf.Max(max, heightMap[x + pass / 2, y + pass / 2]);
						}

						float range = max - min;
						heightMap[x, y] = Random.Range(range * minVariance, range * maxVariance) + min;
					}

			for (int x = pass / 2; x <= width; x += pass) //diamond A
				for(int y = 0; y <= height; y += pass)
					if(heightMap[x, y] == 0) //only change if not already defined
					{
						float min = float.MaxValue;
						float max = float.MinValue;

						if(x - pass / 2 >= 0)
						{
							min = Mathf.Min(min, heightMap[x - pass / 2, y]);
							max = Mathf.Max(max, heightMap[x - pass / 2, y]);
						}

						if(x + pass / 2 <= width)
						{
							min = Mathf.Min(min, heightMap[x + pass / 2, y]);
							max = Mathf.Max(max, heightMap[x + pass / 2, y]);
						}

						if (y - pass / 2 >= 0)
						{
							min = Mathf.Min(min, heightMap[x, y - pass / 2]);
							max = Mathf.Max(max, heightMap[x, y - pass / 2]);
						}

						if (y + pass / 2 <= height)
						{
							min = Mathf.Min(min, heightMap[x, y + pass / 2]);
							max = Mathf.Max(max, heightMap[x, y + pass / 2]);
						}

						float range = max - min;
						heightMap[x, y] = Random.Range(range * minVariance, range * maxVariance) + min;
					}

			for (int x = 0; x <= width; x += pass) //diamond B
				for (int y = pass / 2; y <= height; y += pass)
					if (heightMap[x, y] == 0) //only change if not already defined
					{
						float min = float.MaxValue;
						float max = float.MinValue;

						if (x - pass / 2 >= 0)
						{
							min = Mathf.Min(min, heightMap[x - pass / 2, y]);
							max = Mathf.Max(max, heightMap[x - pass / 2, y]);
						}

						if (x + pass / 2 <= width)
						{
							min = Mathf.Min(min, heightMap[x + pass / 2, y]);
							max = Mathf.Max(max, heightMap[x + pass / 2, y]);
						}

						if (y - pass / 2 >= 0)
						{
							min = Mathf.Min(min, heightMap[x, y - pass / 2]);
							max = Mathf.Max(max, heightMap[x, y - pass / 2]);
						}

						if (y + pass / 2 <= height)
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
