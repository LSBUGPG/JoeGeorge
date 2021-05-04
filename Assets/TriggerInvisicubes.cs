using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TriggerInvisicubes : MonoBehaviour
{
    public GameObject Invisicubes;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "TeleportBack")
        {
            Invisicubes.SetActive(true);
        }




    }
}
