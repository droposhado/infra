"""Get movie and episodes metadata from trakt.tv"""

from datetime import datetime
import json
import os
import sys

import requests


HERE = os.path.dirname(os.path.abspath(__file__))
TRAKTTV_DATA_PATH = os.getenv('TRAKTTV_DATA_PATH')

TRAKTTV_TOKEN = os.getenv('TRAKTTV_TOKEN', None)
TRAKTTV_CLIENT_ID = os.getenv('TRAKTTV_CLIENT_ID', None)


headers = {
  'Content-Type': 'application/json',
  'Authorization': f"Bearer {TRAKTTV_TOKEN}",
  'trakt-api-version': '2',
  'trakt-api-key': TRAKTTV_CLIENT_ID
}

params = {
    'extended': 'full',
    'limit': 9999
}

r = requests.get('https://api.trakt.tv/sync/history/', headers=headers,
                 params=params)

data = r.json()

if data is None:
    print('ERROR', "Data payload not is valid")
    print(json.dumps(data, indent=4))
    sys.exit(1)

now = datetime.utcnow().strftime("%Y-%m-%d-%H-%M-%S")
episode_path = os.path.join(TRAKTTV_DATA_PATH, now, "episode")
if not os.path.exists(episode_path):
    os.makedirs(episode_path)

movie_path = os.path.join(TRAKTTV_DATA_PATH, now, "movie")
if not os.path.exists(movie_path):
    os.makedirs(movie_path)

for i in data:

    if i['action'] != 'watch':
        continue

    item_id = i['id']
    item_type = i.get('type')

    if item_type not in ('movie', 'episode'):
        continue

    abs_path = os.path.join(TRAKTTV_DATA_PATH, now, item_type,
                            str(item_id) + '.json')
    print('FILE', abs_path)

    if os.path.exists(abs_path):
        print('ERROR', f"{item_id} already exists")
        sys.exit(1)

    with open(abs_path, mode='w', encoding='utf8') as f:
        json.dump(i, f, indent=4)

    print('DONE', abs_path)
