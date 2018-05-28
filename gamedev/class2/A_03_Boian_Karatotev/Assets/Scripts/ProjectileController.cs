using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ProjectileController : MonoBehaviour {
    public float speed = 10f;
    public Vector3 halfExtends = new Vector3(6, 0, 4);

	// Use this for initialization
	void Start () {
        AsteroidsManager.Instance.registerProjectile(gameObject);
    }

    private void Update()
    {
        Vector3 displacement = new Vector3(0f, 0f, 1f) * speed * Time.deltaTime;
        displacement = transform.rotation * displacement;
        Vector3 newPosition = transform.position + displacement;
        transform.position = newPosition;
    }

    public void OnDestroy()
    {
        AsteroidsManager.Instance.UnregisterProjectile(gameObject);
    }

    void OnCollisionEnter(Collision col)
    {
        if (col.gameObject.name == "Asteroid")
        {
            Destroy(col.gameObject);
            Destroy(gameObject);
        }
    }

    public void setPosition(Vector3 pos, Quaternion dir)
    {
        transform.position = pos;
        transform.rotation = dir;
    }
}
