from datetime import datetime
import json
import os

import requests


BASEROW_TOKEN = os.getenv("BASEROW_TOKEN")
BASEROW_URL = os.getenv("BASEROW_URL")

BASEROW_TABLE_IDS = os.getenv("BASEROW_TABLE_IDS").split(",")

for table_id in BASEROW_TABLE_IDS:

    params = {
        "user_field_names": True,
        "size": 1000
    }

    req = requests.get(
        f"{BASEROW_URL}/api/database/fields/table/{table_id}/",
        headers={
            "Authorization": f"Token {BASEROW_TOKEN}"
        }, params=params, timeout=5)

    fields = req.json()

    req = requests.get(
        f"{BASEROW_URL}/api/database/rows/table/{table_id}/",
        headers={
            "Authorization": f"Token {BASEROW_TOKEN}"
        }, params=params, timeout=5)

    rows = req.json().get("results")

    now = datetime.utcnow().strftime("%Y-%m-%d-%H-%M-%S")
    data = {
        "fields": fields,
        "rows": rows,
        "now": now
    }

    filename = now + "-" + table_id + ".json"
    full_path = os.path.join("backup", filename)
    with open(full_path, mode="w", encoding="utf-8") as f:
        f.write(json.dumps(data, indent=4))
