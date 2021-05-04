﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ItemMove : MonoBehaviour
{
    [Tooltip("Draws Raycast from camera through targeted object")]
    public bool debug = false;
    public Color rayCol = new Color(0, 0, 0);
    [Space(10)]
    [Tooltip("The end position for the object to be in")]
    public Transform targetPosition;
    [Space(10)]
    public bool checkAngle = true;

    public float dragSpeed = 1f;
    Vector3 lastMousePos;

    void OnMouseDown()
    {
        lastMousePos = Input.mousePosition;
    }

    void OnMouseDrag()
    {
        Vector3 delta = Input.mousePosition - lastMousePos;
        Vector3 pos = transform.position;
        pos.y += delta.y * dragSpeed;
        transform.position = pos;
        lastMousePos = Input.mousePosition;
    }


    void FixedUpdate()
    {
        if (debug)
        {
            Vector3 pos = GameObject.FindWithTag("MainCamera").GetComponent<Transform>().position;
            Vector3 dir = (transform.position - pos).normalized;
            Debug.DrawRay(pos, dir * 500.0f, rayCol);
        }


        if (checkAngle)
        {
            Vector3 pos = GameObject.FindWithTag("MainCamera").GetComponent<Transform>().position;
            Vector3 dir = (transform.position - pos).normalized;

            RaycastHit hit;
            if (Physics.Raycast(pos, dir, out hit))
            {
                if (hit.collider.gameObject == targetPosition.gameObject)
                {
                    print("Found Correct Angle! Moving object to its place...");
                    checkAngle = false;
                }
            }
        }

        if (!checkAngle) //assume we found the possition
        {
            transform.position = Vector3.Lerp(transform.position, targetPosition.position, 6.0f * Time.deltaTime);
            Destroy(targetPosition.gameObject, 1.5f);
        }
    }

}

