import requests

api_address = 'http://api.openweathermap.org/data/2.5/weather?APPID=aa5031fee8175b3801b195a4a885f30e&lang=fr&q='
city = input("City Name :")
url = api_address + city

json_data = requests.get(url) .json()
formatted_data = json_data['weather'] [0] ['description'] # Nous permet d'affiché la description lors de l'execution du script
print(formatted_data)

# si vous voulez essayer le script : executer le et taper le nom de la ville qui vous interesse :) . *Yann