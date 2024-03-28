# Virtual Environmental IoT Monitoring System

## Project Overview

This project aims to build a virtual IoT system that collects environmental information using virtual sensors and publishes this data using the MQTT protocol. The system is designed to:

- Collect data from a set of virtual sensors deployed to monitor environmental parameters such as temperature, humidity, and CO2 levels.
- Display the latest sensor data values received from all sensors of a specified environmental station.
- Display sensor data values received during the last five hours from all environmental stations for a specified sensor.

## Components

- **Python Script**: Collects environmental data using virtual sensors and publishes it to ThingSpeak using MQTT.
- **MATLAB Analysis Code**: Retrieves and displays data from ThingSpeak for analysis and visualization.

## Prerequisites

- Python 3.x
- Paho MQTT Python client (`paho-mqtt`)
- A ThingSpeak account with a channel set up for collecting environmental data
- MATLAB (for analyzing and visualizing the data collected)

## Python Dependencies

Install the required Python package:

```
pip install paho-mqtt
```

## Setup and Configuration

1. **ThingSpeak Setup**:
   - Create a new channel in ThingSpeak.
   - Note your Channel ID and generate MQTT API keys for publishing and reading data.
   - Create a new MQTT Device and add the authorized channel to the device

2. **Python Script Configuration**:
   - Replace the placeholders in the Python script (`channel_id`, `mqtt_host`, `mqtt_clientid`, `mqtt_username`, `mqtt_password`) with your ThingSpeak channel details and credentials.

3. **MATLAB Configuration**:
   - In the MATLAB code, replace `channelID` and `readAPIKey` with your ThingSpeak channel ID and Read API Key.

## Running the System

### Data Collection and Publishing

- Run the Python script to start collecting and publishing sensor data to ThingSpeak:

```bash
python path/to/your_script.py
```

### Data Analysis and Display

- Open Matlab Analysis for the channel on ThingSpeak and run the provided scripts to analyze and visualize the data collected from ThingSpeak:
  - For displaying the latest data values, use the relevant section of the MATLAB code.
  - For displaying data from the last five hours, use the provided MATLAB code snippet corresponding to this requirement.
