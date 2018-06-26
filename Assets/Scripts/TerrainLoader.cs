using UnityEngine;
using System.Collections;

public class TerrainLoader : MonoBehaviour
{
	private Terrain m_terrain = null;
	private float[,] m_heightValues = null;
	private int m_resolution = 0;
	public string filename;

	public float tileSize = .2f;
	public float hillHeight = 1f;
	public float _TimeMod = 1f;
	// Private methods.
	//----------------------------------------------------------------------------------------------


	float totalTime = 0f;
	private void Start()
	{
		m_terrain = gameObject.GetComponent<Terrain>();
		m_resolution = m_terrain.terrainData.heightmapResolution;
		m_heightValues = new float[ m_resolution, m_resolution ];
			
	}

//	private void LoadHeightmap()
//	{	
//		// Run through array and read height values.
//		int index = 0;
//		for ( int i = 0; i < m_terrain.terrainData.heightmapWidth; i++ )
//		{
//			for ( int j = 0; j < m_terrain.terrainData.heightmapHeight; j++ )
//			{
//				m_heightValues[ i, j ] = Mathf.PerlinNoise( ((float)i / (float)m_terrain.terrainData.heightmapWidth) * tileSize, ((float)j / (float)m_terrain.terrainData.heightmapHeight)) * hillHeight;
//			//	index++;
//			}
//		}
//
//		// Now set terrain heights.
//		m_terrain.terrainData.SetHeights( 0, 0, m_heightValues );
//	}



	// so like, a story about humanity doesnt have to be bad
	// but one time my sister told me she was thrilled about her brilliant new idea
	// to interview strangers in philadelphia and put it in a book called "Philadelphia"
	// and if it's that flavor of humanity it'll be distinctly the least original thing in a tragic way-+
	float sample1, sample2;
	float sampleTime = 0;
	float angle = 0f;
	void Update() {
		// time proceeds like normal
		totalTime += Time.deltaTime * _TimeMod;
		// wavelength - sampple pnoise in a 1px line over time
		sample1 = Mathf.PerlinNoise (0f, totalTime);
		// use that sample to modify how fast we traverse 1px line sample 2
		sampleTime += Time.deltaTime * sample1;
		// amplitude - sample pnoise in a 1px line over a fluctuating rate of time
		sample2 = Mathf.PerlinNoise (0f, sampleTime);

		//sample2 results in a value between 0 and 1, which should be used aaaas.......
		// an angle between -180 and 180?
		angle = (sample2 - .5f) * 180f;

		// Run through array and read height values.
		for ( int i = 0; i < m_terrain.terrainData.heightmapWidth; i++ )
		{
			for ( int j = 0; j < m_terrain.terrainData.heightmapHeight; j++ )
			{
				m_heightValues[ i, j ] = Mathf.PerlinNoise( ((float)i / (float)m_terrain.terrainData.heightmapWidth) * tileSize + totalTime, ((float)j / (float)m_terrain.terrainData.heightmapHeight) + totalTime) * hillHeight;
				//	index++;
			}
		}

		// Now set terrain heights.
		m_terrain.terrainData.SetHeights( 0, 0, m_heightValues );
	}
}