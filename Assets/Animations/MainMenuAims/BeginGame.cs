using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine;

public class BeginGame : MonoBehaviour
{
    public GameObject FadeOut;

    // Start is called before the first frame update
    void Start()
    {

        StartCoroutine(BeginTheGame());
    }

    IEnumerator BeginTheGame()
    { 
        FadeOut.SetActive(true);
        yield return new WaitForSeconds(2f);
        SceneManager.LoadScene("Level1");
    }



    // Update is called once per frame
    void Update()
    {
        

    }
}
