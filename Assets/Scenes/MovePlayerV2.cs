using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MovePlayerV2 : MonoBehaviour
{
    public float playerSpeed;
    public Transform cam;
    Quaternion rotation;
    Vector3 movementSpeed, rot;
    float fwd, side, camY;
    void Start()
    {

    }

    void FixedUpdate()
    {
        CalculatePlayerSpeed();
        Move();
        camY = cam.eulerAngles.y;
        rot = new Vector3(0, camY, 0);
        rotation = Quaternion.Euler(rot);
        transform.rotation = Quaternion.RotateTowards(transform.rotation, rotation, 180);
    }

    void LateUpdate()
    {
        movementSpeed = new Vector3(side * playerSpeed, 0, fwd * playerSpeed);
    }

    void CalculatePlayerSpeed()
    {
        side = Input.GetAxis("Horizontal") + Input.GetAxis("Horizontal");
        fwd = Input.GetAxis("Vertical") + Input.GetAxis("Vertical");
    }

    void Move()
    {

        transform.position += transform.TransformDirection(movementSpeed);
    }
}

