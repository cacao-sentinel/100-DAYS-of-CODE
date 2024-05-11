import requests
import json
info = input("Type what repo are you feelin today...")
response = requests.get(f"https://github.com/search?q={info}&type=repositories")

json_res = response.json()

print(json_res)