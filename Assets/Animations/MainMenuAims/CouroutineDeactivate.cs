using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CouroutineDeactivate : MonoBehaviour
{
    public GameObject ObjectToTurnOff;
    // Start is called before the first frame update
    void Start()
    {

    }

    IEnumerator ActivateCanvas()
    {
        yield return new WaitForSeconds(3f);
        ObjectToTurnOff.SetActive(false);

    }

    // Update is called once per frame
    void Update()
    {
        StartCoroutine(ActivateCanvas());
    }
}