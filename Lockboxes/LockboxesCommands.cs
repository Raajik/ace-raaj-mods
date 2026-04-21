namespace Lockboxes;

[CommandCategory(nameof(LockboxesCommandCategory.Admin))]
public static class LockboxesCommands
{
    [CommandHandler("lockbox", AccessLevel.Admin, CommandHandlerFlag.RequiresWorld, 0,
        "[Lockboxes] Spawn lockbox(es) in inventory. No args: 1 of each tier. With args: /lockbox <tier> [count]",
        "Usage: /lockbox  |  /lockbox <tier>  |  /lockbox <tier> <count>")]
    [CommandHandler("openlockbox", AccessLevel.Admin, CommandHandlerFlag.RequiresWorld, 1,
        "[Lockboxes] Open a lockbox in your inventory (for testing). Usage: /openlockbox <tier>")]
    [CommandHandler("spawnkey", AccessLevel.Admin, CommandHandlerFlag.RequiresWorld, 0,
        "[Lockboxes] Spawn a skeleton key for testing. Usage: /spawnkey [tier] (1-4, default 4)")]
    public static void HandleLockbox(Session session, params string[] parameters)
    {
        if (session?.Player is not Player player)
            return;

        if (parameters.Length > 0 && parameters[0] == "open" && parameters.Length >= 2)
        {
            if (!int.TryParse(parameters[1], out int tier) || tier < 1 || tier > 3)
            {
                player.SendMessage("[Lockboxes] Invalid tier. Use 1, 2, or 3.");
                return;
            }
            PatchClass.OpenLockboxDirect(player, tier);
            return;
        }

        if (parameters.Length > 0 && parameters[0] == "key")
        {
            int tier = 4;
            if (parameters.Length >= 2 && int.TryParse(parameters[1], out int t))
            {
                tier = Math.Min(4, Math.Max(1, t));
            }
            SpawnKey(player, tier);
            return;
        }

        if (parameters.Length == 0)
        {
            int totalCreated = 0;
            for (int i = 1; i <= 3; i++)
            {
                var lockbox = PatchClass.CreateLockbox(i);
                if (lockbox != null)
                {
                    ModManager.Log($"[Lockboxes] CreateLockbox({i}) returned: {lockbox?.WeenieClassId ?? 0}, {lockbox?.Name ?? "null"}", ModManager.LogLevel.Info);
                    if (!player.TryCreateInInventoryWithNetworking(lockbox))
                    {
                        ModManager.Log($"[Lockboxes] TryCreateInInventoryWithNetworking failed, spawning on ground", ModManager.LogLevel.Warn);
                        if (SpawnOnGround(player, lockbox))
                        {
                            totalCreated++;
                            ModManager.Log($"[Lockboxes] Spawned Tier {i} on ground", ModManager.LogLevel.Info);
                        }
                        else
                        {
                            lockbox.Destroy();
                        }
                    }
                    else
                    {
                        totalCreated++;
                        ModManager.Log($"[Lockboxes] Successfully added Tier {i} to inventory", ModManager.LogLevel.Info);
                    }
                }
                else
                {
                    ModManager.Log($"[Lockboxes] CreateLockbox({i}) returned null", ModManager.LogLevel.Warn);
                }
            }
            player.SendMessage($"[Lockboxes] Created {totalCreated} lockbox(es) (one of each tier).");
            return;
        }

        if (!int.TryParse(parameters[0], out int requestedTier) || requestedTier < 1 || requestedTier > 3)
        {
            player.SendMessage("[Lockboxes] Invalid tier. Use 1, 2, or 3.");
            return;
        }

        int count = 1;
        if (parameters.Length >= 2 && int.TryParse(parameters[1], out int c))
        {
            count = Math.Min(50, Math.Max(1, c));
        }

        int totalCreated2 = 0;
        for (int i = 0; i < count; i++)
        {
            var lockbox = PatchClass.CreateLockbox(requestedTier);
            if (lockbox != null)
            {
                if (!player.TryCreateInInventoryWithNetworking(lockbox))
                {
                    if (SpawnOnGround(player, lockbox))
                    {
                        totalCreated2++;
                    }
                    else
                    {
                        lockbox.Destroy();
                    }
                }
                else
                {
                    totalCreated2++;
                }
            }
        }

        player.SendMessage($"[Lockboxes] Created {totalCreated2} Tier {requestedTier} Lockbox(es).");
    }

    private static bool SpawnOnGround(Player player, WorldObject obj)
    {
        try
        {
            obj.SetPosition(PositionType.Location, player.Location);
            obj.EnterWorld();
            return true;
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Lockboxes] SpawnOnGround failed: {ex.Message}", ModManager.LogLevel.Error);
            return false;
        }
    }

    private static void SpawnKey(Player player, int tier)
    {
        uint wcid = tier switch
        {
            1 => 6876,   // Sturdy Iron Key (250)
            2 => 24477,  // Sturdy Steel Key (500)
            3 => 38456,  // Mana Forge Key (750)
            _ => 48746   // Legendary Key (1000)
        };

        WorldObject? key = WorldObjectFactory.CreateNewWorldObject(wcid);
        if (key == null)
        {
            player.SendMessage("[Lockboxes] Failed to create key.");
            return;
        }

        if (!player.TryCreateInInventoryWithNetworking(key))
        {
            if (!SpawnOnGround(player, key))
            {
                key.Destroy();
                player.SendMessage("[Lockboxes] Failed to give key.");
                return;
            }
        }

        string[] tierNames = { "", "Sturdy Iron", "Sturdy Steel", "Mana Forge", "Legendary" };
        player.SendMessage($"[Lockboxes] Spawned {tierNames[tier]} Key (tier {tier}, difficulty {tier * 250}).");
    }
}