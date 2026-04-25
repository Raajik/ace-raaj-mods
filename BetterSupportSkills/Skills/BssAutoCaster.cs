using System.Collections.Concurrent;
using ACE.Entity.Enum;
using ACE.Server.Entity;
using ACE.Server.WorldObjects;

namespace BetterSupportSkills.Skills;

/// <summary>
/// Centralized auto-cast helper for hybrid class spells.
/// When EnableAutoCastReagentCosts is true, checks reagents + mana,
/// deducts both, and then casts. When false, behaves like a free proc.
/// </summary>
internal static class BssAutoCaster
{
    // Reentrancy guard — prevents recursive proc cascades (e.g. Windwalker streak
    // triggers EmpyreanAlteration.FakeSpellSplitSplash which casts again which triggers
    // another streak, etc.)
    [ThreadStatic]
    public static bool IsInAutoCast;

    // Throttle missing-component warnings per player (seconds between repeats)
    static readonly ConcurrentDictionary<uint, long> LastComponentWarning = new();
    const int ComponentWarningCooldownSeconds = 300; // 5 minutes

    /// <summary>
    /// Attempts to cast a spell for the player, optionally consuming reagents and mana.
    /// Returns true if the cast went through (or if costs are disabled).
    /// </summary>
    public static bool TryCastSpellWithCosts(Player player, Spell spell, WorldObject target, double manaCostMultiplier = 1.0)
    {
        if (spell.NotFound)
            return false;

        var settings = PatchClass.Settings;
        bool costsEnabled = settings?.EnableAutoCastReagentCosts ?? true;

        if (!costsEnabled)
        {
            return CastSpellDirect(player, spell, target);
        }

        // -- Reagent Check --
        if (!player.HasComponentsForSpell(spell))
        {
            ThrottledMessage(player, $"[AutoCast] You lack the components to cast {spell.Name}.");
            return false;
        }

        // -- Mana Check --
        uint manaUsed = player.CalculateManaUsage(player, spell, target);
        if (manaCostMultiplier != 1.0)
            manaUsed = (uint)Math.Max(1, Math.Round(manaUsed * manaCostMultiplier));

        if (player.Mana.Current < manaUsed)
        {
            ThrottledMessage(player, $"[AutoCast] You lack the mana to cast {spell.Name} (need {manaUsed}).");
            return false;
        }

        // -- Deduct Mana --
        player.UpdateVital(player.Mana, (uint)(player.Mana.Current - manaUsed));

        // -- Burn Components --
        player.TryBurnComponents(spell);

        // -- Cast --
        return CastSpellDirect(player, spell, target);
    }

    /// <summary>
    /// Casts a spell directly, bypassing HandleCastSpell for projectile spells
    /// to avoid interacting with other mods' split/splash prefixes.
    /// </summary>
    static bool CastSpellDirect(Player player, Spell spell, WorldObject target)
    {
        // Guard against any recursive casting
        if (IsInAutoCast)
            return false;

        bool wasInAutoCast = IsInAutoCast;
        IsInAutoCast = true;
        try
        {
            if (spell.IsProjectile)
            {
                // Bypass HandleCastSpell entirely for projectiles — this avoids
                // EmpyreanAlteration.FakeSpellSplitSplash and similar prefixes
                // that can cause infinite recursion when auto-cast from a postfix.
                var weapon = player.GetEquippedWeapon();
                var projectiles = player.CreateSpellProjectiles(spell, target, weapon, isWeaponSpell: false, fromProc: true, lifeProjectileDamage: 0u);
                return projectiles != null && projectiles.Count > 0;
            }
            else
            {
                // Non-projectile spells still go through TryCastSpell → HandleCastSpell,
                // but the reentrancy guard prevents our own patches from looping.
                player.TryCastSpell(spell, target);
                return true;
            }
        }
        finally
        {
            IsInAutoCast = wasInAutoCast;
        }
    }

    /// <summary>
    /// Tries to cast a spell from a tiered array, starting at <paramref name="tier"/> and
    /// falling back to lower tiers if components or mana are missing.
    /// Returns true if any tier succeeded.
    /// </summary>
    public static bool TryCastSpellWithFallback(Player player, int[] spellIds, int tier, WorldObject target, double manaCostMultiplier = 1.0)
    {
        if (spellIds == null || spellIds.Length == 0)
            return false;

        int startIdx = Math.Clamp(tier - 1, 0, spellIds.Length - 1);

        for (int i = startIdx; i >= 0; i--)
        {
            int spellId = spellIds[i];
            if (spellId <= 0) continue;

            var spell = new Spell((SpellId)spellId);
            if (spell.NotFound)
                continue;

            if (TryCastSpellWithCosts(player, spell, target, manaCostMultiplier))
                return true;
        }

        return false;
    }

    static void ThrottledMessage(Player player, string message)
    {
        uint guid = player.Guid.Full;
        long now = DateTimeOffset.UtcNow.ToUnixTimeSeconds();
        long last = LastComponentWarning.GetValueOrDefault(guid);

        if (now - last < ComponentWarningCooldownSeconds)
            return;

        LastComponentWarning[guid] = now;
        player.SendMessage(message, ChatMessageType.System);
    }
}
