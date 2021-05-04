using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MouseOverHowTo : MonoBehaviour
{
    //When the mouse hovers over the GameObject, it turns to this color (red)
    Color m_MouseOverColor = Color.white;

    //This stores the GameObject’s original color
    Color m_OriginalColor;

    //Get the GameObject’s mesh renderer to access the GameObject’s material and color
    MeshRenderer m_Renderer;

    public AudioSource HowToSound;


    void Start()
    {
        //Fetch the mesh renderer component from the GameObject
        m_Renderer = GetComponent<MeshRenderer>();
        //Fetch the original color of the GameObject
        m_OriginalColor = m_Renderer.material.color;



        //OptionsAnim.enabled = false;
    }

    void OnMouseEnter()
    {
        HowToSound.Play();

        // Change the color of the GameObject to red when the mouse is over GameObject
        m_Renderer.material.color = m_MouseOverColor;

        //If your mouse hovers over the GameObject with the script attached, output this message

        //if (Input.GetMouseButtonDown(0) && (gameObject.tag == "Options"))
        {


            //OptionsBook.SetActive(true); 
            //originalBook.SetActive(false);
            //OptionsAnim.enabled = true;

            //CouroutineObject.SetActive(true);
            //CouroutineObject2MainMenu.SetActive(false);

        }





    }



    void OnMouseExit()
    {
        // Reset the color of the GameObject back to normal
        m_Renderer.material.color = m_OriginalColor;
    }




    // Update is called once per frame
    void Update()
    {

    }
}