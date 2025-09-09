using UnityEngine;

public class EnemyBehavior : MonoBehaviour
{
    public enum BehaviorType
    {
        Randomize,
        Strafing,
        Laning,
        //LazyTurn,
        Aggressive,
        //Dash,
        Avoid
    }

    [Header("Behavior Settings")]
    public BehaviorType behavior;

    [Header("Debugging")]
    public bool debug;

    [Header("Movement Settings")]
    public float moveSpeed = 3f;           // Single speed variable for all behaviors
    public float rotationSpeed = 2f;       // Smooth rotation speed for Strafing, Laning, Aggressive
    public float avoidDistance = 20f;      // For Avoid behavior
    public float avoidTurnSpeed = 2f;      // Smooth rotation speed when avoiding

    [Header("Strafing Settings")]
    public Transform gateA;   // first gate
    public Transform gateB;   // second gate

    [Header("Laning Settings")]
    public float laningDelayMin = 1f;
    public float laningDelayMax = 4f;

    [Header("Aggressive Settings")]
    public float aggressiveDistance = 10f;    // Distance at which it speeds up
    public float aggressiveSpeedMultiplier = 2f;

    // --- Private internal variables ---
    private Vector3 strafeTarget;
    private float laningDelay;
    private bool laningStarted;
    private GameObject player;

    private void Start()
    {
        // Find gates automatically if not assigned
        if (gateA == null || gateB == null)
        {
            GameObject[] gates = GameObject.FindGameObjectsWithTag("Gate");
            if (gates.Length >= 2)
            {
                gateA = gates[0].transform;
                gateB = gates[1].transform;
            }
            else
            {
                Debug.LogError("Not enough gates found in the scene! Need at least 2 with tag 'Gate'.");
            }
        }

        // Find player once
        player = GameObject.FindGameObjectWithTag("Player");
        if (player == null)
        {
            Debug.LogWarning("No GameObject with tag 'Player' found.");
        }

        // Handle randomization
        if (behavior == BehaviorType.Randomize)
        {
            behavior = (BehaviorType)Random.Range(1, System.Enum.GetValues(typeof(BehaviorType)).Length);
            if (debug) Debug.Log($"{gameObject.name} randomized behavior to: {behavior}");
        }
        else if (debug)
        {
            Debug.Log($"{gameObject.name} starting with behavior: {behavior}");
        }

        // Initialize behaviors
        switch (behavior)
        {
            case BehaviorType.Strafing:
                PickStrafeTarget();
                break;

            case BehaviorType.Laning:
                laningDelay = Random.Range(laningDelayMin, laningDelayMax);
                if (debug) Debug.Log($"{gameObject.name} will lane in {laningDelay:F2} seconds");
                break;
        }
    }

    private void Update()
    {
        switch (behavior)
        {
            case BehaviorType.Strafing:
                DoStrafing();
                break;

            case BehaviorType.Laning:
                DoLaning();
                break;

            case BehaviorType.Avoid:
                DoAvoiding();
                break;

            case BehaviorType.Aggressive:
                DoAggressive();
                break;
        }
    }

    // --- STRAFING ---
    private void DoStrafing()
    {
        if (gateA == null || gateB == null) return;

        transform.position = Vector3.MoveTowards(transform.position, strafeTarget, moveSpeed * Time.deltaTime);
        Quaternion targetRotation = Quaternion.Euler(0, 270, 0);
        transform.rotation = Quaternion.Slerp(transform.rotation, targetRotation, rotationSpeed * Time.deltaTime);

        if (Vector3.Distance(transform.position, strafeTarget) < 0.1f)
        {
            PickStrafeTarget();
        }
    }

    private void PickStrafeTarget()
    {
        strafeTarget = Vector3.Lerp(gateA.position, gateB.position, Random.value);
        if (debug) Debug.Log($"{gameObject.name} strafing towards {strafeTarget}");
    }

    // --- LANING ---
    private void DoLaning()
    {
        if (!laningStarted)
        {
            transform.position += transform.forward * moveSpeed * Time.deltaTime;
            laningDelay -= Time.deltaTime;
            if (laningDelay <= 0f)
            {
                laningStarted = true;
                if (debug) Debug.Log($"{gameObject.name} started laning left!");
            }
        }
        else
        {
            Quaternion targetRotation = Quaternion.Euler(0, 270, 0);
            transform.rotation = Quaternion.Slerp(transform.rotation, targetRotation, rotationSpeed * Time.deltaTime);
            transform.position += Vector3.left * moveSpeed * Time.deltaTime;
        }
    }

    // --- AVOIDING ---
    private void DoAvoiding()
    {
        transform.position += transform.forward * moveSpeed * Time.deltaTime;
        if (player == null) return;

        Vector3 directionToPlayer = player.transform.position - transform.position;
        float distance = directionToPlayer.magnitude;

        if (distance < avoidDistance)
        {
            Vector3 awayDirection = -directionToPlayer.normalized;
            Quaternion targetRotation = Quaternion.LookRotation(awayDirection);
            transform.rotation = Quaternion.Slerp(transform.rotation, targetRotation, avoidTurnSpeed * Time.deltaTime);

            if (debug)
            {
                Debug.Log($"{gameObject.name} avoiding player, distance: {distance:F2}");
            }
        }
    }

    // --- AGGRESSIVE ---
    private void DoAggressive()
    {
        if (player == null) return;

        Vector3 directionToPlayer = (player.transform.position - transform.position).normalized;
        float distance = Vector3.Distance(player.transform.position, transform.position);

        // Rotate toward player smoothly
        Quaternion targetRotation = Quaternion.LookRotation(directionToPlayer);
        transform.rotation = Quaternion.Slerp(transform.rotation, targetRotation, rotationSpeed * Time.deltaTime);

        // Speed up if close
        float currentSpeed = (distance < aggressiveDistance) ? moveSpeed * aggressiveSpeedMultiplier : moveSpeed;

        // Move forward along facing direction
        transform.position += transform.forward * currentSpeed * Time.deltaTime;

        if (debug)
        {
            Debug.Log($"{gameObject.name} aggressive towards player, distance: {distance:F2}, speed: {currentSpeed:F2}");
        }
    }
}
