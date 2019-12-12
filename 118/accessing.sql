SELECT CAST(CAST('{"name": "Postgres", "version": "12.1.0", "versionInfo": {"major": 12, "minor": 1, "patch": 0}}' AS JSONB) -> 'versionInfo' -> 'major' AS INT);
