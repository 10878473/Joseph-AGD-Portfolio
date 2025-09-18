using UnityEngine;
using UnityEngine.UI;
using System.Reflection;

public class UIDataBinder : MonoBehaviour
{
    public MonoBehaviour sourceScript;  
    public string currentValueName;     

    public Image targetImage;
    public Text targetText;

    private FieldInfo currentField;
    private PropertyInfo currentProp;

    private float cachedMaxValue = -1f; // Will capture first HP as max

    void Start()
    {
        Debug.Log($"Looking for {currentValueName} in {sourceScript.GetType().Name}. Field found? {currentField != null}. Prop found? {currentProp != null}");

        if (sourceScript == null) return;

        var type = sourceScript.GetType();
        currentField = type.GetField(currentValueName, BindingFlags.Public | BindingFlags.Instance);
        currentProp = type.GetProperty(currentValueName, BindingFlags.Public | BindingFlags.Instance);
    }

    void Update()
    {
        if (sourceScript == null) return;

        float current = GetValue(currentField, currentProp);

        // Cache first value as "max HP"
        if (cachedMaxValue < 0f && current > 0f)
            cachedMaxValue = current;

        float max = Mathf.Max(cachedMaxValue, 1f);

        if (targetImage != null)
        {
            targetImage.fillAmount = Mathf.Clamp01(current / max);
            //Debug.Log(targetImage.fillAmount);
        }

        if (targetText != null)
        {
            targetText.text = $"{current}/{max}";
        }
    }

    float GetValue(FieldInfo f, PropertyInfo p)
    {
        if (f != null)
        {
            object v = f.GetValue(sourceScript);
            if (v is int i) return i;
            if (v is float fl) return fl;
        }
        else if (p != null)
        {
            object v = p.GetValue(sourceScript);
            if (v is int i) return i;
            if (v is float fl) return fl;
        }
        return 0f;
    }
}