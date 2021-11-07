import pyrebase
import os
from dotenv import load_dotenv

load_dotenv()

config = {
  "apiKey": os.getenv("API_KEY"),
  "authDomain": os.getenv("AUTH_DOMAIN"),
  "databaseURL": os.getenv("DATABASE_URL"),
  "storageBucket": os.getenv("STORAGE_BUCKET")
}

firebase = pyrebase.initialize_app(config)

devices = [
  'desk',
  'living_room_cabinet',
  'monitor',
  'plants',
]

db = firebase.database()

for device in devices: 
    db.child('devices/'+device).update({ "on": 1 });
