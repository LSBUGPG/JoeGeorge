using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WallCasting : MonoBehaviour
{
    //Particle Effects
    public ParticleSystem ButtonEffect1;
    public ParticleSystem ButtonEffect2;
    public ParticleSystem ButtonEffect3;
    public ParticleSystem KnightSmoke1;
    public ParticleSystem KnightSmoke2;
    public ParticleSystem KnightSmoke3;

    //animations
    public Animator TalismanCollect;
    public Animator RedButtonAnim;
    public Animator GreenButtonAnim;
    public Animator YellowButtonAnim;




    //Knights
    public GameObject KnightTopRight;
    public GameObject KnightBottomRight;
    public GameObject KnightTopLeft;

    //Potion
    public GameObject TablePotion;
    public GameObject CabinetPotion;


    //audio
    public AudioSource click;

    // Button Sequence
    private bool puzzle1done;
    private bool puzzle2done;

    private bool ButtonTouch = false;
    private bool ButtonTouch2 = false;
    private bool ButtonTouch3 = false;

    //particle bools
    private bool particleButtonHit1 = false;
    private bool particleButtonHit2 = false;
    private bool particleButtonHit3 = false;



    private bool TalismanAnimReady = false;

    //button movement
    public Transform ButtonDestination;
    public Transform Button;
    public Transform ButtonReset;

    public Transform GreenButtonDest;
    public Transform GreenButton;
    public Transform GreenButtonReset;


    public Transform YellowButtonDest;
    public Transform YellowButton;
    public Transform YellowButtonReset;



    void Start()
    {
        TalismanCollect.enabled = false;
        
    }

    private void Update()
    {
       



        RaycastHit hit;

        Vector3 forward = transform.TransformDirection(Vector3.forward) * 500;
        Debug.DrawRay(transform.position, forward, Color.green);



        if (Physics.Raycast(transform.position, (forward), out hit))
            if (hit.collider.tag == "wall1")
            {
                if (!ButtonTouch)
                {
                    ButtonTouch = true;



                    KnightTopRight.transform.Rotate(0, 90f, 0);
                    ButtonEffect1.Play();
                    KnightSmoke1.Play();
                    click.Play();

                    RedButtonAnim.enabled = true;
                    Button.transform.position = ButtonDestination.transform.position;
                    puzzle1done = true;
                    Debug.Log("works");
                }

            }
            else
            //Reset if not hitting 
            {
                Button.transform.position = ButtonReset.transform.position;

                ButtonTouch = false;
                RedButtonAnim.enabled = false;

            }





        if (hit.collider.tag == "wall2")
        {


            if (!ButtonTouch2 && puzzle1done == true && particleButtonHit2 == true)
            {

                ButtonTouch2 = true;
                particleButtonHit2 = true;

                KnightBottomRight.transform.Rotate(0, 90f, 0);
                ButtonEffect2.Play();
                KnightSmoke2.Play();
                click.Play();

                GreenButtonAnim.enabled = true;
                GreenButton.transform.position = GreenButtonDest.transform.position;
                

                puzzle2done = true;
            }
        }

        else
        //Reset if not hitting 
        {
            GreenButton.transform.position = GreenButtonReset.transform.position;
            GreenButtonAnim.enabled = false;
            ButtonTouch2 = false;
            particleButtonHit2 = true;
        }



        if (hit.collider.tag == "wall3")
        {
            if (!ButtonTouch3 && puzzle2done == true)
            {

                YellowButtonAnim.enabled = true;

                ButtonTouch3 = true;

                KnightTopLeft.transform.Rotate(0, 90f, 0);
                ButtonEffect3.Play();
                KnightSmoke3.Play();
                click.Play();

                YellowButton.transform.position = YellowButtonDest.transform.position;
            }
        }

        else
        //Reset if not hitting 
        {
            YellowButton.transform.position = YellowButtonReset.transform.position;
            YellowButtonAnim.enabled = false;



            ButtonTouch3 = false;
        }



        if (hit.collider.tag == "Potion")
        {
            TablePotion.SetActive(false);
            CabinetPotion.SetActive(true);
            TalismanAnimReady = true;

        }

        if (TalismanAnimReady == true)
        {
            TalismanCollect.enabled = true;

        }

       
            
        
    }
}



            

        
    

          

       



