#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/game_response.h"
#include "../model/sirqul_response.h"


// Create a Game
//
// Create a Game.
//
game_response_t*
GameAPI_createGame(apiClient_t *apiClient, long accountId, char *appKey, char *title, char *description, char *metaData, char *packIds, int *includeGameData);


// Delete a Game
//
// Delete a game.
//
sirqul_response_t*
GameAPI_deleteGame(apiClient_t *apiClient, long accountId, long gameId);


// Get a Game by id
//
// Get a Game by id.
//
game_response_t*
GameAPI_getGame(apiClient_t *apiClient, long accountId, long gameId, int *includeGameData);


// Search a Game
//
// Get a list of games for an application, just those the account has permissions to view.
//
game_response_t*
GameAPI_searchGames(apiClient_t *apiClient, long accountId, char *appKey, int *start, int *limit, char *keyword, char *appVersion, int *includeGameData, int *includeInactive);


// Update a Game
//
// Update a Game
//
game_response_t*
GameAPI_updateGame(apiClient_t *apiClient, long accountId, long gameId, char *appKey, char *title, char *description, char *metaData, char *packIds, int *includeGameData);


