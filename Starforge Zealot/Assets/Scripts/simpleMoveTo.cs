using System.Collections;
using UnityEngine;
using UnityEngine.Events;

public class SimpleMoveTo : MonoBehaviour
{
    [Header("Destinations")]
    public Vector3 destination1;
    public Vector3 destination2;
    public bool useDestination2 = false;

    [Header("Timing (seconds)")]
    public float timeToDestination1 = 1f;
    public float timeToDestination2 = 1f;

    [Header("Events")]
    public UnityEvent onStartMove;
    public UnityEvent onReachDestination1;
    public UnityEvent onEndMove;

    private Coroutine moveRoutine;

    public void BeginMove()
    {
        if (moveRoutine != null)
            StopCoroutine(moveRoutine);

        moveRoutine = StartCoroutine(MoveRoutine());
    }

    private IEnumerator MoveRoutine()
    {
        onStartMove?.Invoke();

        // Move to destination 1
        yield return MoveTo(destination1, timeToDestination1);
        onReachDestination1?.Invoke();

        // Move to destination 2 (optional)
        if (useDestination2)
        {
            yield return MoveTo(destination2, timeToDestination2);
        }

        onEndMove?.Invoke();
    }

    private IEnumerator MoveTo(Vector3 target, float duration)
    {
        Vector3 start = transform.position;
        float elapsed = 0f;

        while (elapsed < duration)
        {
            elapsed += Time.deltaTime;
            float t = Mathf.Clamp01(elapsed / duration);
            transform.position = Vector3.Lerp(start, target, t);
            yield return null;
        }

        transform.position = target; // Snap exactly at the end
    }
}