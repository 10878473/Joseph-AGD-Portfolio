using UnityEngine;

public class matchRotation : MonoBehaviour
{
    [Header("Target Reference")]
    public Transform target;
    
    public void matchRotationofTarget()
    {
        target.rotation = transform.rotation;
    }
}
