#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/sirqul_response.h"


// Run Workflow
//
// Runs a published executable workflow
//
sirqul_response_t*
WorkflowAPI_runWorkflow(apiClient_t *apiClient, long accountId, long workflowId, long skuId, int *versionCode, char *parameters);


