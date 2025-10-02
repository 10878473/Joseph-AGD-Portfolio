using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.Text.RegularExpressions;
using UnityEngine.Events;

public class SpawnManager : MonoBehaviour
{
    
    [Header("Spawn Zones")]
    public List<GameObject> SpawningZones;

    [Header("Objects from list (A=first, B=second, etc.)")]
    public List<GameObject> testPrefabs;

    [Header("Wave formatting: Example : \"4A+4B@5-5A+10B@2-6A+12B\"")]
    public string waveData = "4A+4B@5-5A+10B@2-6A+12B";
    public float waveDelay = 3f;
    public float waveDelayVariation = 1f;

    private List<Wave> parsedWaves = new List<Wave>();
    private int waveIndex = 0;
    
    public bool finished = false;
    public UnityEvent finishEvent, waveAdvanceEvent;
    public IntData WaveNum;
    void Start()
    {
        finished = false;
        ParseWaveData();
        StartCoroutine(WaveCoroutine());
        WaveNum.value = 0;
    }

    private void ParseWaveData()
    {
        parsedWaves.Clear();

        // Split waves by '-'
        string[] waveParts = waveData.Split('-');

        foreach (string waveStr in waveParts)
        {
            if (string.IsNullOrWhiteSpace(waveStr)) continue;

            float customDelay = -1f;
            string[] delaySplit = waveStr.Split('@');

            string instructionsPart = delaySplit[0];
            if (delaySplit.Length > 1 && float.TryParse(delaySplit[1], out float parsedDelay))
            {
                customDelay = parsedDelay;
            }

            List<WaveInstruction> instructions = new List<WaveInstruction>();
            string[] groups = instructionsPart.Split('+');

            foreach (string group in groups)
            {
                Match m = Regex.Match(group.Trim(), @"(\d+)([A-Z&])", RegexOptions.IgnoreCase);

                if (m.Success)
                {
                    int count = int.Parse(m.Groups[1].Value);
                    char code = char.ToUpper(m.Groups[2].Value[0]);

                    int prefabIndex = -1;
                    bool random = false;

                    if (code == '&')
                    {
                        random = true;
                    }
                    else
                    {
                        prefabIndex = code - 'A'; // A=0, B=1, etc.
                    }

                    instructions.Add(new WaveInstruction(count, prefabIndex, random));
                }
                else if (!string.IsNullOrWhiteSpace(group))
                {
                    Debug.LogWarning($"Invalid spawn group: {group}");
                }
            }

            if (instructions.Count > 0)
            {
                parsedWaves.Add(new Wave(instructions, customDelay));
            }
        }
    }

    private IEnumerator WaveCoroutine()
    {
        while (waveIndex < parsedWaves.Count)
        {
            Wave wave = parsedWaves[waveIndex];
            Debug.Log($"Starting Wave {waveIndex + 1}");

            foreach (WaveInstruction inst in wave.instructions)
            {
                for (int i = 0; i < inst.count; i++)
                {
                    GameObject prefab = GetPrefab(inst);
                    SpawnObject(prefab);
                }
            }
            
            waveIndex++;
            
            // Decide delay: use custom delay if defined, else global delay
            float delay;
            if (wave.customDelay >= 0)
            {
                delay = wave.customDelay;
            }
            else
            {
                delay = waveDelay + Random.Range(-waveDelayVariation, waveDelayVariation);
            }

            yield return new WaitForSeconds(delay);
            WaveNum.value++;
            waveAdvanceEvent?.Invoke();
        }

        Debug.Log("All waves finished!");
        finished = true;
        finishEvent?.Invoke();
        
    }

    private GameObject GetPrefab(WaveInstruction inst)
    {
        if (testPrefabs.Count == 0) return null;

        if (inst.random)
        {
            return testPrefabs[Random.Range(0, testPrefabs.Count)];
        }
        else
        {
            if (inst.prefabIndex >= 0 && inst.prefabIndex < testPrefabs.Count)
            {
                return testPrefabs[inst.prefabIndex];
            }
            else
            {
                Debug.LogWarning($"Invalid prefab index {inst.prefabIndex}");
                return null;
            }
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

public class Wave
{
    public List<WaveInstruction> instructions;
    public float customDelay;

    public Wave(List<WaveInstruction> instructions, float customDelay)
    {
        this.instructions = instructions;
        this.customDelay = customDelay;
    }
}

public class WaveInstruction
{
    public int count;
    public int prefabIndex;
    public bool random;

    public WaveInstruction(int count, int prefabIndex, bool random)
    {
        this.count = count;
        this.prefabIndex = prefabIndex;
        this.random = random;
    }
}
