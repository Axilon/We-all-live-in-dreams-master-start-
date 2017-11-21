using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;


public class bookSkript : MonoBehaviour {
    private GameObject player;
    private GameObject closedBook;
    private GameObject openedBook;
    private GameObject bookLight;
    private float activeZone = 2.5f;
    private bool bookOpened;

    public GameObject[] museumLights;
    public bool BookOpened
    {
        set { this.bookOpened = value; }
        get { return bookOpened; }

    }
	// Use this for initialization
	void Start () {

        player = GameObject.FindWithTag("Player");
        closedBook = GameObject.FindWithTag("closedBook");
        openedBook = GameObject.FindWithTag("openBook");
        bookLight = GameObject.FindWithTag("bookLight");
        museumLights = GameObject.FindGameObjectsWithTag("museumLights");
         
	}

     void FixedUpdate()
    {
        if (isPlayerInActiveZone() == true)
        {
            closedBook.GetComponent<MeshRenderer>().enabled = false;
            openedBook.GetComponent<MeshRenderer>().enabled = true;
            bookLight.GetComponent<Light>().intensity = Mathf.Lerp(bookLight.GetComponent<Light>().intensity, 20f, 0.75f * Time.deltaTime);
            increaseDicreaseLight(false);
        }
        else
        {
            closedBook.GetComponent<MeshRenderer>().enabled = true;
            openedBook.GetComponent<MeshRenderer>().enabled = false;
            bookLight.GetComponent<Light>().intensity = Mathf.Lerp(bookLight.GetComponent<Light>().intensity, 0f, 0.75f * Time.deltaTime);
            increaseDicreaseLight(true);
        }
        
    }

    private bool isPlayerInActiveZone()
    {
        Vector3 playerVector = player.transform.position;
        Vector3 bookVector = closedBook.transform.position;

        float distance = (float) Math.Sqrt(Math.Pow(playerVector.x - bookVector.x, 2) +
            Math.Pow(playerVector.y - bookVector.y, 2) +
            Math.Pow(playerVector.z - bookVector.z, 2));

        if (distance <= activeZone){
            return true;
        }
        else
        {
            return false;
        }
    }

    private void increaseDicreaseLight( bool yesNo)
    {

        if (yesNo) {
            for(int i = 0; i < museumLights.Length; i++)
            {
                museumLights[i].GetComponent<Light>().intensity = Mathf.Lerp(museumLights[i].GetComponent<Light>().intensity, 3.0f, 0.5f * Time.deltaTime);
            }
        }
        else
        {
            for (int i = 0; i < museumLights.Length; i++)
            {
                museumLights[i].GetComponent<Light>().intensity = Mathf.Lerp(museumLights[i].GetComponent<Light>().intensity, 0.2f, 0.5f * Time.deltaTime);
            }
               
        }
        
    }
}
