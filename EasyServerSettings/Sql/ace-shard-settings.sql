-- ============================================================
-- ACE Shard Configuration Settings
-- ============================================================

-- BOOLEAN SETTINGS (config_properties_boolean)
-- ============================================================
UPDATE ace_shard.config_properties_boolean SET `value` = TRUE WHERE `key` = 'account_login_boots_in_use';
-- If FALSE, oldest connection to account is not booted when new connection occurs (default is True)

UPDATE ace_shard.config_properties_boolean SET `value` = TRUE WHERE `key` = 'advanced_combat_pets';
-- (non-retail function) If enabled, Combat Pets can cast spells (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'advocate_fane_auto_bestow';
-- If enabled, Advocate Fane will automatically bestow new advocates to advocate_fane_auto_bestow_level (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'aetheria_heal_color';
-- If enabled, changes the aetheria healing over time messages from the default retail red color to green (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = TRUE WHERE `key` = 'allow_door_hold';
-- Enables retail behavior where standing on a door while it is closing keeps the door as ethereal until it is free from collisions, effectively holding the door open for other players (default is True)

UPDATE ace_shard.config_properties_boolean SET `value` = TRUE WHERE `key` = 'allow_fast_chug';
-- Enables retail behavior where a player can consume food and drink faster than normal by breaking animation (default is True)

UPDATE ace_shard.config_properties_boolean SET `value` = TRUE WHERE `key` = 'allow_jump_loot';
-- Enables retail behavior where a player can quickly loot items while jumping, bypassing the 'crouch down' animation (default is True)

UPDATE ace_shard.config_properties_boolean SET `value` = TRUE WHERE `key` = 'allow_negative_dispel_resist';
-- Enables retail behavior where #-# negative dispels can be resisted (default is True)

UPDATE ace_shard.config_properties_boolean SET `value` = TRUE WHERE `key` = 'allow_negative_rating_curve';
-- Enables retail behavior where negative DRR from void dots didn't switch to the reverse rating formula, resulting in a possibly unintended curve that quickly ramps up as -rating goes down, eventually approaching infinity / divide by 0 for -100 rating. Less than -100 rating would produce negative numbers (default is True)

UPDATE ace_shard.config_properties_boolean SET `value` = TRUE WHERE `key` = 'allow_pkl_bump';
-- Enables retail behavior where /pkl checks for entry collisions, bumping the player position over if standing on another PKLite. This effectively enables /pkl door skipping from retail (default is True)

UPDATE ace_shard.config_properties_boolean SET `value` = TRUE WHERE `key` = 'allow_summoning_killtask_multicredit';
-- Enables retail behavior where a summoner can get multiple killtask credits from a monster (default is True)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'assess_creature_mod';
-- (non-retail function) If enabled, re-enables former skill formula, when assess creature skill is not trained or spec'ed (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'chat_disable_general';
-- Disable general global chat channel (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'chat_disable_lfg';
-- Disable LFG global chat channel (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'chat_disable_olthoi';
-- Disable olthoi global chat channel (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'chat_disable_roleplay';
-- Disable roleplay global chat channel (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'chat_disable_trade';
-- Disable trade global chat channel (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'chat_echo_only';
-- Global chat returns to sender only (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'chat_echo_reject';
-- Global chat returns to sender on reject (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = TRUE WHERE `key` = 'chat_inform_reject';
-- Global chat informs sender on reason for reject (default is True)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'chat_log_abuse';
-- Log abuse chat (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'chat_log_admin';
-- Log admin chat (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'chat_log_advocate';
-- Log advocate chat (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'chat_log_allegiance';
-- Log allegiance chat (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = TRUE WHERE `key` = 'chat_log_audit';
-- Log audit chat (default is True)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'chat_log_debug';
-- Log debug chat (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'chat_log_fellow';
-- Log fellow chat (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'chat_log_general';
-- Log general chat (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'chat_log_global';
-- Log global broadcasts (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'chat_log_help';
-- Log help chat (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'chat_log_lfg';
-- Log LFG chat (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'chat_log_olthoi';
-- Log olthoi chat (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'chat_log_qa';
-- Log QA chat (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'chat_log_roleplay';
-- Log roleplay chat (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'chat_log_sentinel';
-- Log sentinel chat (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'chat_log_society';
-- Log society chat (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'chat_log_trade';
-- Log trade chat (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'chat_log_townchans';
-- Log advocate town chat (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'chat_requires_account_15days';
-- Global chat privileges requires accounts to be 15 days or older (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = TRUE WHERE `key` = 'chess_enabled';
-- If FALSE then chess will be disabled (default is True)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'client_movement_formula';
-- If enabled, server uses DoMotion/StopMotion self-client movement methods instead of apply_raw_movement (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = TRUE WHERE `key` = 'container_opener_name';
-- If enabled, when a player tries to open a container that is already in use by someone else, replaces 'someone else' in the message with the actual name of the player (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'corpse_decay_tick_logging';
-- If ENABLED then player corpse ticks will be logged (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = TRUE WHERE `key` = 'corpse_destroy_pyreals';
-- If FALSE then pyreals will not be completely destroyed on player death (default is True)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'craft_exact_msg';
-- If TRUE, and player has crafting chance of success dialog enabled, shows them an additional message in their chat window with exact % (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = TRUE WHERE `key` = 'creature_name_check';
-- If enabled, creature names in world database restricts player names during character creation (default is True)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'creatures_drop_createlist_wield';
-- If FALSE then Wielded items in CreateList will not drop. Retail defaulted to TRUE but there are currently data errors (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = TRUE WHERE `key` = 'equipmentsetid_enabled';
-- Enable this to allow adding EquipmentSetIDs to loot armor (default is True)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'equipmentsetid_name_decoration';
-- Enable this to add the EquipmentSet name to loot armor name (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = TRUE WHERE `key` = 'fastbuff';
-- If TRUE, enables the fast buffing trick from retail (default is True)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'fellow_busy_no_recruit';
-- If FALSE, fellows can be recruited while they are busy, different from retail (default is True)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'fellow_kt_killer';
-- If FALSE, fellowship kill tasks will share with the fellowship, even if the killer doesn't have the quest (default is True)

UPDATE ace_shard.config_properties_boolean SET `value` = TRUE WHERE `key` = 'fellow_kt_landblock';
-- If TRUE, fellowship kill tasks will share with landblock range (192 distance radius, or entire dungeon) (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = TRUE WHERE `key` = 'fellow_quest_bonus';
-- If TRUE, applies EvenShare formula to fellowship quest reward XP (300% max bonus, defaults to false in retail) (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = TRUE WHERE `key` = 'gateway_ties_summonable';
-- If disabled, players cannot summon ties from gateways. Defaults to enabled, as in retail (default is True)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'house_15day_account';
-- If disabled, houses can be purchased with accounts created less than 15 days old (default is True)

UPDATE ace_shard.config_properties_boolean SET `value` = TRUE WHERE `key` = 'house_30day_cooldown';
-- If disabled, houses can be purchased without waiting 30 days between each purchase (default is True)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'house_hook_limit';
-- If disabled, house hook limits are ignored (default is True)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'house_hookgroup_limit';
-- If disabled, house hook group limits are ignored (default is True)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'house_per_char';
-- If TRUE, allows 1 house per char instead of 1 house per account (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = TRUE WHERE `key` = 'house_purchase_requirements';
-- If disabled, requirements to purchase/rent house are not checked (default is True)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'house_rent_enabled';
-- If FALSE then rent is not required (default is True)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'iou_trades';
-- (non-retail function) If enabled, IOUs can be traded for objects that are missing in DB but added/restored later on (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'item_dispel';
-- If enabled, allows players to dispel items. Defaults to end of retail, where item dispels could only target creatures (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'legacy_loot_system';
-- Use the previous iteration of the ace lootgen system (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = TRUE WHERE `key` = 'lifestone_broadcast_death';
-- If true, player deaths are additionally broadcast to other players standing near the destination lifestone (default is True)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'loot_quality_mod';
-- If FALSE then the loot quality modifier of a Death Treasure profile does not affect loot generation (default is True)

UPDATE ace_shard.config_properties_boolean SET `value` = TRUE WHERE `key` = 'npc_hairstyle_fullrange';
-- If TRUE, allows generated creatures to use full range of hairstyles. Retail only allowed first nine (0-8) out of 51 (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'olthoi_play_enabled';
-- Allows players to create and play as olthoi characters (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = TRUE WHERE `key` = 'override_encounter_spawn_rates';
-- If enabled, landblock encounter spawns are overridden by double properties below (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = TRUE WHERE `key` = 'permit_corpse_all';
-- If TRUE, /permit grants permittees access to all corpses of the permitter. Defaults to FALSE as per retail, where /permit only grants access to 1 locked corpse (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'persist_movement';
-- If TRUE, persists autonomous movements such as turns and sidesteps through non-autonomous server actions. Retail didn't appear to do this, but some players may prefer this (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'pet_stow_replace';
-- Pet stowing for different pet devices becomes a stow and replace. Defaults to retail value of false (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = TRUE WHERE `key` = 'player_config_command';
-- If enabled, players can use /config to change their settings via text commands (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = TRUE WHERE `key` = 'player_receive_immediate_save';
-- If enabled, when the player receives items from an NPC, they will be saved immediately (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'pk_server';
-- Set this to TRUE for darktide servers (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'pk_server_safe_training_academy';
-- Set this to TRUE to disable pk fighting in training academy and time to exit starter town safely (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'pkl_server';
-- Set this to TRUE for pink servers (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = TRUE WHERE `key` = 'quest_info_enabled';
-- Toggles the /myquests player command (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = TRUE WHERE `key` = 'rares_real_time';
-- Allow for second chance roll based on an rng seeded timestamp for a rare on rare eligible kills that do not generate a rare, rares_max_seconds_between defines maximum seconds before second chance kicks in (default is True)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'rares_real_time_v2';
-- Chances for a rare to be generated on rare eligible kills are modified by the last time one was found per each player, rares_max_days_between defines maximum days before guaranteed rare generation (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'runrate_add_hooks';
-- If TRUE, adds some runrate hooks that were missing from retail (exhaustion done, raise skill/attribute) (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'reportbug_enabled';
-- Toggles the /reportbug player command (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = TRUE WHERE `key` = 'require_spell_comps';
-- If FALSE, spell components are no longer required to be in inventory to cast spells. Defaults to enabled, as in retail (default is True)

UPDATE ace_shard.config_properties_boolean SET `value` = TRUE WHERE `key` = 'safe_spell_comps';
-- If TRUE, disables spell component burning for everyone (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = TRUE WHERE `key` = 'salvage_handle_overages';
-- In retail, if 2 salvage bags were combined beyond 100 structure, the overages would be lost (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'show_ammo_buff';
-- Shows active enchantments such as blood drinker on equipped missile ammo during appraisal (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'show_aura_buff';
-- Shows active aura enchantments on wielded items during appraisal (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'show_dat_warning';
-- If TRUE, will alert player (dat_warning_msg) when client attempts to download from server and boot them from game, disabled by default (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'show_dot_messages';
-- If enabled, shows combat messages for DoT damage ticks. Defaults to disabled, as in retail (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'show_first_login_gift';
-- If TRUE, will show on first login that the player earned bonus item (Blackmoor's Favor and/or Asheron's Benediction), disabled by default because msg is kind of odd on an emulator (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = TRUE WHERE `key` = 'show_mana_conv_bonus_0';
-- If disabled, only shows mana conversion bonus if not zero, during appraisal of casting items (default is True)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'smite_uses_takedamage';
-- If enabled, smite applies damage via TakeDamage (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = TRUE WHERE `key` = 'spellcast_recoil_queue';
-- If true, players can queue the next spell to cast during recoil animation (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'spell_projectile_ethereal';
-- Broadcasts all spell projectiles as ethereal to clients only, and manually send stop velocity on collision. Can fix various issues with client missing target id (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'suicide_instant_death';
-- If enabled, @die command kills player instantly. Defaults to disabled, as in retail (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = TRUE WHERE `key` = 'taboo_table';
-- If enabled, taboo table restricts player names during character creation (default is True)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'tailoring_intermediate_uieffects';
-- If true, tailoring intermediate icons retain the magical/elemental highlight of the original item (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'trajectory_alt_solver';
-- Use the alternate trajectory solver for missiles and spell projectiles (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = TRUE WHERE `key` = 'universal_masteries';
-- If TRUE, matches end of retail masteries - players wielding almost any weapon get +5 DR, except if the weapon "seems tough to master". If FALSE, players start with mastery of 1 melee and 1 ranged weapon type based on heritage, and can later re-select these 2 masteries (default is True)

UPDATE ace_shard.config_properties_boolean SET `value` = TRUE WHERE `key` = 'use_generator_rotation_offset';
-- Enables or disables using the generator's current rotation when offsetting relative positions (default is True)

UPDATE ace_shard.config_properties_boolean SET `value` = TRUE WHERE `key` = 'use_turbine_chat';
-- Enables or disables global chat channels (General, LFG, Roleplay, Trade, Olthoi, Society, Allegiance) (default is True)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'use_wield_requirements';
-- Disable this to bypass wield requirements. Mostly for dev debugging (default is True)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'version_info_enabled';
-- Toggles the /aceversion player command (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'vendor_shop_uses_generator';
-- Enables or disables vendors using generator system in addition to createlist to create artificial scarcity (default is False)

UPDATE ace_shard.config_properties_boolean SET `value` = FALSE WHERE `key` = 'world_closed';
-- Enable this to startup world as a closed to players world (default is False)

-- ============================================================
-- INTEGER/LONG SETTINGS (config_properties_long)
-- ============================================================
UPDATE ace_shard.config_properties_long SET `value` = 30 WHERE `key` = 'char_delete_time';
-- The amount of time in seconds a deleted character can be restored (default is 3600)

UPDATE ace_shard.config_properties_long SET `value` = 0 WHERE `key` = 'chat_requires_account_time_seconds';
-- The amount of time in seconds an account is required to have existed for global chat privileges (default is 0)

UPDATE ace_shard.config_properties_long SET `value` = 0 WHERE `key` = 'chat_requires_player_age';
-- The amount of time in seconds a player is required to have played for global chat privileges (default is 0)

UPDATE ace_shard.config_properties_long SET `value` = 0 WHERE `key` = 'chat_requires_player_level';
-- The level a player is required to have for global chat privileges (default is 0)

UPDATE ace_shard.config_properties_long SET `value` = 15 WHERE `key` = 'corpse_spam_limit';
-- The number of corpses a player is allowed to leave on a landblock at one time (default is 15)

UPDATE ace_shard.config_properties_long SET `value` = 4 WHERE `key` = 'default_subscription_level';
-- Retail defaults to 1. 1 = standard subscription (same as 2 and 3), 4 grants ToD pre-order bonus item Asheron's Benediction (default is 1)

UPDATE ace_shard.config_properties_long SET `value` = 1 WHERE `key` = 'fellowship_even_share_level';
-- Level when fellowship XP sharing is no longer restricted (default is 50)

UPDATE ace_shard.config_properties_long SET `value` = 1 WHERE `key` = 'mansion_min_rank';
-- Overrides the default allegiance rank required to own a mansion (default is 6)

UPDATE ace_shard.config_properties_long SET `value` = 20 WHERE `key` = 'max_chars_per_account';
-- Retail defaults to 11, client supports up to 20 (default is 11)

UPDATE ace_shard.config_properties_long SET `value` = 20 WHERE `key` = 'pk_timer';
-- The number of seconds where a player cannot perform certain actions (ie. teleporting) after becoming involved in a PK battle (default is 20)

UPDATE ace_shard.config_properties_long SET `value` = 30 WHERE `key` = 'player_save_interval';
-- The number of seconds between automatic player saves (default is 300)

UPDATE ace_shard.config_properties_long SET `value` = 45 WHERE `key` = 'rares_max_days_between';
-- For rares_real_time_v2: the maximum number of days a player can go before a rare is generated on rare eligible creature kills (default is 45)

UPDATE ace_shard.config_properties_long SET `value` = 5256000 WHERE `key` = 'rares_max_seconds_between';
-- For rares_real_time: the maximum number of seconds a player can go before a second chance at a rare is allowed on rare eligible creature kills that did not generate a rare (default is 5256000)

UPDATE ace_shard.config_properties_long SET `value` = 5 WHERE `key` = 'summoning_killtask_multicredit_cap';
-- If allow_summoning_killtask_multicredit is enabled, the maximum # of killtask credits a player can receive from 1 kill (default is 2)

UPDATE ace_shard.config_properties_long SET `value` = 0 WHERE `key` = 'teleport_visibility_fix';
-- Fixes some possible issues with invisible players and mobs. 0 = default / disabled, 1 = players only, 2 = creatures, 3 = all world objects (default is 0)

-- ============================================================
-- DOUBLE/FLOAT SETTINGS (config_properties_double)
-- ============================================================
UPDATE ace_shard.config_properties_double SET `value` = 1.0 WHERE `key` = 'cantrip_drop_rate';
-- Scales the chance for cantrips to drop in each tier. Defaults to 1.0, as per end of retail (default is 1)

UPDATE ace_shard.config_properties_double SET `value` = 1.0 WHERE `key` = 'minor_cantrip_drop_rate';
-- Scales the chance for minor cantrips to drop, relative to other cantrip levels in the tier. Defaults to 1.0, as per end of retail (default is 1)

UPDATE ace_shard.config_properties_double SET `value` = 1.0 WHERE `key` = 'major_cantrip_drop_rate';
-- Scales the chance for major cantrips to drop, relative to other cantrip levels in the tier. Defaults to 1.0, as per end of retail (default is 1)

UPDATE ace_shard.config_properties_double SET `value` = 1.0 WHERE `key` = 'epic_cantrip_drop_rate';
-- Scales the chance for epic cantrips to drop, relative to other cantrip levels in the tier. Defaults to 1.0, as per end of retail (default is 1)

UPDATE ace_shard.config_properties_double SET `value` = 1.0 WHERE `key` = 'legendary_cantrip_drop_rate';
-- Scales the chance for legendary cantrips to drop, relative to other cantrip levels in the tier. Defaults to 1.0, as per end of retail (default is 1)

UPDATE ace_shard.config_properties_double SET `value` = 1.0 WHERE `key` = 'advocate_fane_auto_bestow_level';
-- The level that advocates are automatically bestowed by Advocate Fane if advocate_fane_auto_bestow is true (default is 1)

UPDATE ace_shard.config_properties_double SET `value` = 10.0 WHERE `key` = 'aetheria_drop_rate';
-- Modifier for Aetheria drop rate, 1 being normal (default is 1)

UPDATE ace_shard.config_properties_double SET `value` = -1.0 WHERE `key` = 'chess_ai_start_time';
-- The number of seconds for the chess AI to start. Defaults to -1 (disabled) (default is -1)

UPDATE ace_shard.config_properties_double SET `value` = 30.0 WHERE `key` = 'encounter_delay';
-- The number of seconds a generator profile for regions is delayed from returning to free slots (default is 1800)

UPDATE ace_shard.config_properties_double SET `value` = 30.0 WHERE `key` = 'encounter_regen_interval';
-- The number of seconds a generator for regions at which spawns its next set of objects (default is 600)

UPDATE ace_shard.config_properties_double SET `value` = 1.2 WHERE `key` = 'fast_missile_modifier';
-- The speed multiplier applied to fast missiles. Defaults to retail value of 1.2 (default is 1.2)

UPDATE ace_shard.config_properties_double SET `value` = 1.0 WHERE `key` = 'ignore_magic_armor_pvp_scalar';
-- Scales the effectiveness of IgnoreMagicArmor (ie. hollow weapons) in pvp battles. 1.0 = full effectiveness / ignore all enchantments on armor (default), 0.5 = half effectiveness / use half enchantments from armor, 0.0 = no effectiveness / use full enchantments from armor (default is 1)

UPDATE ace_shard.config_properties_double SET `value` = 1.0 WHERE `key` = 'ignore_magic_resist_pvp_scalar';
-- Scales the effectiveness of IgnoreMagicResist (ie. hollow weapons) in pvp battles. 1.0 = full effectiveness / ignore all resistances from life enchantments (default), 0.5 = half effectiveness / use half resistances from life enchantments, 0.0 = no effectiveness / use full resistances from life enchantments (default is 1)

UPDATE ace_shard.config_properties_double SET `value` = 100.0 WHERE `key` = 'luminance_modifier';
-- Scales the amount of luminance received by players (default is 1)

UPDATE ace_shard.config_properties_double SET `value` = 0.0 WHERE `key` = 'melee_max_angle';
-- For melee players, the maximum angle before a TurnTo is required. Retail appeared to have required a TurnTo even for the smallest of angle offsets (default is 0)

UPDATE ace_shard.config_properties_double SET `value` = 3.0 WHERE `key` = 'mob_awareness_range';
-- Scales the distance the monsters become alerted and aggro the players (default is 1)

UPDATE ace_shard.config_properties_double SET `value` = 300.0 WHERE `key` = 'pk_new_character_grace_period';
-- The number of seconds, in addition to pk_respite_timer, that a player killer is set to non-player killer status after first exiting training academy (default is 300)

UPDATE ace_shard.config_properties_double SET `value` = 300.0 WHERE `key` = 'pk_respite_timer';
-- The number of seconds that a player killer is set to non-player killer status after dying to another player killer (default is 300)

UPDATE ace_shard.config_properties_double SET `value` = 1 WHERE `key` = 'quest_mindelta_rate';
-- Scales all quest min delta time between solves, 1 being normal (default is 1)

UPDATE ace_shard.config_properties_double SET `value` = 0.04 WHERE `key` = 'rare_drop_rate_percent';
-- Adjust the chance of a rare to spawn as a percentage. Default is 0.04, or 1 in 2,500. Max is 100, or every eligible drop (default is 0.04)

UPDATE ace_shard.config_properties_double SET `value` = 20.0 WHERE `key` = 'spellcast_max_angle';
-- For advanced player spell casting, the maximum angle to target release a spell projectile. Retail seemed to default to value of around 20, although some players seem to prefer a higher 45 degree angle (default is 20)

UPDATE ace_shard.config_properties_double SET `value` = 5.0 WHERE `key` = 'trophy_drop_rate';
-- Modifier for trophies dropped on creature death (default is 1)

UPDATE ace_shard.config_properties_double SET `value` = 30.0 WHERE `key` = 'unlocker_window';
-- The number of seconds a player unlocking a chest has exclusive access to first opening the chest (default is 10)

UPDATE ace_shard.config_properties_double SET `value` = 10800 WHERE `key` = 'vendor_unique_rot_time';
-- The number of seconds before unique items sold to vendors disappear (default is 300)

UPDATE ace_shard.config_properties_double SET `value` = 0.01 WHERE `key` = 'vitae_penalty';
-- The amount of vitae penalty a player gets per death (default is 0.05)

UPDATE ace_shard.config_properties_double SET `value` = 0.1 WHERE `key` = 'vitae_penalty_max';
-- The maximum vitae penalty a player can have (default is 0.4)

UPDATE ace_shard.config_properties_double SET `value` = 0.5 WHERE `key` = 'void_pvp_modifier';
-- Scales the amount of damage players take from Void Magic. Defaults to 0.5, as per retail. For earlier content where DRR isn't as readily available, this can be adjusted for balance (default is 0.5)

UPDATE ace_shard.config_properties_double SET `value` = 1.0 WHERE `key` = 'xp_modifier';
-- Scales the amount of xp received by players (default is 1)

-- ============================================================
-- STRING SETTINGS (config_properties_string)
-- ============================================================
-- UPDATE ace_shard.config_properties_string SET `value` = NULL WHERE `key` = 'content_folder';
-- -- For content creators to live edit weenies. Defaults to Content folder found in same directory as ACE.Server.dll (default is hidden)

-- UPDATE ace_shard.config_properties_string SET `value` = NULL WHERE `key` = 'dat_warning_msg';
-- -- Warning message displayed (if show_dat_warning is true) to player if client attempts DAT download from server (default is hidden)

-- UPDATE ace_shard.config_properties_string SET `value` = NULL WHERE `key` = 'popup_header';
-- -- Welcome message displayed when you log in (default is hidden)

-- UPDATE ace_shard.config_properties_string SET `value` = NULL WHERE `key` = 'popup_welcome';
-- -- Welcome message popup in training halls (default is hidden)

-- UPDATE ace_shard.config_properties_string SET `value` = NULL WHERE `key` = 'popup_welcome_olthoi';
-- -- Welcome message displayed on the first login for an Olthoi Player (default is hidden)

-- UPDATE ace_shard.config_properties_string SET `value` = NULL WHERE `key` = 'popup_motd';
-- -- Popup message of the day (default is hidden)

-- UPDATE ace_shard.config_properties_string SET `value` = NULL WHERE `key` = 'server_motd';
-- -- Server message of the day (default is hidden)
