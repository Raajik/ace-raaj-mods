namespace Overtinked;

// EA awakening stamps PropertyInt.ItemWorkmanship; vanilla magic may use WorldObject.Workmanship float.
// Hemorrhage/Shatter previously checked only float Workmanship — missed many awakened targets.
internal static class WorkmanshipTargets
{
	internal static bool HasQualifyingWorkmanship(WorldObject? target)
	{
		if (target == null)
			return false;

		try
		{
			int? iw = target.ItemWorkmanship;
			if (iw.HasValue && iw.Value > 0)
				return true;
		}
		catch
		{
		}

		try
		{
			int? pip = target.GetProperty(PropertyInt.ItemWorkmanship);
			if (pip.HasValue && pip.Value > 0)
				return true;
		}
		catch
		{
		}

		try
		{
			float? wf = target.Workmanship;
			if (wf.HasValue && wf.Value > 0f)
				return true;
		}
		catch
		{
		}

		return false;
	}
}
