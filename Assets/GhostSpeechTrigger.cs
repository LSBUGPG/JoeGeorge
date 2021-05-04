using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GhostSpeechTrigger : MonoBehaviour
{

    public GameObject GhostSpeech2;
    public GameObject NormalCam;
    public GameObject NPCcam;
    public GameObject GhostSpeech3;
    public GameObject CharCamTrigger;
    public GameObject Blockade;

    public bool Speech2over = false;

    // Start is called before the first frame update
    void Start()
    {

    }

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            GhostSpeech2.SetActive(true);
            NormalCam.SetActive(false);
            NPCcam.SetActive(true);
            CharCamTrigger.SetActive(false);
            Blockade.SetActive(true);

            StartCoroutine(GhostChat2Stop());

            //Destroy(gameObject, );
        }
    }

    IEnumerator GhostChat2Stop()
    {
        yield return new WaitForSeconds(5f);
        Destroy(GhostSpeech2);

        Speech2over = true;
    }

    void Update()
    {
        if (Speech2over == true)
        {
            GhostSpeech3.SetActive(true);
            StartCoroutine(GhostChat3Stop());
        }
    }

    IEnumerator GhostChat3Stop()
    {
        yield return new WaitForSeconds(5f);
        Destroy(GhostSpeech3);
    }
}
