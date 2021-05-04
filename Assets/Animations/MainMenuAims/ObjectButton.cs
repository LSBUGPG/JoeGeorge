using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine;

public class ObjectButton : MonoBehaviour
{
    public Animator BookAnim;
    public Animator OptionsAnim;
    public GameObject originalBook;
    public GameObject OptionsBook;

    //When the mouse hovers over the GameObject, it turns to this color (red)
    Color m_MouseOverColor = Color.red;

    //This stores the GameObject’s original color
    Color m_OriginalColor;

    //Get the GameObject’s mesh renderer to access the GameObject’s material and color
    MeshRenderer m_Renderer;

    void Start()
    {
        //Fetch the mesh renderer component from the GameObject
        m_Renderer = GetComponent<MeshRenderer>();
        //Fetch the original color of the GameObject
        m_OriginalColor = m_Renderer.material.color;

        BookAnim.enabled = false;
        
    }

    void OnMouseOver()
    {
        if (Input.GetMouseButtonDown(0) && (gameObject.tag == "Begin"))
        {
            //StartCoroutine(OpenBook());
            BookAnim.enabled = true;
            OptionsBook.SetActive(false);
            //SceneManager.LoadScene("Level1");

            
        }

        // Change the color of the GameObject to red when the mouse is over GameObject
        m_Renderer.material.color = m_MouseOverColor;

        //If your mouse hovers over the GameObject with the script attached, output this message
        Debug.Log("Mouse is over GameObject.");
    }

    void OnMouseExit()
    {
        // Reset the color of the GameObject back to normal
        m_Renderer.material.color = m_OriginalColor;
    }

    void Update()
    {
       

        

    }


    

    //IEnumerator OpenBook()
    
       //yield return new WaitForSeconds(3f);
       
        
        
      
    

   
}