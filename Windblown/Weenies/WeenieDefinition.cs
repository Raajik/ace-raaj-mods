namespace Windblown.Weenies;

/// <summary>
/// JSON schema for a custom weenie entry. Inheritance model: optionally clone <see cref="BaseWcid"/>
/// from the cached vanilla weenie, then layer the property overrides / deletes on top.
/// All property dictionaries are by string-keyed enum name (e.g. "Name", "MaxStackSize", "IconUnderlay")
/// so JSON authors don't need to look up numeric type ids.
/// </summary>
internal sealed class WeenieDefinition
{
    public uint ClassId { get; set; }
    public string? ClassName { get; set; }

    /// <summary>WeenieType enum name. Optional; inherited from base if omitted.</summary>
    public string? WeenieType { get; set; }

    /// <summary>
    /// Optional WCID to inherit all properties from. The cached vanilla weenie at this WCID is deep-cloned
    /// (collections shallow-copied; values replaced, never mutated in place) and the overrides below are layered on top.
    /// </summary>
    public uint? BaseWcid { get; set; }

    public Dictionary<string, int>? PropertiesInt { get; set; }
    public Dictionary<string, long>? PropertiesInt64 { get; set; }
    public Dictionary<string, bool>? PropertiesBool { get; set; }
    public Dictionary<string, double>? PropertiesFloat { get; set; }
    public Dictionary<string, string>? PropertiesString { get; set; }
    public Dictionary<string, uint>? PropertiesDID { get; set; }

    /// <summary>Property names to remove from the inherited weenie (e.g. "Use", "ShortDesc", "UiEffects").</summary>
    public DeleteSpec? Delete { get; set; }

    /// <summary>
    /// If set, NPCs that have an <c>EmoteCategory.Give</c> emote for <c>MirrorEmoteFromWcid</c> will
    /// also accept this WCID. The mirrored emote runs through the original NPC's emote chain so any
    /// downstream patch (e.g. BetterSupportSkills <c>PreExecuteEmoteSet</c>) sees a <c>PropertiesEmote</c>
    /// whose <c>WeenieClassId</c> equals the player's actually-given item, not the source.
    ///
    /// Use case: tiered trophy lines where the base tier (e.g. vanilla 24835 Bloodletter Drudge Charm) is
    /// already wired into all 10 Collector NPCs via vanilla data, and you want the higher tier WCIDs to
    /// piggyback on those same NPCs without touching their weenie data.
    /// </summary>
    public uint? MirrorEmoteFromWcid { get; set; }

    public string? Notes { get; set; }
}

internal sealed class DeleteSpec
{
    public List<string>? PropertiesInt { get; set; }
    public List<string>? PropertiesInt64 { get; set; }
    public List<string>? PropertiesBool { get; set; }
    public List<string>? PropertiesFloat { get; set; }
    public List<string>? PropertiesString { get; set; }
    public List<string>? PropertiesDID { get; set; }
}

internal sealed class WeenieDefinitionFile
{
    public string? Description { get; set; }
    public List<WeenieDefinition> Weenies { get; set; } = new();
}
