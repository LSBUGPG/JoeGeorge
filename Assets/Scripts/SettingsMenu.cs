using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using UnityEngine;
using UnityEngine.Audio;

public class SettingsMenu : MonoBehaviour
{

    public AudioMixer audioMixer;


    

    public void SetVolumeMusic(float volume)
    {
        audioMixer.SetFloat("music", Mathf.Log(volume) * 20);
    }
    public void SetVolumeEffects(float volume)
    {
        audioMixer.SetFloat("effect", Mathf.Log(volume) * 20);
    }
    public void SetVolumeMaster(float volume)
    {
        audioMixer.SetFloat("volume1", Mathf.Log(volume) * 20);
    }
}

