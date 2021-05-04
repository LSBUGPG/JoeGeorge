using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ReverseAnim : MonoBehaviour
{
    

    public void PlayAnimation()
    {
        GetComponent<Animator>().SetTrigger("Reverse");
        
    }

    public void AlreadyPlayed1()
    {
        GetComponent<Animator>().SetTrigger("PlayOptionsAgain");

    }


}