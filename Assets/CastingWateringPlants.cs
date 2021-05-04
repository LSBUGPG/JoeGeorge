using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CastingWateringPlants : MonoBehaviour
{
    public GameObject Flower;
    public GameObject Flower2;
    public GameObject Flower3;
    public GameObject TalismanFlower;


    //bridge
    public GameObject BridgeTeleport;
    public ParticleSystem DustCloud;
    public AudioSource BridgeConnected;
    public bool bridgeBuilt = false;

    public GameObject PadlockTrigger;
    

    public ParticleSystem explode1;
    public ParticleSystem explode2;
    public ParticleSystem explode3;


    public AudioSource Thanks;

    public AudioSource flowerPop;
    public bool alreadyPlayed1 = false;
    public bool alreadyPlayed2 = false;
    public bool alreadyPlayed3 = false;




    //bools
    private void Update()
    {
        if (Flower.active && !alreadyPlayed1)
        {
            flowerPop.Play();
            explode1.Play();
            alreadyPlayed1 = true;
        }

        if (Flower2.active && !alreadyPlayed2)
        {
            flowerPop.Play();
            Thanks.Play();
            explode2.Play();
            alreadyPlayed2 = true;
        }

        if (Flower3.active && !alreadyPlayed3)
        {
            flowerPop.Play();
            explode3.Play();
            alreadyPlayed3 = true;
        }

        if (alreadyPlayed1 == true && alreadyPlayed2 == true && alreadyPlayed3 == true)
        {
           
            PadlockTrigger.SetActive(true);


        }

        if (BridgeTeleport.active && !bridgeBuilt)
        {
            DustCloud.Play();
            BridgeConnected.Play();
            bridgeBuilt = true;
        }


        RaycastHit hit;

        Vector3 forward = transform.TransformDirection(Vector3.forward) * 500;
        Debug.DrawRay(transform.position, forward, Color.green);



        if (Physics.Raycast(transform.position, (forward), out hit))
        { 

            if (hit.collider.tag == "one")
            {
                Flower.SetActive(true);

            }

            if (hit.collider.tag == "two")
            {
                Flower2.SetActive(true);
                
            }

            if (hit.collider.tag == "three")
            {
                Flower3.SetActive(true);
                TalismanFlower.SetActive(true);
            }

            if (hit.collider.tag == "Bridge")
            {
                BridgeTeleport.SetActive(true);
                
            }

            else
            //Reset if not hitting 
            {
                BridgeTeleport.SetActive(false);
                bridgeBuilt = false;
            }


        }
    }
}