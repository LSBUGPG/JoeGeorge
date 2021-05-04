using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Level2TriggerNPC : MonoBehaviour
{
    public GameObject GhostChat1;


    // Start is called before the first frame update
    void Start()
    {
        GhostChat1.SetActive(true);

        StartCoroutine(GhostChat1Stop());

    }

    IEnumerator GhostChat1Stop()
    {
        yield return new WaitForSeconds(5f);
        GhostChat1.SetActive(false);

    }

    // Update is called once per frame
    void Update()
    {

    }

    
}
