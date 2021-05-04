using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TutorialSceneSpeech : MonoBehaviour
{
    public GameObject Tut1;
    public GameObject Tut2;
    public GameObject Tut3;
    public GameObject Tut4;



    public bool tut1complete = false;
    public bool tut2complete = false;
    public bool tut3complete = false;
    public bool tut4complete = false;


    public NewCameraToggle ToggleOrbBool;
    public GameObject OrbBoolObject;

    public GameObject NewCube;


    // Start is called before the first frame update
    void Start()
    {
        ToggleOrbBool = OrbBoolObject.GetComponent<NewCameraToggle>();

        StartCoroutine(Tut1Stop());

    }

    IEnumerator Tut1Stop()
    { 
        yield return new WaitForSeconds(5f);
        //Tut1.SetActive(false);
        tut1complete = true;
    }

    IEnumerator Tut2Stop()
    {
        yield return new WaitForSeconds(5f);
        //Tut1.SetActive(false);
        //Tut2.SetActive(false);
        
    }

    IEnumerator Tut3Stop()
    {
        yield return new WaitForSeconds(5f);
        Tut3.SetActive(false);
        tut4complete = true;
        Tut4.SetActive(true);
       

    }

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space) && tut1complete == true)
        {
            Tut1.SetActive(false);
        }

        if (tut1complete == true)
        {
            Tut1.SetActive(false);
            Tut2.SetActive(true);
            //tut2complete = true;
        }

        if (tut2complete == true)
        {
            StartCoroutine(Tut2Stop());
            tut1complete = false;
            
        }

        if (Input.GetKeyDown(KeyCode.Space) && tut2complete == true)
        {
            Tut1.SetActive(false);
            Tut2.SetActive(false);
        }

        if (ToggleOrbBool.RotationOrbCollect == true)
        {
            Tut1.SetActive(false);
            Tut2.SetActive(false);
            Tut3.SetActive(true);
            tut1complete = false;
            tut3complete = true;
            StartCoroutine(Tut3Stop());
        }

        if (tut4complete == true)
        {
            Tut3.SetActive(false);
            NewCube.SetActive(true);
        }

        if (Input.GetKeyDown(KeyCode.Space) && tut4complete == true)
        {
            Tut4.SetActive(false);
        }

    }

}








