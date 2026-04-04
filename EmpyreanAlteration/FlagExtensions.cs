namespace EmpyreanAlteration;

public static class FlagExtensions
{
    public static IEnumerable<TEnum> GetIndividualFlags<TEnum>() where TEnum : struct, Enum
    {
        foreach (TEnum value in Enum.GetValues<TEnum>())
        {
            ulong u = Convert.ToUInt64(value);
            if (u != 0 && (u & (u - 1)) == 0)
                yield return value;
        }
    }

    public static IEnumerable<TEnum> GetIndividualFlags<TEnum>(this TEnum flags) where TEnum : struct, Enum
    {
        ulong combined = Convert.ToUInt64(flags);
        foreach (TEnum value in Enum.GetValues<TEnum>())
        {
            ulong v = Convert.ToUInt64(value);
            if (v == 0 || (v & (v - 1)) != 0)
                continue;
            if ((combined & v) != 0)
                yield return value;
        }
    }
}
