using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TutorialScript : MonoBehaviour
{
    //text
    public GameObject Tut2;
    public GameObject SPACEBAR;
    public GameObject OrbInstruction;

    public GameObject Landmass;
    public GameObject RotationOrb;

    public AudioSource pop;
    public bool alreadyPlayed1 = false;

    public bool OrbAppear = false;

    public NewCameraToggle ToggleOrbBool;
    public GameObject OrbBoolObject;

    public bool OrbInstructionReady = false;

    // Start is called before the first frame update
    void Start()
    {
        ToggleOrbBool = OrbBoolObject.GetComponent<NewCameraToggle>();
    }

    IEnumerator ActivateOrb()
    {
        yield return new WaitForSeconds(2f);
        
        RotationOrb.SetActive(true);

    }

    IEnumerator ActivateOrbInstruction()
    {
        yield return new WaitForSeconds(2f);

        OrbInstruction.SetActive(true);

    }

    

    public void OrbInstructions()
    {
        if (SPACEBAR.active)
        {
            OrbInstructionReady = true;
            StartCoroutine(ActivateOrbInstruction());

        }

    }




    // Update is called once per frame
    void Update()
    {

        if (RotationOrb.active && !alreadyPlayed1)
        {
            
            pop.Play();
            alreadyPlayed1 = true;
          
        }



        if (Landmass.activeSelf)
        {
            OrbAppear = true;
        }

        if (OrbAppear == true)
        {
            StartCoroutine(ActivateOrb());
        }

        if (ToggleOrbBool.RotationOrbCollect == true)
        {
            RotationOrb.SetActive(false);
            Destroy(SPACEBAR);
            OrbInstruction.SetActive(false);

        }

        




    }
}
