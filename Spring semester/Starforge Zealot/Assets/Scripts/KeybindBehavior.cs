using UnityEngine;
using UnityEngine.Events;

public class KeybindBehavior : MonoBehaviour
{
    [Header("Keybind")]
    public KeyCode key = KeyCode.Space;

    [Tooltip("If true, repeatedly triggers while holding the key.")]
    public bool Holddown = false;

    [Tooltip("How many times per second to trigger when holding down.")]
    public float holdamtpersec = 5f;

    [Header("Event")]
    public UnityEvent onKeyPressed;

    private float holdTimer = 0f;

    private void Update()
    {
        // Key pressed once
        if (Input.GetKeyDown(key))
        {
            onKeyPressed?.Invoke();
            holdTimer = 0f; // reset timer when key first pressed
        }

        // Holding key
        if (Holddown && Input.GetKey(key))
        {
            holdTimer += Time.deltaTime;

            float interval = 1f / holdamtpersec;
            while (holdTimer >= interval)
            {
                onKeyPressed?.Invoke();
                holdTimer -= interval;
            }
        }

        // Reset timer when released
        if (Input.GetKeyUp(key))
        {
            holdTimer = 0f;
        }
    }
}