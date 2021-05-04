using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CastingTutorialScene : MonoBehaviour
{
    public GameObject BridgeTeleport;
    public GameObject Invisicubes;
  
    public ParticleSystem DustCloud;
    public bool bridgeBuilt = false;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if (BridgeTeleport.active && !bridgeBuilt)
        {
            DustCloud.Play();
            bridgeBuilt = true;
        }


        RaycastHit hit;

        Vector3 forward = transform.TransformDirection(Vector3.forward) * 500;
        Debug.DrawRay(transform.position, forward, Color.green);



        if (Physics.Raycast(transform.position, (forward), out hit))
        {

            if (hit.collider.tag == "one")
            {
                BridgeTeleport.SetActive(true);
                Invisicubes.SetActive(true);

            }

            else
            //Reset if not hitting 
            {
                BridgeTeleport.SetActive(false);
                Invisicubes.SetActive(false);
                bridgeBuilt = false;
            }



        }
    }
}
