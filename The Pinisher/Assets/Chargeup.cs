using UnityEngine;

public class Chargeup : MonoBehaviour
{
    // Modular script to handle player charging up an ability, or something being charged up.
    // settings ideas : 
    // Autocharge(Charges automatically, pairs with interruptbreak and interrupttrigger)
    //interruptbreak - stops charging and resets charge to 0
    //interrupttrigger - stops chargeing and triggers unityevent
    //interruptcool - stops charging, just timer going down
    // startcharge - starts charging again
    //inputkey - none by default, ienumerator dropdown to pick a key to charge event

    //eventtrigger - unityeventtrigger on charge event being triggered. Pair with global gameaction?
    // if it was all one script, i would have it pass the rotation of the dial and the strength of the chargup to throw a grenade. 
    // how can i make this happen with 2 scripts and a gameaction?
    //
    [Header("Settings")]
    public float chargemaxS = 5f;

    [Header("Variables")]

    public float chargeamount = 0f;
    
    // Start is called once before the first execution of Update after the MonoBehaviour is created
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
