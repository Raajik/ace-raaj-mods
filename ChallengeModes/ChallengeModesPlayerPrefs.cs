namespace ChallengeModes;

// Persisted per character (ChallengeModes/Data/PlayerData/{guid}.json).
public class ChallengeModesPlayerPrefs
{
    // Aptitude (legacy JSON keys preserved).
    public bool Enabled { get; set; }
    public bool PermanentlyOptedOut { get; set; }

    public bool AlternateLevelingEnabled { get; set; }

    public bool SsfPermanentlyDeclined { get; set; }
    public bool HardcorePermanentlyDeclined { get; set; }
    public bool AlternateLevelingPermanentlyDeclined { get; set; }
}
