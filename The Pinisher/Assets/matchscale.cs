using UnityEngine;

public class matchscale : MonoBehaviour
{
    [Header("Settings")]
    public bool Xscale = false;
    public bool Yscale = false;
    public bool Zscale = false;

    public FloatData dataMatch;

    
    public Vector3 newScale;
    // Start is called once before the first execution of Update after the MonoBehaviour is created
    void Start()
    {
        Debug.Log(transform.localScale);
        newScale = transform.localScale;

        
    }

    // Update is called once per frame
    void Update()
    {
        if (Xscale) newScale.x = dataMatch.value;
        if (Yscale) newScale.y = dataMatch.value;
        if (Zscale) newScale.z = dataMatch.value;

        transform.localScale = newScale;
    }
}
