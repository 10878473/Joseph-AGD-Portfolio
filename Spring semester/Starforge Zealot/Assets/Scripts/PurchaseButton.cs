using UnityEngine;
using UnityEngine.UI;
using TMPro;

[RequireComponent(typeof(Button))]
public class PurchaseButton : MonoBehaviour
{
    [Header("Data Sources")]
    public IntData currency;   // Player's money
    public IntData price;      // Cost of this button
    public string labelText;   // Item name or label

    [Header("UI References")]
    public TextMeshProUGUI priceLabel; // UI text that shows "Label - Price"

    private Button button;


    public bool Debugmode = false;
    
    void Awake()
    {
        button = GetComponent<Button>();

        // Cache inspector events
        var cachedEvents = button.onClick;

        // Reset listeners
        button.onClick = new Button.ButtonClickedEvent();

        // Add OnPurchase first
        button.onClick.AddListener(OnPurchase);

        // Re-add inspector events after
        button.onClick.AddListener(() => cachedEvents.Invoke());

        UpdateLabel();
    }


    void Update()
    {
        if (currency == null || price == null) return;

        // Enable/disable button if affordable
        bool affordable = currency.value >= price.value;
        if (button.interactable)
        {
            button.interactable = affordable;
        }
    }

    private void OnPurchase()
    {
        if (currency.value >= price.value)
        {
            currency.value -= price.value;
            UpdateLabel();
            if (Debugmode){ Debug.Log($"Purchased {labelText} for {price.value}. Remaining: {currency.value}");
                    }
        }
    }

    public void ManualUpdateLabel()
    {
        UpdateLabel();
    }
    private void UpdateLabel()
    {
        if (priceLabel != null && price != null)
        {
            if (!string.IsNullOrEmpty(labelText))
                priceLabel.text = $"{labelText} - {price.value}";
            else
                priceLabel.text = price.value.ToString();
        }
    }
}