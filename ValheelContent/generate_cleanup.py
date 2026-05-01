import os
import re
import json

# Config
content_path = r"A:\ai\projects\ace-raaj-mods\ValheelContent\Content"
disabled_folders = [
    "01-event",
    "02-quest",
    "03-weenie/Admin Stuff",
    "03-weenie/Alt Currencies",
    "03-weenie/Arken Drake Armor",
    "03-weenie/Ascended Gear",
    "03-weenie/Boss Raids",
    "03-weenie/Bug Hunting",
    "03-weenie/Buildings",
    "03-weenie/Cards",
    "03-weenie/Casino",
    "03-weenie/Class Ability Files",
    "03-weenie/Class Aetheria",
    "03-weenie/Class Selection",
    "03-weenie/Colo 2.0",
    "03-weenie/Community Events",
    "03-weenie/Cooldown Gems",
    "03-weenie/Dark Throwing Phials",
    "03-weenie/Dummies",
    "03-weenie/Endless Components",
    "03-weenie/EoR Custom Weenies",
    "03-weenie/Facility Hub",
    "03-weenie/Fractures",
    "03-weenie/Gauntlet Raids",
    "03-weenie/Godtheria",
    "03-weenie/Gunblade Questline",
    "03-weenie/HardCore Content",
    "03-weenie/Holtburg Academy",
    "03-weenie/Housing",
    "03-weenie/Killtasks",
    "03-weenie/Luminium Gear",
    "03-weenie/Mining",
    "03-weenie/Misc",
    "03-weenie/New Roulea",
    "03-weenie/NewContent",
    "03-weenie/Ninwah's Judgement",
    "03-weenie/Operative Tasks",
    "03-weenie/Pack Markers",
    "03-weenie/Pets",
    "03-weenie/Placeholders",
    "03-weenie/Priceless Gems",
    "03-weenie/Prologue",
    "03-weenie/Scy's Lever Labyrinth",
    "03-weenie/Seasonal",
    "03-weenie/Shemtar's Cows",
    "03-weenie/Speed Runs",
    "03-weenie/Starter Island",
    "03-weenie/StructureGen",
    "03-weenie/Supporter Content",
    "03-weenie/Tower of Trials",
    "03-weenie/Transcendent",
    "03-weenie/Tusker Island",
    "03-weenie/Ultra Salvage",
    "03-weenie/ValHeel Exchange",
    "03-weenie/World Bosses",
    "03-weenie/z10 Chapter Ten",
    "03-weenie/z1Chapter One",
    "03-weenie/z2Chapter Two",
    "03-weenie/z3Chapter Three",
    "03-weenie/z4Chapter Four",
    "03-weenie/z5Chapter Five",
    "03-weenie/z6Chapter Six",
    "03-weenie/z7Chapter Seven",
    "03-weenie/z8Chapter Eight",
    "03-weenie/z9Chapter Nine",
    "04-recipe",
    "05-treasure"
]

enabled_files = [
    "03-weenie/Buildings/1000005 townnetworkplatform.sql"
]

# Regex patterns for extracting weenie IDs
weenie_patterns = [
    re.compile(r'INSERT\s+INTO\s+[`\']?weenie[`\']?\s*.*?VALUES\s*\(\s*(\d+)\s*,'),
    re.compile(r'VALUES\s*\(\s*(\d+)\s*,\s*[\'\"][^\'\"]*[\'\"]\s*,\s*\d+\s*,'),
    re.compile(r'class_Id\s*=\s*(\d+)'),
]

landblock_patterns = [
    re.compile(r'VALUES\s*\([^,]+,\s*(\d+)\s*,\s*0x[0-9a-fA-F]+'),
]

def extract_ids_from_sql(filepath):
    """Extract weenie IDs from an SQL file."""
    ids = set()
    try:
        with open(filepath, 'r', encoding='utf-8', errors='ignore') as f:
            content = f.read()
            for pattern in weenie_patterns:
                for match in pattern.finditer(content):
                    ids.add(int(match.group(1)))
    except Exception as e:
        print(f"Error reading {filepath}: {e}")
    return ids

def is_disabled_file(rel_path, disabled_folders, enabled_files):
    """Check if a file should be skipped based on disabled folders, unless explicitly enabled."""
    rel_path = rel_path.replace('\\', '/')
    
    # Check if explicitly enabled
    for ef in enabled_files:
        ef_norm = ef.replace('\\', '/').strip('/')
        if rel_path == ef_norm or rel_path.startswith(ef_norm + '/'):
            return False
    
    # Check if in disabled folder
    for df in disabled_folders:
        df_norm = df.replace('\\', '/').strip('/')
        if rel_path.startswith(df_norm + '/') or rel_path == df_norm:
            return True
    
    return False

# Collect all weenie IDs from disabled folders
all_weenie_ids = set()
all_landblock_ids = set()
processed_files = 0

for df in disabled_folders:
    folder_path = os.path.join(content_path, df)
    if not os.path.exists(folder_path):
        print(f"Folder not found: {folder_path}")
        continue
    
    for root, dirs, files in os.walk(folder_path):
        for file in files:
            if not file.endswith('.sql'):
                continue
            
            full_path = os.path.join(root, file)
            rel_path = os.path.relpath(full_path, content_path).replace('\\', '/')
            
            if is_disabled_file(rel_path, disabled_folders, enabled_files):
                ids = extract_ids_from_sql(full_path)
                all_weenie_ids.update(ids)
                processed_files += 1

print(f"Processed {processed_files} SQL files")
print(f"Found {len(all_weenie_ids)} unique weenie IDs")

# Generate cleanup SQL
output_path = r"A:\ai\projects\ace-raaj-mods\ValheelContent\Content\Cleanup\ValheelContent_Disabled_Cleanup.sql"
os.makedirs(os.path.dirname(output_path), exist_ok=True)

with open(output_path, 'w', encoding='utf-8') as f:
    f.write("-- ValheelContent Disabled Content Cleanup\n")
    f.write("-- This script removes all weenies and landblock instances for disabled content categories\n")
    f.write(f"-- Generated for {len(disabled_folders)} disabled folders, {len(all_weenie_ids)} weenies\n\n")
    
    if not all_weenie_ids:
        f.write("-- No weenie IDs found to clean up.\n")
    else:
        id_list = sorted(all_weenie_ids)
        
        # Chunk IDs to avoid overly long SQL lines
        chunk_size = 500
        for i in range(0, len(id_list), chunk_size):
            chunk = id_list[i:i + chunk_size]
            id_str = ', '.join(str(id) for id in chunk)
            
            f.write(f"-- Chunk {i // chunk_size + 1}\n")
            f.write(f"DELETE FROM weenie_properties_int WHERE object_Id IN ({id_str});\n")
            f.write(f"DELETE FROM weenie_properties_int64 WHERE object_Id IN ({id_str});\n")
            f.write(f"DELETE FROM weenie_properties_bool WHERE object_Id IN ({id_str});\n")
            f.write(f"DELETE FROM weenie_properties_float WHERE object_Id IN ({id_str});\n")
            f.write(f"DELETE FROM weenie_properties_string WHERE object_Id IN ({id_str});\n")
            f.write(f"DELETE FROM weenie_properties_d_i_d WHERE object_Id IN ({id_str});\n")
            f.write(f"DELETE FROM weenie_properties_i_i_d WHERE object_Id IN ({id_str});\n")
            f.write(f"DELETE FROM weenie_properties_attribute WHERE object_Id IN ({id_str});\n")
            f.write(f"DELETE FROM weenie_properties_attribute_2nd WHERE object_Id IN ({id_str});\n")
            f.write(f"DELETE FROM weenie_properties_skill WHERE object_Id IN ({id_str});\n")
            f.write(f"DELETE FROM weenie_properties_spell_book WHERE object_Id IN ({id_str});\n")
            f.write(f"DELETE FROM weenie_properties_emote WHERE object_Id IN ({id_str});\n")
            f.write(f"DELETE FROM weenie_properties_event_filter WHERE object_Id IN ({id_str});\n")
            f.write(f"DELETE FROM weenie_properties_create_list WHERE object_Id IN ({id_str});\n")
            f.write(f"DELETE FROM weenie_properties_book WHERE object_Id IN ({id_str});\n")
            f.write(f"DELETE FROM weenie_properties_book_page_data WHERE object_Id IN ({id_str});\n")
            f.write(f"DELETE FROM weenie_properties_generator WHERE object_Id IN ({id_str});\n")
            f.write(f"DELETE FROM weenie_properties_palette WHERE object_Id IN ({id_str});\n")
            f.write(f"DELETE FROM weenie_properties_texture_map WHERE object_Id IN ({id_str});\n")
            f.write(f"DELETE FROM weenie_properties_anim_part WHERE object_Id IN ({id_str});\n")
            f.write(f"DELETE FROM landblock_instance WHERE weenie_Class_Id IN ({id_str});\n")
            f.write(f"DELETE FROM weenie WHERE class_Id IN ({id_str});\n")
            f.write("\n")
        
        f.write("-- Cleanup complete.\n")

print(f"Cleanup SQL written to: {output_path}")
print(f"Total weenie IDs: {len(all_weenie_ids)}")
