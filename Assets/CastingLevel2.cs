using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CastingLevel2 : MonoBehaviour
{
    public GameObject One;
    public GameObject Two;


    public GameObject Doorway;

    public AudioSource CubeSound;


    //Talisman Collection
    public GameObject SwordSeparate;
    public GameObject Talisman;

   
    //Camera Snap
    

    //animations
    public Animator Sword;
    public GameObject SwordGroup;


    public CameraRot pivotScript;

    //partcile Systems for pathways
    public ParticleSystem teleport2;
    public bool alreadyPlayed = false;

    //door
    public AudioSource DoorOpen;
    public AudioSource DoorClose;
    public bool alreadyPlayedOpened = false;
    public bool alreadyPlayedClosed = false;
    public ParticleSystem DoorCloud;





    void Start()
    {
        Sword.enabled = false;
    }


    private void Update()
    {
        if (Two.active && !alreadyPlayed)
        {
            teleport2.Play();
            alreadyPlayed = true;
            CubeSound.Play();

        }

        if (One.active && !alreadyPlayedOpened)
        {
            
            alreadyPlayedOpened = true;
            DoorOpen.Play();
            alreadyPlayedClosed = true;
            DoorCloud.Play();
            CubeSound.Play();
        }

       

       

        RaycastHit hit;

        Vector3 forward = transform.TransformDirection(Vector3.forward) * 500;
        Debug.DrawRay(transform.position, forward, Color.green);



        if (Physics.Raycast(transform.position, (forward), out hit))
        { //teleport activation
            if (hit.collider.tag == "one")
            {
                


            }
            else
            //Reset if not hitting 
            {
                

            }

            if (hit.collider.tag == "two")
            {
                
                Two.SetActive(true);

            }
            else
            //Reset if not hitting 
            {

                Two.SetActive(false);
                alreadyPlayed = false;
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
                alreadyPlayedOpened = false;

                Debug.Log("No Magnets");
            }

            if (hit.collider.tag == "three" && alreadyPlayedClosed == true)
            {
                DoorClose.Play();
                alreadyPlayedClosed = false;
            }
 


            if (hit.collider.tag == "Talisman")
            //Reset if not hitting 
            {
                SwordSeparate.SetActive(false);
                Talisman.SetActive(true);
                SwordGroup.SetActive(true);
                Sword.enabled = true;
            }
        }
    }
}


