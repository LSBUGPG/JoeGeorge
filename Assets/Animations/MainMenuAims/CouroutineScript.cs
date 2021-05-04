using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CouroutineScript : MonoBehaviour
{

    public GameObject Canvas;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    IEnumerator ActivateCanvas()
    {
        yield return new WaitForSeconds(3f);
        Canvas.SetActive(true);

    }

    // Update is called once per frame
    void Update()
    {
        StartCoroutine(ActivateCanvas());
    }
}
