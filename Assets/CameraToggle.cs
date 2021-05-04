using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraToggle : MonoBehaviour
{
    private PlayerMove Player;
    private CameraRot CameraOff;

    public GameObject pivot;
    public GameObject PlayerSlot;
    



    // Start is called before the first frame update
    void Start()
    {
        CameraOff = pivot.GetComponent<CameraRot>();
        Player = PlayerSlot.GetComponent<PlayerMove>();
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.E))
        {

            //Old code
            CameraOff.enabled = !CameraOff.enabled;
            Player.enabled = !Player.enabled;
            Debug.Log("TurnCamOff");







        }
    }
}  


