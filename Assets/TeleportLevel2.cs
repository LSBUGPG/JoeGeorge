using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TeleportLevel2 : MonoBehaviour
{
    public Transform Destination;
    public Transform player;

   

    

    public void OnTriggerEnter(Collider other)
    {
        Vector3 offset = player.transform.position - transform.position;
        player.transform.position = Destination.transform.position + offset;


    }

    

}
