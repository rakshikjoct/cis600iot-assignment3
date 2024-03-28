% ThingSpeak Channel ID
channelID = 2482348; 
% ThingSpeak Channel Read API Key 
readAPIKey = 'YCZJK29LFBQ9JRCX'; 

temperatureFieldID = 1; 
humidityFieldID = 2;    
co2FieldID = 3;         
latestTemperature = thingSpeakRead(channelID, 'Fields', temperatureFieldID, 'ReadKey', readAPIKey);
latestHumidity = thingSpeakRead(channelID, 'Fields', humidityFieldID, 'ReadKey', readAPIKey);
latestCO2 = thingSpeakRead(channelID, 'Fields', co2FieldID, 'ReadKey', readAPIKey);

disp(['Latest Temperature: ' num2str(latestTemperature) ' °C']);
disp(['Latest Humidity: ' num2str(latestHumidity) ' %']);
disp(['Latest CO2 Concentration: ' num2str(latestCO2) ' ppm']);

