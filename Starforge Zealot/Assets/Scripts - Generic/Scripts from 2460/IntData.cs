using System;
using UnityEngine;
using UnityEngine.Events;

[CreateAssetMenu]
public class IntData : ScriptableObject
{
    public int value;

    public int defaultValue;

    public void SetValue(int num)
    {
        value = num;
    }

    

    public void SetValue(IntData obj)
    {
        value = obj.value;
    }

    public void SubtractValue(IntData obj)
    {
        if(value>0)
            value -= obj.value;
    }

    public void AddValue(IntData obj)
    {
        value += obj.value;
    }
    
    public void UpdateValue(int num)
    {
        value += num;
        
    }

    public void ResetToDefault()
    {
        value = defaultValue;
    }

    public void SetDefault(int defaultValue)
    {
        this.defaultValue = defaultValue;
    }
    public void AddDefaultValue(int defaultValue)
    {
        value += defaultValue;
    }
}