using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class BookHints : MonoBehaviour
{
    public GameObject QuestionBubble;
    public AudioSource QuestionSound;
    public bool HintBubble = false;

    [SerializeField] private Image Knightpuzzle;
    private PlayerMove Player;
    public GameObject PlayerSlot;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space) && HintBubble == true)
        {
            Knightpuzzle.enabled = !Knightpuzzle.enabled;
        }
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Hints")
        {
            QuestionBubble.SetActive(true);
            QuestionSound.Play();
            HintBubble = true;
        }

    }

    void OnTriggerExit(Collider other)
    {
        if (other.gameObject.tag == "Hints")
        {
            HintBubble = false;
            QuestionBubble.SetActive(false);
           
        }
    }
}
