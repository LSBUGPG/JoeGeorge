using System.Collections;
using System;
using System.Collections.Generic;
using UnityEngine;

public class CameraRot : MonoBehaviour
{


    

    public float sensitivityX = 1f;
    public float sensitivityY = 1f;



    float xInput;
    float yInput;



    void Start()
    {


        

    }



    void Update()
    {
        
            
            xInput += Input.GetAxis("Horizontal") * sensitivityX;
            yInput -= Input.GetAxis("Vertical") * sensitivityY;


            transform.eulerAngles = new Vector3(yInput, xInput, 0);




        

    }

    
}




    

   


           




        

        




