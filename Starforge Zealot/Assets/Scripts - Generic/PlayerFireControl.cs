using UnityEngine;
using UnityEngine.InputSystem;
using System.Collections.Generic;

public class PlayerFireControl : MonoBehaviour
{
    public enum FireMode
    {
        Single,
        Dual,
        Linked
    }

    [Header("Projectile Settings")]
    public GameObject projectilePrefab;
    public float projectileSpeed = 50f;
    public bool overrideProjectileSpeed = true;

    [Header("Firing Settings")]
    public float fireRate = 5f; // Shots per second
    public List<Transform> barrelTransforms = new List<Transform>();

    [Header("Firing Mode Settings")]
    public FireMode currentMode = FireMode.Single;
    public InputActionReference fireAction;
    public InputActionReference switchFireModeAction;

    private float fireCooldown;
    private int currentBarrelIndex = 0;
    private int dualPairIndex = 0;

    void OnEnable()
    {
        fireAction.action.Enable();
        switchFireModeAction.action.Enable();
        switchFireModeAction.action.performed += CycleFireMode;
    }

    void OnDisable()
    {
        fireAction.action.Disable();
        switchFireModeAction.action.Disable();
        switchFireModeAction.action.performed -= CycleFireMode;
    }

    void Update()
    {
        fireCooldown -= Time.deltaTime;

        if (fireAction.action.IsPressed() && fireCooldown <= 0f)
        {
            switch (currentMode)
            {
                case FireMode.Single:
                    FireFromBarrel(barrelTransforms[currentBarrelIndex]);
                    currentBarrelIndex = (currentBarrelIndex + 1) % barrelTransforms.Count;
                    break;

                case FireMode.Dual:
                    FireDualPair();
                    dualPairIndex = (dualPairIndex + 1) % Mathf.CeilToInt(barrelTransforms.Count / 2f);
                    break;

                case FireMode.Linked:
                    FireAllBarrels();
                    break;
            }

            if (currentMode == FireMode.Linked && barrelTransforms.Count > 0)
            {
                fireCooldown = 1f / (fireRate / barrelTransforms.Count);
            }
            else if (currentMode == FireMode.Dual && barrelTransforms.Count > 1)
            {
                int pairCount = Mathf.CeilToInt(barrelTransforms.Count / 2f);
                fireCooldown = 1f / (fireRate / pairCount);
            }
            else
            {
                fireCooldown = 1f / fireRate;
            }
        }
    }


    void FireFromBarrel(Transform barrel)
    {
        if (projectilePrefab == null || barrel == null) return;

        GameObject projectile = Instantiate(projectilePrefab, barrel.position, barrel.rotation);

        if (projectile.TryGetComponent<Rigidbody>(out var rb))
            rb.linearVelocity = barrel.forward * projectileSpeed;

        if (overrideProjectileSpeed && projectile.TryGetComponent<Vector3AutoMovement>(out var mover))
            mover.SetSpeed(projectileSpeed);
    }

    void FireAllBarrels()
    {
        foreach (var barrel in barrelTransforms)
        {
            FireFromBarrel(barrel);
        }
    }

    void FireDualPair()
    {
        int totalPairs = Mathf.CeilToInt(barrelTransforms.Count / 2f);
        int start = dualPairIndex * 2;

        for (int i = start; i < start + 2 && i < barrelTransforms.Count; i++)
        {
            FireFromBarrel(barrelTransforms[i]);
        }
    }

    void CycleFireMode(InputAction.CallbackContext context)
    {
        currentMode = (FireMode)(((int)currentMode + 1) % System.Enum.GetNames(typeof(FireMode)).Length);
        currentBarrelIndex = 0;
        dualPairIndex = 0;
        Debug.Log($"Switched fire mode to: {currentMode}");
    }
}



