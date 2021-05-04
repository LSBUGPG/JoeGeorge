using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TriggerCutScene : MonoBehaviour
{
    public GameObject NextLevelTrigger;

    public GameObject NPCcamera;
    public GameObject Normalcamera;

    public Animator GateAnim;



    

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            //NPCcamera.SetActive(true);
           // Normalcamera.SetActive(false);
            
            GateAnim.enabled = true;
            
            NextLevelTrigger.SetActive(true);
        }
    }
}
