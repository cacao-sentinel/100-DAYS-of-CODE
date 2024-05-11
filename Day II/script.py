import requests
import json
info = input("Type what repo are you feelin today... ")
response = requests.get(f"https://github.com/search?q={info}&type=repositories")

json_res = response.json()

dump = json.dumps(json_res)

data = json.loads(dump)
n = 0
for result in data['payload']['results']:
    n = n +1
    repo_name = result['repo']['repository']['name']
    stars = result['followers']
    author = result['repo']['repository']['owner_login']
    last_commit_date = result['repo']['repository']['updated_at']
    language = result['language']
    
    print(f"{n}.-Repo Name:", repo_name)
    print("Stars:", stars)
    print("Author:", author)
    print("Last commit:", last_commit_date)
    print("Made with:", language)
    print()

