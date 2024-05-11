import requests
import json
info = input("Type what repo are you feelin today...")
response = requests.get(f"https://github.com/search?q={info}&type=repositories")

json_res = response.json()

dump = json.dumps(json_res)

data = json.loads(dump)

for result in data['payload']['results']:
    repo_name = result['repo']['repository']['name']
    stars = result['followers']
    author = result['repo']['repository']['owner_login']
    last_commit_date = result['repo']['repository']['updated_at']
    language = result['language']
    
    print("Nombre del repositorio:", repo_name)
    print("Cantidad de estrellas:", stars)
    print("Autor:", author)
    print("Fecha del último commit:", last_commit_date)
    print("Lenguaje utilizado:", language)
    print()
