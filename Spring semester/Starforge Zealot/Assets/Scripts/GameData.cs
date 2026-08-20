using UnityEngine;
using UnityEngine.Events;

[CreateAssetMenu(fileName = "GameData", menuName = "Scriptable Objects/GameData")]
public class GameData : ScriptableObject
{
    public ShipType shipType;
    public IntData currentHP;
    public IntData shipstrength;

    public UnityEvent shippicked;
    public void PickShip(ShipType newship)
    {
        shipType = newship;
        shippicked.Invoke();
    }
}
