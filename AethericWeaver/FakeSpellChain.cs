using System.Linq;
using Spell = ACE.Server.Entity.Spell;

namespace AethericWeaver;

[HarmonyPatchCategory(nameof(FakeSpellChain))]
internal static class FakeSpellChain
{
    [HarmonyPostfix]
    [HarmonyPatch(typeof(SpellProjectile), nameof(SpellProjectile.OnCollideObject), new Type[] { typeof(WorldObject) })]
    public static void PostOnCollideObject(WorldObject target, ref SpellProjectile __instance)
    {
        if (__instance.ProjectileSource is not Player player)
            return;

        if (__instance.Spell is null)
            return;

        var chainCount = __instance.GetProperty(FakeInt.SpellChainCount) ?? 0;
        chainCount++;
        if (chainCount > 5)
        {
            player.SendMessage($"Max chain count hit.");
            return;
        }

        var chance = __instance.GetProperty(FakeFloat.SpellChainChance) ?? 0.25f;
        if (chance > 0 && ThreadSafeRandom.Next(0f, 1.0f) < chance)
        {
            var t = player.GetSplashTargets(target, TargetExclusionFilter.OnlyCreature).Take(1).FirstOrDefault();

            if (t is null)
                player.SendMessage($"Your {__instance.Spell.Name} wants to chain after hitting {target.Name} with {chance:P2} odds but failed.");
            else
            {
                var projectiles = player.CreateSpellProjectiles(new Spell(__instance.Spell.Id), t, player, __instance.IsWeaponSpell, __instance.FromProc, __instance.LifeProjectileDamage);
                foreach (var projectile in projectiles)
                {
                    projectile.SetProperty(FakeInt.SpellChainCount, chainCount);
                    projectile.SetProperty(FakeFloat.SpellChainChance, chance / 2);
                }

                player.SendMessage($"{__instance.Name} chained from {target.Name} to {t.Name} for the {chainCount}th time with {chance:P2} chance");
            }
        }
    }
}
