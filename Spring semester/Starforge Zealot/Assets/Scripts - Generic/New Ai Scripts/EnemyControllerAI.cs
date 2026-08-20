using UnityEngine;
using UnityEngine.Events;

public class EnemyControllerAI : MonoBehaviour
{
    [SerializeField] private float health; // Enemy health
    [SerializeField] private FloatData damageData; // Damage taken per hit
    [SerializeField] private FloatData knockbackForceData; // Knockback force
    [SerializeField] private FloatData knockbackDurationData; // Knockback duration
    [SerializeField] private FloatData moveSpeedData; // Movement speed
    [SerializeField] private UnityEvent onHitEvent; // Triggered on hit
    [SerializeField] private UnityEvent onChaseStartEvent; // Triggered on chase start
    [SerializeField] private UnityEvent onChaseStopEvent; // Triggered on chase stop
    [SerializeField] private UnityEvent onDeathEvent; // Triggered on death

    private Rigidbody rb;
    private Transform player;
    private bool isChasing = false;
    private bool isKnockedBack = false;
    private float knockbackTimer = 0f;

    void Start()
    {
        rb = GetComponent<Rigidbody>();
        rb.isKinematic = false;
        rb.useGravity = true;
        player = GameObject.FindGameObjectWithTag("Player").transform; // Tag your player
    }

    void FixedUpdate()
    {
        if (isKnockedBack)
        {
            knockbackTimer -= Time.deltaTime;
            if (knockbackTimer <= 0f || rb.linearVelocity.magnitude < 0.1f)
            {
                isKnockedBack = false;
            }
        }
        else if (isChasing)
        {
            Vector3 directionToPlayer = (player.position - transform.position).normalized;
            rb.AddForce(directionToPlayer * moveSpeedData.value, ForceMode.Force);
        }
    }

    public void StartChasing()
    {
        Debug.Log("Command received!");
        if (!isChasing)
        {
            isChasing = true;
            onChaseStartEvent.Invoke();
        }
    }

    public void StopChasing()
    {
        Debug.Log("Command received! Stopping the chase");
        if (isChasing)
        {
            isChasing = false;
            rb.linearVelocity = Vector3.zero; // Stop movement
            onChaseStopEvent.Invoke();
        }
    }

    public void TakeHit(Vector3 hitDirection)
    {
        if (!isKnockedBack)
        {
            // Apply damage
            health -= damageData.value;
            if (health <= 0)
            {
                onDeathEvent.Invoke();
                Destroy(gameObject); // Or trigger death state
                return;
            }

            // Apply knockback
            isKnockedBack = true;
            knockbackTimer = knockbackDurationData.value;
            rb.linearVelocity = Vector3.zero; // Reset velocity
            rb.AddForce(hitDirection.normalized * knockbackForceData.value, ForceMode.Impulse);

            // Trigger hit event
            onHitEvent.Invoke();
        }
    }
}