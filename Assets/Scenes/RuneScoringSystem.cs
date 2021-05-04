using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class RuneScoringSystem : MonoBehaviour
{
    public GameObject scoreText;
    public static int RuneScore;

    private void Start()
    {

    }







    void Update()


    {
        scoreText.GetComponent<Text>().text = "Rotations: ";


    }


}

