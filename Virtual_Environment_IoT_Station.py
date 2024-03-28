import paho.mqtt.publish as publish
import random
import time
import uuid

station_id = str(uuid.uuid4())

# ThingSpeak Channel Settings
channel_id = "2482348"
mqtt_host = "mqtt3.thingspeak.com"

# MQTT Credentials (If needed, otherwise set as None)
mqtt_clientid="LS85HQkuHDwXCgQrACcuIy4"
mqtt_username = "LS85HQkuHDwXCgQrACcuIy4" 
mqtt_password = "RclYhvajoXRJ1yVGSncwBAb3"

def generate_sensor_values():
    temperature = random.uniform(-50, 50)  # Temperature range: -50 to 50 Celsius
    humidity = random.uniform(0, 100)      # Humidity range: 0 to 100%
    co2 = random.uniform(300, 2000)        # CO2 range: 300ppm to 2000ppm
    return temperature, humidity, co2

def publish_sensor_values():
    temperature, humidity, co2 = generate_sensor_values()
    payload = f"field1={temperature}&field2={humidity}&field3={co2}"
    
    # Publish to ThingSpeak
    publish.single(topic=f"channels/{channel_id}/publish",
                   payload=payload,
                   hostname=mqtt_host,
                   port=1883,
                   client_id=mqtt_clientid,
                   auth={'username': mqtt_username, 'password': mqtt_password})
    print(f"Published Temperature: {temperature}, Humidity: {humidity}, CO2: {co2}")

try:
    while True:
        publish_sensor_values()
        time.sleep(20)  # ThingSpeak free account has an update limit of 15 seconds
except KeyboardInterrupt:
    print("Simulation stopped by the user")