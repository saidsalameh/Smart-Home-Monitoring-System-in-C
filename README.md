# Smart-Home-Monitoring-System-in-C
Design and implement a multi-threaded Smart Home Monitoring System in C that simulates sensors, actuator control, error handling, and basic inter-process communication

# Project Directory Structure

smart-home-c-system/
├── src/                        # C source files
│   ├── main.c                  # Entry point (creates threads)
│   ├── primary.c               # Primary thread: TCP server, RTSC scheduler
│   ├── secondary.c             # Secondary thread: logger, MQTT
│   ├── sensors.c               # Simulated sensor protocol parsing
│   ├── buffer.c                # Circular buffer implementation
│   ├── error_handler.c         # Error injection & handler
│   ├── socket_utils.c          # TCP/IP helper functions
│   ├── mqtt_client.c           # MQTT publisher/subscriber
│   ├── watchdog.c              # Watchdog timer logic
│
├── include/                    # Header files
│   ├── primary.h
│   ├── secondary.h
│   ├── sensors.h
│   ├── buffer.h
│   ├── error_handler.h
│   ├── socket_utils.h
│   ├── mqtt_client.h
│   ├── watchdog.h
│   ├── shared_types.h         # Shared data structures (SensorData, config)
│
├── tests/                      # Unit tests (optional for CI)
│   ├── test_buffer.c
│   ├── test_sensors.c
│
├── logs/                       # Sensor data logs (created at runtime)
│   └── log.txt
│
├── webapp/                     # Flask + MQTT dashboard
│   ├── app.py
│   ├── templates/
│   │   └── dashboard.html
│   ├── static/
│       └── style.css
│
├── docker/                     # Docker setup for Flask + MQTT
│   ├── Dockerfile
│   ├── docker-compose.yml
│
├── Makefile                    # Builds the C application
├── README.md
└── config.json                 # Runtime configuration (e.g., IPs, ports)

