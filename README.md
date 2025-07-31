# Smart-Home-Monitoring-System-in-C
Design and implement a multi-threaded Smart Home Monitoring System in C that simulates sensors, actuator control, error handling, and basic inter-process communication

## Project Directory Structure

- `smart-home-c-system/`
  - `src/` – C source files
    - `main.c` – Entry point (creates threads)
    - `primary.c` – Primary thread: TCP server, RTSC scheduler
    - `secondary.c` – Secondary thread: logger, MQTT publishing
    - `sensors.c` – Parses simulated sensor data from TCP
    - `buffer.c` – Circular buffer for thread-safe data sharing
    - `error_handler.c` – Injects and handles errors
    - `socket_utils.c` – TCP/IP server/client setup helpers
    - `mqtt_client.c` – Publishes sensor data via MQTT
    - `watchdog.c` – Simulates RTOS watchdog timer behavior
  - `include/` – Header files (matching each source file)
    - `primary.h`
    - `secondary.h`
    - `sensors.h`
    - `buffer.h`
    - `error_handler.h`
    - `socket_utils.h`
    - `mqtt_client.h`
    - `watchdog.h`
    - `shared_types.h` – Common data types like `SensorData`
  - `tests/` – Unit test files (optional, e.g., using Ceedling or custom)
    - `test_buffer.c`
    - `test_sensors.c`
  - `logs/` – Sensor data logs (generated at runtime)
    - `log.txt`
  - `webapp/` – Flask + MQTT dashboard for visualization
    - `app.py` – Flask entry point
    - `templates/`
      - `dashboard.html` – UI page to display sensor values
    - `static/`
      - `style.css` – Custom styling for dashboard
  - `docker/` – Docker setup for Flask and MQTT (Mosquitto)
    - `Dockerfile` – Builds Flask container
    - `docker-compose.yml` – Manages Flask + MQTT broker setup
  - `Makefile` – Compiles the C application
  - `README.md` – Project overview and usage instructions
  - `config.json` – Runtime configuration (sensor ports, MQTT broker IP, etc.)
