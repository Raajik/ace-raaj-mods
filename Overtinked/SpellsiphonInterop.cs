using System.Reflection;
using ACE.Server.WorldObjects;

namespace Overtinked;

// Reflection bridge — Overtinked must not reference Spellsiphon assembly.
internal static class SpellsiphonInterop
{
	private static MethodInfo? _shouldSuppress;
	private static bool _resolveFailed;

	internal static bool ShouldSuppressOvertinkedCraftFlow(WorldObject? source, WorldObject? target)
	{
		if (source == null || target == null)
			return false;

		if (_resolveFailed)
			return false;

		try
		{
			_shouldSuppress ??= ResolveShouldSuppress();
			if (_shouldSuppress == null)
			{
				_resolveFailed = true;
				return false;
			}

			object? result = _shouldSuppress.Invoke(null, new object[] { source, target });
			return result is bool b && b;
		}
		catch
		{
			return false;
		}
	}

	private static MethodInfo? ResolveShouldSuppress()
	{
		foreach (var asm in AppDomain.CurrentDomain.GetAssemblies())
		{
			if (asm.GetName().Name is not ("Spellsiphon" or "SpellSiphon"))
				continue;

			Type? type = asm.GetType("Spellsiphon.Features.OvertinkedInterop", throwOnError: false);
			if (type == null)
				continue;

			return type.GetMethod(
				"ShouldSuppressOvertinkedCraftFlow",
				BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.Static,
				null,
				new[] { typeof(WorldObject), typeof(WorldObject) },
				null);
		}

		return null;
	}
}
