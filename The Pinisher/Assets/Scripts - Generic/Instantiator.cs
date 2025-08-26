using UnityEngine;

public class Instantiator : MonoBehaviour
{
    public GameObject prefab; // Assign in the Inspector

    
    // Call this method to instantiate the prefab
    public void MakeInstance()
    {
        if (prefab != null)
        {
            Instantiate(prefab, transform.position, transform.rotation);
        }
        else
        {
            Debug.LogWarning("Prefab is not assigned.");
        }
    }
    
}