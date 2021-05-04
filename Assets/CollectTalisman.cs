using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CollectTalisman : MonoBehaviour
{
    public GameObject Talisman;
    public ParticleSystem TalismanCollect;
    public GameObject CollectAnimation;

    public bool CollectedFlower = false;

    void Start()
    {
        
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            CollectAnimation.SetActive(true);
            TalismanCollect.Play();
            Destroy(Talisman);
            CollectedFlower = true;
        }
    }
}
        