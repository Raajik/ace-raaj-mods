using System.Globalization;
using System.IO;

namespace DecalQaRunner;

// Loaded from qa-auto.cfg next to DecalQaRunner.dll (copy from qa-auto.example.cfg in the repo).
internal sealed class QaAutoConfig
{
	public bool RunOnLogin { get; set; }

	public int LoginDelayMs { get; set; } = 8000;

	public bool SpawnGems { get; set; } = true;

	public int SpawnCount { get; set; } = 10;

	public bool RunPrepGem { get; set; } = true;

	public string GemFragment { get; set; } = "garnet";

	public string EquipFragment { get; set; } = "bracelet";

	public bool RunServerSuites { get; set; } = true;

	public int MsAfterSpawnBeforePrep { get; set; } = 3500;

	public int MsAfterPrepStartBeforeRunAll { get; set; } = 22000;

	public static QaAutoConfig Load(string assemblyDirectory)
	{
		QaAutoConfig cfg = new();
		try
		{
			string path = Path.Combine(assemblyDirectory, "qa-auto.cfg");
			if (!File.Exists(path))
				return cfg;

			foreach (string raw in File.ReadAllLines(path))
			{
				string line = raw.Trim();
				if (line.Length == 0 || line.StartsWith("#", StringComparison.Ordinal) || line.StartsWith("//", StringComparison.Ordinal))
					continue;

				int eq = line.IndexOf('=');
				if (eq <= 0)
					continue;

				string key = line.Substring(0, eq).Trim();
				string val = line.Substring(eq + 1).Trim();
				if (val.Length >= 2 && val[0] == '"' && val[val.Length - 1] == '"')
					val = val.Substring(1, val.Length - 2);

				Apply(cfg, key, val);
			}
		}
		catch
		{
		}

		return cfg;
	}

	private static void Apply(QaAutoConfig cfg, string key, string val)
	{
		switch (key.ToLowerInvariant())
		{
			case "runonlogin":
				cfg.RunOnLogin = ParseBool(val);
				break;
			case "logindelayms":
				if (int.TryParse(val, NumberStyles.Integer, CultureInfo.InvariantCulture, out int ld))
					cfg.LoginDelayMs = Math.Max(0, ld);
				break;
			case "spawngems":
				cfg.SpawnGems = ParseBool(val);
				break;
			case "spawncount":
				if (int.TryParse(val, NumberStyles.Integer, CultureInfo.InvariantCulture, out int sc))
					cfg.SpawnCount = Math.Max(1, Math.Min(50, sc));
				break;
			case "runprepgem":
				cfg.RunPrepGem = ParseBool(val);
				break;
			case "gemfragment":
				cfg.GemFragment = val;
				break;
			case "equipfragment":
				cfg.EquipFragment = val;
				break;
			case "runserversuites":
				cfg.RunServerSuites = ParseBool(val);
				break;
			case "msafterspawnbeforeprep":
				if (int.TryParse(val, NumberStyles.Integer, CultureInfo.InvariantCulture, out int a))
					cfg.MsAfterSpawnBeforePrep = Math.Max(0, a);
				break;
			case "msafterprepstartbeforerunall":
				if (int.TryParse(val, NumberStyles.Integer, CultureInfo.InvariantCulture, out int b))
					cfg.MsAfterPrepStartBeforeRunAll = Math.Max(0, b);
				break;
		}
	}

	private static bool ParseBool(string val)
	{
		if (string.Equals(val, "1", StringComparison.OrdinalIgnoreCase))
			return true;
		if (string.Equals(val, "0", StringComparison.OrdinalIgnoreCase))
			return false;
		if (bool.TryParse(val, out bool b))
			return b;
		return false;
	}
}
