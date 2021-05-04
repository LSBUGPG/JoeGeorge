using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class OptionsAnim : MonoBehaviour
{
    public void PlayAnimation()
    {
        GetComponent<Animator>().SetBool("Options", true);

    }
}
