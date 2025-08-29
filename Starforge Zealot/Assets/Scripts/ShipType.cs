using UnityEngine;

[CreateAssetMenu(fileName = "ShipType", menuName = "Scriptable Objects/ShipType")]
public class ShipType : ScriptableObject
{
    //ship will be picked at the beginning, and its starting stats will be loaded into
    //dataobjects that will be saved and upgraded.
    //if time certain ships will also activate special abilities.
    //ex. Drill ship - gains health when destroying asteroids
    //Fighter ship - gains speed and damage after defeating enemies
    //Desperate ship - damage taken makes ship do more damage
    //Healing ship - recharges health, but slows down at high health
    public string shipname;
    public int hitpoints = 20;
    public float speed = 20f;
    public int damage = 5;
    //default stats the ship will be balanced around.
    
}
