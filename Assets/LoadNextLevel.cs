using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine;

public class LoadNextLevel : MonoBehaviour
{
    public GameObject FadeOutAnim;

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            StartCoroutine (FadeOut());
            FadeOutAnim.SetActive(true);

        }

        IEnumerator FadeOut()
        {
            yield return new WaitForSeconds(1f);
            SceneManager.LoadScene("Level2");

        }



    }
}
