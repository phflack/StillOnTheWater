using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TwistyRiverStart : MonoBehaviour
{
	private int[][] riverData = new int[][]{new int[]{0, 512, 48, 0}, new int[]{256, 512, 112, 0}, new int[]{512, 512, 128, 0}, new int[]{768, 512, 112, 0}, new int[]{1024, 512, 48, 0}}; //x, y, width, rotation

	private Terrain terrain;

	//Use this for initialization
	void Start()
	{
		terrain = GetComponent<Terrain>();

		int width = terrain.terrainData.heightmapWidth;
		int height = terrain.terrainData.heightmapHeight;
		float[,] tileHeights = new float[height, width];

		for(int x = 0; x <= 1024; x++)
		{
			int upper = (int)Mathf.Ceil(x / 256.0f);
			int lower = (int)Mathf.Floor(x / 256.0f);
			
			float ratio = x % 256 / 256.0f;
			float riverWidth = (riverData[upper][2] * ratio + riverData[lower][2] * (1.0f - ratio)) / 2.0f;
			
			float hypotnus = 2.0f * riverWidth * riverWidth;
			for(int y = 0; y < riverWidth; y++)
			{
				float riverHeight = (riverWidth - Mathf.Sqrt(hypotnus - y * y)) / 10f + 10f;
				//Debug.Log("X" + x + "Y" + y + " " + riverHeight);
				tileHeights[x, 512 + y] = tileHeights[x, 512 - y] = riverHeight / 128f;
			}
		}
		tileHeights[0, 0] = 1f / 128f;
		
		terrain.terrainData.SetHeights(0, 0, tileHeights);
	}
	
	//Update is called once per frame
	void Update()
	{
		
	}
}