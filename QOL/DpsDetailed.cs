using System.Collections.Concurrent;

namespace QOL;

// Per-player opt-in: extra one-line breakdown after successful hits (melee/missile via DamageEvent; war spells via SpellProjectile).

[HarmonyPatchCategory(nameof(Features.DpsDetailed))]
internal static class DpsDetailed
{
    static readonly ConcurrentDictionary<uint, byte> DetailedByPlayerGuid = new();

    internal static bool IsDetailed(uint playerGuidFull) => DetailedByPlayerGuid.ContainsKey(playerGuidFull);

    internal static void SetDetailed(uint playerGuidFull, bool on)
    {
        if (on)
            DetailedByPlayerGuid[playerGuidFull] = 0;
        else
            DetailedByPlayerGuid.TryRemove(playerGuidFull, out _);
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Player), nameof(Player.DamageTarget), new[] { typeof(Creature), typeof(WorldObject) })]
    public static void PostPlayerDamageTarget(DamageEvent __result, Creature target, WorldObject damageSource, Player __instance)
    {
        if (__instance?.Session == null || __result == null || !__result.HasDamage)
            return;
        if (!IsDetailed(__instance.Guid.Full))
            return;

        var line = FormatDamageEvent(__result, target?.Name);
        if (line.Length > 0)
            __instance.SendMessage(line, ChatMessageType.System);
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(SpellProjectile), nameof(SpellProjectile.DamageTarget), new[] { typeof(Creature), typeof(float), typeof(bool), typeof(bool), typeof(bool) })]
    public static void PostSpellProjectileDamageTarget(SpellProjectile __instance, Creature target, float damage, bool critical, bool critDefended, bool overpower)
    {
        if (__instance?.ProjectileSource is not Player source || source.Session == null)
            return;
        if (!IsDetailed(source.Guid.Full))
            return;

        var spell = __instance.Spell;
        if (spell == null)
            return;

        if (spell.Category == SpellCategory.StaminaLowering || spell.Category == SpellCategory.ManaLowering)
            return;

        var t = target?.Name ?? "?";
        source.SendMessage(
            $"[DPS] Spell {spell.Name} →{t}: {damage:F0} {spell.DamageType} | crit={critical} critDef={critDefended} overpower={overpower}",
            ChatMessageType.System);
    }

    static string FormatDamageEvent(DamageEvent ev, string? targetName)
    {
        var t = string.IsNullOrEmpty(targetName) ? "?" : targetName;
        // Keep one line; client chat wraps. Abbreviations save width.
        return $"[DPS] →{t}: dmg={ev.Damage:F1} type={ev.DamageType} {ev.CombatType} | "
               + $"base={ev.BaseDamage:F1} pow={ev.PowerMod:F2} attr={ev.AttributeMod:F2} "
               + $"DR={ev.DamageRatingMod:F2} rck={ev.RecklessnessMod:F2} snk={ev.SneakAttackMod:F2} her={ev.HeritageMod:F2} pkAtk={ev.PkDamageMod:F2} "
               + $"preMit={ev.DamageBeforeMitigation:F1} armor={ev.ArmorMod:F2} res={ev.ResistanceMod:F2} sh={ev.ShieldMod:F2} wpnRes={ev.WeaponResistanceMod:F2} "
               + $"DRR={ev.DamageResistanceRatingMod:F2} mit={ev.DamageMitigated:F1} slay={ev.SlayerMod:F2} "
               + $"crit={ev.IsCritical} critDMG={ev.CriticalDamageMod:F2}";
    }
}

[CommandCategory(nameof(Features.DpsDetailed))]
internal static class DpsDetailedCommands
{
    [CommandHandler("dps", AccessLevel.Player, CommandHandlerFlag.RequiresWorld, -1,
        "Damage breakdown. Usage: /dps detailed | /dps off | /dps (status)", "")]
    public static void HandleDps(Session session, params string[] parameters)
    {
        var player = session?.Player;
        if (player == null)
            return;

        if (PatchClass.Settings?.EnableDpsDetailed != true)
        {
            player.SendMessage("QOL DpsDetailed is off in Settings (EnableDpsDetailed).", ChatMessageType.System);
            return;
        }

        var joined = string.Join(" ", parameters).Trim();
        if (joined.Length == 0)
        {
            var on = DpsDetailed.IsDetailed(player.Guid.Full);
            player.SendMessage(on
                ? "DPS detailed: ON (/dps off to disable)."
                : "DPS detailed: OFF (/dps detailed to enable).", ChatMessageType.System);
            return;
        }

        var low = joined.ToLowerInvariant();
        if (low is "detailed" or "on")
        {
            DpsDetailed.SetDetailed(player.Guid.Full, true);
            player.SendMessage("DPS detailed: ON. Extra lines after melee/missile hits and your offensive spell hits.", ChatMessageType.System);
            return;
        }

        if (low is "off" or "false" or "0")
        {
            DpsDetailed.SetDetailed(player.Guid.Full, false);
            player.SendMessage("DPS detailed: OFF.", ChatMessageType.System);
            return;
        }

        player.SendMessage("Usage: /dps | /dps detailed | /dps off", ChatMessageType.System);
    }
}
