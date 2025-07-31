// Primary Thread functions

#ifndef PRIMARY_H
#define PRIMARY_H

typedef struct SensorData
{
    float temperature;
    float humidity;
    bool motion_detection;
    int camera_event;
};

// Function declarations
void *primary_thread_routine(void *arg);
void read_all_sensors(SensorData *data);
int detect_anomaly(SensorData *data);
void handle_error(int error_code);


#endif 