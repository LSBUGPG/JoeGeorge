using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine;

public class ReturnToMenu : MonoBehaviour
{
    public GameObject FadeOut;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space))
        {
            StartCoroutine(BackToMenu());
        }

        IEnumerator BackToMenu()
        {
            FadeOut.SetActive(true);
            yield return new WaitForSeconds(1f);
            SceneManager.LoadScene("StartMenu");

        }
    }
}
