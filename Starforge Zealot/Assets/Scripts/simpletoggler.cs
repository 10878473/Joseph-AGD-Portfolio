using UnityEngine;

public class simpletoggler : MonoBehaviour
{
    public GameObject toToggle;
    public BooleanData DataToggle;

    public void togglerToggle()
    {
        toToggle?.SetActive(!toToggle.activeSelf);
        if (DataToggle)
        {
            DataToggle.value = !DataToggle.value;
        }
    }
}
