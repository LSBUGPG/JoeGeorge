using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AnimationMovement : MonoBehaviour
{
    
    public float moveSpeed;
    public float rotationSpeed;

    public Transform relativeTransform;

    Animator animator;
    int isWalkingHash;

    // Start is called before the first frame update
    void Start()
    {
        animator = GetComponent<Animator>();
        isWalkingHash = Animator.StringToHash("isWalking");
    }

    // Update is called once per frame
    void Update()
    {
        Vector3 moveDirection = Vector3.zero;

        bool isWalking = animator.GetBool(isWalkingHash);
        bool forwardPressed = Input.GetKey("w");
        bool leftPressed = Input.GetKey("a");
        bool rightPressed = Input.GetKey("d");
        bool downPressed = Input.GetKey("s");

        //forward
        if (!isWalking && forwardPressed) 
        {
            animator.SetBool(isWalkingHash, true);
            moveDirection += relativeTransform.forward;
        }

        if (isWalking && !forwardPressed)
        {
            animator.SetBool(isWalkingHash, false);
        }

        //left
        if (!isWalking && leftPressed)
        {
            animator.SetBool(isWalkingHash, true);
            moveDirection += -relativeTransform.right;
        }

        if (isWalking && !leftPressed)
        {
            animator.SetBool(isWalkingHash, false);
        }

        //right
        if (!isWalking && rightPressed)
        {
            animator.SetBool(isWalkingHash, true);
            moveDirection += relativeTransform.right;
        }

        if (isWalking && !rightPressed)
        {
            animator.SetBool(isWalkingHash, false);
        }

        //down
        if (!isWalking && downPressed)
        {
            animator.SetBool(isWalkingHash, true);
            moveDirection += -relativeTransform.forward;
        }

        if (isWalking && !downPressed)
        {
            animator.SetBool(isWalkingHash, false);
        }


        moveDirection.y = 0f;

        transform.position += moveDirection.normalized * moveSpeed * Time.deltaTime;

        if (moveDirection != Vector3.zero)
            transform.rotation = Quaternion.LookRotation(moveDirection);


    }



}
