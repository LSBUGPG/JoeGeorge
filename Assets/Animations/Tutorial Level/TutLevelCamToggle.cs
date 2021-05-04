using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class TutLevelCamToggle : MonoBehaviour
{
    private PlayerMove Player;
    private CameraRot CameraMove;

    public GameObject pivot;
    public GameObject PlayerSlot;

    public GameObject rotationOrb;
    public GameObject rotationOrbUI;
    public ParticleSystem UIAppear;


    public AudioSource OrbCollectSound;
    public AudioSource UseOrb;

    public ParticleSystem OrbPickup;

    public bool RotationOrbCollect;
    public bool ReadyToSwitch = false;

    public GameObject tutA;
    public GameObject tutB;

    public GameObject tut33;
    public GameObject tut44;
    public GameObject NewLand;

    public GameObject Next2;

    // Start is called before the first frame update
    void Start()
    {
        CameraMove = pivot.GetComponent<CameraRot>();
        Player = PlayerSlot.GetComponent<PlayerMove>();


    }

    public void SwitchToCharacter()
    {
        ReadyToSwitch = true;
    }

    // Update is called once per frame
   void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space) && ReadyToSwitch == true && CameraMove.enabled)
        {

            //Rotation number should only taken off after the rotation is finished.
            CameraMove.enabled = false;
            Player.enabled = true;
            Debug.Log("TurnCamOff");
            RuneInventory.RuneScore += -1;
            rotationOrbUI.SetActive(false);
            UIAppear.Play();
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


    IEnumerator Tut44()
    {
        yield return new WaitForSeconds(1f);
        tut44.SetActive(true);

        yield return new WaitForSeconds(2f);
        NewLand.SetActive(true);

        yield return new WaitForSeconds(4f);
        tut33.SetActive(false);
        tut44.SetActive(false);
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
            OrbCollectSound.Play();
            Destroy(tutA);
            Destroy(tutB);
            tut33.SetActive(true);
            //Next2.SetActive(true);
            StartCoroutine(Tut44());
            UIAppear.Play();
        }



        if (other.gameObject.tag == "Key")
        {



        }

    }
}







