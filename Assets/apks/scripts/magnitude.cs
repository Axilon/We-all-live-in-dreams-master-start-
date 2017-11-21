using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class magnitude : MonoBehaviour {

    public float mag;
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        mag = Vector3.Magnitude(transform.position);
	}
}
