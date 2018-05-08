using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DestroyByLifetime : MonoBehaviour {

    public float lifetime = 5;

    private void Awake()
    {
        Destroy(gameObject, lifetime);
    }
}
