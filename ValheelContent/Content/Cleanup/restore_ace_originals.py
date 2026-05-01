import os
import re
import glob
import subprocess

# Config
cleanup_file = r"A:\ai\projects\ace-raaj-mods\ValheelContent\Content\Cleanup\ValheelContent_Disabled_Cleanup.sql"
reference_base = r"A:\ai\projects\ace-raaj-mods\.references\ACE-World-16PY-0.8.8\Database\3-Core\9 WeenieDefaults\SQL"
output_file = r"A:\ai\projects\ace-raaj-mods\ValheelContent\Content\Cleanup\ACE_Originals_Restore.sql"

# 1. Extract deleted WCIDs from cleanup SQL
with open(cleanup_file, 'r') as f:
    content = f.read()

id_lists = re.findall(r'DELETE FROM weenie WHERE class_Id IN \((.*?)\)', content)
all_ids = set()
for id_list in id_lists:
    ids = [int(x.strip()) for x in id_list.split(',')]
    all_ids.update(ids)

# Filter for ACE originals (WCID < 100000)
ace_originals = sorted([wcid for wcid in all_ids if wcid < 100000])
print(f"Total deleted WCIDs: {len(all_ids)}")
print(f"ACE originals to restore (< 100000): {len(ace_originals)}")

# 2. Find matching reference SQL files
reference_files = {}
for root, dirs, files in os.walk(reference_base):
    for file in files:
        if not file.endswith('.sql'):
            continue
        # Extract WCID from filename (format: "00003 Olthoi Worker.sql")
        match = re.match(r'^(\d+)', file)
        if match:
            wcid = int(match.group(1))
            if wcid in ace_originals:
                reference_files[wcid] = os.path.join(root, file)

print(f"Found reference SQL files: {len(reference_files)}")

# 3. Build restoration SQL
missing_refs = []
with open(output_file, 'w', encoding='utf-8') as out:
    out.write("-- ACE Original Weenies Restoration\n")
    out.write(f"-- Restores {len(ace_originals)} ACE original weenies deleted by Valheel cleanup\n")
    out.write("-- Generated from ACE-World-16PY-0.8.8 reference database\n\n")
    
    for wcid in ace_originals:
        if wcid not in reference_files:
            missing_refs.append(wcid)
            continue
        
        ref_path = reference_files[wcid]
        try:
            with open(ref_path, 'r', encoding='utf-8') as f:
                sql_content = f.read().strip()
            if sql_content:
                out.write(f"-- WCID {wcid}\n")
                out.write(sql_content)
                out.write("\n\n")
        except Exception as e:
            print(f"Error reading {ref_path}: {e}")
            missing_refs.append(wcid)

print(f"Missing reference files for {len(missing_refs)} weenies: {missing_refs[:20]}")
print(f"Restoration SQL written to: {output_file}")

# 4. Execute against ace_world via pipe
print("\nExecuting restoration SQL against ace_world...")

# Use cmd.exe to pipe the SQL file into mysql
import shutil
mysql_path = r"C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe"
if not os.path.exists(mysql_path):
    # Try to find mysql.exe
    for path in [r"C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe",
                 r"C:\Program Files (x86)\MySQL\MySQL Server 8.0\bin\mysql.exe"]:
        if os.path.exists(path):
            mysql_path = path
            break

cmd = f'"{mysql_path}" -h 127.0.0.1 -P 3306 -u jeremy -pandersine11 ace_world < "{output_file}"'
result = subprocess.run(cmd, shell=True, capture_output=True, text=True, timeout=300)

print(f"Return code: {result.returncode}")
if result.stderr:
    # Filter out the password warning
    stderr = result.stderr.replace("mysql: [Warning] Using a password on the command line interface can be insecure.\n", "")
    if stderr.strip():
        print(f"Stderr: {stderr[:2000]}")
if result.stdout:
    print(f"Stdout: {result.stdout[:2000]}")

print("\nRestoration complete!")
