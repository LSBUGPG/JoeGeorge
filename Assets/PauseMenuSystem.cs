using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using UnityEngine;

public class PauseMenuSystem : MonoBehaviour
{
    public static bool gameIsPaused;
    public GameObject PauseUI;
    public GameObject AudioUi;
    public GameObject PauseBorder;
    public AudioSource PauseSound;
    public AudioSource PauseSoundReverse;
    public GameObject Hints;
    public GameObject Back;


    void Update()
    {
        if (Input.GetKeyDown(KeyCode.P))
        {
            PauseSound.Play();
            PauseBorder.SetActive(true);
            
            gameIsPaused = !gameIsPaused;
            PauseGame();
            if (AudioUi.activeSelf == true)
            {
                AudioUi.SetActive(false);
               
            }

            
        }


    }

    public void ReturnToMenu()
    {
        SceneManager.LoadScene("StartMenu");

    }

    

        public void QuitGame()
    {
        Application.Quit();
    }

    void PauseGame()
    {
        if (gameIsPaused)
        {
            
            PauseUI.SetActive(true);
            Time.timeScale = 0f;
            
        }
        else
        {
            
            PauseBorder.SetActive(false);
            PauseUI.SetActive(false);
            Hints.SetActive(false);
            Back.SetActive(false);
            Time.timeScale = 1;
            
        }
    }
}