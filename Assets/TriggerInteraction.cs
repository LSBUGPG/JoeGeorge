using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TriggerInteraction : MonoBehaviour
{
    public GameObject QuestionBubbleWheel;
    public GameObject NPCChatTrigger;
    public Animator wheelSpin;

    public GameObject FlowerCube1;
    public GameObject FlowerCube2;
    public GameObject FlowerCube3;
    public AudioSource WheelSqueaky;
    public AudioSource Whistle;

    public ParticleSystem water;

    private bool Wheelbubble;

    public NewCameraToggle ToggleOrbBool;
    public GameObject OrbBoolObject;

    void Start()
    {
        wheelSpin.enabled = false;
        ToggleOrbBool = OrbBoolObject.GetComponent<NewCameraToggle>();

    }

    void OnTriggerEnter(Collider other)
    {
        //if (other.gameObject.tag == "Player")
        {
            QuestionBubbleWheel.SetActive(true);
            Wheelbubble = true;
            NPCChatTrigger.SetActive(false); //this line of code means that flwoers can only be active once outside of the wheel trigger.
            ToggleOrbBool.RotationOrbCollect = false;
            Whistle.Play();
        }


    }

    void OnTriggerExit(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            QuestionBubbleWheel.SetActive(false);
            Wheelbubble = false;
            NPCChatTrigger.SetActive(true);
            ToggleOrbBool.RotationOrbCollect = true;
        }
    }

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space) && Wheelbubble == true)
        {
            wheelSpin.enabled = true;
            QuestionBubbleWheel.SetActive(false);
            water.Play();
            FlowerCube1.SetActive(true);
            FlowerCube2.SetActive(true);
            FlowerCube3.SetActive(true);
            WheelSqueaky.Play();

        }
    }

}