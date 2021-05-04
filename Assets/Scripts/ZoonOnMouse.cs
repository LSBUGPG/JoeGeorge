using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using UnityEngine.UI;

public class ZoonOnMouse : MonoBehaviour
{
    public void TestingEnter()
    {
        transform.localScale = new Vector3(1.2f, 1.2f, 1f);
    }
    public void TestiingExit()
    {
        transform.localScale = new Vector3(1f, 1f, 1f);
    }
}

