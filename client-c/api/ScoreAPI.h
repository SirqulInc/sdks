#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/score_response.h"


// Create Score
//
// Create a score.  The response object will contain a series of   coded messages detailing what items were completed, the score registered,   and any tickets allocated.  Scoring a  level could complete the pack it   is in, completing that pack could complete the game, which  in turn could   complete the mission.  This completion chain is indicated to the client   via  a list of {@link MessageResponse}.
//
score_response_t*
ScoreAPI_createScore(apiClient_t *apiClient, double version, long accountId, char *appKey, int *points, long missionId, long gameId, long packId, long gameLevelId, long gameObjectId, int *timeTaken, int *highest);


// Get Score
//
// Get the high score for an item.  Pass in the full path IDs for the score.
//
score_response_t*
ScoreAPI_getScore(apiClient_t *apiClient, double version, long accountId, char *appKey, long missionId, long gameId, long packId, long gameLevelId, long gameObjectId, char *scoreObjectType, char *scoreStatus);


// Search Score
//
// Search the scores for an item.  Pass in the full path IDs for the scores.
//
list_t*
ScoreAPI_searchScores(apiClient_t *apiClient, double version, long accountId, char *appKey, long missionId, long gameId, long packId, long gameLevelId, long gameObjectId);


