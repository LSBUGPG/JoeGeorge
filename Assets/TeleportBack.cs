using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TeleportBack : MonoBehaviour
{
    public GameObject teleportBack;
    public GameObject OriginalTeleport;
    


    void OnCollisionEnter(Collision collision)
    {
        if (collision.collider.tag == "Player")
        {

            teleportBack.SetActive(true);
            OriginalTeleport.SetActive(false);
            Debug.Log("ITWORKS");
        }

    }
}
