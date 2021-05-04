using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class NewCameraToggle : MonoBehaviour
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

    public ParticleSystem OrbPickup;

    //orb checker
    public GameObject OrbChecker;

    public bool RotationOrbCollect;

    //hint objects
   
   
    


    // Start is called before the first frame update
    void Start()
    {
        CameraMove = pivot.GetComponent<CameraRot>();
        Player = PlayerSlot.GetComponent<PlayerMove>();
        

    }

    // Update is called once per frame
    void Update()
    {
        if (OrbChecker.activeSelf)
        {
            RotationOrbCollect = true;
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
            OrbChecker.SetActive(false);

        }

        
    }


    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Orb" && Player.enabled) 
        {
            RotationOrbCollect = true;
            rotationOrbUI.SetActive(true);
            UIAppear.Play();
            RuneInventory.RuneScore += 1;
            Destroy(rotationOrb);
            OrbPickup.Play();
            OrbCollectSound.Play();
            OrbChecker.SetActive(true);
        }

        



        if (other.gameObject.tag == "Key") 
        {
            
           
            
        }

    }


    
}

        
         
     

        

       