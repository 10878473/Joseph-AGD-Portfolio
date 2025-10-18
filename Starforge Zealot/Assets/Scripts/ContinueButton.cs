using UnityEngine;
using UnityEngine.UI;

public class ContinueButton : MonoBehaviour
{
    public DataStorage dataStorage;
    public Button continueButton;

    void Start()
    {
        // Enable or disable the Continue button based on saved data
        if (dataStorage != null && dataStorage.HasSavedData())
        {
            continueButton.interactable = true;
        }
        else
        {
            continueButton.interactable = false;
        }
    }
}