using UnityEngine;
using UnityEngine.UI;

public class DisableIfNoData : MonoBehaviour
{
    public DataStorage dataStorage;
    public GameObject obj;

    void Start()
    {
        // Enable or disable the Continue button based on saved data
        if (dataStorage != null && dataStorage.HasSavedData())
        {
            obj.SetActive(true); 
        }
        else
        {
            obj.SetActive(false);
        }
    }
}