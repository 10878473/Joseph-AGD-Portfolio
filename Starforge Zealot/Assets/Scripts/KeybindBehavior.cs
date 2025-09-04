using UnityEngine;
using UnityEngine.Events;

public class KeybindBehavior : MonoBehaviour
{
    [Header("Keybind")]
    public KeyCode key = KeyCode.Space; // shows as dropdown in Inspector

    [Header("Event")]
    public UnityEvent onKeyPressed;

    private void Update()
    {
        if (Input.GetKeyDown(key))
        {
            onKeyPressed?.Invoke();
        }
    }
}