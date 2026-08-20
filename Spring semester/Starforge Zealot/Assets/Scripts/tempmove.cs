using UnityEngine;

public class tempmove : MonoBehaviour
{
    [Header("Movement Settings")]
    public float moveSpeed = 5f;

    public IntData speedData;
    public float boostMultiplier = 2f;

    [Tooltip("Half-size of the allowed movement area. X = left/right, Y = forward/back.")]
    public Vector2 limits = new Vector2(10f, 10f);

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
        if (speedData.value > 0 )
        {
            currentSpeed = speedData.value;
        }
        if (Input.GetKey(KeyCode.LeftShift))
            currentSpeed *= boostMultiplier;

        // --- Apply Movement ---
        transform.Translate(movement * currentSpeed * Time.deltaTime, Space.World);

        // --- Clamp Position Inside Box ---
        Vector3 clampedPos = transform.position;
        clampedPos.x = Mathf.Clamp(clampedPos.x, -limits.x, limits.x);
        clampedPos.z = Mathf.Clamp(clampedPos.z, -limits.y, limits.y);
        transform.position = clampedPos;

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