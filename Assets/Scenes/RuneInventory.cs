using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class RuneInventory : MonoBehaviour
{
    public GameObject RuneText;
    public static int RuneScore;

    private void Start()
    {
        
        RuneInventory.RuneScore += 1;
    }







    void Update()


    {
        RuneText.GetComponent<Text>().text = "" + RuneScore;


    }


}

