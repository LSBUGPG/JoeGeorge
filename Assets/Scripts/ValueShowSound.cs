using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class ValueShowSound : MonoBehaviour
{
    TextMeshProUGUI m_Text;

    // Start is called before the first frame update
    void Start()
    {
        m_Text = GetComponent<TextMeshProUGUI>();
    }

    // Update is called once per frame
    public void textUpdate(float value)
    {
        m_Text.text = Mathf.RoundToInt (value * 100) + "%";
    }
}
