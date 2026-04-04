using System.Linq;

namespace ChallengeModes.Progression;

public class LevelCost
{
    public double C { get; set; }
    public double Rate { get; set; }
    public double Coefficient { get; set; }
    public int Offset { get; set; }
    public GrowthType GrowthType { get; set; }

    public LevelCost(double c = 100, double rate = 2, double coefficient = 2, int offset = 0, GrowthType growthType = GrowthType.Exponential)
    {
        C = c;
        Rate = rate;
        Coefficient = coefficient;
        Offset = offset;
        GrowthType = growthType;
    }

    public long GetTotalCost(long x, long n)
    {
        n += Offset;
        return GrowthType switch
        {
            GrowthType.Polynomial => SumPolynomialCosts(x, n),
            _ => GetTotalCost(x + n) - GetTotalCost(x),
        };
    }

    public long GetTotalCost(long n)
    {
        n += Offset;
        return GrowthType switch
        {
            GrowthType.Linear => (long)((n + 1) * C + (Rate / 2) * n * (n + 1)),
            GrowthType.Exponential => (long)(Rate == 1 ? C * (n + 1) : C * ((1 - Math.Pow(Rate, n + 1)) / (1 - Rate))),
            GrowthType.Polynomial => SumPolynomialCosts(0, n + 1),
            _ => 0,
        };
    }

    public long GetCost(long n)
    {
        n += Offset;
        return GrowthType switch
        {
            GrowthType.Linear => (long)(C + n * Rate),
            GrowthType.Exponential => (long)(C * Math.Pow(Rate, n)),
            GrowthType.Polynomial => (long)(C + Coefficient * Math.Pow(n, Rate)),
            _ => 0,
        };
    }

    // Avoids (int) overflow from Enumerable.Range when spans are huge; uses fast path when safe.
    long SumPolynomialCosts(long startInclusive, long stepCount)
    {
        if (stepCount <= 0)
            return 0;

        if (startInclusive >= 0 && stepCount <= int.MaxValue && startInclusive <= (long)int.MaxValue - stepCount + 1)
        {
            try
            {
                return Enumerable.Range((int)startInclusive, (int)stepCount).Sum(step => GetCost(step));
            }
            catch (ArgumentOutOfRangeException)
            {
                // fall through
            }
        }

        long sum = 0;
        for (long i = 0; i < stepCount; i++)
            sum += GetCost(startInclusive + i);

        return sum;
    }
}

public enum GrowthType
{
    Linear,
    Exponential,
    Polynomial,
}
