using System;
using UnityEngine;
using UnityEngine.UI;

public class hpfillbarsimple : MonoBehaviour
{
    [Header("Data Sources")]
    public IntData refData;
    public int maxValue;
    public Image hpbar;
    private float fillingamount;
    private void Start()
    {
        hpbar = GetComponent<Image>();
        updateHPbar();
    }

    public void updateHPbar()
    {
        
        fillingamount = (float)refData.value / maxValue;
        Debug.Log($"Health is at  {fillingamount}%. HP: {refData.value}/{maxValue}%");
        hpbar.fillAmount = fillingamount;
        
    }
}
