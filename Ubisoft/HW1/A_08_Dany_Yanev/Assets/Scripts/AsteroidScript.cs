using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AsteroidScript : MonoBehaviour {
	public float speedX;
	public float speedY;
	public float speedCoef = 3;
	public float rotationSpeed = 180f;
	public float rotationDirectionY;
	public float rotationDirectionX;
	public Vector3 halfExtents = new Vector3(6, 0, 4);
	void Start () {
		rotationDirectionY = Random.Range (-1f, 1f);
//		rotationDirectionY = 0;
		rotationDirectionX = Random.Range (-1f, 1f);
		speedX = Random.Range (-1f, 1f);
		speedY = Random.Range (-1f, 1f);
	}

	void Update () {
		Quaternion offset = Quaternion.Euler(rotationDirectionX * rotationSpeed * Time.deltaTime, 0f, rotationDirectionY * rotationSpeed * Time.deltaTime);
		transform.rotation = transform.rotation * offset;

		Vector3 displacement = new Vector3(speedX, 0f, speedY) * speedCoef * Time.deltaTime;
//		displacement = transform.rotation * displacement;
		Vector3 newPosition = transform.position + displacement;

//		Debug.Log (IsVisible());

		if (IsVisible ()) {
			transform.position = newPosition;
		} else {
			int edgeOfSpawn = Random.Range (1, 5); //1-top 2-bot 3-left 4-right

			if (edgeOfSpawn == 1) {
				transform.position = new Vector3 (Random.Range (-5, 16), 0, 6);
				speedX = Random.Range (-0.1f, 0.1f);
				speedY = 0.1f;
			} else if (edgeOfSpawn == 2) {
				transform.position = new Vector3 (Random.Range (-5, 16), 0, -6);
				speedX = Random.Range (-0.1f, 0.1f);
				speedY = -0.1f;
			} else if (edgeOfSpawn == 3) {
				transform.position = new Vector3 (-11, 0, Random.Range (-9, 5));
				speedX = 0.1f;
				speedY = Random.Range (-0.1f, 0.1f);
			} else {
				transform.position = new Vector3 (11, 0, Random.Range (-9, 5));
				speedX = -0.1f;
				speedY = Random.Range (-0.1f, 0.1f);
			}
		}
	}

	public bool IsVisible(){
		return GeometryUtility.TestPlanesAABB(GeometryUtility.CalculateFrustumPlanes(Camera.main), gameObject.GetComponent<Renderer>().bounds);
	}
}
