using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class DrawPaddleMotionVectorsOnCanvas : MonoBehaviour {
    Transform center;
    public RectTransform leftPaddle;
    public RectTransform rightPaddle;
    public ApplyForceFromPaddleTracker paddleforce;
    public Vector2 diagramRect;

	// Update is called once per frame
	void Update () {
        Vector3 leftRelativePosition = center.InverseTransformPoint(paddleforce.tracking[0].transform.position);
        Vector3 rightRelativePosition = center.InverseTransformPoint(paddleforce.tracking[1].transform.position);

        Vector3 leftRelativeVector = center.InverseTransformPoint(paddleforce.tracking[0].totalMotion);
        Vector3 righRelativeVector = center.InverseTransformPoint(paddleforce.tracking[1].totalMotion);

        Vector2 NormalizedEndPointsLeft = new Vector2(leftRelativePosition.x, leftRelativePosition.y);
        Vector2 NormalizedEndPointsRight = new Vector2(rightRelativePosition.x, rightRelativePosition.y);



    //    leftPaddle.anchorMax = new Vector2(Mathf.Clamp01(NormalizedEndPointsX.x / diagramRect.x - diagramRect.x /2f), Mathf.Clamp01(NormalizedEndPointsY.x / diagramRect.y - diagramRect.y / 2f));
    //     leftPaddle.anchorMin = new Vector2(Mathf.Clamp01(NormalizedEndPointsX.x / diagramRect.x - diagramRect.x / 2f), Mathf.Clamp01(NormalizedEndPointsY.x / diagramRect.y - diagramRect.y / 2f));

     //   rightPaddle.anchorMax = new Vector2(Mathf.Clamp01(NormalizedEndPointsX.y / diagramRect.x - diagramRect.x / 2f), Mathf.Clamp01(NormalizedEndPointsY.y / diagramRect.y - diagramRect.y / 2f));
     //   rightPaddle.anchorMin = new Vector2(Mathf.Clamp01(NormalizedEndPointsX.y / diagramRect.x - diagramRect.x / 2f), Mathf.Clamp01(NormalizedEndPointsY.y / diagramRect.y - diagramRect.y / 2f));
    }
}
