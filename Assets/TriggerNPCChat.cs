using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using TMPro;
using UnityEngine;

public class TriggerNPCChat : MonoBehaviour
{
    //referncing camera switch script
    public NewCameraToggle ToggleOrbBool;
    public GameObject OrbBoolObject;

    public GameObject QuestionBubble;
    public GameObject NPCcamera;
    public GameObject NormalCamera;
    public GameObject WheelScriptTrigger;

    //chat Part 2
    public GameObject OpenWell;

    public GameObject Flowers;
    //chat part 2

    //chat part 1
    public Transform Player;
    public GameObject Destination;
    public GameObject heyMister;
    public GameObject OrbChat;

    // part 1

    //audio
    public AudioSource QuestionBubSound;
    public AudioSource HeyMisterVoice;
    
    public GameObject NPCQuestion;
    

    private TriggerInteraction HadConvo;

    //SpawnOrb
    public GameObject Orby;
    public bool readyToDestroy = false;


    //bools
    private bool DuckBubble;
    private bool chatPart1Complete;
    private bool SpawnDatOrb;
    void Start()
    {
        DuckBubble = false;
        chatPart1Complete = false;
        Orby.SetActive(false);
        ToggleOrbBool = OrbBoolObject.GetComponent<NewCameraToggle>();
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            QuestionBubble.SetActive(true);
            QuestionBubSound.Play();
            DuckBubble = true;
            ToggleOrbBool.RotationOrbCollect = false;
            ToggleOrbBool.OrbChecker.SetActive(false);
        }
    }

    void OnTriggerExit(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            chatPart1Complete = false;
            QuestionBubble.SetActive(false);
            NormalCamera.SetActive(true);
            NPCcamera.SetActive(false);
            DuckBubble = false;
            WheelScriptTrigger.SetActive(true);
            NPCQuestion.SetActive(false);
            OrbChat.SetActive(false);
            SpawnDatOrb = false;
            //ToggleOrbBool.RotationOrbCollect = true;
            HeyMisterVoice.enabled = false;

            CancelInvoke();

        }
        if (other.gameObject.tag == "Player" && readyToDestroy == true)
        {
            Destroy(gameObject);

        }

    }

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space) && DuckBubble == true)
        {
            NormalCamera.SetActive(false);
            NPCcamera.SetActive(true);
            QuestionBubble.SetActive(false);
            NPCQuestion.SetActive(true);
            heyMister.SetActive(true);
            ToggleOrbBool.RotationOrbCollect = false;
            HeyMisterVoice.enabled = true;
            HeyMisterVoice.Play();

            Player.transform.position = Destination.transform.position;

            chatPart1Complete = true;
        }

        if (chatPart1Complete == true && DuckBubble == true)
        {
            
           
            Invoke("DeactivateText", 3f);
        }

        

        if (SpawnDatOrb == true)
        {
            Invoke("SpawnOrb", 0f);
        }

        if (Flowers.active)
        {
           

            NPCQuestion.SetActive(true);
           

            OpenWell.SetActive(true);
            
            WheelScriptTrigger.SetActive(false);
            
            Destroy(NPCQuestion, 5f);
            Destroy(OpenWell, 5f);

            Destroy(gameObject, 5f);
        }
  
    }

    void DeactivateText()
    {
       
 
            OrbChat.SetActive(true);
            heyMister.SetActive(false);
       



        SpawnDatOrb = true;
    }

    void DeactivateText2()
    {
        NPCQuestion.SetActive(false);
        OpenWell.SetActive(false);
    }

    void SpawnOrb()
    {
            Orby.SetActive(true);
        readyToDestroy = true;


    }

    void EndOfLevelSpeech()
    {

            Destroy(heyMister);
            Destroy(OrbChat);

            OpenWell.SetActive(true);
        NPCQuestion.SetActive(true);
        
    }

    void UnlockWell()
    {
        
    }
}
