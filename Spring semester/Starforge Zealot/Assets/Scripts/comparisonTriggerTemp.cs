using UnityEngine;
using UnityEngine.Events;

public class comparisonTriggerTemp : MonoBehaviour
{
    public UnityEvent startEvent, triggerDifferenceEvent;

    [Header("References")]
    public GameObjectDataList listref;
    public IntData amtref; // assumed ScriptableObject holding an int value

    [Header("Runtime State")]
    public int amtcurrent;

    void Start()
    {
        startEvent.Invoke();
        cachenumStart();
    }

    /// <summary>
    /// Cache the starting number from amtref.
    /// </summary>
    public void cachenumStart()
    {
        amtcurrent = amtref.value;
    }

    /// <summary>
    /// Compare cached vs current amtref.
    /// If current decreased, destroy that many oldest objects.
    /// </summary>
    public void CompareAndDestroy()
    {
        int newAmount = amtref.value;

        if (newAmount < amtcurrent)
        {
            int difference = amtcurrent - newAmount;

            // Destroy that many oldest (front of the list)
            listref.DestroyRangeFront(difference);

            triggerDifferenceEvent.Invoke();
        }

        // Update cache so next comparison works relative to new value
        amtcurrent = newAmount;
    }
}