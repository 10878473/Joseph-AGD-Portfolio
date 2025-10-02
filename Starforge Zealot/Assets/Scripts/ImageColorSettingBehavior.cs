using UnityEngine;
using UnityEngine.UI;

[RequireComponent(typeof(Image))]
public class ImageColorSettingBehavior : MonoBehaviour
{
    [Header("Image Reference")]
    public Image targetImage;

    [Header("Color Presets")]
    public Color defaultColor = Color.white;
    public Color alternate1Color = Color.red;
    public Color alternate2Color = Color.blue;

    private Color currentColor;

    private void Awake()
    {
        if (targetImage == null)
            targetImage = GetComponent<Image>();

        // Initialize with default
        SetToDefault();
    }

    /// <summary>
    /// Sets the image color to the default color.
    /// </summary>
    public void SetToDefault()
    {
        SetColor(defaultColor);
    }

    /// <summary>
    /// Sets the image color to alternate color 1.
    /// </summary>
    public void SetToAlternate1()
    {
        SetColor(alternate1Color);
    }

    /// <summary>
    /// Sets the image color to alternate color 2.
    /// </summary>
    public void SetToAlternate2()
    {
        SetColor(alternate2Color);
    }

    /// <summary>
    /// Swaps the current color to a new one (without overwriting defaults).
    /// </summary>
    public void SwapToColor(Color newColor)
    {
        SetColor(newColor);
    }

    /// <summary>
    /// Internal setter to apply color to target.
    /// </summary>
    private void SetColor(Color c)
    {
        currentColor = c;
        if (targetImage != null)
            targetImage.color = currentColor;
    }

    /// <summary>
    /// Gets the currently applied color.
    /// </summary>
    public Color GetCurrentColor()
    {
        return currentColor;
    }
}