using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RespawnPlayer : MonoBehaviour
{
    public Transform Destination;
    public Transform player;
    

    public void OnTriggerEnter(Collider other)
    {
        player.transform.position = Destination.transform.position;
        
    }
}
