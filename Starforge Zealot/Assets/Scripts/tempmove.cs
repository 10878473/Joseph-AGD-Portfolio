using UnityEngine;

public class tempmove : MonoBehaviour
{
    [Header("Movement Settings")]
    public float moveSpeed = 5f;
    public float boostMultiplier = 2f;

    [Header("Debug Settings")]
    public bool debugMode = false; // Toggle in Inspector or at runtime with a key

    private Vector3 movement;

    void Update()
    {
        // --- Input ---
        float x = Input.GetAxis("Horizontal"); // A/D or Left/Right
        float z = Input.GetAxis("Vertical");   // W/S or Up/Down

        movement = new Vector3(x, 0f, z).normalized;

        // --- Boost ---
        float currentSpeed = moveSpeed;
        if (Input.GetKey(KeyCode.LeftShift))
            currentSpeed *= boostMultiplier;

        // --- Apply Movement ---
        transform.Translate(movement * currentSpeed * Time.deltaTime, Space.World);

        // --- Debug ---
        if (debugMode)
        {
            Debug.Log($"Position: {transform.position} | Movement: {movement * currentSpeed}");
        }

        // Optional: Toggle debug mode with a key
        if (Input.GetKeyDown(KeyCode.F3))
            debugMode = !debugMode;
    }
}
