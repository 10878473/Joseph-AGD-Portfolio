using System.Collections;
using UnityEngine;
using UnityEngine.Events;

public class LevelEndTrigger : MonoBehaviour
{
    public IntData EnemiesAmt;
    public UnityEvent endEvent;
   

    public void checkEndTrigger()
    {
        StartCoroutine(waitForEnemiesZero());
    }

    private IEnumerator waitForEnemiesZero()
    {
        // Wait until enemies reach 0
        yield return new WaitUntil(() => EnemiesAmt.value <= 0);

        // Then trigger the event once
        endEvent?.Invoke();
    }
}