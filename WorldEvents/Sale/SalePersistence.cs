using WorldEvents.Sale.Models;

namespace WorldEvents;

internal static class SalePersistence
{
    static string DataDir => WorldEventsDataPaths.InModData("Data", "Sale");
    static string ActiveSalePath => Path.Combine(DataDir, "ActiveSale.json");
    static string LegacyActiveSalePath => WorldEventsDataPaths.InLegacyModRoot("Data", "Sale", "ActiveSale.json");

    internal static void EnsureDirectories() => Directory.CreateDirectory(DataDir);

    internal static ActiveSaleData? LoadActiveSale()
    {
        EnsureDirectories();
        try
        {
            if (File.Exists(ActiveSalePath))
            {
                var json = File.ReadAllText(ActiveSalePath);
                return JsonSerializer.Deserialize<ActiveSaleData>(json);
            }

            if (File.Exists(LegacyActiveSalePath))
            {
                var json = File.ReadAllText(LegacyActiveSalePath);
                var data = JsonSerializer.Deserialize<ActiveSaleData>(json);
                if (data != null)
                    SaveActiveSale(data);
                try
                {
                    File.Delete(LegacyActiveSalePath);
                }
                catch
                {
                }

                return data;
            }

            return null;
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Sale] LoadActiveSale failed: {ex.Message}", ModManager.LogLevel.Warn);
            return null;
        }
    }

    internal static void SaveActiveSale(ActiveSaleData data)
    {
        EnsureDirectories();
        try
        {
            File.WriteAllText(ActiveSalePath, JsonSerializer.Serialize(data, new JsonSerializerOptions { WriteIndented = true }));
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Sale] SaveActiveSale failed: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    internal static void ClearActiveSale()
    {
        try { if (File.Exists(ActiveSalePath)) File.Delete(ActiveSalePath); }
        catch { }
    }
}
