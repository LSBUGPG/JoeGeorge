using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine;

public class BeginHowTo : MonoBehaviour
{
    public GameObject FadeOut;


    public void Go()
    {

        StartCoroutine(HowTo());
    }

    IEnumerator HowTo()
    {
        
        FadeOut.SetActive(true);
        yield return new WaitForSeconds(2f);
        SceneManager.LoadScene("TutorialScene");
    }

    public void Level1()
    {

        StartCoroutine(StartLevel1());
    }

    IEnumerator StartLevel1()
    {

        FadeOut.SetActive(true);
        yield return new WaitForSeconds(2f);
        SceneManager.LoadScene("Level1");
    }

    public void Level2()
    {

        StartCoroutine(StartLevel2());
    }

    IEnumerator StartLevel2()
    {

        FadeOut.SetActive(true);
        yield return new WaitForSeconds(2f);
        SceneManager.LoadScene("Level2");
    }

    public void Level3()
    {

        StartCoroutine(StartLevel3());
    }

    IEnumerator StartLevel3()
    {

        FadeOut.SetActive(true);
        yield return new WaitForSeconds(2f);
        SceneManager.LoadScene("Level3");
    }

    public void Level4()
    {

        StartCoroutine(StartLevel4());
    }

    IEnumerator StartLevel4()
    {

        FadeOut.SetActive(true);
        yield return new WaitForSeconds(2f);
        SceneManager.LoadScene("Level4");
    }

    public void Level7()
    {

        StartCoroutine(StartLevel7());
    }

    IEnumerator StartLevel7()
    {

        FadeOut.SetActive(true);
        yield return new WaitForSeconds(2f);
        SceneManager.LoadScene("Level7");
    }


}