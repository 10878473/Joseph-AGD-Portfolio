using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class EnemyHurtBehavior : MonoBehaviour
{
    public int hp;
    public IntData playerdamage;

    public UnityEvent destroyevent, hurtevent;

    public float Iframes = 0.1f;
    private WaitForSeconds wfsIframe;
    private bool canHurt;
    private bool damageticking = false;
    private bool isDead = false;  // NEW

    public GameObject parent;
    public GameObject sparksPrefab;

    void Start()
    {
        canHurt = true;
        wfsIframe = new WaitForSeconds(Iframes);
    }

    void Update()
    {
        if (!canHurt || isDead) return;

        if (damageticking)
            ApplyDamage();  // cleaner name
    }

    private void OnTriggerEnter(Collider other)
    {
        if (isDead) return;

        if (other.gameObject.CompareTag("DOT"))
        {
            Debug.Log(other.gameObject.name + " Triggered DOT effect");
            damageticking = true;
        }
        else
        {
            ApplyDamage();
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.gameObject.CompareTag("DOT"))
        {
            Debug.Log(other.gameObject.name + " Triggered DOT effect OFF");
            damageticking = false;
        }
    }

    public void ApplyDamage()
    {
        if (!canHurt || isDead) return;

        hp -= playerdamage.value;
        Instantiate(sparksPrefab, transform.position, Quaternion.identity);
        StartCoroutine(IframesCO());
        hurtevent?.Invoke();
        canHurt = false;

        if (hp <= 0)
        {
            Kill();
        }
    }

    private void Kill()
    {
        if (isDead) return; // prevents double death
        isDead = true;

        destroyevent?.Invoke();
        Debug.Log($"Gameobject {gameObject.name} has been destroyed at time {Time.time}");
        Destroy(parent);
    }

    private IEnumerator IframesCO()
    {
        yield return wfsIframe;
        canHurt = true;
    }
}
