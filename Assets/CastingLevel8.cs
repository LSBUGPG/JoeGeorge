using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CastingLevel8 : MonoBehaviour
{
    //first fire
    public GameObject Fire;
    public GameObject Smoke;

    //second fire
    public GameObject secondFireTrigger; //this object enables the fire to be lit when the first fire has been lit
    public GameObject secondFire;
    public GameObject secondSmoke;

    //stove Fire
    public GameObject StoveFire;
    public GameObject StoveTrigger;
    public ParticleSystem StoveSmoke;
    public GameObject CutSceneTrigger;

    //teleports
    public GameObject Teleport1;
    public AudioSource CubesConnected1;
    public GameObject Teleport2;


    public ParticleSystem Dustcloud;
    public ParticleSystem Dustcloud2;

    public bool CubeConnected = false;
    public bool CubeConnected2 = false;


    // Start is called before the first frame update
    void Start()
    {

    }

    private void Update()
    {

        if (Teleport1.active && !CubeConnected)
        {
            Dustcloud.Play();
            CubesConnected1.Play();
            CubeConnected = true;
            Debug.Log("itWorks");
        }

        if (Teleport2.active && !CubeConnected2)
        {
            Dustcloud2.Play();
            CubesConnected1.Play();
            CubeConnected2 = true;
            Debug.Log("itWorks");
        }


        RaycastHit hit;

        Vector3 forward = transform.TransformDirection(Vector3.forward) * 500;
        Debug.DrawRay(transform.position, forward, Color.green);



        if (Physics.Raycast(transform.position, (forward), out hit))
        { //teleport activation
            if (hit.collider.tag == "one")
            {
                Teleport1.SetActive(true);
            }
            else
            //Reset if not hitting 
            {
                Teleport1.SetActive(false);
                CubeConnected = false;
            }

            if (hit.collider.tag == "two")
            {
                Teleport2.SetActive(true);
            }
            else
            //Reset if not hitting 
            {
                Teleport2.SetActive(false);
                CubeConnected2 = false;
            }



            if (hit.collider.tag == "fire")
            {
                Fire.SetActive(true);
                Smoke.SetActive(false);
                secondFireTrigger.SetActive(true);
                //print("1");














            }
            else
            //Reset if not hitting 
            {

            }

            if (hit.collider.tag == "fire2")
            {
                secondFire.SetActive(true);
                secondSmoke.SetActive(false);
                StoveTrigger.SetActive(true);

            }

            if (hit.collider.tag == "stove")
            {
               StoveFire.SetActive(true);
                StoveSmoke.Play();
                CutSceneTrigger.SetActive(true);

            }
        }
    }
}
