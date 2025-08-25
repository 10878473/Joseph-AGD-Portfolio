using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class AttackTimingController : MonoBehaviour
{
    [Header("Animator Reference")]
    public Animator animator;

    [Header("Attack Animation States (Exact Names)")]
    public List<string> attackStates = new List<string>(); // Set these in Inspector

    [Header("Normalized Time Windows")]
    [Range(0f, 1f)] public float hitboxOnTime = 0.3f;
    [Range(0f, 1f)] public float hitboxOffTime = 0.6f;

    [Header("Events")]
    public UnityEvent onHitboxOn;
    public UnityEvent onHitboxOff;

    private bool hitboxOnTriggered;
    private bool hitboxOffTriggered;

    void Update()
    {
        if (animator == null || attackStates.Count == 0) return;

        AnimatorStateInfo stateInfo = animator.GetCurrentAnimatorStateInfo(0);

        // Check if current animation is one of the attack states
        foreach (string attackState in attackStates)
        {
            if (stateInfo.IsName(attackState))
            {
                float normalizedTime = stateInfo.normalizedTime % 1f;

                if (!hitboxOnTriggered && normalizedTime >= hitboxOnTime)
                {
                    hitboxOnTriggered = true;
                    onHitboxOn?.Invoke();
                }

                if (!hitboxOffTriggered && normalizedTime >= hitboxOffTime)
                {
                    hitboxOffTriggered = true;
                    onHitboxOff?.Invoke();
                }

                return;
            }
        }

        // If no matching attack state is active, reset flags
        hitboxOnTriggered = false;
        hitboxOffTriggered = false;
    }
}