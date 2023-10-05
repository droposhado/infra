import os

from github import Github


TOKEN = os.getenv("GITHUB_TOKEN")
WEBHOOK_RELAY = os.getenv("WEBHOOK_RELAY")
GITHUB_SECRET = os.getenv("GITHUB_SECRET")
SKIP = [
    "cloud.docker.com",
    "registry.hub.docker.com"
]
config = {
    "url": WEBHOOK_RELAY,
    "content_type": "json",
    "insecure_ssl": 0,
    "secret": GITHUB_SECRET
}
events = ["*"]

g = Github(TOKEN)

for repo in g.get_user().get_repos():

    for hook in repo.get_hooks():

        payload_url = hook.config.get("url")
        if payload_url in SKIP:
            print("SKIP", payload_URL)
            continue

        hook.delete()

    if repo.archived:
        print("SKIP", "archived repo")
        continue

    #repo.create_hook("web", config, events, active=True)
    print("DONE", repo.name)
