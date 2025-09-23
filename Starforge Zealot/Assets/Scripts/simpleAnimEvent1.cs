using System.Collections;
using UnityEngine;
using UnityEngine.Events;

public class simpleAnimEvent1 : MonoBehaviour
{
    [Header("Animation Settings")]
    public Vector3 pointA;       // Start position
    public Vector3 pointB;       // End position
    public float timeVarA = 2f;  // Duration of movement

    [Header("Events")]
    public UnityEvent enableControls;

    private void Start()
    {
        StartCoroutine(IntroAnimation());
    }

    private IEnumerator IntroAnimation()
    {
        Transform player = transform;
        player.position = pointA;

        float elapsed = 0f;

        while (elapsed < timeVarA)
        {
            // Lerp position from A to B
            player.position = Vector3.Lerp(pointA, pointB, elapsed / timeVarA);
            elapsed += Time.deltaTime;
            yield return null;
        }

        // Snap to final position to avoid precision errors
        player.position = pointB;

        // Trigger event
        enableControls?.Invoke();
    }
}