using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AboveAndDestroyTrigger : MonoBehaviour
{
    public Camera OriginalCam;
    public Camera CharacterCam;

    public LayerMask Original;
    public LayerMask OnTop;

    public GameObject RaycastCube;
    public AudioSource DoorClose;

    
    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            OriginalCam.cullingMask = OnTop.value;
            CharacterCam.gameObject.SetActive(true);
            
        }


    }

    void OnTriggerExit(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            OriginalCam.cullingMask = Original.value;
            CharacterCam.gameObject.SetActive(false);

            RaycastCube.SetActive(false);
            
            DoorClose.Play();
            
            StartCoroutine (DoorCloseFinal());
        }

        IEnumerator DoorCloseFinal()
        {
            yield return new WaitForSeconds(0.5f);
            DoorClose.enabled = false;

        }
    }
}
