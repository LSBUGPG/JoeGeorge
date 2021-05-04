using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CastingLevel3 : MonoBehaviour
{
    public GameObject One;
    public GameObject Two;

    public ParticleSystem Dustcloud;
    public bool CubeConnected = false;
    public bool Cube2Connected = false;

    //Talisman Collection

    public GameObject Talisman;


    //Camera Snap


    //animations

    //audio
    public AudioSource CubeSound;


    public CameraRot pivotScript;


    //teleport back stuff
    
    public GameObject TeleportBackTrigger;
    public GameObject TeleportBack;



    public GameObject GoBack;

    void Start()
    {

    }


    private void Update()
    {

        if (One.active && !CubeConnected)
        {
            Dustcloud.Play();
            CubeConnected = true;
            Debug.Log("itWorks");
            CubeSound.Play();
        }

        if (Two.active && !Cube2Connected)
        {
            Dustcloud.Play();
            Cube2Connected = true;
            Debug.Log("itWorks2");
            CubeSound.Play();

        }







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
                CubeConnected = false;
            }



            if (hit.collider.tag == "two")
            {
                Two.SetActive(true);


            }
            else
            //Reset if not hitting 
            {

                Two.SetActive(false);
                Cube2Connected = false;
            }

        }


    }
}