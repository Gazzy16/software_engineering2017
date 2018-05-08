using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DestroyByProjectile : MonoBehaviour {

    void OnCollisionEnter(Collision col)
    {
        if (col.gameObject.tag == "PlayerProjectile")
        {
            Destroy(col.gameObject);
            Destroy(gameObject);
        }
    }
}
