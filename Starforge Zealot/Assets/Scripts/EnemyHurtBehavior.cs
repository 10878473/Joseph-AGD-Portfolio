using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class EnemyHurtBehavior : MonoBehaviour
{
    //When ishurt is called, it will check iframes, lower hp, and destroy itself
    public int hp;

    public IntData playerdamage;

    public UnityEvent destroyevent, hurtevent;

    public float Iframes = 0.1f;

    private WaitForSeconds wfsIframe;

    private bool canHurt;
    private bool damageticking = false;

    public GameObject parent;

    public GameObject sparksPrefab;
    // Start is called once before the first execution of Update after the MonoBehaviour is created
    void Start()
    {
        canHurt = true;
        wfsIframe = new WaitForSeconds(Iframes);
    }

    // Update is called once per frame
    void Update()
    {
        if(!canHurt){return;}
        if(damageticking){gotHit();}
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("DOT"))
        {
            Debug.Log(other.gameObject.name + " Triggered DOT effect");
            damageticking = true;
        }
        else
        {
            gotHit();
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

    public void gotHit()
    {
        if (canHurt)
        {
            hp -= playerdamage.value;
            Instantiate(sparksPrefab, transform.position, Quaternion.identity);
            StartCoroutine("IframesCO");
            hurtevent?.Invoke();
            canHurt = false;
        }
        if (hp <= 0)
        {
            destroyevent?.Invoke();
            Destroy(parent);
        }
        
    }

    public void damageON()
    {
        //continuously tick damage on target when they are touching a damage source, ex. player drill.
        damageticking = true;
    }
    
    public void damageOFF()
    {
        //continuously tick damage on target when they are touching a damage source, ex. player drill.
        damageticking = false;
    }
    private IEnumerator IframesCO()
    {
        yield return wfsIframe;
        canHurt = true;
    }
    
}
