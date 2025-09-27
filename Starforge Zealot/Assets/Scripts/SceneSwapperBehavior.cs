using UnityEngine;
using UnityEngine.Events;
using UnityEngine.SceneManagement;
using System;
using System.Linq;

public class SceneSwapperBehavior : MonoBehaviour
{
    [Header("Scene Settings")]
    public SceneList targetScene;

    
    public void SwapScene()
    {
        string sceneName = targetScene.ToString();
        if (Application.CanStreamedLevelBeLoaded(sceneName))
        {
            SceneManager.LoadScene(sceneName);
        }
        else
        {
            Debug.LogError($"Scene '{sceneName}' is not in build settings!");
        }
    }
}

/// <summary>
/// Enum of all scenes available in Build Settings
/// </summary>
public enum SceneList
{
    // Auto-populate this enum manually or via editor script
    StarForge,
    Main_Menu,
    Level1,
    GameOver,
    Level2,
    Level3,
    Level4,
}