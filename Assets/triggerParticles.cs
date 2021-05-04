using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class triggerParticles : MonoBehaviour
{
    public ParticleSystem floorImpact;
    public ParticleSystem floorImpact2;
    public float lifetime;




    void OnCollisionEnter(Collision collision)
    {
        if (collision.collider.tag == "floor")
        {
            floorImpact.Play();
            Destroy(floorImpact, lifetime);

        }

        if (collision.collider.tag == "floor2")
        {
            floorImpact2.Play();
            Destroy(floorImpact2, lifetime);

        }

    }
}
