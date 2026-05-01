using System.Text.Json;

namespace SharedLoot;

public static class LootConfigJson
{
    public static readonly JsonSerializerOptions Options = new()
    {
        ReadCommentHandling = JsonCommentHandling.Skip,
        AllowTrailingCommas = true,
        PropertyNameCaseInsensitive = true,
    };

    public static LootConfig? Deserialize(string json) =>
        JsonSerializer.Deserialize<LootConfig>(json, Options);
}
