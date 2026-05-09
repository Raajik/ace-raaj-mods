namespace WorldEvents;

internal static class HuntSchedule
{
    // Returns true when nowUtc falls in [startMinute, startMinute + duration) for any configured start (same calendar hour, UTC).
    internal static bool TryGetCurrentSlotUtc(DateTime nowUtc, IReadOnlyList<int> startMinutes, int durationMinutes, out DateTime slotStartUtc, out DateTime slotEndUtc)
    {
        slotStartUtc = default;
        slotEndUtc = default;

        if (durationMinutes <= 0 || startMinutes == null || startMinutes.Count == 0)
            return false;

        var hourFloor = new DateTime(nowUtc.Year, nowUtc.Month, nowUtc.Day, nowUtc.Hour, 0, 0, DateTimeKind.Utc);
        int minute = nowUtc.Minute;

        foreach (var start in startMinutes.OrderBy(m => m))
        {
            if (minute >= start && minute < start + durationMinutes)
            {
                slotStartUtc = hourFloor.AddMinutes(start);
                slotEndUtc = slotStartUtc.AddMinutes(durationMinutes);
                return true;
            }
        }

        return false;
    }
}
