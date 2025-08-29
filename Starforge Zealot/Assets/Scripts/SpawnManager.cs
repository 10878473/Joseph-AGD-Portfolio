using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpawnManager : MonoBehaviour
{
    [Header("Spawn Zones")]
    public List<GameObject> SpawningZones;

    [Header("Objects from list")]
    public List<GameObject> testPrefabs;
    public bool spawnInSequence = false; // if false, pick randomly
    private int prefabIndex = 0;

    [Header("Wave formatting: # of spawns - # of spawns. Example : 1-2-3-4-7-12-18")]
    public string waveData = "1-2-3-4-7-12-18";
    public float waveDelay = 3f;
    public float waveDelayVariation = 1f;

    private List<int> parsedWaves = new List<int>();
    private int waveIndex = 0;

    void Start()
    {
        ParseWaveData();
        StartCoroutine(WaveCoroutine());
    }

    private void ParseWaveData()
    {
        parsedWaves.Clear();
        string[] parts = waveData.Split('-');

        foreach (string part in parts)
        {
            if (int.TryParse(part, out int count))
            {
                parsedWaves.Add(count);
            }
            else
            {
                Debug.LogWarning($"Invalid wave number: {part}");
            }
        }
    }

    private IEnumerator WaveCoroutine()
    {
        while (waveIndex < parsedWaves.Count)
        {
            int spawnCount = parsedWaves[waveIndex];
            Debug.Log($"Starting Wave {waveIndex + 1} with {spawnCount} spawns");

            for (int i = 0; i < spawnCount; i++)
            {
                GameObject prefabToSpawn = GetNextPrefab();
                SpawnObject(prefabToSpawn);
            }

            waveIndex++;

            // Wait for delay + variation
            float delay = waveDelay + Random.Range(-waveDelayVariation, waveDelayVariation);
            yield return new WaitForSeconds(delay);
        }

        Debug.Log("All waves finished!");
    }

    private GameObject GetNextPrefab()
    {
        if (testPrefabs.Count == 0) return null;

        if (spawnInSequence)
        {
            GameObject prefab = testPrefabs[prefabIndex];
            prefabIndex = (prefabIndex + 1) % testPrefabs.Count; // loop back around
            return prefab;
        }
        else
        {
            return testPrefabs[Random.Range(0, testPrefabs.Count)];
        }
    }

    public void SpawnObject(GameObject prefab)
    {
        if (SpawningZones.Count == 0 || prefab == null) return;

        // pick a random spawn zone
        GameObject zone = SpawningZones[Random.Range(0, SpawningZones.Count)];

        // get zone position & scale
        Vector3 center = zone.transform.position;
        Vector3 scale = zone.transform.localScale;

        // generate random offset inside the cube
        Vector3 offset = new Vector3(
            Random.Range(-0.5f, 0.5f) * scale.x,
            Random.Range(-0.5f, 0.5f) * scale.y,
            Random.Range(-0.5f, 0.5f) * scale.z
        );

        // final spawn position
        Vector3 spawnPos = center + offset;

        // instantiate prefab
        Instantiate(prefab, spawnPos, Quaternion.identity);
    }
}
