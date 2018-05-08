using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : MonoBehaviour {
    public float speed = 0.2f;
    public float rotationSpeed = 180f;
    public Vector3 halfExtents = new Vector3(6, 0, 4);
    public Transform shotSpawn;
    public GameObject laser;
    public float fireRate = 1;
    private bool allowFire = true;

    private void Start()
    {
        AsteroidsManager.Instance.RegisterPlayer(gameObject);
    }
    

    void Update () {
        float horizontalInput = Input.GetAxis("Horizontal");
        float verticalInput = Input.GetAxis("Vertical");
        Quaternion offset = Quaternion.Euler(0f, horizontalInput * rotationSpeed * Time.deltaTime, 0f);
        transform.rotation = transform.rotation * offset;
        Vector3 displacement = new Vector3(0f, 0f, verticalInput) * speed * Time.deltaTime;
        displacement = transform.rotation * displacement;
        Vector3 newPosition = transform.position + displacement;
        for (int i =0; i < 3; ++i)
        {
            newPosition[i] = Mathf.Clamp(newPosition[i], -halfExtents[i], halfExtents[i]);
        }
        transform.position = newPosition;

        if(Input.GetKeyDown("space") && allowFire)
        {
            StartCoroutine(Fire(laser));
        }
    }

    private void OnDestroy()
    {
        AsteroidsManager.Instance.UnregisterPlayer(gameObject);
    }

    IEnumerator Fire(GameObject projectile)
    {
        allowFire = false;
        Instantiate(laser, shotSpawn.position, shotSpawn.rotation);
        yield return new WaitForSeconds(fireRate);
        allowFire = true;
    }

    void OnCollisionEnter(Collision col)
    {
        if (col.gameObject.tag == "Enemy")
        {
            Destroy(col.gameObject);
            Destroy(gameObject);
        }
    }
}
