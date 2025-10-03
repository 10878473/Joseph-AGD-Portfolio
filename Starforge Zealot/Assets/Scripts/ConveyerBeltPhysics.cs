using UnityEngine;

[RequireComponent(typeof(Collider))]
public class ConveyorBelt : MonoBehaviour
{
    [Tooltip("Direction of conveyor movement (local space).")]
    public Vector3 conveyorDirection = Vector3.forward;

    [Tooltip("Speed of the conveyor belt.")]
    public float speed = 2f;

    private void OnCollisionStay(Collision collision)
    {
        Rigidbody rb = collision.rigidbody;
        if (rb != null)
        {
            // Convert conveyor direction to world space
            Vector3 dir = transform.TransformDirection(conveyorDirection.normalized);

            // Apply velocity in that direction, preserving vertical motion
            Vector3 conveyorVelocity = dir * speed;
            rb.linearVelocity = new Vector3(conveyorVelocity.x, rb.linearVelocity.y, conveyorVelocity.z);
        }
    }
}