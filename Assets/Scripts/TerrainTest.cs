using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TerrainTest : MonoBehaviour
{
	private Terrain terrain;
	private int width, height;

	// Use this for initialization
	void Start()
	{
		terrain = Terrain.activeTerrain;
		width = terrain.terrainData.heightmapWidth;
		height = terrain.terrainData.heightmapHeight;
		Debug.Log("test " + width + " " + height);

		float[,] heightMap = terrain.terrainData.GetHeights(0, 0, width, height);
		for(int x = 0; x < width; x++)
			for(int y = 0; y < height; y++)
				heightMap[x, y] = 0;
		terrain.terrainData.SetHeights(0, 0, heightMap);
	}
	
	//Update is called once per frame
	void Update()
	{
		/*float[,] heightMap = terrain.terrainData.GetHeights(0, 0, width, height);
		int x = Random.Range(2, width - 2);
		int y = Random.Range(2, height - 2);

		Debug.Log("pull " + x + " " + y);

		for(int X = -2; X <= 2; X++)
			for(int Y = -2; Y <= 2; Y++)
				heightMap[x + X, y + Y] += 0.001f;

		terrain.terrainData.SetHeights(0, 0, heightMap);*/
	}
}
