using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine;

public class ResetLevel7 : MonoBehaviour
{
    public GameObject FadeIn;

    // Update is called once per frame
    void Update()
    {
        FadeIn.SetActive(true);
        SceneManager.LoadScene("Level7");
        Time.timeScale = 1f;
    }
}
