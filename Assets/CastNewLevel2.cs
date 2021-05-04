using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CastNewLevel2 : MonoBehaviour
{
    public GameObject One;
    public GameObject Two;

    // Update is called once per frame
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

            }
            else
            //Reset if not hitting 
            {
                //print("Null1");
                One.SetActive(false);
                //Bridge2.SetActive(false);

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
        }
    }
}
        



