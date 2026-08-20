using UnityEngine;
using UnityEngine.UI;
using TMPro;

[RequireComponent(typeof(Button))]
public class ButtonDisableBehavior : MonoBehaviour
{
    [Header("Data Sources")]
    public IntData refData;   // Player's money

    public int maxValue;
    
    
    private Button button;


    public bool Debugmode = false;
    
    void Awake()
    {
        button = GetComponent<Button>();

        
    }


    void Update()
    {
        if (refData.value >= maxValue)
        {
            button.interactable = false;

        }
    }

}