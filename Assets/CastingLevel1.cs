using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CastingLevel1 : MonoBehaviour
{

    public GameObject One;
    public GameObject Two;

    public GameObject Doorway;

    //Talisman Collection
    public GameObject SwordSeparate;
    public GameObject Talisman;


    //Camera Snap
    




    public CameraRot pivotScript;






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
                Two.SetActive(true);

            }
            else
            //Reset if not hitting 
            {
                //print("Null1");
                Two.SetActive(false);

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
                
                One.SetActive(true);
                Doorway.transform.rotation = Quaternion.Euler(0, 42, 0);
                Debug.Log("YEAH BITCH MAGNETS");




            }
            else
            //Reset if not hitting 
            {
                One.SetActive(false);
                Doorway.transform.rotation = Quaternion.Euler(0, -51.454f, 0);

                Debug.Log("No Magnets");
            }

            if (hit.collider.tag == "Talisman")
            //Reset if not hitting 
            {
                SwordSeparate.SetActive(false);
                Talisman.SetActive(true);
            }
        }
    }
}