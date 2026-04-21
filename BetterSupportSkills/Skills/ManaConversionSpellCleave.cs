using System.Collections.Concurrent;
using ACE.Entity;
using ACE.Server.Managers;

namespace BetterSupportSkills.Skills;

[HarmonyPatchCategory(nameof(Features.ManaConversionSkill))]
internal static class ManaConversionSpellCleave
{
    static readonly ConcurrentDictionary<uint, double> LastCastTime = new();

    [HarmonyPrefix]
    [HarmonyPatch(typeof(WorldObject), "HandleCastSpell", new Type[] {
        typeof(Spell), typeof(WorldObject), typeof(WorldObject), typeof(WorldObject), typeof(bool), typeof(bool), typeof(bool) })]
    public static void HandleCastSpell(Spell spell, WorldObject target, WorldObject? itemCaster = null,
        WorldObject? weapon = null, bool isWeaponSpell = false, bool fromProc = false, bool equip = false, WorldObject? __instance = null)
    {
        if (__instance is not Player player)
            return;

        var settings = PatchClass.Settings;
        if (settings?.EnableManaConversion != true)
            return;

        if (target == null)
            return;

        if (spell.IsSelfTargeted)
            return;

        if (spell.IsHarmful == false)
            return;

        var skill = player.GetCreatureSkill(Skill.ManaConversion);
        if (skill.AdvancementClass < SkillAdvancementClass.Trained)
            return;

        var mcSettings = settings.ManaConversion;
        int extraTargets = skill.AdvancementClass == SkillAdvancementClass.Specialized
            ? mcSettings.CleaveTargetsSpecialized
            : mcSettings.CleaveTargetsTrained;

        if (extraTargets <= 0)
            return;

        uint playerId = player.Guid.Full;
        var now = DateTimeOffset.UtcNow.ToUnixTimeSeconds();
        if (LastCastTime.TryGetValue(playerId, out var last) && now - last < 1.0)
            return;
        LastCastTime[playerId] = now;

        var range = (float)mcSettings.CleaveRange;
        var originLoc = target.Location;
        if (originLoc == null)
            return;

        var targetGuid = target.Guid;

        var lbId = originLoc.LandblockId;
        var lb = LandblockManager.GetLandblock(lbId, false, false);
        
        var candidates = new List<(WorldObject obj, float dist)>();
        
        if (lb != null)
        {
            var allObjects = lb.GetWorldObjectsForPhysicsHandling();
            foreach (var obj in allObjects)
            {
                if (obj == null)
                    continue;
                // Exclude self, primary target, and players
                if (obj.Guid == player.Guid || obj.Guid == targetGuid)
                    continue;
                if (obj is Player)
                    continue;
                if (obj is not Creature c || c.IsDead)
                    continue;
                if (obj.Location == null)
                    continue;
                    
                var distSq = originLoc.SquaredDistanceTo(obj.Location);
                var dist = (float)System.Math.Sqrt(distSq);
                    
                if (dist <= range && dist > 0.5f)
                {
                    candidates.Add((obj, dist));
                }
            }
        }

        // Sort by distance ascending and take closest targets
        var closest = candidates.OrderBy(x => x.dist).Take(extraTargets).ToList();

        ModManager.Log($"[BSS ManaConv] Cleave: spell={spell.Id} on {target.Name}, skill={skill.Current}, extra={extraTargets}, range={range}, found={closest.Count}", ModManager.LogLevel.Info);

        foreach (var (cleaveTarget, dist) in closest)
        {
            if (!player.IsInvalidTarget(spell, cleaveTarget))
            {
                ModManager.Log($"[BSS ManaConv] Casting on {cleaveTarget.Name} at {dist:F1}m", ModManager.LogLevel.Info);
                BssPlayerPaidSpellCast.TryCastSpellWithRedirects_PlayerMana(player, spell, cleaveTarget);
            }
        }
    }
}