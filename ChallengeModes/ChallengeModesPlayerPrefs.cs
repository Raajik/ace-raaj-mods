namespace ChallengeModes;

// Persisted per-character; used for opt-in and permanent lockout.
public class ChallengeModesPlayerPrefs
{
    public bool Enabled { get; set; }
    public bool PermanentlyOptedOut { get; set; }
}
