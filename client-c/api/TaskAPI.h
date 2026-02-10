#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/sirqul_response.h"
#include "../model/task_response.h"

// Enum VISIBILITY for TaskAPI_createTask
typedef enum  { sirqul_iot_platform_createTask_VISIBILITY_NULL = 0, sirqul_iot_platform_createTask_VISIBILITY__PUBLIC, sirqul_iot_platform_createTask_VISIBILITY__PRIVATE, sirqul_iot_platform_createTask_VISIBILITY_FRIENDS } sirqul_iot_platform_createTask_visibility_e;

// Enum VISIBILITY for TaskAPI_updateTask
typedef enum  { sirqul_iot_platform_updateTask_VISIBILITY_NULL = 0, sirqul_iot_platform_updateTask_VISIBILITY__PUBLIC, sirqul_iot_platform_updateTask_VISIBILITY__PRIVATE, sirqul_iot_platform_updateTask_VISIBILITY_FRIENDS } sirqul_iot_platform_updateTask_visibility_e;


// Create Task
//
// Create a Task
//
task_response_t*
TaskAPI_createTask(apiClient_t *apiClient, double version, long accountId, char *name, char *appKey, char *groupingId, char *endpointURL, char *payload, long scheduledDate, long startDate, long endDate, char *cronExpression, sirqul_iot_platform_createTask_visibility_e visibility, int *active);


// Delete Task
//
// Delete a Task
//
sirqul_response_t*
TaskAPI_deleteTask(apiClient_t *apiClient, double version, long accountId, long taskId);


// Get Task
//
// Get a Task
//
task_response_t*
TaskAPI_getTask(apiClient_t *apiClient, double version, long accountId, long taskId);


// Search Tasks
//
// Search on Tasks
//
list_t*
TaskAPI_searchTasks(apiClient_t *apiClient, double version, long accountId, char *groupingId, char *filter, char *statuses, char *templateTypes, char *appKey, char *keyword, char *sortField, int *descending, int *start, int *limit, int *activeOnly);


// Update Task
//
// Update a Task
//
task_response_t*
TaskAPI_updateTask(apiClient_t *apiClient, double version, long taskId, long accountId, char *name, char *appKey, char *groupingId, char *endpointURL, char *payload, long scheduledDate, long startDate, long endDate, char *cronExpression, sirqul_iot_platform_updateTask_visibility_e visibility, int *active);


