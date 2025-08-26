using UnityEngine;

public class Vector3AutoMovement : MonoBehaviour
{
    [Tooltip("Units per second")]
    public float speed = 40f;

    public void SetSpeed(float newSpeed)
    {
        speed = newSpeed;
    }

    void Update()
    {
        transform.position += transform.forward * speed * Time.deltaTime;
    }
}

