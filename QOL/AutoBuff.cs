namespace QOL;

using System.Timers;

internal static class AutoBuff
{
    private static System.Timers.Timer? _checkTimer;
    private static readonly object _lock = new();

    public static Settings Settings => PatchClass.Settings;

    public static void TryApply()
    {
        if (!Settings.AutoBuff.Enabled)
            return;

        _checkTimer?.Stop();
        _checkTimer?.Dispose();
        _checkTimer = new System.Timers.Timer(Settings.AutoBuff.CheckIntervalSeconds * 1000);
        _checkTimer.Elapsed += (s, e) => OnCheckTimer();
        _checkTimer.Start();

        ModManager.Log("[QOL] AutoBuff enabled.", ModManager.LogLevel.Info);
    }

    public static void Stop()
    {
        _checkTimer?.Stop();
        _checkTimer?.Dispose();
        _checkTimer = null;
    }

    static void OnCheckTimer()
    {
        try
        {
            foreach (var player in PlayerManager.GetAllOnline())
            {
                if (player.IsDead || !IsAutoBuffEnabled(player))
                    continue;

                var buffs = GetBestBuffs(player);
                foreach (var spell in buffs)
                {
                    if (ShouldRecast(player, spell))
                    {
                        try
                        {
                            player.TryCastSpell(spell, player);
                            try { player.TryBurnComponents(spell); } catch { /* ignore */ }
                        }
                        catch (Exception castEx)
                        {
                            ModManager.Log($"[QOL] AutoBuff timer cast failed for {spell.Name}: {castEx.Message}", ModManager.LogLevel.Warn);
                        }
                    }
                }
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[QOL] AutoBuff timer error: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    public static bool IsAutoBuffEnabled(Player player)
    {
        return (player.GetProperty((PropertyInt)Settings.AutoBuff.TogglePropertyId) ?? 0) != 0;
    }

    public static void SetAutoBuffEnabled(Player player, bool enabled)
    {
        player.SetProperty((PropertyInt)Settings.AutoBuff.TogglePropertyId, enabled ? 1 : 0);
    }

    /// <summary>
    /// Returns true if the spell should be recast (not active or expiring within buffer).
    /// </summary>
    static bool ShouldRecast(Player player, Spell spell)
    {
        var entry = player.EnchantmentManager.GetEnchantment(spell.Id);
        if (entry == null)
            return true; // not active

        // Permanent enchantments (Duration < 0) don't need recasting
        if (entry.Duration < 0)
            return false;

        double remaining = entry.Duration + entry.StartTime;
        return remaining <= Settings.AutoBuff.RecastBufferSeconds;
    }

    // Hardcoded gem buff spells that everyone gets by default
    static readonly uint[] GemBuffSpellIds = new[] { 2244u, 31001u }; // Blackmoor's Favor, Asheron's Benediction

    /// <summary>
    /// Gets the best buff spell per category that the player knows and has skill for,
    /// plus hardcoded gem buffs (Blackmoor's Favor, Asheron's Benediction).
    /// </summary>
    public static List<Spell> GetBestBuffs(Player player)
    {
        var result = new List<Spell>();
        var knownSpellIds = player.Biota.GetKnownSpellsIds(player.BiotaDatabaseLock);

        // Group eligible spells by category, keeping only the highest level per category
        var categoryBest = new Dictionary<SpellCategory, Spell>();

        foreach (var spellId in knownSpellIds)
        {
            var spell = new Spell((uint)spellId);
            if (spell.NotFound)
                continue;

            // Filter: must be beneficial enchantment
            if (!spell.IsBeneficial)
                continue;
            if (spell.MetaSpellType != SpellType.Enchantment)
                continue;

            // Filter: no portals, no projectiles
            if (spell.IsPortalSpell)
                continue;
            if (spell.IsProjectile)
                continue;

            // Filter: must have a valid level
            if (spell.Level <= 0)
                continue;

            // Filter: must have skill to cast
            if (!HasSkillToCast(player, spell))
                continue;

            var category = spell.Category;
            if (!categoryBest.TryGetValue(category, out var currentBest) || spell.Level > currentBest.Level)
            {
                categoryBest[category] = spell;
            }
        }

        result.AddRange(categoryBest.Values);

        // Add hardcoded gem buffs if not already covered by a known spell in the same category
        foreach (uint gemSpellId in GemBuffSpellIds)
        {
            var gemSpell = new Spell(gemSpellId);
            if (gemSpell.NotFound)
                continue;

            // Only add if not already present from known spells
            if (!categoryBest.ContainsKey(gemSpell.Category))
            {
                result.Add(gemSpell);
            }
        }

        return result;
    }

    /// <summary>
    /// Checks if player has sufficient skill to cast the spell.
    /// Formula: skill >= spell_level * 50 - 50
    /// </summary>
    static bool HasSkillToCast(Player player, Spell spell)
    {
        var requiredSkill = GetRequiredSkill(spell);
        if (requiredSkill == null)
            return false;

        var playerSkill = player.GetCreatureSkill(requiredSkill.Value);
        if (playerSkill == null || playerSkill.AdvancementClass < SkillAdvancementClass.Trained)
            return false;

        var minSkill = (int)(spell.Level * 50 - 50);
        return playerSkill.Current >= minSkill;
    }

    static Skill? GetRequiredSkill(Spell spell)
    {
        return spell.School switch
        {
            MagicSchool.CreatureEnchantment => Skill.CreatureEnchantment,
            MagicSchool.ItemEnchantment => Skill.ItemEnchantment,
            MagicSchool.LifeMagic => Skill.LifeMagic,
            MagicSchool.WarMagic => Skill.WarMagic,
            _ => null
        };
    }

    /// <summary>
    /// Immediate cast of all best buffs on target (with fallback to self).
    /// </summary>
    public static void CastBuffs(Player caster, WorldObject? target)
    {
        if (caster.IsDead)
            return;

        var actualTarget = target as Player ?? caster;
        var buffs = GetBestBuffs(caster);

        int castCount = 0;
        foreach (var spell in buffs)
        {
            try
            {
                caster.TryCastSpell(spell, actualTarget);
                // Component burn may fail for spells without component data
                try { caster.TryBurnComponents(spell); } catch { /* ignore */ }
                castCount++;
            }
            catch (Exception ex)
            {
                ModManager.Log($"[QOL] AutoBuff cast failed for {spell.Name}: {ex.Message}", ModManager.LogLevel.Warn);
            }
        }

        if (castCount > 0)
        {
            caster.SendMessage($"Auto-buffed {actualTarget.Name} with {castCount} spells.");
        }
        else
        {
            caster.SendMessage("No eligible buffs to cast.");
        }
    }

    /// <summary>
    /// Called after player enters world (login or resurrection).
    /// If auto-buff is enabled, casts buffs after a short delay.
    /// </summary>
    public static void OnPlayerEnterWorld(Player player)
    {
        if (!IsAutoBuffEnabled(player))
            return;

        // Delay to let the world fully load after resurrection
        var chain = new ActionChain();
        chain.AddDelaySeconds(5.0);
        chain.AddAction(player, () =>
        {
            if (!player.IsDead)
                CastBuffs(player, player);
        });
        chain.EnqueueChain();
    }
}
