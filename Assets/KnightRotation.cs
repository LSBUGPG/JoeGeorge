using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class KnightRotation : MonoBehaviour
{
    public GameObject Knight1;

    public GameObject DoorRight;

    
    
    

    void Start()
    {
        
    }

    




    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            Knight1.transform.Rotate(0, 90f, 0);
        }
        
    }

    


}

