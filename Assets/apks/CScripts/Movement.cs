using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Movement : MonoBehaviour {

    public Transform Target;
    public float speed = -2;
    private bool inIt = false;

	void Start ()
    {
        
    }
	
	void FixedUpdate ()
    {
        if (inIt == true)
        {
            transform.position = Vector3.Lerp(gameObject.transform.position, Target.transform.position, 0.21f * Time.deltaTime * speed);
        }
    }

    public void DoIt()
    {
        inIt = true;
    }
    public void DontDoIt()
    {
        inIt = false;
    }


}
