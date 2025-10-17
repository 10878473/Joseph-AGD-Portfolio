using System;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.SceneManagement;

public class SCENELOADERSCRIPT : MonoBehaviour
{
    public UnityEvent OnLoadEvent;
    public IntData currentScene;
    private void Awake()
    {
        OnLoadEvent?.Invoke();
        //THIS SHOULD ONLY BE LOADING SAVE DATA
        
        //SHOULD GO SOMETHING LIKE 
        //0- THIS SCENE, DEFAULT TO 1
        //1 MAIN MENU
        //2 SHOP
        //3 LEVEL 1
        //4 LEVEL 2
        //ETC.
    }

    // Start is called once before the first execution of Update after the MonoBehaviour is created
    void Start()
    {
        if (currentScene == null)
        {
            Debug.LogWarning("currentScene == null, this shouldnt run");
        }

        if (currentScene.value == 0)
        {
            Debug.Log("currentScene == 0, First time playing, going to main menu");
            currentScene.value = 1;
        }
        
        SceneManager.LoadScene(currentScene.value);
    }

    
    
}
