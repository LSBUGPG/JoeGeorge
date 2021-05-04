using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class CameraToggleLevel2 : MonoBehaviour
{
    private PlayerMove Player;
    private CameraRot CameraMove;

    public GameObject pivot;
    public GameObject PlayerSlot;

    public GameObject rotationOrb;
    public GameObject rotationOrbUI;
    public ParticleSystem UIAppear;
    public ParticleSystem UIDisappear;
    public AudioSource OrbCollectSound;
    public AudioSource UseOrb;



    //Warning object
    public GameObject NPCWarning;
    public bool StandingOnWarningBlocks = false;

    public ParticleSystem OrbPickup;

    public bool RotationOrbCollect;

    

    //orb checker
    public GameObject OrbChecker;


    // Start is called before the first frame update
    void Start()
    {
        CameraMove = pivot.GetComponent<CameraRot>();
        Player = PlayerSlot.GetComponent<PlayerMove>();


    }

    IEnumerator WarningSpeechTurnOff()
    {
        yield return new WaitForSeconds(3f);
        NPCWarning.SetActive(false);

    }

    // Update is called once per frame
    void Update()
    {

        if (OrbChecker.activeSelf)
        {
            RotationOrbCollect = true;
        }


       


        if (Input.GetKeyDown(KeyCode.Space) && StandingOnWarningBlocks == true)
        {
            NPCWarning.SetActive(true);
            StartCoroutine(WarningSpeechTurnOff());
        }

        



        if (Input.GetKeyDown(KeyCode.Space) && CameraMove.enabled)
        {

            //Rotation number should only taken off after the rotation is finished.
            CameraMove.enabled = false;
            Player.enabled = true;
            Debug.Log("TurnCamOff");
            RuneInventory.RuneScore += -1;
            rotationOrbUI.SetActive(false);
            UIDisappear.Play();
            UseOrb.Play();
        }

        //if (Input.GetKeyDown(KeyCode.E) && RuneInventory.RuneScore.Equals(1))
        {
            //RuneInventory.RuneScore += -1;

        }








        if (Input.GetKeyDown(KeyCode.Space) && RotationOrbCollect == true && Player.enabled)
        {
            CameraMove.enabled = !CameraMove.enabled;
            Player.enabled = !Player.enabled;
            //Player.enabled = false;
            //CameraMove.enabled = true;
            //RuneInventory.RuneScore += -1;
            Debug.Log("RUNES");

            RotationOrbCollect = false;

        }


    }


    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Orb" && Player.enabled)
        {
            RotationOrbCollect = true;
            rotationOrbUI.SetActive(true);
            RuneInventory.RuneScore += 1;
            Destroy(rotationOrb);
            OrbPickup.Play();
            UIAppear.Play();
            OrbCollectSound.Play();


        }

        

    }

    

    void OnCollisionEnter(Collision collision)
    {
        if (collision.collider.tag == "Warning")
        {
            RotationOrbCollect = false;
            StandingOnWarningBlocks = true;
        }




        if (collision.collider.tag == "OrbCollected")
        {
            RotationOrbCollect = true;
        }


    }

    void OnCollisionExit(Collision collision)
    {
        if (collision.collider.tag == "Warning")
        {
            RotationOrbCollect = false;
            StandingOnWarningBlocks = false;

        }

    }
}
