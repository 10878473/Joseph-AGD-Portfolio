using UnityEngine;
using UnityEngine.Events;

public class ChaseTrigger : MonoBehaviour
{
    private EnemyControllerAI enemyControllerAI;
    public UnityEvent StartChasingEvent, StopChasingEvent;

    void Start()
    {
        enemyControllerAI = GetComponentInParent<EnemyControllerAI>();
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            enemyControllerAI.StartChasing();
            //StartChasingEvent.Invoke();
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            enemyControllerAI.StopChasing();
            //StopChasingEvent.Invoke();
        }
    }
}