namespace AutoLoot;

/// <summary>
/// The main patch class for the AutoLoot mod.
///
/// In ACE.BaseMod, PatchClass is where all your mod logic, Harmony patches, and
/// in-game commands live. BasicPatch&lt;Settings&gt; is the base class that handles
/// loading/saving Settings.json, hot-reloading, and mod lifecycle events.
///
/// The [HarmonyPatch] attribute on the class tells Harmony to scan this class for
/// any methods decorated with [HarmonyPrefix] / [HarmonyPostfix] etc. and automatically
/// apply them when the mod loads.
/// </summary>
[HarmonyPatch]
public partial class PatchClass : BasicPatch<Settings>
{
    // PlayerEnterWorld postfix: PatchClass.Harmony.cs (attribute). GenerateTreasure: applied manually in Start()
    // via AccessTools so it still binds if the method is non-public or discovery order changes (net10 / ACE updates).

    static readonly object GenerateTreasurePatchLock = new();
    static bool GenerateTreasurePostfixPatched;

    /// <summary>
    /// Constructor. Called immediately when ACE loads the mod.
    ///
    /// We initialize Settings here rather than relying on OnWorldOpen, because
    /// OnWorldOpen doesn't reliably fire before players issue their first command.
    /// The null-coalescing fallback (new Settings()) uses all the defaults defined
    /// in Settings.cs, so the mod still works even if Settings.json doesn't exist yet.
    /// </summary>
    public PatchClass(BasicMod mod, string settingsName = "Settings.json") : base(mod, settingsName)
    {
        try
        {
            Settings ??= SettingsContainer.Settings;
        }
        catch (Exception ex)
        {
            ModManager.Log($"AutoLoot: constructor settings load failed ({ex.Message}); using defaults.", ModManager.LogLevel.Warn);
            Settings ??= new Settings();
        }
    }

    public override void Start()
    {
        base.Start();
        try
        {
            Settings ??= SettingsContainer.Settings;
        }
        catch (Exception ex)
        {
            ModManager.Log($"AutoLoot: Start settings load failed ({ex.Message}); using defaults.", ModManager.LogLevel.Warn);
            Settings ??= new Settings();
        }

        TryPatchGenerateTreasurePostfix();
    }

    void TryPatchGenerateTreasurePostfix()
    {
        lock (GenerateTreasurePatchLock)
        {
            if (GenerateTreasurePostfixPatched)
                return;

            try
            {
                MethodInfo? target = AccessTools.Method(typeof(Creature), "GenerateTreasure",
                    new Type[] { typeof(DamageHistoryInfo), typeof(Corpse) });

                if (target == null)
                {
                    ModManager.Log("AutoLoot: Creature.GenerateTreasure(DamageHistoryInfo, Corpse) not found; autoloot corpse hook disabled.", ModManager.LogLevel.Error);
                    return;
                }

                MethodInfo? postfix = AccessTools.Method(typeof(PatchClass), nameof(PostGenerateTreasure));
                if (postfix == null)
                {
                    ModManager.Log("AutoLoot: PostGenerateTreasure method not found.", ModManager.LogLevel.Error);
                    return;
                }

                ModC.Harmony.Patch(target, postfix: new HarmonyMethod(postfix));
                GenerateTreasurePostfixPatched = true;
                ModManager.Log("AutoLoot: GenerateTreasure postfix applied (manual Harmony.Patch).", ModManager.LogLevel.Info);
            }
            catch (Exception ex)
            {
                ModManager.Log($"AutoLoot: GenerateTreasure manual patch failed: {ex}", ModManager.LogLevel.Error);
            }
        }
    }

    /// <summary>
    /// Called each time the world becomes active (including after hot-reloads).
    /// Re-assigns Settings so any edits to Settings.json are picked up without a restart.
    /// </summary>
    public override async Task OnWorldOpen()
    {
        try
        {
            Settings = SettingsContainer.Settings;
        }
        catch (Exception ex)
        {
            ModManager.Log($"AutoLoot: OnWorldOpen settings load failed ({ex.Message}); keeping prior settings.", ModManager.LogLevel.Warn);
            Settings ??= new Settings();
        }

        TryPatchGenerateTreasurePostfix();
    }

    public override void Stop()
    {
        lock (GenerateTreasurePatchLock)
        {
            if (GenerateTreasurePostfixPatched)
            {
                try
                {
                    MethodInfo? target = AccessTools.Method(typeof(Creature), "GenerateTreasure",
                        new Type[] { typeof(DamageHistoryInfo), typeof(Corpse) });
                    MethodInfo? postfix = AccessTools.Method(typeof(PatchClass), nameof(PostGenerateTreasure));
                    if (target != null && postfix != null)
                        ModC.Harmony.Unpatch(target, postfix);
                }
                catch (Exception ex)
                {
                    ModManager.Log($"AutoLoot: GenerateTreasure unpatch on Stop: {ex.Message}", ModManager.LogLevel.Warn);
                }

                GenerateTreasurePostfixPatched = false;
            }
        }

        base.Stop();
    }
}

/// <summary>
/// Defines the types of comparisons that can be used in loot rules.
///
/// When you write a loot rule like "armor level is greater than 140", you choose
/// a CompareType to describe how the item's actual value should be measured against
/// your target value. These are used by ValueRequirement.VerifyRequirement().
///
/// Think of these like the math operators you'd write:
///   GreaterThan       = item value >  target
///   GreaterThanEqual  = item value >= target
///   LessThan          = item value &lt;  target
///   LessThanEqual     = item value &lt;= target
///   Equal             = item value == target
///   NotEqual          = item value != target (treats missing values as 0)
///   NotEqualNotExist  = item value != target OR the property doesn't exist at all
///   Exist             = the property is present (non-null) on the item
///   NotExist          = the property is NOT present on the item
///   HasBits           = item value has ALL the specified bit flags set
///   NotHasBits        = item value has NONE of the specified bit flags set
/// </summary>
public enum CompareType
{
    GreaterThan,
    LessThanEqual,
    LessThan,
    GreaterThanEqual,
    NotEqual,
    NotEqualNotExist,
    Equal,
    NotExist,
    Exist,
    NotHasBits,
    HasBits,
}
