using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PressSpaceMenu : MonoBehaviour
{
    public Animator CameraAnim;
    public Animator TitleAnim;
    public Animator SpaceStartAnim;
    public Animator BookAnim;



    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space))
        {
            CameraAnim.enabled = true;
            TitleAnim.enabled = true;
            SpaceStartAnim.enabled = true;
            BookAnim.enabled = true;
        }

    }
}
