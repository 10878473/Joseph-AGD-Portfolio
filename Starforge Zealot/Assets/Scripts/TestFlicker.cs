using System.Collections;
using UnityEngine;

public class TestFlicker : MonoBehaviour
{
    [Header("Flicker Settings")]
    public MeshRenderer flickerTarget;
    public GameObject flickerTarget2;
    public AnimationCurve flickerCurve; // 0 = off, 1 = on
    public float duration = 1f;

    private Coroutine flickerRoutine;

    private void OnTriggerEnter(Collider other)
    {
        if (flickerRoutine != null)
            StopCoroutine(flickerRoutine);

        flickerRoutine = StartCoroutine(FlickerRoutine());
    }

    private IEnumerator FlickerRoutine()
    {
        float timer = 0f;

        while (timer < duration)
        {
            timer += Time.deltaTime;
            float t = Mathf.Clamp01(timer / duration);

            float curveValue = flickerCurve.Evaluate(t);
            flickerTarget.enabled = curveValue > 0.5f;
            flickerTarget2.SetActive( curveValue > 0.5f); 
            yield return null;
        }

        // Ensure shield ends OFF
        flickerTarget.enabled = false;
        flickerTarget2.SetActive(false);
    }
}