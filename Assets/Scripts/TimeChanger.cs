using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TimeChanger : MonoBehaviour
{

    public void Changetime(float value)
    {
        Time.timeScale = value;
    }

}

