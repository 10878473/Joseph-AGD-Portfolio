using UnityEngine;

public class pickpointoffset : MonoBehaviour
{
    public Transform target;

    public Vector3 pointactual;
    public Vector3 offset;
    // Start is called once before the first execution of Update after the MonoBehaviour is created
    void Start()
    {
        if (target == null)
        {
            target = GameObject.FindGameObjectWithTag("Player").transform;
            pointactual = target.position;
            pointactual = new Vector3(pointactual.x + Random.Range(-offset.x,offset.x), pointactual.y + Random.Range(-offset.y,offset.y), pointactual.z + Random.Range(-offset.z,offset.z));
            transform.LookAt(pointactual);

        }
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
