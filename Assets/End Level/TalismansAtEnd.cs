using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TalismansAtEnd : MonoBehaviour
{
    public PlayerMove FlowerCollectedBool;
    public GameObject Player;

   



    public GameObject TestObj;
    void Start()
    {
        FlowerCollectedBool = Player.GetComponent<PlayerMove>();
        
    }

    void Update()
    {
        
        {
            //TestObj.SetActive(true);
        }
    }
}
