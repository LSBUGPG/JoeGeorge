using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MoveButton : MonoBehaviour
{
    public Transform ButtonDestination;
    public Transform ButtonReset;

    public Transform Button;
    public bool buttonPressed = false;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        Button.transform.position = ButtonDestination.transform.position;
        buttonPressed = true;

            if (buttonPressed = true)
        {
            Button.transform.position = ButtonReset.transform.position;

        }




    }
}
