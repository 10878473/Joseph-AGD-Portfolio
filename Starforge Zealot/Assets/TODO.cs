using System;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

[CreateAssetMenu(fileName = "TODO", menuName = "Scriptable Objects/TODO")]
public class TODO : ScriptableObject
{
    public List<string> things;
    public Font textFont; // assign a font in the inspector
    public int fontSize = 24;

    public void DisplayThings()
    {
        GameObject panelObj = GameObject.FindGameObjectWithTag("todopanel");
        if (panelObj == null)
        {
            Debug.LogError("No GameObject with tag 'todopanel' found in scene!");
            return;
        }

        RectTransform panel = panelObj.GetComponent<RectTransform>();

        // clear out old children
        foreach (Transform child in panel)
        {
            GameObject.Destroy(child.gameObject);
        }

        // Ensure it has a VerticalLayoutGroup
        VerticalLayoutGroup layout = panel.GetComponent<VerticalLayoutGroup>();
        if (layout == null)
        {
            layout = panel.gameObject.AddComponent<VerticalLayoutGroup>();
            layout.childForceExpandHeight = false;
            layout.childForceExpandWidth = true;
            layout.childControlHeight = true;
            layout.childControlWidth = true;
            layout.spacing = 5;
        }

        foreach (var thing in things)
        {
            GameObject textGO = new GameObject("TODOItem", typeof(RectTransform));
            textGO.transform.SetParent(panel, false);

            Text text = textGO.AddComponent<Text>();
            text.text = thing;
            text.font = textFont;
            text.fontSize = fontSize;
            text.alignment = TextAnchor.MiddleCenter;
            text.color = Color.black; // pick your text color
        }
    }
}