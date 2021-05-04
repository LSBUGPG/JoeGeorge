using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PortalSpawnAndDie : MonoBehaviour
{
    public GameObject Portal;
    public GameObject IntroCamera;


    // Start is called before the first frame update
    void Start()
    {
        
    }

    IEnumerator DestroyPortal()
    {
        yield return new WaitForSeconds(1.7f);
        Destroy(Portal);
        Destroy(IntroCamera);

    }

    // Update is called once per frame
    void Update()
    {
        StartCoroutine(DestroyPortal());
    }
}
