-- Fresh ACRealms "Dust" instance — empty databases for Config.js (dust_ace_auth, dust_ace_shard, dust_ace_world).
-- Apply once: mysql -u jeremy -pandersine11 -e "source ..." OR paste into Workbench.
-- Server applies schema on first start when Offline.AutoApplyDatabaseUpdates is true.

CREATE DATABASE IF NOT EXISTS dust_ace_auth CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
CREATE DATABASE IF NOT EXISTS dust_ace_shard CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
CREATE DATABASE IF NOT EXISTS dust_ace_world CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
