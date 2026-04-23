namespace EmpyreanAlteration;

public class MutatorSettings
{
    public const string PrimaryMutatorNamespace = "EmpyreanAlteration.Mutators";

    public string Mutation { get; set; } = "";
    public bool Enabled { get; set; }
    public MutationEvent Events { get; set; } = MutationEvent.Loot;
    public string? Odds { get; set; }
    public string? TreasureTargets { get; set; }
    public string? WeenieTypeTargets { get; set; }

    public MutatorSettings(string mutation, bool enabled = true)
    {
        Mutation = mutation;
        Enabled = enabled;
    }
}

public static class MutatorHelpers
{
    static readonly Dictionary<string, Type> MutatorTypeCache = new();

    public static Mutator GetMutator(this MutatorSettings settings)
    {
        if (!MutatorTypeCache.TryGetValue(settings.Mutation, out var mutatorType))
        {
            mutatorType = ResolveMutatorType(settings.Mutation);
            if (mutatorType is null || !mutatorType.IsSubclassOf(typeof(Mutator)))
            {
                ModManager.Log($"[EmpyreanAlteration] Failed to resolve mutator type for '{settings.Mutation}'.", ModManager.LogLevel.Error);
                throw new InvalidOperationException($"Mutator type not found: {settings.Mutation}");
            }

            MutatorTypeCache[settings.Mutation] = mutatorType;
        }

        if (Activator.CreateInstance(mutatorType) is not Mutator mutator)
            throw new InvalidOperationException($"Mutator {mutatorType.Name} could not be constructed.");

        if (!Enum.TryParse<Mutation>(settings.Mutation, ignoreCase: false, out var mutationKind))
        {
            ModManager.Log($"[EmpyreanAlteration] Mutator '{settings.Mutation}' does not match Mutation enum; using AutoScale for ordering.", ModManager.LogLevel.Warn);
            mutationKind = Mutation.AutoScale;
        }

        mutator.MutationType = mutationKind;
        mutator.Event = settings.Events;

        var cfg = PatchClass.Settings ?? new Settings();
        mutator.TreasureTargets = cfg.TargetGroups.TryGetValue(settings.TreasureTargets ?? "", out var treasureTargets)
            ? new HashSet<TreasureItemType_Orig>(treasureTargets)
            : new HashSet<TreasureItemType_Orig>();
        mutator.WeenieTypeTargets = cfg.WeenieTypeGroups.TryGetValue(settings.WeenieTypeTargets ?? "", out var weenieTargets)
            ? new HashSet<WeenieType>(weenieTargets)
            : new HashSet<WeenieType>();
        mutator.Odds = cfg.Odds.TryGetValue(settings.Odds ?? "", out var mutatorOdds) ? mutatorOdds : null;

        return mutator;
    }

    static Type? ResolveMutatorType(string mutation)
    {
        foreach (var asm in AppDomain.CurrentDomain.GetAssemblies())
        {
            if (asm.IsDynamic)
                continue;

            var t = asm.GetType($"{MutatorSettings.PrimaryMutatorNamespace}.{mutation}", throwOnError: false, ignoreCase: false);
            if (t is not null && t.IsSubclassOf(typeof(Mutator)))
                return t;
        }

        return null;
    }
}
