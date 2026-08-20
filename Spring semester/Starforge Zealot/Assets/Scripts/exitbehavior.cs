using UnityEngine;

public class exitbehavior : MonoBehaviour
{
   
    public void QuitGame()
        {
            // Log for editor testing
            Debug.Log("Game is exiting...");

            // Quit the application
            Application.Quit();

            // Optional: stop play mode in the editor
    #if UNITY_EDITOR
            UnityEditor.EditorApplication.isPlaying = false;
    #endif
        }
    
    
}
