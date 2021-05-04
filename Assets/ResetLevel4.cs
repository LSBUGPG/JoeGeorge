using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine;

public class ResetLevel4 : MonoBehaviour
{
    public GameObject FadeIn;

    // Update is called once per frame
    void Update()
    {
        FadeIn.SetActive(true);
        SceneManager.LoadScene("Level4");
        Time.timeScale = 1f;
    }
}