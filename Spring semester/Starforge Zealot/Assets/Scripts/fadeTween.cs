using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using UnityEngine.Events;

public class fadeTween : MonoBehaviour
{
    [Header("Target to Fade")]
    public CanvasGroup canvasGroup;     // Best for UI panels
    public Graphic graphic;             // Optional: Image/Text/etc.

    [Header("Default Settings")]
    public float duration = 0.5f;
    public AnimationCurve easeCurve = AnimationCurve.Linear(0, 0, 1, 1);
    public UnityEvent fadecomplete;
    private Coroutine fadeRoutine;

    /// <summary>
    /// Fades in the UI (alpha -> 1)
    /// </summary>
    public void FadeInUI()
    {
        StartFade(1f, duration);
    }

    /// <summary>
    /// Fades out the UI (alpha -> 0)
    /// </summary>
    public void FadeOutUI()
    {
        StartFade(0f, duration);
    }

    /// <summary>
    /// Call with UnityEvent to fade to a specific alpha
    /// </summary>
    public void FadeTo(float targetAlpha)
    {
        StartFade(targetAlpha, duration);
    }

    /// <summary>
    /// Internal fade coroutine
    /// </summary>
    private void StartFade(float targetAlpha, float fadeDuration)
    {
        if (fadeRoutine != null)
            StopCoroutine(fadeRoutine);

        fadeRoutine = StartCoroutine(FadeCoroutine(targetAlpha, fadeDuration));
    }

    private IEnumerator FadeCoroutine(float targetAlpha, float fadeDuration)
    {
        float startAlpha = GetCurrentAlpha();
        float time = 0f;

        while (time < fadeDuration)
        {
            time += Time.deltaTime;
            float t = Mathf.Clamp01(time / fadeDuration);
            float easedT = easeCurve.Evaluate(t);
            float newAlpha = Mathf.Lerp(startAlpha, targetAlpha, easedT);

            SetAlpha(newAlpha);
            yield return null;
        }

        SetAlpha(targetAlpha);
        fadecomplete.Invoke();
    }

    private float GetCurrentAlpha()
    {
        if (canvasGroup != null)
            return canvasGroup.alpha;
        if (graphic != null)
            return graphic.color.a;

        return 1f;
    }

    private void SetAlpha(float alpha)
    {
        if (canvasGroup != null)
            canvasGroup.alpha = alpha;

        if (graphic != null)
        {
            Color c = graphic.color;
            c.a = alpha;
            graphic.color = c;
        }
    }
}
