using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChimneySequence : MonoBehaviour
{
    public GameObject NormalCam;
    public GameObject ChimneyCam;

    //players
    public GameObject NormalPlayer;
    public GameObject ChimneyPlayer;

    public GameObject FadeOutAnim;
    public GameObject FadeIn;

    void Start()
    {
       
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            StartCoroutine(FadeOut());
            FadeOutAnim.SetActive(true);
            FadeIn.SetActive(false);
        }

        IEnumerator FadeOut()
        {
           
            yield return new WaitForSeconds(1f);
            FadeOutAnim.SetActive(false);
            NormalCam.SetActive(false);
            ChimneyCam.SetActive(true);
            NormalPlayer.SetActive(false);
            ChimneyPlayer.SetActive(true);
           
            FadeIn.SetActive(true);
        }



    }
}
