using System;
using UnityEngine;
using UnityEngine.UI;

public class hpfillbarsimple : MonoBehaviour
{
    [Header("Data Sources")]
    public IntData refData;
    public int maxValue;
    public Image hpbar;
    public bool DebugMode = false;
    private float fillingamount;
    private void Start()
    {
        hpbar = GetComponent<Image>();
        updateHPbar();
    }

    public void updateHPbar()
    {
        
        fillingamount = (float)refData.value / maxValue;
        if (DebugMode == true){
            Debug.Log($"Health is at  {fillingamount}%. HP: {refData.value}/{maxValue}%");
        }
        hpbar.fillAmount = fillingamount;
        
    }
}
