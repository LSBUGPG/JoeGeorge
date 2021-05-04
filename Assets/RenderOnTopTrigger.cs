using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RenderOnTopTrigger : MonoBehaviour
{
    public Camera OriginalCam;
    public Camera CharacterCam;

    public LayerMask Original;
    public LayerMask OnTop;

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
        }
    }
}
