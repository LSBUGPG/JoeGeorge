using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class CameraToggleLevel1 : MonoBehaviour
{
    private PlayerMove Player;
    private CameraRot CameraMove;

    public GameObject pivot;
    public GameObject PlayerSlot;

    public GameObject rotationOrb;


    public ParticleSystem OrbPickup;



    // Start is called before the first frame update
    void Start()
    {
        CameraMove = pivot.GetComponent<CameraRot>();
        Player = PlayerSlot.GetComponent<PlayerMove>();


    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.E) && CameraMove.enabled && RuneInventory.RuneScore.Equals(1))
        {

            //Rotation number should only taken off after the rotation is finished.
            CameraMove.enabled = false;
            Player.enabled = true;
            Debug.Log("TurnCamOff");
            RuneInventory.RuneScore += -1;

        }

        //if (Input.GetKeyDown(KeyCode.E) && RuneInventory.RuneScore.Equals(1))
        {
            //RuneInventory.RuneScore += -1;

        }








        if (Input.GetKeyDown(KeyCode.R) && RuneInventory.RuneScore.Equals(1) && Player.enabled)
        {
            CameraMove.enabled = !CameraMove.enabled;
            Player.enabled = !Player.enabled;
            //Player.enabled = false;
            //CameraMove.enabled = true;
            //RuneInventory.RuneScore += -1;
            Debug.Log("RUNES");



        }


    }


    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Orb" && Player.enabled)
        {


            RuneInventory.RuneScore += 1;
            Destroy(rotationOrb);
            OrbPickup.Play();
        }

    }
}
