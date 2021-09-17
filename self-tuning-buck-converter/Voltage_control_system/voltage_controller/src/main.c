#include "buck_converter.h"

void app_main()
{

    init_buck();

    // Declare task handles
    TaskHandle_t VO_controller = NULL;
    
    QueueHandle_t target_voltage_queue;

    // initialise the queues
    target_voltage_queue = xQueueCreate(5, sizeof(float));

    // Create the output voltage control task
    xTaskCreatePinnedToCore(control_loop,      // Voltage control loop function
                            "Vout_controller", // Task name
                            2048,              // Task stack size
                            (void *)&target_voltage_queue,      // Function parameters
                            2,                 // Priority of the task (app_main has priority 1)
                            &VO_controller,    // Task handle
                            tskNO_AFFINITY);   // Core the task has been pinned to (No core selected)

    float input_voltage;
    char input_buffer[20] = {0};
    uint8_t buf_index = 0;

    while (true)
    {
        char input = fgetc(stdin);

        if (input != 0xFF)
        {
            input_buffer[buf_index++] = input; // read in the character, and increment the index
            fputc(input, stdout);              //echo the character back

            if ((input_buffer[buf_index - 1] == '\n'))
            {

                input_voltage = strtof(input_buffer, NULL);

                xQueueSend(target_voltage_queue, (void *)&input_voltage, (TickType_t)1);

                printf("\nInput Target Voltage: %f\n", strtof(input_buffer, NULL));
                buf_index = 0;
            }
        }

        vTaskDelay(1);

        // printf("task stack unused: %d\n\n", uxTaskGetStackHighWaterMark(VO_controller));
        // vTaskDelay(100);
    }
}
