using UnityEngine;
using UnityEngine.Events;

public class DestroyAfterSeconds : MonoBehaviour
{
    [Tooltip("How many seconds to wait before destroying this object.")]
    public float lifetime = 5f;
    //public UnityEvent destroyevent;

    void Start()
    {
        Destroy(gameObject, lifetime);
    }

    public void DestroyNow()
    {
        Destroy(gameObject);
    }
}