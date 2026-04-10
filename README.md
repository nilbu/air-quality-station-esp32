# ESP32 Air Quality Monitoring Station

IoT air quality monitoring system based on ESP32, PMS5003 and BME280.

---

## Features

- PM1 / PM2.5 / PM10 measurement (PMS5003)
- Temperature, humidity, pressure (BME280)
- Median filter (removes sensor spikes)
- EMA filter (smooth environmental data)
- Humidity correction for PM measurements
- Sensor duty cycle (reduced wear and heating)
- Auto clean cycle (improves long-term stability)
- Data logging to Google Sheets

---

## Hardware

- ESP32 DevKit
- PMS5003 particulate matter sensor
- BME280 environmental sensor
- Capacitors: 220µF + 100nF (power filtering)

---

## System Architecture

Sensors → ESP32 → WiFi → Google Apps Script → Google Sheets

![Architecture](images/system_architecture.jpg)

---

## Data Processing

This project implements several techniques used in real-world air monitoring systems:

- Median filter (5 samples)
- Exponential Moving Average (EMA)
- Humidity-based correction of PM values
- Physical validation: PM1 ≤ PM2.5 ≤ PM10

---

## Sensor Management

- Duty cycle mode (reduces overheating and dust buildup)
- Cleaning cycle every few hours (airflow flush)

---

## Cloud Integration

Data is sent via HTTP to Google Sheets using Google Apps Script.

---

## Prototype

Breadboard prototype of the air quality monitoring station:

![Prototype](images/prototype.jpg)

---

## Documentation

![Documentation](docs/air_quality_station_documentation.pdf)

---

## Author

Tomek B
