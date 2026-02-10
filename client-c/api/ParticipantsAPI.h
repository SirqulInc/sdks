#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/sirqul_response.h"


// Process All Participant Feeds
//
// Processes all supported participant feeds.
//
sirqul_response_t*
ParticipantsAPI_processAllParticipants(apiClient_t *apiClient, double version, long accountId, char *appKey, int *useShortNameAsID);


// Process Participants Feed
//
// Processes a participant feed or uploaded file for a specific league.
//
sirqul_response_t*
ParticipantsAPI_processParticipants(apiClient_t *apiClient, double version, long accountId, char *league, char *appKey, int *useShortNameAsID, binary_t* file);


