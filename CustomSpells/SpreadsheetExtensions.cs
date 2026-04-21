using Ganss.Excel;
using System.Globalization;

namespace CustomSpells;

public static class SpreadsheetExtensions
{
    public static void SetupCustomSpellMappings(this ExcelMapper excel)
    {
        SpellCustomization b = new(SpellId.AcidArc1);

        excel.AddMapping<SpellCustomization>(nameof(b.Template), p => p.Template)
            .SetPropertyUsing(cellValue => TryParseCellEnum<SpellId>(cellValue, out var parsed) ? parsed : null);
        excel.AddMapping<SpellCustomization>(nameof(b.Id), p => p.Id)
            .SetPropertyUsing(cellValue => TryParseCellEnum<SpellId>(cellValue, out var parsed) ? parsed : null);
        excel.AddMapping<SpellCustomization>(nameof(b.School), p => p.School)
            .SetPropertyUsing(cellValue => TryParseCellEnum<MagicSchool>(cellValue, out var parsed, false) ? parsed : null);
        excel.AddMapping<SpellCustomization>(nameof(b.Category), p => p.Category)
            .SetPropertyUsing(cellValue => TryParseCellEnum<SpellCategory>(cellValue, out var parsed) ? parsed : null);
        excel.AddMapping<SpellCustomization>(nameof(b.Bitfield), p => p.Bitfield)
            .SetPropertyUsing(cellValue => TryParseCellEnum<SpellFlags>(cellValue, out var parsed) ? parsed : null);
        excel.AddMapping<SpellCustomization>(nameof(b.MetaSpellType), p => p.MetaSpellType)
            .SetPropertyUsing(cellValue => TryParseCellEnum<SpellType>(cellValue, out var parsed) ? parsed : null);
        excel.AddMapping<SpellCustomization>(nameof(b.StatModType), p => p.StatModType)
            .SetCellUsing<EnchantmentTypeFlags?>((c, o) => { if (o is not null && o != default) c.SetCellValue(o.ToString()); })
            .SetPropertyUsing(cellValue => TryParseCellEnum<EnchantmentTypeFlags>(cellValue, out var parsed) ? parsed : null);
        excel.AddMapping<SpellCustomization>(nameof(b.EType), p => p.EType)
            .SetCellUsing<DamageType?>((c, o) => { if (o is not null && o != default) c.SetCellValue(o.ToString()); })
            .SetPropertyUsing(cellValue => TryParseCellEnum<DamageType>(cellValue, out var parsed, true) ? parsed : null);
        excel.AddMapping<SpellCustomization>(nameof(b.DamageType), p => p.DamageType)
            .SetCellUsing<DamageType?>((c, o) => { if (o is not null && o != default) c.SetCellValue(o.ToString()); })
            .SetPropertyUsing(cellValue => TryParseCellEnum<DamageType>(cellValue, out var parsed, true) ? parsed : null);
        excel.AddMapping<SpellCustomization>(nameof(b.CasterEffect), p => p.CasterEffect)
            .SetCellUsing<PlayScript?>((c, o) => { if (o is not null && o != default) c.SetCellValue(o.ToString()); })
            .SetPropertyUsing(cellValue => TryParseCellEnum<PlayScript>(cellValue, out var parsed) ? parsed : null);
        excel.AddMapping<SpellCustomization>(nameof(b.TargetEffect), p => p.TargetEffect)
            .SetCellUsing<PlayScript?>((c, o) => { if (o is not null && o != default) c.SetCellValue(o.ToString()); })
            .SetPropertyUsing(cellValue => TryParseCellEnum<PlayScript>(cellValue, out var parsed) ? parsed : null);
        excel.AddMapping<SpellCustomization>(nameof(b.NonComponentTargetType), p => p.NonComponentTargetType)
            .SetCellUsing<ItemType?>((c, o) => { if (o is not null && o != default) c.SetCellValue(o.ToString()); })
            .SetPropertyUsing(cellValue => TryParseCellEnum<ItemType>(cellValue, out var parsed) ? parsed : null);
        excel.AddMapping<SpellCustomization>(nameof(b.Source), p => p.Source)
            .SetPropertyUsing(cellValue => TryParseCellEnum<PropertyAttribute2nd>(cellValue, out var parsed) ? parsed : null);
        excel.AddMapping<SpellCustomization>(nameof(b.Destination), p => p.Destination)
            .SetPropertyUsing(cellValue => TryParseCellEnum<PropertyAttribute2nd>(cellValue, out var parsed) ? parsed : null);
        excel.AddMapping<SpellCustomization>(nameof(b.TransferFlags), p => p.TransferFlags)
            .SetPropertyUsing(cellValue => TryParseCellEnum<TransferFlags>(cellValue, out var parsed) ? parsed : null);
        excel.AddMapping<SpellCustomization>(nameof(b.DispelSchool), p => p.DispelSchool)
            .SetPropertyUsing(cellValue => TryParseCellEnum<MagicSchool>(cellValue, out var parsed) ? parsed : null);
        excel.AddMapping<SpellCustomization>(nameof(b.Align), p => p.Align)
            .SetPropertyUsing(cellValue => TryParseCellEnum<DispelType>(cellValue, out var parsed) ? parsed : null);

        excel.AddMapping<SpellCustomization>(nameof(b.CreateOffset), p => p.CreateOffset)
            .SetCellUsing<Vector3>((c, o) => { if (o == default) c.SetCellValue(""); else c.SetCellValue(o.Serialize()); })
            .SetPropertyUsing(cellValue => TryParseVector3(cellValue, out var parsed) ? parsed : null);
        excel.AddMapping<SpellCustomization>(nameof(b.Padding), p => p.Padding)
            .SetCellUsing<Vector3>((c, o) => { if (o == default) c.SetCellValue(""); else c.SetCellValue(o.Serialize()); })
            .SetPropertyUsing(cellValue => TryParseVector3(cellValue, out var parsed) ? parsed : null);
        excel.AddMapping<SpellCustomization>(nameof(b.Peturbation), p => p.Peturbation)
            .SetCellUsing<Vector3>((c, o) => { if (o == default) c.SetCellValue(""); else c.SetCellValue(o.Serialize()); })
            .SetPropertyUsing(cellValue => TryParseVector3(cellValue, out var parsed) ? parsed : null);

        excel.AddMapping<SpellCustomization>(nameof(b.Formula), p => p.Formula)
            .SetCellUsing<List<uint>>((c, o) => { if (o == null || o.Count == 0) c.SetCellValue(""); else c.SetCellValue(string.Join(',', o)); })
            .SetPropertyUsing(cellValue => TryParseList<uint>(cellValue, out var parsed) ? parsed : null);

        excel.AddMapping<SpellCustomization>(nameof(b.Position), p => p.Position)
            .SetCellUsing<Position>((c, o) => { if (o == null || o.LandblockId == default) c.SetCellValue(""); else c.SetCellValue(o.ToLOCString()); })
            .SetPropertyUsing(cellValue => TryParsePosition(cellValue, out var parsed) ? parsed : null);

        excel.AddMapping<SpellCustomization>(nameof(b.PortalLifetime), p => p.PortalLifetime)
            .SetCellUsing<double?>((c, o) => { if (o is null || o == 0) return; else c.SetCellValue(o.ToString()); });
        excel.AddMapping<SpellCustomization>(nameof(b.Duration), p => p.Duration)
            .SetCellUsing<double?>((c, o) => { if (o is null || o == 0) return; else c.SetCellValue(o.ToString()); });
    }

    public static bool TryParseCellEnum<T>(object cellValue, out T parsed, bool requireDefined = false) where T : struct, Enum
    {
        parsed = default;
        return cellValue.TryConvertToEnum(out parsed, requireDefined);
    }

    public static bool TryParseVector3(object vector, out Vector3 result)
    {
        result = default;
        if (vector is not string vectorString || string.IsNullOrEmpty(vectorString))
            return false;

        string[] components = vectorString.Split(',');
        if (components.Length != 3)
            return false;

        float x = float.Parse(components[0]);
        float y = float.Parse(components[1]);
        float z = float.Parse(components[2]);

        result = new Vector3(x, y, z);
        return true;
    }

    public static bool TryParseList<T>(object value, out List<T> result, string separator = ",")
    {
        result = new List<T>();

        if (value is not string input || string.IsNullOrEmpty(input))
            return false;

        string[] items = input.Split(separator);

        foreach (string item in items)
        {
            try
            {
                T converted = (T)Convert.ChangeType(item.Trim(), typeof(T), CultureInfo.InvariantCulture);
                result.Add(converted);
            }
            catch
            {
                return false;
            }
        }

        return true;
    }

    public static bool TryParsePosition(object value, out Position result)
    {
        result = null;

        if (value is not string input || string.IsNullOrEmpty(input))
            return false;

        return input.TryParsePosition(out result);
    }

    public static string Serialize(this Vector3 vector) => $"{vector.X},{vector.Y},{vector.Z}";
}