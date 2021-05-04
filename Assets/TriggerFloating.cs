using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TriggerFloating : MonoBehaviour
{

    Rigidbody m_Rigidbody;

    void Start()
    {
        m_Rigidbody = GetComponent<Rigidbody>();
    }

    void Update()
    {
        
    }





    void OnCollisionEnter(Collision CollisionInfo)
    {
        if (CollisionInfo.collider.tag == "Switch")
        {
            // Move the object forward along its z axis 1 unit/second.
            m_Rigidbody.transform.Translate(Vector3.up * Time.deltaTime);
            GetComponent<Rigidbody>().useGravity = false;

        }
    }

}
