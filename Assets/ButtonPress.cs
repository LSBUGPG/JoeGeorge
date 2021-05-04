using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ButtonPress : MonoBehaviour
{
    public Animator anim;
    public GameObject Door;
    public GameObject Bridge;

    void Start()
    {
        anim.enabled = false;
    }



    void OnCollisionEnter(Collision collision)
    {
        if (collision.collider.tag == "Player")
        {
            anim.enabled = true;
            Door.SetActive(false);
            Bridge.SetActive(true);
        }

    }
}
