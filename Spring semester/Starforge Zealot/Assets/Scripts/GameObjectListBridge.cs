using UnityEngine;

public class GameObjectListBridge : MonoBehaviour
{
    public GameObjectDataList list;

    // Use this in UnityEvent (Start -> this component -> Add)
    public void Add(GameObject obj)
    {
        if (list == null || obj == null) return;
        list.AddObject(obj);
    }

    // Optional helpers:
    public void Remove(GameObject obj)
    {
        if (list == null || obj == null) return;
        list.RemoveObject(obj);
    }
}