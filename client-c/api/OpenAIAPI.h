#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/wrapped_proxy_item_response.h"


// Generate images with OpenAI
//
// Generate images with OpenAI.
//
wrapped_proxy_item_response_t*
OpenAIAPI_imageGeneration(apiClient_t *apiClient, long accountId, char *postBody, int *returnRawResponse);


