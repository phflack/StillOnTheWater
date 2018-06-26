using UnityEngine;
using System.Collections;

public class RiverGenWithNoiseTexture : MonoBehaviour
{
	// managed terrain data
	private Terrain m_terrain = null;
	private float[,] m_heightValues = null;
	private int m_resolution = 0;
	private Color[] riverSamplePixels;

	// public options
	public float tileSize = .2f;
	public float hillHeight = 1f;
	public float _TimeMod = 1f;
	public Texture2D waterNoise;


	// Sampling factors
	float sample1, sample2;
	float sampleTime = 0;
	float angle = 0f;
	float totalTime = 0f;
	float riverSampleOffset = 0f;

	float xOffset = 0f;
	float yOffset = 0f;

	// Input state
	float verticalInput = 0f;
	float horizontalInput = 0f;

	public int manualMod = 0;

	// Intialization
	private void Start()
	{
		m_terrain = gameObject.GetComponent<Terrain>();
		m_resolution = m_terrain.terrainData.heightmapResolution;
		m_heightValues = new float[ m_resolution, m_resolution ];
		riverSamplePixels = new Color[ waterNoise.height ];
		FillTerrainWithNoise ();
	}


	
	void Update() {
		UpdateSamplingFactors ();
		GetInput ();
		// swapped because the camera is looking along x instead of along z
//		yOffset += horizontalInput * .01f;
//		xOffset += verticalInput * .01f;
		ShiftHeightValues ();
		
//		FillTerrainWithNoise ();
	}




	// -------------- Helper Functions ------------ //
	private void UpdateSamplingFactors() {
		// time proceeds like normal
		totalTime += Time.deltaTime * _TimeMod;
		// wavelength - sampple pnoise in a 1px line over time
		sample1 = Mathf.PerlinNoise (0f, totalTime);
		// use that sample to modify how fast we traverse 1px line sample 2
		sampleTime += Time.deltaTime * sample1;
		// amplitude - sample pnoise in a 1px line over a fluctuating rate of time
		// or, sampleRate - determines how great a step along the horizontal of our river noise texture each update
		sample2 = Mathf.PerlinNoise (0f, sampleTime);

		riverSampleOffset += sample2 * .1f % waterNoise.width;

		//sample2 results in a value between 0 and 1, which should be used aaaas.......
		// an angle between -180 and 180?
		angle = (sample2) * 360f;
	}

	private void FillTerrainWithNoise() {
		// Run through array and read height values.
		for ( int i = 0; i < m_terrain.terrainData.heightmapWidth; i++ )
		{
			for ( int j = 0; j < m_terrain.terrainData.heightmapHeight; j++ )
			{
				m_heightValues[ i, j ] = Mathf.PerlinNoise( ((float)i / (float)m_terrain.terrainData.heightmapWidth) * tileSize + xOffset, ((float)j / (float)m_terrain.terrainData.heightmapHeight) + yOffset) * hillHeight;
				//	index++;
			}
		}
	
		// Now set terrain heights.
		m_terrain.terrainData.SetHeights( 0, 0, m_heightValues );
	}

	private void GetInput() {
		verticalInput = Input.GetAxis ("Vertical");
		horizontalInput = Input.GetAxis ("Horizontal");
		Debug.Log (horizontalInput + "," + verticalInput);
	}

	private void ShiftHeightValues() {
		//right shift with modulus
		for (int x = 0; x < m_resolution; x++) {
			for (int y = 0; y < m_resolution; y++) {
				int xCopyIndex, yCopyIndex;
				xCopyIndex = (x + (int)(sample2 * 5 * Mathf.Abs(horizontalInput))) % m_resolution;
				yCopyIndex = (y + (int)(sample2 * 5 * Mathf.Abs(verticalInput))) % m_resolution;
				m_heightValues [x,y] = m_heightValues [xCopyIndex, yCopyIndex];
			}
		}
			
		m_terrain.terrainData.SetHeights( 0, 0, m_heightValues );
	}

	private float[] convertTerrainPositionToRiverPosition (float[] original) {
        float[] result = original;

        return original;
	}
}