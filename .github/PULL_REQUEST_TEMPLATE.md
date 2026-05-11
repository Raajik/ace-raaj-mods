---
name: Feature / Fix
about: Standard PR template with Immutable Source of Truth checklist
---

## Summary

*Brief description of the change. What does it do and why?*

## Changes

- [ ] Feature X: Implemented Y behavior (link to design doc if applicable)
- [ ] Bug fix: Z issue resolved
- [ ] Refactor: ...

## Immutable Source of Truth Checklist

### Feature Ownership
- [ ] New feature has an owning mod assigned (not duplicating another mod's responsibility)
- [ ] If feature already exists in another mod, this PR uses its API/reflection bridge instead of re-implementing
- [ ] `FEATURE_MATRIX.md` updated with new feature entry (or ownership change)
- [ ] `FEATURE_TRUTH.md` updated with new registry entry (or ownership change)

### Documentation
- [ ] Mod README.md updated (or created if missing) with feature description
- [ ] If new feature: `Docs/FeatureTemplate.md` followed for design doc (or linked to mod README)
- [ ] If SQL changes: docs/Windblown-Custom-Trophy-Settings.md updated (for trophy WCIDs)

### Configuration
- [ ] `Settings.cs` updated with C# defaults (new settings)
- [ ] Repo `Settings.json` updated with template values for new keys
- [ ] Test server `C:\ACE\Mods\<Mod>\Settings.json` NOT overwritten (manually merge new keys only)
- [ ] If Settings.json layout changed: test server file has new keys merged in

### Database (if applicable)
- [ ] SQL scripts placed under `Content/SQL/` (or mod's Content directory)
- [ ] Scripts applied to `ace_world` (test) and verified with `SELECT`
- [ ] Backup created under `sql-backups/YYYY-MM-DD/` before SQL apply
- [ ] Biota cleanup script included if existing items need updates

### Build & Test
- [ ] `dotnet build` succeeds for affected mod(s)
- [ ] Deployed to test server (`C:\ACE\`)
- [ ] Verified in-game behavior

### Git Hygiene
- [ ] Descriptive commit message (references feature, issue, or design doc)
- [ ] No unrelated files in the diff
- [ ] `git status -sb` shows only intended changes
- [ ] `COMPLETED.md` updated with dated entry (if feature shipped)
- [ ] `PLAN.md` trimmed (remove completed items)
