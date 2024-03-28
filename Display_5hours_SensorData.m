channelID = 2482348; 
readAPIKey = 'YCZJK29LFBQ9JRCX'; 
fieldID = 1; 
fieldID2 = 2; 
fieldID3 = 3;
endDate = datetime('now', 'timezone', 'local');
startDate = endDate - hours(5);
[data, time] = thingSpeakRead(channelID, 'Field', fieldID,'DateRange', [startDate, endDate], 'ReadKey', readAPIKey);

% Display the temperature data
disp(['Sensor Data for the Last Five Hours (Field ' num2str(fieldID) '): Temperature']);
for i = 1:length(data)
    disp(['Time: ' datestr(time(i), 'dd-mmm-yyyy HH:MM:SS') ', Value: ' num2str(data(i))]);
end

[data, time] = thingSpeakRead(channelID, 'Field', fieldID2,'DateRange', [startDate, endDate], 'ReadKey', readAPIKey);

% Display the humidity data
disp(['Sensor Data for the Last Five Hours (Field ' num2str(fieldID2) '): Humidity']);
for i = 1:length(data)
    disp(['Time: ' datestr(time(i), 'dd-mmm-yyyy HH:MM:SS') ', Value: ' num2str(data(i))]);
end

[data, time] = thingSpeakRead(channelID, 'Field', fieldID3,'DateRange', [startDate, endDate], 'ReadKey', readAPIKey);

% Display the Co2 data
disp(['Sensor Data for the Last Five Hours (Field ' num2str(fieldID3) '): C02']);
for i = 1:length(data)
    disp(['Time: ' datestr(time(i), 'dd-mmm-yyyy HH:MM:SS') ', Value: ' num2str(data(i))]);
end
