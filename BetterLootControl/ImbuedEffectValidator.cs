using System;
using System.Collections.Generic;
using System.Linq;
using ACE.Entity.Enum;
using ACE.Server.WorldObjects;

namespace BetterLootControl;

public static class ImbuedEffectValidator
{
    // Tier 1 (Rending tier): ONE from a single category that includes ALL rends: elemental + physical + Nether.
    static readonly ImbuedEffectType[] RendingTier =
    {
        ImbuedEffectType.AcidRending,
        ImbuedEffectType.FireRending,
        ImbuedEffectType.ColdRending,
        ImbuedEffectType.ElectricRending,
        ImbuedEffectType.PierceRending,
        ImbuedEffectType.SlashRending,
        ImbuedEffectType.BludgeonRending,
        ImbuedEffectType.NetherRending,
    };

    // Tier 2 (Proc tier): ONE from {Armor Rending, Critical Strike, Crushing Blow}.
    static readonly ImbuedEffectType[] ProcTier =
    {
        ImbuedEffectType.ArmorRending,
        ImbuedEffectType.CriticalStrike,
        ImbuedEffectType.CripplingBlow,
    };

    // Defense imbues are separate and can stack all 3 (legacy behavior).
    static readonly ImbuedEffectType[] DefenseTier =
    {
        ImbuedEffectType.MeleeDefense,
        ImbuedEffectType.MissileDefense,
        ImbuedEffectType.MagicDefense,
    };

    static readonly ImbuedEffectType[] KnownImbues = RendingTier.Concat(ProcTier).Concat(DefenseTier).ToArray();

    public static bool TryAddImbue(ref ImbuedEffectType existing, ImbuedEffectType toAdd, out string reason)
    {
        reason = string.Empty;

        if (toAdd == ImbuedEffectType.Undef)
        {
            reason = "Undef imbue";
            return false;
        }

        if (!HasSingleBit((uint)toAdd))
        {
            reason = $"Imbue must be a single flag: {toAdd}";
            return false;
        }

        if (existing.HasFlag(toAdd))
        {
            reason = $"Already has {toAdd}";
            return false;
        }

        if (IsInTier(toAdd, RendingTier))
        {
            if (TryGetExistingInTier(existing, RendingTier, out ImbuedEffectType found))
            {
                reason = $"Already has rending {found}";
                return false;
            }
        }

        if (IsInTier(toAdd, ProcTier))
        {
            if (TryGetExistingInTier(existing, ProcTier, out ImbuedEffectType found))
            {
                reason = $"Already has proc-tier imbue {found}";
                return false;
            }
        }

        // Defense tier intentionally allows stacking (no tier exclusivity).
        existing |= toAdd;
        return true;
    }

    public static bool TryAddImbue(WorldObject item, ImbuedEffectType toAdd, out string reason)
    {
        reason = string.Empty;
        if (item == null)
        {
            reason = "Item is null";
            return false;
        }

        ImbuedEffectType existing = item.ImbuedEffect;

        if (IsInTier(toAdd, RendingTier) && !IsRendingCompatibleWithItem(toAdd, item, requireItemContext: false))
        {
            reason = $"Rending {toAdd} not valid for {item.ItemType}";
            return false;
        }

        if (!TryAddImbue(ref existing, toAdd, out reason))
            return false;

        item.ImbuedEffect = existing;
        return true;
    }

    public static bool CanApplyImbue(WorldObject item, ImbuedEffectType toAdd)
    {
        if (item == null)
            return false;

        ImbuedEffectType existing = item.ImbuedEffect;
        if (IsInTier(toAdd, RendingTier) && !IsRendingCompatibleWithItem(toAdd, item, requireItemContext: false))
            return false;

        return TryAddImbue(ref existing, toAdd, out _);
    }

    public static HashSet<ImbuedEffectType> GetExistingImbues(WorldObject item)
    {
        var existing = new HashSet<ImbuedEffectType>();

        if (item == null || item.ImbuedEffect == 0)
            return existing;

        foreach (ImbuedEffectType imbue in KnownImbues)
        {
            if (item.ImbuedEffect.HasFlag(imbue))
                existing.Add(imbue);
        }

        return existing;
    }

    public static List<ImbuedEffectType> GetCompatibleImbues(WorldObject item, params ImbuedEffectType[] additionalImbues)
    {
        var compatible = new List<ImbuedEffectType>();

        if (item == null)
            return compatible;

        ImbuedEffectType existing = item.ImbuedEffect;
        foreach (ImbuedEffectType imbue in additionalImbues ?? Array.Empty<ImbuedEffectType>())
        {
            if (imbue != ImbuedEffectType.Undef)
                existing |= imbue;
        }

        bool hasRending = HasAny(existing, RendingTier);
        bool hasProc = HasAny(existing, ProcTier);

        // Tier 2: offer one proc-tier imbue if none chosen yet.
        if (!hasProc)
        {
            foreach (ImbuedEffectType imbue in ProcTier)
            {
                if (!existing.HasFlag(imbue))
                    compatible.Add(imbue);
            }
        }

        // Tier 1: offer one rending-tier imbue if none chosen yet.
        if (!hasRending)
        {
            foreach (ImbuedEffectType imbue in RendingTier)
            {
                if (!IsRendingCompatibleWithItem(imbue, item, requireItemContext: false))
                    continue;

                if (!existing.HasFlag(imbue))
                    compatible.Add(imbue);
            }
        }

        // Defense tier: allow stacking all three.
        foreach (ImbuedEffectType imbue in DefenseTier)
        {
            if (!existing.HasFlag(imbue))
                compatible.Add(imbue);
        }

        return compatible;
    }

    public static List<string> ValidateItem(WorldObject item)
    {
        var errors = new List<string>();

        if (item == null || item.ImbuedEffect == 0)
            return errors;

        int rendingCount = RendingTier.Count(e => item.ImbuedEffect.HasFlag(e));
        if (rendingCount > 1)
        {
            IEnumerable<string> found = RendingTier.Where(e => item.ImbuedEffect.HasFlag(e)).Select(e => e.ToString());
            errors.Add($"Multiple rendings: {string.Join(", ", found)}");
        }

        int procCount = ProcTier.Count(e => item.ImbuedEffect.HasFlag(e));
        if (procCount > 1)
        {
            IEnumerable<string> found = ProcTier.Where(e => item.ImbuedEffect.HasFlag(e)).Select(e => e.ToString());
            errors.Add($"Multiple proc-tier imbues: {string.Join(", ", found)}");
        }

        // Physical rending on non-weapons is still illegal.
        if (!IsWeapon(item))
        {
            ImbuedEffectType[] weaponOnlyRends =
            {
                ImbuedEffectType.PierceRending,
                ImbuedEffectType.SlashRending,
                ImbuedEffectType.BludgeonRending,
                ImbuedEffectType.NetherRending,
            };

            IEnumerable<string> bad = weaponOnlyRends.Where(e => item.ImbuedEffect.HasFlag(e)).Select(e => e.ToString());
            string[] badArr = bad.ToArray();
            if (badArr.Length > 0)
                errors.Add($"Weapon-only rending on non-weapon: {string.Join(", ", badArr)}");
        }

        return errors;
    }

    static bool HasAny(ImbuedEffectType existing, ImbuedEffectType[] tier)
        => tier.Any(t => existing.HasFlag(t));

    static bool TryGetExistingInTier(ImbuedEffectType existing, ImbuedEffectType[] tier, out ImbuedEffectType found)
    {
        foreach (ImbuedEffectType t in tier)
        {
            if (existing.HasFlag(t))
            {
                found = t;
                return true;
            }
        }

        found = ImbuedEffectType.Undef;
        return false;
    }

    static bool IsInTier(ImbuedEffectType value, ImbuedEffectType[] tier)
        => tier.Contains(value);

    static bool IsWeapon(WorldObject item)
    {
        if (item == null)
            return false;

        ItemType itemType = item.ItemType;
        return (itemType & (ItemType.MeleeWeapon | ItemType.MissileWeapon | ItemType.Caster)) != 0;
    }

    static bool IsRendingCompatibleWithItem(ImbuedEffectType toAdd, WorldObject? item, bool requireItemContext)
    {
        if (item == null)
            return false;

        bool isWeapon = IsWeapon(item);

        if (toAdd == ImbuedEffectType.NetherRending)
            return isWeapon;

        if (toAdd == ImbuedEffectType.PierceRending || toAdd == ImbuedEffectType.SlashRending || toAdd == ImbuedEffectType.BludgeonRending)
            return isWeapon;

        // Elemental rends allowed on weapons and jewelry (legacy behavior in vendor loot).
        return true;
    }

    static bool HasSingleBit(uint value)
        => value != 0 && (value & (value - 1)) == 0;
}
