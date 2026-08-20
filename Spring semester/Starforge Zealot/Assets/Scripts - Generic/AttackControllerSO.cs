using UnityEngine;
using UnityEngine.Events;

public class AttackControllerSO : MonoBehaviour
{
    [Header("Cooldown ScriptableObjects")]
    public FloatData AttackCooldown;
    public float heavyAttackCooldown;
    public FloatData specialAttackCooldown;

    [Header("Attack Events")]
    public UnityEvent lightAttackTrigger;
    public UnityEvent heavyAttackTrigger;
    public UnityEvent specialAttackTrigger;
    public UnityEvent onAttackReady;

    [Header("Key Bindings")]
    public KeyCode lightAttackKey = KeyCode.Mouse0;
    public KeyCode heavyAttackKey = KeyCode.Mouse1;
    public KeyCode specialAttackKey = KeyCode.Q;

    [Header("Hitbox")]
    [SerializeField] private AttackHitbox swordHitbox; // Reference to hitbox

    private float lastAttackTime;
    private float currentCooldown;
    private bool hasInvokedReadyEvent = true;

    private void Start()
    {
        heavyAttackCooldown = AttackCooldown.value * 2f;
        if (swordHitbox == null)
        {
            Debug.LogError("Sword Hitbox not assigned in AttackControllerSO!");
        }
    }

    void Update()
    {
        float timeSinceLastAttack = Time.time - lastAttackTime;

        if (timeSinceLastAttack >= currentCooldown)
        {
            if (!hasInvokedReadyEvent)
            {
                hasInvokedReadyEvent = true;
                onAttackReady?.Invoke();
            }

            if (Input.GetKeyDown(lightAttackKey))
            {
                TriggerAttack(lightAttackTrigger, AttackCooldown.value);
            }
            else if (Input.GetKeyDown(heavyAttackKey))
            {
                TriggerAttack(heavyAttackTrigger, heavyAttackCooldown);
            }
            else if (Input.GetKeyDown(specialAttackKey))
            {
                TriggerAttack(specialAttackTrigger, specialAttackCooldown.value);
            }
        }
    }

    void TriggerAttack(UnityEvent attackEvent, float cooldown)
    {
        attackEvent?.Invoke();
        if (swordHitbox != null)
        {
            swordHitbox.PerformAttack(); // Trigger hit detection
        }
        lastAttackTime = Time.time;
        currentCooldown = cooldown;
        hasInvokedReadyEvent = false;
    }
}