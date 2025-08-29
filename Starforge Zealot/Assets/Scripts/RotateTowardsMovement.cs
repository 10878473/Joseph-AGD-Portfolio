using UnityEngine;

public class RotateTowardsMovement : MonoBehaviour
{
    [Header("References")]
    public Rigidbody shipRigidbody; // reference to parent ship rigidbody or movement script

    [Header("Settings")]
    public float tiltAmount = 30f;   // max tilt angle
    public float tiltSpeed = 5f;     // how fast the ship rotates toward target tilt
    public bool invertTilt = false;  // toggle to invert tilt direction

    [Header("Axis Locks")]
    public bool allowPitch = true;   // X axis
    public bool allowRoll = true;    // Z axis

    [Header("Return to Neutral")]
    public bool returnToNeutral = true; // if true, return tilt to flat when not moving

    private Vector3 lastPosition;

    void Update()
    {
        // --- Get movement direction ---
        Vector3 velocity = shipRigidbody ? shipRigidbody.linearVelocity : Vector3.zero;

        // If no rigidbody given, estimate velocity from position change
        if (!shipRigidbody && transform.parent != null)
        {
            velocity = (transform.parent.position - lastPosition) / Time.deltaTime;
            lastPosition = transform.parent.position;
        }

        // --- Inversion factor ---
        float invertFactor = invertTilt ? -1f : 1f;

        Quaternion targetRot;

        if (velocity.sqrMagnitude > 0.01f)
        {
            // --- Convert movement direction to local space ---
            Vector3 localVel = transform.InverseTransformDirection(velocity.normalized);

            // --- Tilt angles ---
            float tiltX = allowPitch ? -localVel.z * tiltAmount * invertFactor : 0f;
            float tiltZ = allowRoll  ?  localVel.x * tiltAmount * invertFactor : 0f;

            targetRot = Quaternion.Euler(tiltX, 0f, tiltZ);
        }
        else
        {
            // --- No movement ---
            if (returnToNeutral)
                targetRot = Quaternion.identity; // reset to neutral
            else
                return; // keep current tilt
        }

        // --- Smooth rotation ---
        transform.localRotation = Quaternion.Slerp(transform.localRotation, targetRot, Time.deltaTime * tiltSpeed);
    }
}
