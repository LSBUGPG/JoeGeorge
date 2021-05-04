using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class OBjectFaceCamera : MonoBehaviour
{
    public GameObject Bubble;
    public GameObject Cam;

    void Update()
    {
        // Rotate the camera every frame so it keeps looking at the target
        Bubble.transform.LookAt(Cam.transform);
        
    }
}