using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TimeController : MonoBehaviour
{
    public GameObject player;
    public ArrayList playerPositions;
    public bool isReversing = false;

    void Start()
    {
        playerPositions = new ArrayList();
    }

    void Update()
    {
        if (Input.GetKey(KeyCode.H))
        {
            isReversing = true;
        }
        else
        {
            isReversing = false;
        }
    }

    void FixedUpdate()
    {
        if (!isReversing)
        {
            playerPositions.Add(player.transform.position);
        }
        else
        {
            player.transform.position = (Vector3)playerPositions[playerPositions.Count - 1];
            playerPositions.RemoveAt(playerPositions.Count - 1);
        }
    }
}
