# Data folder

This folder documents the expected data layout. Raw or restricted institutional data should not be committed to GitHub.

## Folders

| Folder | Use | GitHub policy |
|---|---|---|
| `example/` | synthetic or public demo data | allowed |
| `raw/` | raw institutional inputs | not committed |
| `interim/` | intermediate data | not committed |
| `processed/` | processed analytical data | usually not committed unless authorized |

Document every real input in `metadata/data_sources.yml` and `metadata/checksums.csv`.
