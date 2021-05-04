using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TriggerFracture : MonoBehaviour
{
    private ShatterScript ShatterCube;
    public GameObject ShatterCubeObject;

    void Start()
    {
        ShatterCube = ShatterCubeObject.GetComponent<ShatterScript>();
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            ShatterCube.enabled = true;
        }
    }
}


