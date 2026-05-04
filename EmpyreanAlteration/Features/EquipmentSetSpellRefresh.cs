using System.Collections.Generic;
using System.Linq;

namespace EmpyreanAlteration.Features;

// Awakened items skip Player.GrantItemXP; we call into set-spell refresh from AddItemXP postfix.
// Vanilla OnItemLevelUp only considers EquippedObjects, so a cloak leveled in pack never appears in
// setItems, GetSpellSet returns empty, and no tier change applies. ACE also keys ItemXpStyle off
// FirstOrDefault(setItems); put the leveled item first so ScalesWithLevel drives tier.
internal static class EquipmentSetSpellRefresh
{
    internal static void OnAwakenedItemLevelUp(Player owner, WorldObject item, int prevItemLevel)
    {
        if (owner == null || item == null || !item.HasItemSet)
            return;

        if ((item.ItemXpStyle ?? 0) == 0)
            item.SetProperty(PropertyInt.ItemXpStyle, (int)ItemXpStyle.ScalesWithLevel);

        List<WorldObject> setItems = owner.EquippedObjects.Values
            .Where(i => i.HasItemSet && i.EquipmentSetId == item.EquipmentSetId)
            .Where(i => i.Guid.Full != item.Guid.Full)
            .ToList();
        setItems.Insert(0, item);

        int levelDiff = prevItemLevel - (item.ItemLevel ?? 0);
        List<Spell> prevSpells = WorldObject.GetSpellSet(setItems, levelDiff);
        List<Spell> spells = WorldObject.GetSpellSet(setItems);

        owner.EquipDequipItemFromSet(item, spells, prevSpells);
    }
}
