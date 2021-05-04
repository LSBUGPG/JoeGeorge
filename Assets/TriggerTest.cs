using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class TriggerTest : MonoBehaviour
{
    [SerializeField] private Image Knightpuzzle;
    private PlayerMove Player;
    public GameObject PlayerSlot;
    

    void Start()
    {
        
        Player = PlayerSlot.GetComponent<PlayerMove>();
    }

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space))
            Knightpuzzle.enabled = !Knightpuzzle.enabled;
        

        

    }

   
    
}
