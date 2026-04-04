namespace Numbersmith.Patches;
    [HarmonyPatch]
    [HarmonyPatchCategory(nameof(PlayerPowerMod))]
    public class PlayerPowerMod : AngouriMathPatch
    {
        #region Fields / Props   
        public override string Formula { get; set; } = "x + .5";
        protected override Dictionary<string, MType> Variables { get; } = new()
        {
            ["x"] = MType.Float,    // Power mod
                                    // Mod multiplier
        };

        static Func<float, float> func = null!;
        #endregion

        #region Start / Stop
        public override void Start()
        {
            //If you can parse the formulas patch the corresponding category
            if (Formula.TryGetFunction(out func, Variables.TypesAndNames()))
                Mod.Instance.Harmony.PatchCategory(nameof(PlayerPowerMod));
            else
                throw new Exception($"Failure parsing formula: {Formula}");
        }
        #endregion

        #region Patches
        [HarmonyPrefix]
        [HarmonyPatch(typeof(Player), nameof(Player.GetPowerMod), new Type[] { typeof(WorldObject) })]
        public static bool PreGetPowerMod(WorldObject weapon, ref Player __instance, ref float __result)
        {
            if (func is null)
                return true;

            //1f for ranged
            if (weapon is null || weapon.IsRanged)
                __result = 1.0f;
            else
                __result = func(__instance.PowerLevel);

            return false;
        }
        #endregion
    }