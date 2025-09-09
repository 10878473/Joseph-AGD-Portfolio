using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class EnemyHurtBehavior : MonoBehaviour
{
    //When ishurt is called, it will check iframes, lower hp, and destroy itself
    public int hp;

    public IntData playerdamage;

    public UnityEvent destroyevent, etc;

    public float Iframes = 0.1f;

    private WaitForSeconds wfsIframe;

    private bool canHurt;

    public GameObject parent;
    // Start is called once before the first execution of Update after the MonoBehaviour is created
    void Start()
    {
        canHurt = true;
        wfsIframe = new WaitForSeconds(Iframes);
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void gotHit()
    {
        if (canHurt)
        {
            hp -= playerdamage.value;
            StartCoroutine("IframesCO");
            canHurt = false;
        }
        if (hp <= 0)
        {
            destroyevent?.Invoke();
            Destroy(parent);
        }
        
    }

    private IEnumerator IframesCO()
    {
        yield return wfsIframe;
        canHurt = true;
    }
    
}
