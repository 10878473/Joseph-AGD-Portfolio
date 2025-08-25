using UnityEngine;

public class LooperMove : MonoBehaviour
{
    [Header("Movement Settings")]
    public Vector3 moveDirection = Vector3.left; // Direction of movement
    public float speed = 1f;                     // Movement speed
    public float loopDistance = 10f;             // Distance before looping back

    private Vector3 startPosition;
    private float traveledDistance = 0f;

    void Start()
    {
        startPosition = transform.position;
    }

    void Update()
    {
        // Move by direction * speed * deltaTime
        Vector3 movement = moveDirection.normalized * speed * Time.deltaTime;
        transform.position += movement;

        // Track distance traveled
        traveledDistance += movement.magnitude;

        // Reset position when loop distance is reached
        if (traveledDistance >= loopDistance)
        {
            transform.position = startPosition;
            traveledDistance = 0f;
        }
    }

    /// <summary>
    /// Allows changing movement speed at runtime
    /// </summary>
    public void ChangeSpeed(float newSpeed)
    {
        speed = newSpeed;
    }
}