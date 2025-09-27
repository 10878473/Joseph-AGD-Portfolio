using UnityEngine;

public class pausebehavior : MonoBehaviour
{
    public void pauseGame()
    {
        Time.timeScale = 0;
    }

    public void ResumeGame()
    {
        Time.timeScale = 1;
    }
}
