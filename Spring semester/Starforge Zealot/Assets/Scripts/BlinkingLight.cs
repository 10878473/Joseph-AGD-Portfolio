using UnityEngine;

public class BlinkingLight : MonoBehaviour
{
    [Header("Blink Settings")]
    public float blinkSpeed = 2f;   // Speed of blinking (higher = faster)
    public float minIntensity = 0f; // Minimum brightness (off)
    public float maxIntensity = 1f; // Maximum brightness (fully on)

    private Renderer rend;
    private Material mat;
    private float phaseOffset;      // Random offset for each cube

    void Start()
    {
        rend = GetComponent<Renderer>();
        mat = rend.material; // Get instance of material

        // Random phase offset (0 - 2π for a full sine wave cycle)
        phaseOffset = Random.Range(0f, Mathf.PI * 2f);
    }

    void Update()
    {
        // Oscillates between 0 and 1, with random offset applied
        float t = (Mathf.Sin(Time.time * blinkSpeed + phaseOffset) + 1f) / 2f;

        // Lerp between min and max brightness
        float intensity = Mathf.Lerp(minIntensity, maxIntensity, t);

        // Apply to material color (assuming white cube)
        Color baseColor = Color.white * intensity;
        mat.color = baseColor;
    }
}