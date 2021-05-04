using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class TriggerSomething : MonoBehaviour
{
    public GameObject QuestionBubble;
   // public GameObject UITrigger;
    [SerializeField] private Image Knightpuzzle;

    public bool NearBook = false;

    public NewCameraToggle ToggleOrbBool;
    public GameObject OrbBoolObject;
    public AudioSource Whistle;

    void Start()
    {
        ToggleOrbBool = OrbBoolObject.GetComponent<NewCameraToggle>();
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            Whistle.Play();
            QuestionBubble.SetActive(true);
            //UITrigger.SetActive(true);

            NearBook = true;
            ToggleOrbBool.RotationOrbCollect = false;

        }
    }

    void OnTriggerExit(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            QuestionBubble.SetActive(false);
            //UITrigger.SetActive(false);

            NearBook = false;
            ToggleOrbBool.RotationOrbCollect = true;
        }
    }

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space) && NearBook == true)
            Knightpuzzle.enabled = !Knightpuzzle.enabled;
    }
}


    


    

