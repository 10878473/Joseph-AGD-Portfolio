using UnityEngine;
using UnityEngine.Events;

public class TimeBehavior : MonoBehaviour
{
    public UnityEvent StartEvent, PauseEvent, ResumeEvent;
    //Script to be able to Set and modify time in game
    // Start is called once before the first execution of Update after the MonoBehaviour is created
    void Start()
    {
        StartEvent?.Invoke();
    }

    public void StopTime()
    {
        PauseEvent?.Invoke();
        Time.timeScale = 0;

    }

    public void ResumeTime()
    {
        ResumeEvent?.Invoke();
        Time.timeScale = 1;
    }

    public void SlowTime(float percentof)
    {
        Time.timeScale = percentof;        
    }

    public void SlowTimeAnimated(AnimationCurve curve, float Over_Time)
    {
        //This might be tricky to implement lol
    }

}
