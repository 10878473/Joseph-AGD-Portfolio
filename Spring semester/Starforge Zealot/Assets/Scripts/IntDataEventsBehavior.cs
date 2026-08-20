using UnityEngine;
using UnityEngine.Events;

public class IntDataEventsBehavior : MonoBehaviour
{
    public UnityEvent HitTargetEvent;
    public IntData Reference;
    public int TargetValue;

    public void CheckTarget()
    {
        //Debug.Log("PLAYERHPGOINGDOWN : "+Reference.value);

        if (Reference.value > TargetValue)
        {
            return;
        }
        HitTargetEvent?.Invoke();
    }
}
