using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Level1Casting : MonoBehaviour
{
    public GameObject One;




    //Camera Snap












    



    private void Update()
    {


        RaycastHit hit;

        Vector3 forward = transform.TransformDirection(Vector3.forward) * 500;
        Debug.DrawRay(transform.position, forward, Color.green);



        if (Physics.Raycast(transform.position, (forward), out hit))
        { //teleport activation
            if (hit.collider.tag == "one")
            {
                One.SetActive(true);
                //print("1");














            }
            else
            //Reset if not hitting 
            {
                One.SetActive(false);




            }



            if (hit.collider.tag == "two")
            {
                //print("1");
                //Two.SetActive(true);

            }
            else
            //Reset if not hitting 
            {
                //print("Null1");
                //Two.SetActive(false);

            }

            if (hit.collider.tag == "three")
            {
                //print("1");
                //Three.SetActive(true);
                //blockade3.SetActive(true);
            }
            else
            //Reset if not hitting 
            {
                //print("Null1");
                //Three.SetActive(false);
                //blockade3.SetActive(false);
            }


            //slow down colliders
            if (hit.collider.tag == "slow")
            {




            }
            if (hit.collider.tag == "Magnetise")
            //Reset if not hitting 
            {
                



            }
            else
            //Reset if not hitting 
            {
                
            }

        }
    }
}

