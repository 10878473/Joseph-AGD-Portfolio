using System.Collections;
using UnityEngine;
using UnityEngine.Events;

public class Chargeup : MonoBehaviour
{
    [Header("Trigger")] 
    public UnityEvent ChargeComplete;
    public UnityEvent ChargeEmpty;
    public UnityEvent ChargeInterrupted;
    
    [Header("Settings")]
    public float chargemaxS = 5f;          // how many seconds to fully charge
    public FloatData dataFill;

    public bool Reset_on_fill = false;     // instantly reset to 0 when reaching max
    public bool reset_on_release = false;  // instantly reset to 0 when released
    public bool deplete_on_release = true; // gradually deplete to 0 when released
    public float depletewait = 1f;         // wait time before depleting starts

    public bool Debugmode = false;

    [Header("Runtime Variables")]
    public float chargeamount = 0f;
    public bool charging = false;
    public bool depleting = false;

    private Coroutine chargeRoutine;
    private Coroutine depleteRoutine;

    void Update()
    {
        if (Input.GetKey(KeyCode.Space)) // hold to charge
        {
            if (!charging)
            {
                charging = true;
                depleting = false;

                if (depleteRoutine != null) StopCoroutine(depleteRoutine);
                chargeRoutine = StartCoroutine(ChargingCoroutine());
            }
        }
        else
        {
            if (charging) // just released
            {
                charging = false;

                if (reset_on_release)
                {
                    ResetCharge();
                }
                else if (deplete_on_release)
                {
                    if (!depleting)
                    {
                        depleting = true;
                        if (chargeRoutine != null) StopCoroutine(chargeRoutine);
                        depleteRoutine = StartCoroutine(DepletingCoroutine());
                    }
                }
            }
        }
    }

    private IEnumerator ChargingCoroutine()
    {
        float startValue = chargeamount;
        float elapsed = 0f;

        while (chargeamount < chargemaxS && charging)
        {
            elapsed += Time.deltaTime;
            chargeamount = Mathf.Lerp(startValue, chargemaxS, elapsed / (chargemaxS - startValue));

            if (dataFill != null)
                dataFill.value = chargeamount;

            yield return null;
        }

        if (chargeamount >= chargemaxS)
        {
            chargeamount = chargemaxS;
            if (Debugmode) Debug.Log("Charge Complete on Object: " + gameObject.name);
            ChargeComplete.Invoke();

            if (Reset_on_fill)
            {
                ResetCharge();
            }
        }
    }

    private IEnumerator DepletingCoroutine()
    {
        yield return new WaitForSeconds(depletewait);

        float startValue = chargeamount;
        float elapsed = 0f;

        while (chargeamount > 0f && depleting)
        {
            elapsed += Time.deltaTime;
            chargeamount = Mathf.Lerp(startValue, 0f, elapsed / startValue);

            if (dataFill != null)
                dataFill.value = chargeamount;

            yield return null;
        }

        if (chargeamount <= 0f)
        {
            chargeamount = 0f;
            if (Debugmode) Debug.Log("Charge hit 0 on Gameobject: " + gameObject.name);
            ChargeEmpty.Invoke();
        }
    }

    public void ResetCharge()
    {
        if (chargeRoutine != null) StopCoroutine(chargeRoutine);
        if (depleteRoutine != null) StopCoroutine(depleteRoutine);

        charging = false;
        depleting = false;
        chargeamount = 0f;

        if (dataFill != null)
            dataFill.value = 0f;

        if (Debugmode) Debug.Log("Charge reset on Gameobject: " + gameObject.name);
        ChargeEmpty.Invoke();
    }
}
