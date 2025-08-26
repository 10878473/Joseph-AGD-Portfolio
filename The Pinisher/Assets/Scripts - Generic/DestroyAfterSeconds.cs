using UnityEngine;

public class DestroyAfterSeconds : MonoBehaviour
{
    [Tooltip("How many seconds to wait before destroying this object.")]
    public float lifetime = 5f;

    void Start()
    {
        Destroy(gameObject, lifetime);
    }
}