using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class OpenDoorLevel7 : MonoBehaviour
{
    public Animator RightDoorAnim;
    public Animator LeftDoorAnim;



    private bool RightHandDoorOpen;
    private bool LeftHandDoorOpen;

    void Start()
    {
        RightHandDoorOpen = false;
        LeftHandDoorOpen = false;

        RightDoorAnim.enabled = false;
        LeftDoorAnim.enabled = false;
    }
    public void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "RightDoorTrigger")
        {
            RightHandDoorOpen = true;
            Debug.Log("RightDoooor");
        }

        if (other.gameObject.tag == "LeftDoorTrigger")
        {
            
            LeftHandDoorOpen = true;
            Debug.Log("LeftDoooor");
        }
    }

    void Update()
    {
        if (RightHandDoorOpen == true)
        {
            
            RightDoorAnim.enabled = true;
            LeftDoorAnim.enabled = true;

                
        }
            
    }
}

    

