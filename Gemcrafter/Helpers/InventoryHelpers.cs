namespace Gemcrafter.Helpers;

internal static class InventoryHelpers
{
	internal static bool TryRemoveOneFromPlayer(Player player, WorldObject item, bool verbose, out WorldObject? removed, out string debug)
	{
		debug = string.Empty;
		removed = null;
		if (player == null || item == null)
		{
			debug = "player or item was null";
			return false;
		}

		// If stackable and stack > 1, just decrement stack size.
		try
		{
			int stack = item.StackSize ?? 1;
			debug = $"stack={stack}";
			if (stack > 1)
			{
				item.StackSize = stack - 1;
				player.EnqueueBroadcast(new GameMessagePrivateUpdatePropertyInt(item, PropertyInt.StackSize, item.StackSize.Value));
				debug += " -> decremented stack";
				return true;
			}
		}
		catch
		{
			debug = "failed reading/decrementing stack";
		}

		// Non-stacked item: remove the whole object from its actual container.
		// Many items live inside a backpack container, so removing directly from Player can fail.
		if (TryRemoveFromOwningContainer(player, item.Guid, out removed, out string containerDebug))
		{
			debug += $" | {containerDebug}";
			return true;
		}
		debug += $" | {containerDebug}";

		// Fallback: try player-level removal APIs.
		bool ok = TryRemoveWholeFromPlayer(player, item.Guid, out removed, out string playerDebug);
		debug += $" | {playerDebug}";
		return ok;
	}

	internal static bool TryRemoveWholeFromPlayer(Player player, ObjectGuid guid, out WorldObject? removed, out string debug)
	{
		debug = string.Empty;
		removed = null;
		if (player == null)
		{
			debug = "player was null";
			return false;
		}

		try
		{
			// Common ACE pattern similar to Corpse.TryRemoveFromInventory(ObjectGuid, out WorldObject)
			MethodInfo? m = typeof(Player).GetMethod("TryRemoveFromInventory", BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic, null,
				new Type[] { typeof(ObjectGuid), typeof(WorldObject).MakeByRefType() }, null);
			if (m != null)
			{
				debug = "Player.TryRemoveFromInventory(ObjectGuid, out WorldObject)";
				object?[] args = new object?[] { guid, null };
				bool ok = (bool)m.Invoke(player, args)!;
				if (ok)
					removed = args[1] as WorldObject;
				return ok;
			}

			// Fallback: try variant name
			// Your ACE build commonly uses: TryRemoveFromInventoryWithNetworking(ObjectGuid, out WorldObject, RemoveFromInventoryAction)
			MethodInfo? mNet = FindTryRemoveFromInventoryWithNetworking(typeof(Player));
			if (mNet != null)
			{
				var pars = mNet.GetParameters();
				object?[] args = new object?[pars.Length];
				args[0] = guid;
				args[1] = null;
				if (pars.Length >= 3 && pars[2].ParameterType.IsEnum)
					args[2] = Activator.CreateInstance(pars[2].ParameterType); // default(enum) = 0
				if (pars.Length >= 4 && pars[3].ParameterType == typeof(bool))
					args[3] = false;

				debug = $"Player.{mNet.Name}({string.Join(", ", pars.Select(p => p.ParameterType.Name))})";
				bool ok = (bool)mNet.Invoke(player, args)!;
				if (ok)
					removed = args[1] as WorldObject;
				return ok;
			}

			// Final fallback for older ACE builds: remove directly from the player's top-level inventory dictionary.
			// This is less ideal than calling a dedicated API, but is reliable for a pure-consume action.
			if (player.EquippedObjects != null && player.EquippedObjects.ContainsKey(guid))
			{
				debug = "item is equipped; refusing direct removal";
				return false;
			}

			if (player.Inventory != null && player.Inventory.TryGetValue(guid, out var wo))
			{
				player.Inventory.Remove(guid);
				removed = wo;
				debug = "Player.Inventory.Remove(ObjectGuid) (fallback)";
				return true;
			}

			debug = "no Player.TryRemoveFromInventory* overload matched; item not found in Player.Inventory";
		}
		catch
		{
			debug = "exception invoking Player removal method";
		}

		return false;
	}

	private static MethodInfo? FindTryRemoveFromInventoryWithNetworking(Type playerType)
	{
		try
		{
			var candidates = playerType.GetMethods(BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic)
				.Where(m => string.Equals(m.Name, "TryRemoveFromInventoryWithNetworking", StringComparison.Ordinal))
				.ToList();

			foreach (var m in candidates)
			{
				var pars = m.GetParameters();
				if (pars.Length < 2)
					continue;

				if (pars[0].ParameterType != typeof(ObjectGuid))
					continue;

				if (!pars[1].IsOut)
					continue;

				// Accept (ObjectGuid, out WorldObject, RemoveFromInventoryAction) and variants with extra args.
				return m;
			}
		}
		catch
		{
		}

		return null;
	}

	private static bool TryRemoveFromOwningContainer(Player player, ObjectGuid itemGuid, out WorldObject? removed, out string debug)
	{
		debug = string.Empty;
		removed = null;

		try
		{
			// Find the object first so we can locate its container.
			WorldObject? item = player.FindObject(itemGuid, Player.SearchLocations.Everywhere, out _, out _, out _);
			if (item == null)
			{
				debug = "FindObject returned null";
				return false;
			}

			uint? containerId = item.ContainerId;
			if (!containerId.HasValue || containerId.Value == 0)
			{
				debug = $"ContainerId missing (ContainerId={containerId})";
				return false;
			}

			debug = $"ContainerId={containerId.Value}";

			// ContainerId can be the player (top-level pack) or a backpack container.
			if (containerId.Value == player.Guid.Full)
			{
				bool ok = TryRemoveWholeFromPlayer(player, itemGuid, out removed, out string pdebug);
				debug += $" -> container is player | {pdebug}";
				return ok;
			}

			var containerGuid = new ObjectGuid(containerId.Value);
			WorldObject? containerWo = player.FindObject(containerGuid, Player.SearchLocations.Everywhere, out _, out _, out _);
			if (containerWo is not Container container)
			{
				debug += $" -> container not found/as container (type={containerWo?.GetType().Name ?? "null"})";
				return false;
			}

			bool ok2 = TryRemoveFromContainer(container, itemGuid, out removed, out string cdebug);
			debug += $" -> {cdebug}";
			return ok2;
		}
		catch
		{
			debug = "exception while locating/removing via container";
			return false;
		}
	}

	private static bool TryRemoveFromContainer(Container container, ObjectGuid itemGuid, out WorldObject? removed, out string debug)
	{
		debug = string.Empty;
		removed = null;

		try
		{
			// Prefer the common signature: TryRemoveFromInventory(ObjectGuid, out WorldObject)
			MethodInfo? m = container.GetType().GetMethod("TryRemoveFromInventory", BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic);
			if (m != null)
			{
				var pars = m.GetParameters();
				if (pars.Length == 2 && pars[0].ParameterType == typeof(ObjectGuid) && pars[1].IsOut)
				{
					debug = "Container.TryRemoveFromInventory(ObjectGuid, out WorldObject)";
					object?[] args = new object?[] { itemGuid, null };
					bool ok = (bool)m.Invoke(container, args)!;
					if (ok)
						removed = args[1] as WorldObject;
					return ok;
				}
			}

			// Last resort: remove from the container's inventory dictionary directly.
			if (container.Inventory != null && container.Inventory.TryGetValue(itemGuid, out var wo))
			{
				debug = "Container.Inventory.Remove(ObjectGuid) (fallback)";
				container.Inventory.Remove(itemGuid);
				removed = wo;
				return true;
			}

			debug = "no removal method matched on container";
		}
		catch
		{
			debug = "exception invoking container removal";
		}

		return false;
	}
}

