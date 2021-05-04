using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine;

public class ResetLevel : MonoBehaviour
{
    public GameObject FadeIn;

    // Update is called once per frame
    void Update()
    {
        FadeIn.SetActive(true);
        SceneManager.LoadScene("Level1");
        Time.timeScale = 1f;
    }
}
