using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Casting : MonoBehaviour
{
    public GameObject One;
    public GameObject Two;
    public GameObject Three;
    public GameObject Four;
    public GameObject blockade1;
    public GameObject blockade2;
    public GameObject blockade3;
    public GameObject Doorway;
    public GameObject Bridge2;

    //Camera Snap
    public GameObject pivotToSnap;


    // stairs
    public GameObject HiddenStairsLeft;
    public GameObject StartingStairsLeft;

    public CameraRot pivotScript;

    public GameObject slowBox;




    public GameObject GoBack;



    private void Update()
    {


        RaycastHit hit;

        Vector3 forward = transform.TransformDirection(Vector3.forward) * 500;
        Debug.DrawRay(transform.position, forward, Color.green);




        if (Physics.Raycast(transform.position, (forward), out hit))
        { //teleport activation
            if (hit.collider.tag == "one")
            {
                //print("1");
                One.SetActive(true);
                //Bridge2.SetActive(true);
                Doorway.SetActive(false);










            }
            else
            //Reset if not hitting 
            {
                //print("Null1");
                One.SetActive(false);
                //Bridge2.SetActive(false);
                Doorway.SetActive(true);
                //GoBack.SetActive(false);
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
                pivotScript.GetComponent<CameraRot>().sensitivityX = 0.5f;
                pivotScript.GetComponent<CameraRot>().sensitivityY = 0.5f;



            }
            if (hit.collider.tag == "Magnetise")
            //Reset if not hitting 
            {


                pivotToSnap.transform.rotation = Quaternion.Euler(35.075f, 143.556f, 0);
                One.SetActive(true);
                Bridge2.SetActive(true);
                Debug.Log("YEAH BITCH MAGNETS");
            }
            else
            //Reset if not hitting 
            {
                One.SetActive(false);
                Bridge2.SetActive(false);

                Debug.Log("No Magnets");
            }

            
        }
    }
}

 