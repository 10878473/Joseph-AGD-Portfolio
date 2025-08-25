using UnityEngine;

public class AttackHitbox : MonoBehaviour
{
    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Enemy"))
        {
            EnemyControllerAI enemy = other.GetComponent<EnemyControllerAI>();
            if (enemy != null)
            {
                Vector3 hitDirection = (other.transform.position - transform.position).normalized;
                enemy.TakeHit(hitDirection);
                Debug.Log($"Hit {other.gameObject.name} with sword via OnTriggerEnter!");
            }
            else
            {
                Debug.LogWarning($"No EnemyControllerAI found on {other.gameObject.name}!");
            }
        }
    }

    public void PerformAttack()
    {
        Collider[] hits = Physics.OverlapSphere(transform.position, GetComponent<SphereCollider>().radius, LayerMask.GetMask("Enemy"));
        foreach (Collider hit in hits)
        {
            EnemyControllerAI enemy = hit.GetComponent<EnemyControllerAI>();
            if (enemy != null)
            {
                Vector3 hitDirection = (hit.transform.position - transform.position).normalized;
                enemy.TakeHit(hitDirection);
                Debug.Log($"Hit {hit.gameObject.name} with sword via OverlapSphere!");
            }
        }
        Debug.Log("PerformAttack called");
    }

    private void OnDrawGizmosSelected()
    {
        Gizmos.color = Color.red;
        if (GetComponent<SphereCollider>() != null)
        {
            Gizmos.DrawWireSphere(transform.position, GetComponent<SphereCollider>().radius);
        }
    }
}