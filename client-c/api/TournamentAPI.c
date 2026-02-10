#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "TournamentAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21

// Functions for enum SPLITREWARD for TournamentAPI_createTournament

static char* createTournament_SPLITREWARD_ToString(sirqul_iot_platform_createTournament_splitReward_e SPLITREWARD){
    char *SPLITREWARDArray[] =  { "NULL", "EVEN", "ALL", "FIRST", "RANDOM" };
    return SPLITREWARDArray[SPLITREWARD];
}

static sirqul_iot_platform_createTournament_splitReward_e createTournament_SPLITREWARD_FromString(char* SPLITREWARD){
    int stringToReturn = 0;
    char *SPLITREWARDArray[] =  { "NULL", "EVEN", "ALL", "FIRST", "RANDOM" };
    size_t sizeofArray = sizeof(SPLITREWARDArray) / sizeof(SPLITREWARDArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(SPLITREWARD, SPLITREWARDArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function createTournament_SPLITREWARD_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *createTournament_SPLITREWARD_convertToJSON(sirqul_iot_platform_createTournament_splitReward_e SPLITREWARD) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "splitReward", createTournament_SPLITREWARD_ToString(SPLITREWARD)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function createTournament_SPLITREWARD_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_createTournament_splitReward_e createTournament_SPLITREWARD_parseFromJSON(cJSON* SPLITREWARDJSON) {
    sirqul_iot_platform_createTournament_splitReward_e SPLITREWARDVariable = 0;
    cJSON *SPLITREWARDVar = cJSON_GetObjectItemCaseSensitive(SPLITREWARDJSON, "splitReward");
    if(!cJSON_IsString(SPLITREWARDVar) || (SPLITREWARDVar->valuestring == NULL))
    {
        goto end;
    }
    SPLITREWARDVariable = createTournament_SPLITREWARD_FromString(SPLITREWARDVar->valuestring);
    return SPLITREWARDVariable;
end:
    return 0;
}
*/

// Functions for enum MISSIONTYPE for TournamentAPI_createTournament

static char* createTournament_MISSIONTYPE_ToString(sirqul_iot_platform_createTournament_missionType_e MISSIONTYPE){
    char *MISSIONTYPEArray[] =  { "NULL", "TOURNAMENT", "POOLPLAY", "MULTISTAGE" };
    return MISSIONTYPEArray[MISSIONTYPE];
}

static sirqul_iot_platform_createTournament_missionType_e createTournament_MISSIONTYPE_FromString(char* MISSIONTYPE){
    int stringToReturn = 0;
    char *MISSIONTYPEArray[] =  { "NULL", "TOURNAMENT", "POOLPLAY", "MULTISTAGE" };
    size_t sizeofArray = sizeof(MISSIONTYPEArray) / sizeof(MISSIONTYPEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(MISSIONTYPE, MISSIONTYPEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function createTournament_MISSIONTYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *createTournament_MISSIONTYPE_convertToJSON(sirqul_iot_platform_createTournament_missionType_e MISSIONTYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "missionType", createTournament_MISSIONTYPE_ToString(MISSIONTYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function createTournament_MISSIONTYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_createTournament_missionType_e createTournament_MISSIONTYPE_parseFromJSON(cJSON* MISSIONTYPEJSON) {
    sirqul_iot_platform_createTournament_missionType_e MISSIONTYPEVariable = 0;
    cJSON *MISSIONTYPEVar = cJSON_GetObjectItemCaseSensitive(MISSIONTYPEJSON, "missionType");
    if(!cJSON_IsString(MISSIONTYPEVar) || (MISSIONTYPEVar->valuestring == NULL))
    {
        goto end;
    }
    MISSIONTYPEVariable = createTournament_MISSIONTYPE_FromString(MISSIONTYPEVar->valuestring);
    return MISSIONTYPEVariable;
end:
    return 0;
}
*/

// Functions for enum VISIBILITY for TournamentAPI_createTournament

static char* createTournament_VISIBILITY_ToString(sirqul_iot_platform_createTournament_visibility_e VISIBILITY){
    char *VISIBILITYArray[] =  { "NULL", "PUBLIC", "LISTABLE", "REWARDABLE", "TRIGGERABLE", "PRIVATE" };
    return VISIBILITYArray[VISIBILITY];
}

static sirqul_iot_platform_createTournament_visibility_e createTournament_VISIBILITY_FromString(char* VISIBILITY){
    int stringToReturn = 0;
    char *VISIBILITYArray[] =  { "NULL", "PUBLIC", "LISTABLE", "REWARDABLE", "TRIGGERABLE", "PRIVATE" };
    size_t sizeofArray = sizeof(VISIBILITYArray) / sizeof(VISIBILITYArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(VISIBILITY, VISIBILITYArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function createTournament_VISIBILITY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *createTournament_VISIBILITY_convertToJSON(sirqul_iot_platform_createTournament_visibility_e VISIBILITY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "visibility", createTournament_VISIBILITY_ToString(VISIBILITY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function createTournament_VISIBILITY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_createTournament_visibility_e createTournament_VISIBILITY_parseFromJSON(cJSON* VISIBILITYJSON) {
    sirqul_iot_platform_createTournament_visibility_e VISIBILITYVariable = 0;
    cJSON *VISIBILITYVar = cJSON_GetObjectItemCaseSensitive(VISIBILITYJSON, "visibility");
    if(!cJSON_IsString(VISIBILITYVar) || (VISIBILITYVar->valuestring == NULL))
    {
        goto end;
    }
    VISIBILITYVariable = createTournament_VISIBILITY_FromString(VISIBILITYVar->valuestring);
    return VISIBILITYVariable;
end:
    return 0;
}
*/

// Functions for enum INCLUDESCORES for TournamentAPI_getTournament

static char* getTournament_INCLUDESCORES_ToString(sirqul_iot_platform_getTournament_includeScores_e INCLUDESCORES){
    char *INCLUDESCORESArray[] =  { "NULL", "ALL", "MINE" };
    return INCLUDESCORESArray[INCLUDESCORES];
}

static sirqul_iot_platform_getTournament_includeScores_e getTournament_INCLUDESCORES_FromString(char* INCLUDESCORES){
    int stringToReturn = 0;
    char *INCLUDESCORESArray[] =  { "NULL", "ALL", "MINE" };
    size_t sizeofArray = sizeof(INCLUDESCORESArray) / sizeof(INCLUDESCORESArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(INCLUDESCORES, INCLUDESCORESArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function getTournament_INCLUDESCORES_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *getTournament_INCLUDESCORES_convertToJSON(sirqul_iot_platform_getTournament_includeScores_e INCLUDESCORES) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "includeScores", getTournament_INCLUDESCORES_ToString(INCLUDESCORES)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function getTournament_INCLUDESCORES_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_getTournament_includeScores_e getTournament_INCLUDESCORES_parseFromJSON(cJSON* INCLUDESCORESJSON) {
    sirqul_iot_platform_getTournament_includeScores_e INCLUDESCORESVariable = 0;
    cJSON *INCLUDESCORESVar = cJSON_GetObjectItemCaseSensitive(INCLUDESCORESJSON, "includeScores");
    if(!cJSON_IsString(INCLUDESCORESVar) || (INCLUDESCORESVar->valuestring == NULL))
    {
        goto end;
    }
    INCLUDESCORESVariable = getTournament_INCLUDESCORES_FromString(INCLUDESCORESVar->valuestring);
    return INCLUDESCORESVariable;
end:
    return 0;
}
*/

// Functions for enum SORTFIELD for TournamentAPI_searchObjects

static char* searchObjects_SORTFIELD_ToString(sirqul_iot_platform_searchObjects_sortField_e SORTFIELD){
    char *SORTFIELDArray[] =  { "NULL", "ID", "PLAYER_SCORE_COUNT" };
    return SORTFIELDArray[SORTFIELD];
}

static sirqul_iot_platform_searchObjects_sortField_e searchObjects_SORTFIELD_FromString(char* SORTFIELD){
    int stringToReturn = 0;
    char *SORTFIELDArray[] =  { "NULL", "ID", "PLAYER_SCORE_COUNT" };
    size_t sizeofArray = sizeof(SORTFIELDArray) / sizeof(SORTFIELDArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(SORTFIELD, SORTFIELDArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function searchObjects_SORTFIELD_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *searchObjects_SORTFIELD_convertToJSON(sirqul_iot_platform_searchObjects_sortField_e SORTFIELD) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "sortField", searchObjects_SORTFIELD_ToString(SORTFIELD)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function searchObjects_SORTFIELD_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_searchObjects_sortField_e searchObjects_SORTFIELD_parseFromJSON(cJSON* SORTFIELDJSON) {
    sirqul_iot_platform_searchObjects_sortField_e SORTFIELDVariable = 0;
    cJSON *SORTFIELDVar = cJSON_GetObjectItemCaseSensitive(SORTFIELDJSON, "sortField");
    if(!cJSON_IsString(SORTFIELDVar) || (SORTFIELDVar->valuestring == NULL))
    {
        goto end;
    }
    SORTFIELDVariable = searchObjects_SORTFIELD_FromString(SORTFIELDVar->valuestring);
    return SORTFIELDVariable;
end:
    return 0;
}
*/

// Functions for enum MISSIONTYPE for TournamentAPI_searchRounds

static char* searchRounds_MISSIONTYPE_ToString(sirqul_iot_platform_searchRounds_missionType_e MISSIONTYPE){
    char *MISSIONTYPEArray[] =  { "NULL", "TOURNAMENT", "POOLPLAY" };
    return MISSIONTYPEArray[MISSIONTYPE];
}

static sirqul_iot_platform_searchRounds_missionType_e searchRounds_MISSIONTYPE_FromString(char* MISSIONTYPE){
    int stringToReturn = 0;
    char *MISSIONTYPEArray[] =  { "NULL", "TOURNAMENT", "POOLPLAY" };
    size_t sizeofArray = sizeof(MISSIONTYPEArray) / sizeof(MISSIONTYPEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(MISSIONTYPE, MISSIONTYPEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function searchRounds_MISSIONTYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *searchRounds_MISSIONTYPE_convertToJSON(sirqul_iot_platform_searchRounds_missionType_e MISSIONTYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "missionType", searchRounds_MISSIONTYPE_ToString(MISSIONTYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function searchRounds_MISSIONTYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_searchRounds_missionType_e searchRounds_MISSIONTYPE_parseFromJSON(cJSON* MISSIONTYPEJSON) {
    sirqul_iot_platform_searchRounds_missionType_e MISSIONTYPEVariable = 0;
    cJSON *MISSIONTYPEVar = cJSON_GetObjectItemCaseSensitive(MISSIONTYPEJSON, "missionType");
    if(!cJSON_IsString(MISSIONTYPEVar) || (MISSIONTYPEVar->valuestring == NULL))
    {
        goto end;
    }
    MISSIONTYPEVariable = searchRounds_MISSIONTYPE_FromString(MISSIONTYPEVar->valuestring);
    return MISSIONTYPEVariable;
end:
    return 0;
}
*/

// Functions for enum FILTER for TournamentAPI_searchTournaments

static char* searchTournaments_FILTER_ToString(sirqul_iot_platform_searchTournaments_filter_e FILTER){
    char *FILTERArray[] =  { "NULL", "ALL", "UPCOMING", "PAST", "PRESENT", "ACTIVE" };
    return FILTERArray[FILTER];
}

static sirqul_iot_platform_searchTournaments_filter_e searchTournaments_FILTER_FromString(char* FILTER){
    int stringToReturn = 0;
    char *FILTERArray[] =  { "NULL", "ALL", "UPCOMING", "PAST", "PRESENT", "ACTIVE" };
    size_t sizeofArray = sizeof(FILTERArray) / sizeof(FILTERArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(FILTER, FILTERArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function searchTournaments_FILTER_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *searchTournaments_FILTER_convertToJSON(sirqul_iot_platform_searchTournaments_filter_e FILTER) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "filter", searchTournaments_FILTER_ToString(FILTER)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function searchTournaments_FILTER_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_searchTournaments_filter_e searchTournaments_FILTER_parseFromJSON(cJSON* FILTERJSON) {
    sirqul_iot_platform_searchTournaments_filter_e FILTERVariable = 0;
    cJSON *FILTERVar = cJSON_GetObjectItemCaseSensitive(FILTERJSON, "filter");
    if(!cJSON_IsString(FILTERVar) || (FILTERVar->valuestring == NULL))
    {
        goto end;
    }
    FILTERVariable = searchTournaments_FILTER_FromString(FILTERVar->valuestring);
    return FILTERVariable;
end:
    return 0;
}
*/

// Functions for enum SORTFIELD for TournamentAPI_searchTournaments

static char* searchTournaments_SORTFIELD_ToString(sirqul_iot_platform_searchTournaments_sortField_e SORTFIELD){
    char *SORTFIELDArray[] =  { "NULL", "ACTIVE", "TITLE", "DESCRIPTION", "CREATED", "UPDATED", "MISSION_TYPE", "OWNER_DISPLAY", "START_DATE", "END_DATE", "STARTING_LIMIT", "AVAILABLE_LIMIT", "INVITE_COUNT", "ACCEPTED_COUNT" };
    return SORTFIELDArray[SORTFIELD];
}

static sirqul_iot_platform_searchTournaments_sortField_e searchTournaments_SORTFIELD_FromString(char* SORTFIELD){
    int stringToReturn = 0;
    char *SORTFIELDArray[] =  { "NULL", "ACTIVE", "TITLE", "DESCRIPTION", "CREATED", "UPDATED", "MISSION_TYPE", "OWNER_DISPLAY", "START_DATE", "END_DATE", "STARTING_LIMIT", "AVAILABLE_LIMIT", "INVITE_COUNT", "ACCEPTED_COUNT" };
    size_t sizeofArray = sizeof(SORTFIELDArray) / sizeof(SORTFIELDArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(SORTFIELD, SORTFIELDArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function searchTournaments_SORTFIELD_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *searchTournaments_SORTFIELD_convertToJSON(sirqul_iot_platform_searchTournaments_sortField_e SORTFIELD) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "sortField", searchTournaments_SORTFIELD_ToString(SORTFIELD)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function searchTournaments_SORTFIELD_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_searchTournaments_sortField_e searchTournaments_SORTFIELD_parseFromJSON(cJSON* SORTFIELDJSON) {
    sirqul_iot_platform_searchTournaments_sortField_e SORTFIELDVariable = 0;
    cJSON *SORTFIELDVar = cJSON_GetObjectItemCaseSensitive(SORTFIELDJSON, "sortField");
    if(!cJSON_IsString(SORTFIELDVar) || (SORTFIELDVar->valuestring == NULL))
    {
        goto end;
    }
    SORTFIELDVariable = searchTournaments_SORTFIELD_FromString(SORTFIELDVar->valuestring);
    return SORTFIELDVariable;
end:
    return 0;
}
*/

// Functions for enum SPLITREWARD for TournamentAPI_updateTournament

static char* updateTournament_SPLITREWARD_ToString(sirqul_iot_platform_updateTournament_splitReward_e SPLITREWARD){
    char *SPLITREWARDArray[] =  { "NULL", "EVEN", "ALL", "FIRST", "RANDOM" };
    return SPLITREWARDArray[SPLITREWARD];
}

static sirqul_iot_platform_updateTournament_splitReward_e updateTournament_SPLITREWARD_FromString(char* SPLITREWARD){
    int stringToReturn = 0;
    char *SPLITREWARDArray[] =  { "NULL", "EVEN", "ALL", "FIRST", "RANDOM" };
    size_t sizeofArray = sizeof(SPLITREWARDArray) / sizeof(SPLITREWARDArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(SPLITREWARD, SPLITREWARDArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function updateTournament_SPLITREWARD_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *updateTournament_SPLITREWARD_convertToJSON(sirqul_iot_platform_updateTournament_splitReward_e SPLITREWARD) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "splitReward", updateTournament_SPLITREWARD_ToString(SPLITREWARD)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function updateTournament_SPLITREWARD_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_updateTournament_splitReward_e updateTournament_SPLITREWARD_parseFromJSON(cJSON* SPLITREWARDJSON) {
    sirqul_iot_platform_updateTournament_splitReward_e SPLITREWARDVariable = 0;
    cJSON *SPLITREWARDVar = cJSON_GetObjectItemCaseSensitive(SPLITREWARDJSON, "splitReward");
    if(!cJSON_IsString(SPLITREWARDVar) || (SPLITREWARDVar->valuestring == NULL))
    {
        goto end;
    }
    SPLITREWARDVariable = updateTournament_SPLITREWARD_FromString(SPLITREWARDVar->valuestring);
    return SPLITREWARDVariable;
end:
    return 0;
}
*/

// Functions for enum VISIBILITY for TournamentAPI_updateTournament

static char* updateTournament_VISIBILITY_ToString(sirqul_iot_platform_updateTournament_visibility_e VISIBILITY){
    char *VISIBILITYArray[] =  { "NULL", "PUBLIC", "LISTABLE", "REWARDABLE", "TRIGGERABLE", "PRIVATE" };
    return VISIBILITYArray[VISIBILITY];
}

static sirqul_iot_platform_updateTournament_visibility_e updateTournament_VISIBILITY_FromString(char* VISIBILITY){
    int stringToReturn = 0;
    char *VISIBILITYArray[] =  { "NULL", "PUBLIC", "LISTABLE", "REWARDABLE", "TRIGGERABLE", "PRIVATE" };
    size_t sizeofArray = sizeof(VISIBILITYArray) / sizeof(VISIBILITYArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(VISIBILITY, VISIBILITYArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function updateTournament_VISIBILITY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *updateTournament_VISIBILITY_convertToJSON(sirqul_iot_platform_updateTournament_visibility_e VISIBILITY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "visibility", updateTournament_VISIBILITY_ToString(VISIBILITY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function updateTournament_VISIBILITY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_updateTournament_visibility_e updateTournament_VISIBILITY_parseFromJSON(cJSON* VISIBILITYJSON) {
    sirqul_iot_platform_updateTournament_visibility_e VISIBILITYVariable = 0;
    cJSON *VISIBILITYVar = cJSON_GetObjectItemCaseSensitive(VISIBILITYJSON, "visibility");
    if(!cJSON_IsString(VISIBILITYVar) || (VISIBILITYVar->valuestring == NULL))
    {
        goto end;
    }
    VISIBILITYVariable = updateTournament_VISIBILITY_FromString(VISIBILITYVar->valuestring);
    return VISIBILITYVariable;
end:
    return 0;
}
*/


// Create Tournament
//
// Create a tournament.
//
tournament_response_t*
TournamentAPI_createTournament(apiClient_t *apiClient, double version, long accountId, char *appKey, char *title, int *costToPlay, long startDate, char *subType, long imageAssetId, int *secondsBetweenLevels, int *secondsForTieBreaker, int *secondsBetweenPacks, int *maximumLevelLength, char *costToPlayType, int *minimumToPlay, int *startingLimit, int *availableLimit, char *description, char *metaData, char *audienceIds, int *active, int *enableBuyBack, char *offerIds, long offerAssetId, int *fixedReward, sirqul_iot_platform_createTournament_splitReward_e splitReward, int *allocateTickets, char *tournamentData, sirqul_iot_platform_createTournament_missionType_e missionType, sirqul_iot_platform_createTournament_visibility_e visibility, int *preliminaryGroups, char *preliminaryGroupAdvancements, int *enableMultipleEntries, int *enableMultipleVotes, int *featured, char *winnerTag, char *tieTag)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/api/{version}/tournament/create");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }

    // query parameters
    char *keyQuery_appKey = NULL;
    char * valueQuery_appKey = NULL;
    keyValuePair_t *keyPairQuery_appKey = 0;
    if (appKey)
    {
        keyQuery_appKey = strdup("appKey");
        valueQuery_appKey = strdup((appKey));
        keyPairQuery_appKey = keyValuePair_create(keyQuery_appKey, valueQuery_appKey);
        list_addElement(localVarQueryParameters,keyPairQuery_appKey);
    }

    // query parameters
    char *keyQuery_title = NULL;
    char * valueQuery_title = NULL;
    keyValuePair_t *keyPairQuery_title = 0;
    if (title)
    {
        keyQuery_title = strdup("title");
        valueQuery_title = strdup((title));
        keyPairQuery_title = keyValuePair_create(keyQuery_title, valueQuery_title);
        list_addElement(localVarQueryParameters,keyPairQuery_title);
    }

    // query parameters
    char *keyQuery_subType = NULL;
    char * valueQuery_subType = NULL;
    keyValuePair_t *keyPairQuery_subType = 0;
    if (subType)
    {
        keyQuery_subType = strdup("subType");
        valueQuery_subType = strdup((subType));
        keyPairQuery_subType = keyValuePair_create(keyQuery_subType, valueQuery_subType);
        list_addElement(localVarQueryParameters,keyPairQuery_subType);
    }

    // query parameters
    char *keyQuery_imageAssetId = NULL;
    char * valueQuery_imageAssetId ;
    keyValuePair_t *keyPairQuery_imageAssetId = 0;
    {
        keyQuery_imageAssetId = strdup("imageAssetId");
        valueQuery_imageAssetId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_imageAssetId, MAX_NUMBER_LENGTH_LONG, "%d", imageAssetId);
        keyPairQuery_imageAssetId = keyValuePair_create(keyQuery_imageAssetId, valueQuery_imageAssetId);
        list_addElement(localVarQueryParameters,keyPairQuery_imageAssetId);
    }

    // query parameters
    char *keyQuery_secondsBetweenLevels = NULL;
    char * valueQuery_secondsBetweenLevels = NULL;
    keyValuePair_t *keyPairQuery_secondsBetweenLevels = 0;
    if (secondsBetweenLevels)
    {
        keyQuery_secondsBetweenLevels = strdup("secondsBetweenLevels");
        valueQuery_secondsBetweenLevels = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_secondsBetweenLevels, MAX_NUMBER_LENGTH, "%d", *secondsBetweenLevels);
        keyPairQuery_secondsBetweenLevels = keyValuePair_create(keyQuery_secondsBetweenLevels, valueQuery_secondsBetweenLevels);
        list_addElement(localVarQueryParameters,keyPairQuery_secondsBetweenLevels);
    }

    // query parameters
    char *keyQuery_secondsForTieBreaker = NULL;
    char * valueQuery_secondsForTieBreaker = NULL;
    keyValuePair_t *keyPairQuery_secondsForTieBreaker = 0;
    if (secondsForTieBreaker)
    {
        keyQuery_secondsForTieBreaker = strdup("secondsForTieBreaker");
        valueQuery_secondsForTieBreaker = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_secondsForTieBreaker, MAX_NUMBER_LENGTH, "%d", *secondsForTieBreaker);
        keyPairQuery_secondsForTieBreaker = keyValuePair_create(keyQuery_secondsForTieBreaker, valueQuery_secondsForTieBreaker);
        list_addElement(localVarQueryParameters,keyPairQuery_secondsForTieBreaker);
    }

    // query parameters
    char *keyQuery_secondsBetweenPacks = NULL;
    char * valueQuery_secondsBetweenPacks = NULL;
    keyValuePair_t *keyPairQuery_secondsBetweenPacks = 0;
    if (secondsBetweenPacks)
    {
        keyQuery_secondsBetweenPacks = strdup("secondsBetweenPacks");
        valueQuery_secondsBetweenPacks = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_secondsBetweenPacks, MAX_NUMBER_LENGTH, "%d", *secondsBetweenPacks);
        keyPairQuery_secondsBetweenPacks = keyValuePair_create(keyQuery_secondsBetweenPacks, valueQuery_secondsBetweenPacks);
        list_addElement(localVarQueryParameters,keyPairQuery_secondsBetweenPacks);
    }

    // query parameters
    char *keyQuery_maximumLevelLength = NULL;
    char * valueQuery_maximumLevelLength = NULL;
    keyValuePair_t *keyPairQuery_maximumLevelLength = 0;
    if (maximumLevelLength)
    {
        keyQuery_maximumLevelLength = strdup("maximumLevelLength");
        valueQuery_maximumLevelLength = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_maximumLevelLength, MAX_NUMBER_LENGTH, "%d", *maximumLevelLength);
        keyPairQuery_maximumLevelLength = keyValuePair_create(keyQuery_maximumLevelLength, valueQuery_maximumLevelLength);
        list_addElement(localVarQueryParameters,keyPairQuery_maximumLevelLength);
    }

    // query parameters
    char *keyQuery_costToPlay = NULL;
    char * valueQuery_costToPlay = NULL;
    keyValuePair_t *keyPairQuery_costToPlay = 0;
    if (costToPlay)
    {
        keyQuery_costToPlay = strdup("costToPlay");
        valueQuery_costToPlay = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_costToPlay, MAX_NUMBER_LENGTH, "%d", *costToPlay);
        keyPairQuery_costToPlay = keyValuePair_create(keyQuery_costToPlay, valueQuery_costToPlay);
        list_addElement(localVarQueryParameters,keyPairQuery_costToPlay);
    }

    // query parameters
    char *keyQuery_costToPlayType = NULL;
    char * valueQuery_costToPlayType = NULL;
    keyValuePair_t *keyPairQuery_costToPlayType = 0;
    if (costToPlayType)
    {
        keyQuery_costToPlayType = strdup("costToPlayType");
        valueQuery_costToPlayType = strdup((costToPlayType));
        keyPairQuery_costToPlayType = keyValuePair_create(keyQuery_costToPlayType, valueQuery_costToPlayType);
        list_addElement(localVarQueryParameters,keyPairQuery_costToPlayType);
    }

    // query parameters
    char *keyQuery_minimumToPlay = NULL;
    char * valueQuery_minimumToPlay = NULL;
    keyValuePair_t *keyPairQuery_minimumToPlay = 0;
    if (minimumToPlay)
    {
        keyQuery_minimumToPlay = strdup("minimumToPlay");
        valueQuery_minimumToPlay = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_minimumToPlay, MAX_NUMBER_LENGTH, "%d", *minimumToPlay);
        keyPairQuery_minimumToPlay = keyValuePair_create(keyQuery_minimumToPlay, valueQuery_minimumToPlay);
        list_addElement(localVarQueryParameters,keyPairQuery_minimumToPlay);
    }

    // query parameters
    char *keyQuery_startingLimit = NULL;
    char * valueQuery_startingLimit = NULL;
    keyValuePair_t *keyPairQuery_startingLimit = 0;
    if (startingLimit)
    {
        keyQuery_startingLimit = strdup("startingLimit");
        valueQuery_startingLimit = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_startingLimit, MAX_NUMBER_LENGTH, "%d", *startingLimit);
        keyPairQuery_startingLimit = keyValuePair_create(keyQuery_startingLimit, valueQuery_startingLimit);
        list_addElement(localVarQueryParameters,keyPairQuery_startingLimit);
    }

    // query parameters
    char *keyQuery_availableLimit = NULL;
    char * valueQuery_availableLimit = NULL;
    keyValuePair_t *keyPairQuery_availableLimit = 0;
    if (availableLimit)
    {
        keyQuery_availableLimit = strdup("availableLimit");
        valueQuery_availableLimit = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_availableLimit, MAX_NUMBER_LENGTH, "%d", *availableLimit);
        keyPairQuery_availableLimit = keyValuePair_create(keyQuery_availableLimit, valueQuery_availableLimit);
        list_addElement(localVarQueryParameters,keyPairQuery_availableLimit);
    }

    // query parameters
    char *keyQuery_description = NULL;
    char * valueQuery_description = NULL;
    keyValuePair_t *keyPairQuery_description = 0;
    if (description)
    {
        keyQuery_description = strdup("description");
        valueQuery_description = strdup((description));
        keyPairQuery_description = keyValuePair_create(keyQuery_description, valueQuery_description);
        list_addElement(localVarQueryParameters,keyPairQuery_description);
    }

    // query parameters
    char *keyQuery_metaData = NULL;
    char * valueQuery_metaData = NULL;
    keyValuePair_t *keyPairQuery_metaData = 0;
    if (metaData)
    {
        keyQuery_metaData = strdup("metaData");
        valueQuery_metaData = strdup((metaData));
        keyPairQuery_metaData = keyValuePair_create(keyQuery_metaData, valueQuery_metaData);
        list_addElement(localVarQueryParameters,keyPairQuery_metaData);
    }

    // query parameters
    char *keyQuery_startDate = NULL;
    char * valueQuery_startDate ;
    keyValuePair_t *keyPairQuery_startDate = 0;
    {
        keyQuery_startDate = strdup("startDate");
        valueQuery_startDate = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_startDate, MAX_NUMBER_LENGTH_LONG, "%d", startDate);
        keyPairQuery_startDate = keyValuePair_create(keyQuery_startDate, valueQuery_startDate);
        list_addElement(localVarQueryParameters,keyPairQuery_startDate);
    }

    // query parameters
    char *keyQuery_audienceIds = NULL;
    char * valueQuery_audienceIds = NULL;
    keyValuePair_t *keyPairQuery_audienceIds = 0;
    if (audienceIds)
    {
        keyQuery_audienceIds = strdup("audienceIds");
        valueQuery_audienceIds = strdup((audienceIds));
        keyPairQuery_audienceIds = keyValuePair_create(keyQuery_audienceIds, valueQuery_audienceIds);
        list_addElement(localVarQueryParameters,keyPairQuery_audienceIds);
    }

    // query parameters
    char *keyQuery_active = NULL;
    char * valueQuery_active = NULL;
    keyValuePair_t *keyPairQuery_active = 0;
    if (active)
    {
        keyQuery_active = strdup("active");
        valueQuery_active = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_active, MAX_NUMBER_LENGTH, "%d", *active);
        keyPairQuery_active = keyValuePair_create(keyQuery_active, valueQuery_active);
        list_addElement(localVarQueryParameters,keyPairQuery_active);
    }

    // query parameters
    char *keyQuery_enableBuyBack = NULL;
    char * valueQuery_enableBuyBack = NULL;
    keyValuePair_t *keyPairQuery_enableBuyBack = 0;
    if (enableBuyBack)
    {
        keyQuery_enableBuyBack = strdup("enableBuyBack");
        valueQuery_enableBuyBack = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_enableBuyBack, MAX_NUMBER_LENGTH, "%d", *enableBuyBack);
        keyPairQuery_enableBuyBack = keyValuePair_create(keyQuery_enableBuyBack, valueQuery_enableBuyBack);
        list_addElement(localVarQueryParameters,keyPairQuery_enableBuyBack);
    }

    // query parameters
    char *keyQuery_offerIds = NULL;
    char * valueQuery_offerIds = NULL;
    keyValuePair_t *keyPairQuery_offerIds = 0;
    if (offerIds)
    {
        keyQuery_offerIds = strdup("offerIds");
        valueQuery_offerIds = strdup((offerIds));
        keyPairQuery_offerIds = keyValuePair_create(keyQuery_offerIds, valueQuery_offerIds);
        list_addElement(localVarQueryParameters,keyPairQuery_offerIds);
    }

    // query parameters
    char *keyQuery_offerAssetId = NULL;
    char * valueQuery_offerAssetId ;
    keyValuePair_t *keyPairQuery_offerAssetId = 0;
    {
        keyQuery_offerAssetId = strdup("offerAssetId");
        valueQuery_offerAssetId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_offerAssetId, MAX_NUMBER_LENGTH_LONG, "%d", offerAssetId);
        keyPairQuery_offerAssetId = keyValuePair_create(keyQuery_offerAssetId, valueQuery_offerAssetId);
        list_addElement(localVarQueryParameters,keyPairQuery_offerAssetId);
    }

    // query parameters
    char *keyQuery_fixedReward = NULL;
    char * valueQuery_fixedReward = NULL;
    keyValuePair_t *keyPairQuery_fixedReward = 0;
    if (fixedReward)
    {
        keyQuery_fixedReward = strdup("fixedReward");
        valueQuery_fixedReward = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_fixedReward, MAX_NUMBER_LENGTH, "%d", *fixedReward);
        keyPairQuery_fixedReward = keyValuePair_create(keyQuery_fixedReward, valueQuery_fixedReward);
        list_addElement(localVarQueryParameters,keyPairQuery_fixedReward);
    }

    // query parameters
    char *keyQuery_splitReward = NULL;
    sirqul_iot_platform_createTournament_splitReward_e valueQuery_splitReward ;
    keyValuePair_t *keyPairQuery_splitReward = 0;
    if (splitReward)
    {
        keyQuery_splitReward = strdup("splitReward");
        valueQuery_splitReward = (splitReward);
        keyPairQuery_splitReward = keyValuePair_create(keyQuery_splitReward, strdup(createTournament_SPLITREWARD_ToString(
        valueQuery_splitReward)));
        list_addElement(localVarQueryParameters,keyPairQuery_splitReward);
    }

    // query parameters
    char *keyQuery_allocateTickets = NULL;
    char * valueQuery_allocateTickets = NULL;
    keyValuePair_t *keyPairQuery_allocateTickets = 0;
    if (allocateTickets)
    {
        keyQuery_allocateTickets = strdup("allocateTickets");
        valueQuery_allocateTickets = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_allocateTickets, MAX_NUMBER_LENGTH, "%d", *allocateTickets);
        keyPairQuery_allocateTickets = keyValuePair_create(keyQuery_allocateTickets, valueQuery_allocateTickets);
        list_addElement(localVarQueryParameters,keyPairQuery_allocateTickets);
    }

    // query parameters
    char *keyQuery_tournamentData = NULL;
    char * valueQuery_tournamentData = NULL;
    keyValuePair_t *keyPairQuery_tournamentData = 0;
    if (tournamentData)
    {
        keyQuery_tournamentData = strdup("tournamentData");
        valueQuery_tournamentData = strdup((tournamentData));
        keyPairQuery_tournamentData = keyValuePair_create(keyQuery_tournamentData, valueQuery_tournamentData);
        list_addElement(localVarQueryParameters,keyPairQuery_tournamentData);
    }

    // query parameters
    char *keyQuery_missionType = NULL;
    sirqul_iot_platform_createTournament_missionType_e valueQuery_missionType ;
    keyValuePair_t *keyPairQuery_missionType = 0;
    if (missionType)
    {
        keyQuery_missionType = strdup("missionType");
        valueQuery_missionType = (missionType);
        keyPairQuery_missionType = keyValuePair_create(keyQuery_missionType, strdup(createTournament_MISSIONTYPE_ToString(
        valueQuery_missionType)));
        list_addElement(localVarQueryParameters,keyPairQuery_missionType);
    }

    // query parameters
    char *keyQuery_visibility = NULL;
    sirqul_iot_platform_createTournament_visibility_e valueQuery_visibility ;
    keyValuePair_t *keyPairQuery_visibility = 0;
    if (visibility)
    {
        keyQuery_visibility = strdup("visibility");
        valueQuery_visibility = (visibility);
        keyPairQuery_visibility = keyValuePair_create(keyQuery_visibility, strdup(createTournament_VISIBILITY_ToString(
        valueQuery_visibility)));
        list_addElement(localVarQueryParameters,keyPairQuery_visibility);
    }

    // query parameters
    char *keyQuery_preliminaryGroups = NULL;
    char * valueQuery_preliminaryGroups = NULL;
    keyValuePair_t *keyPairQuery_preliminaryGroups = 0;
    if (preliminaryGroups)
    {
        keyQuery_preliminaryGroups = strdup("preliminaryGroups");
        valueQuery_preliminaryGroups = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_preliminaryGroups, MAX_NUMBER_LENGTH, "%d", *preliminaryGroups);
        keyPairQuery_preliminaryGroups = keyValuePair_create(keyQuery_preliminaryGroups, valueQuery_preliminaryGroups);
        list_addElement(localVarQueryParameters,keyPairQuery_preliminaryGroups);
    }

    // query parameters
    char *keyQuery_preliminaryGroupAdvancements = NULL;
    char * valueQuery_preliminaryGroupAdvancements = NULL;
    keyValuePair_t *keyPairQuery_preliminaryGroupAdvancements = 0;
    if (preliminaryGroupAdvancements)
    {
        keyQuery_preliminaryGroupAdvancements = strdup("preliminaryGroupAdvancements");
        valueQuery_preliminaryGroupAdvancements = strdup((preliminaryGroupAdvancements));
        keyPairQuery_preliminaryGroupAdvancements = keyValuePair_create(keyQuery_preliminaryGroupAdvancements, valueQuery_preliminaryGroupAdvancements);
        list_addElement(localVarQueryParameters,keyPairQuery_preliminaryGroupAdvancements);
    }

    // query parameters
    char *keyQuery_enableMultipleEntries = NULL;
    char * valueQuery_enableMultipleEntries = NULL;
    keyValuePair_t *keyPairQuery_enableMultipleEntries = 0;
    if (enableMultipleEntries)
    {
        keyQuery_enableMultipleEntries = strdup("enableMultipleEntries");
        valueQuery_enableMultipleEntries = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_enableMultipleEntries, MAX_NUMBER_LENGTH, "%d", *enableMultipleEntries);
        keyPairQuery_enableMultipleEntries = keyValuePair_create(keyQuery_enableMultipleEntries, valueQuery_enableMultipleEntries);
        list_addElement(localVarQueryParameters,keyPairQuery_enableMultipleEntries);
    }

    // query parameters
    char *keyQuery_enableMultipleVotes = NULL;
    char * valueQuery_enableMultipleVotes = NULL;
    keyValuePair_t *keyPairQuery_enableMultipleVotes = 0;
    if (enableMultipleVotes)
    {
        keyQuery_enableMultipleVotes = strdup("enableMultipleVotes");
        valueQuery_enableMultipleVotes = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_enableMultipleVotes, MAX_NUMBER_LENGTH, "%d", *enableMultipleVotes);
        keyPairQuery_enableMultipleVotes = keyValuePair_create(keyQuery_enableMultipleVotes, valueQuery_enableMultipleVotes);
        list_addElement(localVarQueryParameters,keyPairQuery_enableMultipleVotes);
    }

    // query parameters
    char *keyQuery_featured = NULL;
    char * valueQuery_featured = NULL;
    keyValuePair_t *keyPairQuery_featured = 0;
    if (featured)
    {
        keyQuery_featured = strdup("featured");
        valueQuery_featured = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_featured, MAX_NUMBER_LENGTH, "%d", *featured);
        keyPairQuery_featured = keyValuePair_create(keyQuery_featured, valueQuery_featured);
        list_addElement(localVarQueryParameters,keyPairQuery_featured);
    }

    // query parameters
    char *keyQuery_winnerTag = NULL;
    char * valueQuery_winnerTag = NULL;
    keyValuePair_t *keyPairQuery_winnerTag = 0;
    if (winnerTag)
    {
        keyQuery_winnerTag = strdup("winnerTag");
        valueQuery_winnerTag = strdup((winnerTag));
        keyPairQuery_winnerTag = keyValuePair_create(keyQuery_winnerTag, valueQuery_winnerTag);
        list_addElement(localVarQueryParameters,keyPairQuery_winnerTag);
    }

    // query parameters
    char *keyQuery_tieTag = NULL;
    char * valueQuery_tieTag = NULL;
    keyValuePair_t *keyPairQuery_tieTag = 0;
    if (tieTag)
    {
        keyQuery_tieTag = strdup("tieTag");
        valueQuery_tieTag = strdup((tieTag));
        keyPairQuery_tieTag = keyValuePair_create(keyQuery_tieTag, valueQuery_tieTag);
        list_addElement(localVarQueryParameters,keyPairQuery_tieTag);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "POST");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    tournament_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *TournamentAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = tournament_response_parseFromJSON(TournamentAPIlocalVarJSON);
        cJSON_Delete(TournamentAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_version);
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(valueQuery_appKey){
        free(valueQuery_appKey);
        valueQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }
    if(keyQuery_title){
        free(keyQuery_title);
        keyQuery_title = NULL;
    }
    if(valueQuery_title){
        free(valueQuery_title);
        valueQuery_title = NULL;
    }
    if(keyPairQuery_title){
        keyValuePair_free(keyPairQuery_title);
        keyPairQuery_title = NULL;
    }
    if(keyQuery_subType){
        free(keyQuery_subType);
        keyQuery_subType = NULL;
    }
    if(valueQuery_subType){
        free(valueQuery_subType);
        valueQuery_subType = NULL;
    }
    if(keyPairQuery_subType){
        keyValuePair_free(keyPairQuery_subType);
        keyPairQuery_subType = NULL;
    }
    if(keyQuery_imageAssetId){
        free(keyQuery_imageAssetId);
        keyQuery_imageAssetId = NULL;
    }
    if(keyPairQuery_imageAssetId){
        keyValuePair_free(keyPairQuery_imageAssetId);
        keyPairQuery_imageAssetId = NULL;
    }
    if(keyQuery_secondsBetweenLevels){
        free(keyQuery_secondsBetweenLevels);
        keyQuery_secondsBetweenLevels = NULL;
    }
    if(valueQuery_secondsBetweenLevels){
        free(valueQuery_secondsBetweenLevels);
        valueQuery_secondsBetweenLevels = NULL;
    }
    if(keyPairQuery_secondsBetweenLevels){
        keyValuePair_free(keyPairQuery_secondsBetweenLevels);
        keyPairQuery_secondsBetweenLevels = NULL;
    }
    if(keyQuery_secondsForTieBreaker){
        free(keyQuery_secondsForTieBreaker);
        keyQuery_secondsForTieBreaker = NULL;
    }
    if(valueQuery_secondsForTieBreaker){
        free(valueQuery_secondsForTieBreaker);
        valueQuery_secondsForTieBreaker = NULL;
    }
    if(keyPairQuery_secondsForTieBreaker){
        keyValuePair_free(keyPairQuery_secondsForTieBreaker);
        keyPairQuery_secondsForTieBreaker = NULL;
    }
    if(keyQuery_secondsBetweenPacks){
        free(keyQuery_secondsBetweenPacks);
        keyQuery_secondsBetweenPacks = NULL;
    }
    if(valueQuery_secondsBetweenPacks){
        free(valueQuery_secondsBetweenPacks);
        valueQuery_secondsBetweenPacks = NULL;
    }
    if(keyPairQuery_secondsBetweenPacks){
        keyValuePair_free(keyPairQuery_secondsBetweenPacks);
        keyPairQuery_secondsBetweenPacks = NULL;
    }
    if(keyQuery_maximumLevelLength){
        free(keyQuery_maximumLevelLength);
        keyQuery_maximumLevelLength = NULL;
    }
    if(valueQuery_maximumLevelLength){
        free(valueQuery_maximumLevelLength);
        valueQuery_maximumLevelLength = NULL;
    }
    if(keyPairQuery_maximumLevelLength){
        keyValuePair_free(keyPairQuery_maximumLevelLength);
        keyPairQuery_maximumLevelLength = NULL;
    }
    if(keyQuery_costToPlay){
        free(keyQuery_costToPlay);
        keyQuery_costToPlay = NULL;
    }
    if(valueQuery_costToPlay){
        free(valueQuery_costToPlay);
        valueQuery_costToPlay = NULL;
    }
    if(keyPairQuery_costToPlay){
        keyValuePair_free(keyPairQuery_costToPlay);
        keyPairQuery_costToPlay = NULL;
    }
    if(keyQuery_costToPlayType){
        free(keyQuery_costToPlayType);
        keyQuery_costToPlayType = NULL;
    }
    if(valueQuery_costToPlayType){
        free(valueQuery_costToPlayType);
        valueQuery_costToPlayType = NULL;
    }
    if(keyPairQuery_costToPlayType){
        keyValuePair_free(keyPairQuery_costToPlayType);
        keyPairQuery_costToPlayType = NULL;
    }
    if(keyQuery_minimumToPlay){
        free(keyQuery_minimumToPlay);
        keyQuery_minimumToPlay = NULL;
    }
    if(valueQuery_minimumToPlay){
        free(valueQuery_minimumToPlay);
        valueQuery_minimumToPlay = NULL;
    }
    if(keyPairQuery_minimumToPlay){
        keyValuePair_free(keyPairQuery_minimumToPlay);
        keyPairQuery_minimumToPlay = NULL;
    }
    if(keyQuery_startingLimit){
        free(keyQuery_startingLimit);
        keyQuery_startingLimit = NULL;
    }
    if(valueQuery_startingLimit){
        free(valueQuery_startingLimit);
        valueQuery_startingLimit = NULL;
    }
    if(keyPairQuery_startingLimit){
        keyValuePair_free(keyPairQuery_startingLimit);
        keyPairQuery_startingLimit = NULL;
    }
    if(keyQuery_availableLimit){
        free(keyQuery_availableLimit);
        keyQuery_availableLimit = NULL;
    }
    if(valueQuery_availableLimit){
        free(valueQuery_availableLimit);
        valueQuery_availableLimit = NULL;
    }
    if(keyPairQuery_availableLimit){
        keyValuePair_free(keyPairQuery_availableLimit);
        keyPairQuery_availableLimit = NULL;
    }
    if(keyQuery_description){
        free(keyQuery_description);
        keyQuery_description = NULL;
    }
    if(valueQuery_description){
        free(valueQuery_description);
        valueQuery_description = NULL;
    }
    if(keyPairQuery_description){
        keyValuePair_free(keyPairQuery_description);
        keyPairQuery_description = NULL;
    }
    if(keyQuery_metaData){
        free(keyQuery_metaData);
        keyQuery_metaData = NULL;
    }
    if(valueQuery_metaData){
        free(valueQuery_metaData);
        valueQuery_metaData = NULL;
    }
    if(keyPairQuery_metaData){
        keyValuePair_free(keyPairQuery_metaData);
        keyPairQuery_metaData = NULL;
    }
    if(keyQuery_startDate){
        free(keyQuery_startDate);
        keyQuery_startDate = NULL;
    }
    if(keyPairQuery_startDate){
        keyValuePair_free(keyPairQuery_startDate);
        keyPairQuery_startDate = NULL;
    }
    if(keyQuery_audienceIds){
        free(keyQuery_audienceIds);
        keyQuery_audienceIds = NULL;
    }
    if(valueQuery_audienceIds){
        free(valueQuery_audienceIds);
        valueQuery_audienceIds = NULL;
    }
    if(keyPairQuery_audienceIds){
        keyValuePair_free(keyPairQuery_audienceIds);
        keyPairQuery_audienceIds = NULL;
    }
    if(keyQuery_active){
        free(keyQuery_active);
        keyQuery_active = NULL;
    }
    if(valueQuery_active){
        free(valueQuery_active);
        valueQuery_active = NULL;
    }
    if(keyPairQuery_active){
        keyValuePair_free(keyPairQuery_active);
        keyPairQuery_active = NULL;
    }
    if(keyQuery_enableBuyBack){
        free(keyQuery_enableBuyBack);
        keyQuery_enableBuyBack = NULL;
    }
    if(valueQuery_enableBuyBack){
        free(valueQuery_enableBuyBack);
        valueQuery_enableBuyBack = NULL;
    }
    if(keyPairQuery_enableBuyBack){
        keyValuePair_free(keyPairQuery_enableBuyBack);
        keyPairQuery_enableBuyBack = NULL;
    }
    if(keyQuery_offerIds){
        free(keyQuery_offerIds);
        keyQuery_offerIds = NULL;
    }
    if(valueQuery_offerIds){
        free(valueQuery_offerIds);
        valueQuery_offerIds = NULL;
    }
    if(keyPairQuery_offerIds){
        keyValuePair_free(keyPairQuery_offerIds);
        keyPairQuery_offerIds = NULL;
    }
    if(keyQuery_offerAssetId){
        free(keyQuery_offerAssetId);
        keyQuery_offerAssetId = NULL;
    }
    if(keyPairQuery_offerAssetId){
        keyValuePair_free(keyPairQuery_offerAssetId);
        keyPairQuery_offerAssetId = NULL;
    }
    if(keyQuery_fixedReward){
        free(keyQuery_fixedReward);
        keyQuery_fixedReward = NULL;
    }
    if(valueQuery_fixedReward){
        free(valueQuery_fixedReward);
        valueQuery_fixedReward = NULL;
    }
    if(keyPairQuery_fixedReward){
        keyValuePair_free(keyPairQuery_fixedReward);
        keyPairQuery_fixedReward = NULL;
    }
    if(keyQuery_splitReward){
        free(keyQuery_splitReward);
        keyQuery_splitReward = NULL;
    }
    if(keyPairQuery_splitReward){
        keyValuePair_free(keyPairQuery_splitReward);
        keyPairQuery_splitReward = NULL;
    }
    if(keyQuery_allocateTickets){
        free(keyQuery_allocateTickets);
        keyQuery_allocateTickets = NULL;
    }
    if(valueQuery_allocateTickets){
        free(valueQuery_allocateTickets);
        valueQuery_allocateTickets = NULL;
    }
    if(keyPairQuery_allocateTickets){
        keyValuePair_free(keyPairQuery_allocateTickets);
        keyPairQuery_allocateTickets = NULL;
    }
    if(keyQuery_tournamentData){
        free(keyQuery_tournamentData);
        keyQuery_tournamentData = NULL;
    }
    if(valueQuery_tournamentData){
        free(valueQuery_tournamentData);
        valueQuery_tournamentData = NULL;
    }
    if(keyPairQuery_tournamentData){
        keyValuePair_free(keyPairQuery_tournamentData);
        keyPairQuery_tournamentData = NULL;
    }
    if(keyQuery_missionType){
        free(keyQuery_missionType);
        keyQuery_missionType = NULL;
    }
    if(keyPairQuery_missionType){
        keyValuePair_free(keyPairQuery_missionType);
        keyPairQuery_missionType = NULL;
    }
    if(keyQuery_visibility){
        free(keyQuery_visibility);
        keyQuery_visibility = NULL;
    }
    if(keyPairQuery_visibility){
        keyValuePair_free(keyPairQuery_visibility);
        keyPairQuery_visibility = NULL;
    }
    if(keyQuery_preliminaryGroups){
        free(keyQuery_preliminaryGroups);
        keyQuery_preliminaryGroups = NULL;
    }
    if(valueQuery_preliminaryGroups){
        free(valueQuery_preliminaryGroups);
        valueQuery_preliminaryGroups = NULL;
    }
    if(keyPairQuery_preliminaryGroups){
        keyValuePair_free(keyPairQuery_preliminaryGroups);
        keyPairQuery_preliminaryGroups = NULL;
    }
    if(keyQuery_preliminaryGroupAdvancements){
        free(keyQuery_preliminaryGroupAdvancements);
        keyQuery_preliminaryGroupAdvancements = NULL;
    }
    if(valueQuery_preliminaryGroupAdvancements){
        free(valueQuery_preliminaryGroupAdvancements);
        valueQuery_preliminaryGroupAdvancements = NULL;
    }
    if(keyPairQuery_preliminaryGroupAdvancements){
        keyValuePair_free(keyPairQuery_preliminaryGroupAdvancements);
        keyPairQuery_preliminaryGroupAdvancements = NULL;
    }
    if(keyQuery_enableMultipleEntries){
        free(keyQuery_enableMultipleEntries);
        keyQuery_enableMultipleEntries = NULL;
    }
    if(valueQuery_enableMultipleEntries){
        free(valueQuery_enableMultipleEntries);
        valueQuery_enableMultipleEntries = NULL;
    }
    if(keyPairQuery_enableMultipleEntries){
        keyValuePair_free(keyPairQuery_enableMultipleEntries);
        keyPairQuery_enableMultipleEntries = NULL;
    }
    if(keyQuery_enableMultipleVotes){
        free(keyQuery_enableMultipleVotes);
        keyQuery_enableMultipleVotes = NULL;
    }
    if(valueQuery_enableMultipleVotes){
        free(valueQuery_enableMultipleVotes);
        valueQuery_enableMultipleVotes = NULL;
    }
    if(keyPairQuery_enableMultipleVotes){
        keyValuePair_free(keyPairQuery_enableMultipleVotes);
        keyPairQuery_enableMultipleVotes = NULL;
    }
    if(keyQuery_featured){
        free(keyQuery_featured);
        keyQuery_featured = NULL;
    }
    if(valueQuery_featured){
        free(valueQuery_featured);
        valueQuery_featured = NULL;
    }
    if(keyPairQuery_featured){
        keyValuePair_free(keyPairQuery_featured);
        keyPairQuery_featured = NULL;
    }
    if(keyQuery_winnerTag){
        free(keyQuery_winnerTag);
        keyQuery_winnerTag = NULL;
    }
    if(valueQuery_winnerTag){
        free(valueQuery_winnerTag);
        valueQuery_winnerTag = NULL;
    }
    if(keyPairQuery_winnerTag){
        keyValuePair_free(keyPairQuery_winnerTag);
        keyPairQuery_winnerTag = NULL;
    }
    if(keyQuery_tieTag){
        free(keyQuery_tieTag);
        keyQuery_tieTag = NULL;
    }
    if(valueQuery_tieTag){
        free(valueQuery_tieTag);
        valueQuery_tieTag = NULL;
    }
    if(keyPairQuery_tieTag){
        keyValuePair_free(keyPairQuery_tieTag);
        keyPairQuery_tieTag = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Delete Tournament
//
// Delete a tournament.
//
sirqul_response_t*
TournamentAPI_deleteTournament(apiClient_t *apiClient, double version, long accountId, long missionId)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/api/{version}/tournament/delete");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }

    // query parameters
    char *keyQuery_missionId = NULL;
    char * valueQuery_missionId ;
    keyValuePair_t *keyPairQuery_missionId = 0;
    {
        keyQuery_missionId = strdup("missionId");
        valueQuery_missionId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_missionId, MAX_NUMBER_LENGTH_LONG, "%d", missionId);
        keyPairQuery_missionId = keyValuePair_create(keyQuery_missionId, valueQuery_missionId);
        list_addElement(localVarQueryParameters,keyPairQuery_missionId);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "POST");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    sirqul_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *TournamentAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(TournamentAPIlocalVarJSON);
        cJSON_Delete(TournamentAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_version);
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_missionId){
        free(keyQuery_missionId);
        keyQuery_missionId = NULL;
    }
    if(keyPairQuery_missionId){
        keyValuePair_free(keyPairQuery_missionId);
        keyPairQuery_missionId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Tournament
//
// Get a tournament.
//
tournament_response_t*
TournamentAPI_getTournament(apiClient_t *apiClient, double version, long accountId, long missionId, char *joinCode, sirqul_iot_platform_getTournament_includeScores_e includeScores, int *objectPreviewSize)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/api/{version}/tournament/get");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }

    // query parameters
    char *keyQuery_missionId = NULL;
    char * valueQuery_missionId ;
    keyValuePair_t *keyPairQuery_missionId = 0;
    {
        keyQuery_missionId = strdup("missionId");
        valueQuery_missionId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_missionId, MAX_NUMBER_LENGTH_LONG, "%d", missionId);
        keyPairQuery_missionId = keyValuePair_create(keyQuery_missionId, valueQuery_missionId);
        list_addElement(localVarQueryParameters,keyPairQuery_missionId);
    }

    // query parameters
    char *keyQuery_joinCode = NULL;
    char * valueQuery_joinCode = NULL;
    keyValuePair_t *keyPairQuery_joinCode = 0;
    if (joinCode)
    {
        keyQuery_joinCode = strdup("joinCode");
        valueQuery_joinCode = strdup((joinCode));
        keyPairQuery_joinCode = keyValuePair_create(keyQuery_joinCode, valueQuery_joinCode);
        list_addElement(localVarQueryParameters,keyPairQuery_joinCode);
    }

    // query parameters
    char *keyQuery_includeScores = NULL;
    sirqul_iot_platform_getTournament_includeScores_e valueQuery_includeScores ;
    keyValuePair_t *keyPairQuery_includeScores = 0;
    if (includeScores)
    {
        keyQuery_includeScores = strdup("includeScores");
        valueQuery_includeScores = (includeScores);
        keyPairQuery_includeScores = keyValuePair_create(keyQuery_includeScores, strdup(getTournament_INCLUDESCORES_ToString(
        valueQuery_includeScores)));
        list_addElement(localVarQueryParameters,keyPairQuery_includeScores);
    }

    // query parameters
    char *keyQuery_objectPreviewSize = NULL;
    char * valueQuery_objectPreviewSize = NULL;
    keyValuePair_t *keyPairQuery_objectPreviewSize = 0;
    if (objectPreviewSize)
    {
        keyQuery_objectPreviewSize = strdup("objectPreviewSize");
        valueQuery_objectPreviewSize = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_objectPreviewSize, MAX_NUMBER_LENGTH, "%d", *objectPreviewSize);
        keyPairQuery_objectPreviewSize = keyValuePair_create(keyQuery_objectPreviewSize, valueQuery_objectPreviewSize);
        list_addElement(localVarQueryParameters,keyPairQuery_objectPreviewSize);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    tournament_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *TournamentAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = tournament_response_parseFromJSON(TournamentAPIlocalVarJSON);
        cJSON_Delete(TournamentAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_version);
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_missionId){
        free(keyQuery_missionId);
        keyQuery_missionId = NULL;
    }
    if(keyPairQuery_missionId){
        keyValuePair_free(keyPairQuery_missionId);
        keyPairQuery_missionId = NULL;
    }
    if(keyQuery_joinCode){
        free(keyQuery_joinCode);
        keyQuery_joinCode = NULL;
    }
    if(valueQuery_joinCode){
        free(valueQuery_joinCode);
        valueQuery_joinCode = NULL;
    }
    if(keyPairQuery_joinCode){
        keyValuePair_free(keyPairQuery_joinCode);
        keyPairQuery_joinCode = NULL;
    }
    if(keyQuery_includeScores){
        free(keyQuery_includeScores);
        keyQuery_includeScores = NULL;
    }
    if(keyPairQuery_includeScores){
        keyValuePair_free(keyPairQuery_includeScores);
        keyPairQuery_includeScores = NULL;
    }
    if(keyQuery_objectPreviewSize){
        free(keyQuery_objectPreviewSize);
        keyQuery_objectPreviewSize = NULL;
    }
    if(valueQuery_objectPreviewSize){
        free(valueQuery_objectPreviewSize);
        valueQuery_objectPreviewSize = NULL;
    }
    if(keyPairQuery_objectPreviewSize){
        keyValuePair_free(keyPairQuery_objectPreviewSize);
        keyPairQuery_objectPreviewSize = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Tournament Objects
//
// Search on game objects of tournaments
//
sirqul_response_t*
TournamentAPI_searchObjects(apiClient_t *apiClient, double version, long accountId, long gameLevelId, sirqul_iot_platform_searchObjects_sortField_e sortField, int *descending, int *start, int *limit)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/api/{version}/tournament/object/search");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }

    // query parameters
    char *keyQuery_gameLevelId = NULL;
    char * valueQuery_gameLevelId ;
    keyValuePair_t *keyPairQuery_gameLevelId = 0;
    {
        keyQuery_gameLevelId = strdup("gameLevelId");
        valueQuery_gameLevelId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_gameLevelId, MAX_NUMBER_LENGTH_LONG, "%d", gameLevelId);
        keyPairQuery_gameLevelId = keyValuePair_create(keyQuery_gameLevelId, valueQuery_gameLevelId);
        list_addElement(localVarQueryParameters,keyPairQuery_gameLevelId);
    }

    // query parameters
    char *keyQuery_sortField = NULL;
    sirqul_iot_platform_searchObjects_sortField_e valueQuery_sortField ;
    keyValuePair_t *keyPairQuery_sortField = 0;
    if (sortField)
    {
        keyQuery_sortField = strdup("sortField");
        valueQuery_sortField = (sortField);
        keyPairQuery_sortField = keyValuePair_create(keyQuery_sortField, strdup(searchObjects_SORTFIELD_ToString(
        valueQuery_sortField)));
        list_addElement(localVarQueryParameters,keyPairQuery_sortField);
    }

    // query parameters
    char *keyQuery_descending = NULL;
    char * valueQuery_descending = NULL;
    keyValuePair_t *keyPairQuery_descending = 0;
    if (descending)
    {
        keyQuery_descending = strdup("descending");
        valueQuery_descending = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_descending, MAX_NUMBER_LENGTH, "%d", *descending);
        keyPairQuery_descending = keyValuePair_create(keyQuery_descending, valueQuery_descending);
        list_addElement(localVarQueryParameters,keyPairQuery_descending);
    }

    // query parameters
    char *keyQuery_start = NULL;
    char * valueQuery_start = NULL;
    keyValuePair_t *keyPairQuery_start = 0;
    if (start)
    {
        keyQuery_start = strdup("start");
        valueQuery_start = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_start, MAX_NUMBER_LENGTH, "%d", *start);
        keyPairQuery_start = keyValuePair_create(keyQuery_start, valueQuery_start);
        list_addElement(localVarQueryParameters,keyPairQuery_start);
    }

    // query parameters
    char *keyQuery_limit = NULL;
    char * valueQuery_limit = NULL;
    keyValuePair_t *keyPairQuery_limit = 0;
    if (limit)
    {
        keyQuery_limit = strdup("limit");
        valueQuery_limit = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_limit, MAX_NUMBER_LENGTH, "%d", *limit);
        keyPairQuery_limit = keyValuePair_create(keyQuery_limit, valueQuery_limit);
        list_addElement(localVarQueryParameters,keyPairQuery_limit);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    sirqul_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *TournamentAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(TournamentAPIlocalVarJSON);
        cJSON_Delete(TournamentAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_version);
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_gameLevelId){
        free(keyQuery_gameLevelId);
        keyQuery_gameLevelId = NULL;
    }
    if(keyPairQuery_gameLevelId){
        keyValuePair_free(keyPairQuery_gameLevelId);
        keyPairQuery_gameLevelId = NULL;
    }
    if(keyQuery_sortField){
        free(keyQuery_sortField);
        keyQuery_sortField = NULL;
    }
    if(keyPairQuery_sortField){
        keyValuePair_free(keyPairQuery_sortField);
        keyPairQuery_sortField = NULL;
    }
    if(keyQuery_descending){
        free(keyQuery_descending);
        keyQuery_descending = NULL;
    }
    if(valueQuery_descending){
        free(valueQuery_descending);
        valueQuery_descending = NULL;
    }
    if(keyPairQuery_descending){
        keyValuePair_free(keyPairQuery_descending);
        keyPairQuery_descending = NULL;
    }
    if(keyQuery_start){
        free(keyQuery_start);
        keyQuery_start = NULL;
    }
    if(valueQuery_start){
        free(valueQuery_start);
        valueQuery_start = NULL;
    }
    if(keyPairQuery_start){
        keyValuePair_free(keyPairQuery_start);
        keyPairQuery_start = NULL;
    }
    if(keyQuery_limit){
        free(keyQuery_limit);
        keyQuery_limit = NULL;
    }
    if(valueQuery_limit){
        free(valueQuery_limit);
        valueQuery_limit = NULL;
    }
    if(keyPairQuery_limit){
        keyValuePair_free(keyPairQuery_limit);
        keyPairQuery_limit = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Tournament Rounds
//
// Search for the user's tournament games.
//
sirqul_response_t*
TournamentAPI_searchRounds(apiClient_t *apiClient, double version, long accountId, char *appKey, char *status, sirqul_iot_platform_searchRounds_missionType_e missionType, int *currentOnly, char *visibilities, int *start, int *limit)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/api/{version}/tournament/round/search");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }

    // query parameters
    char *keyQuery_appKey = NULL;
    char * valueQuery_appKey = NULL;
    keyValuePair_t *keyPairQuery_appKey = 0;
    if (appKey)
    {
        keyQuery_appKey = strdup("appKey");
        valueQuery_appKey = strdup((appKey));
        keyPairQuery_appKey = keyValuePair_create(keyQuery_appKey, valueQuery_appKey);
        list_addElement(localVarQueryParameters,keyPairQuery_appKey);
    }

    // query parameters
    char *keyQuery_status = NULL;
    char * valueQuery_status = NULL;
    keyValuePair_t *keyPairQuery_status = 0;
    if (status)
    {
        keyQuery_status = strdup("status");
        valueQuery_status = strdup((status));
        keyPairQuery_status = keyValuePair_create(keyQuery_status, valueQuery_status);
        list_addElement(localVarQueryParameters,keyPairQuery_status);
    }

    // query parameters
    char *keyQuery_missionType = NULL;
    sirqul_iot_platform_searchRounds_missionType_e valueQuery_missionType ;
    keyValuePair_t *keyPairQuery_missionType = 0;
    if (missionType)
    {
        keyQuery_missionType = strdup("missionType");
        valueQuery_missionType = (missionType);
        keyPairQuery_missionType = keyValuePair_create(keyQuery_missionType, strdup(searchRounds_MISSIONTYPE_ToString(
        valueQuery_missionType)));
        list_addElement(localVarQueryParameters,keyPairQuery_missionType);
    }

    // query parameters
    char *keyQuery_currentOnly = NULL;
    char * valueQuery_currentOnly = NULL;
    keyValuePair_t *keyPairQuery_currentOnly = 0;
    if (currentOnly)
    {
        keyQuery_currentOnly = strdup("currentOnly");
        valueQuery_currentOnly = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_currentOnly, MAX_NUMBER_LENGTH, "%d", *currentOnly);
        keyPairQuery_currentOnly = keyValuePair_create(keyQuery_currentOnly, valueQuery_currentOnly);
        list_addElement(localVarQueryParameters,keyPairQuery_currentOnly);
    }

    // query parameters
    char *keyQuery_visibilities = NULL;
    char * valueQuery_visibilities = NULL;
    keyValuePair_t *keyPairQuery_visibilities = 0;
    if (visibilities)
    {
        keyQuery_visibilities = strdup("visibilities");
        valueQuery_visibilities = strdup((visibilities));
        keyPairQuery_visibilities = keyValuePair_create(keyQuery_visibilities, valueQuery_visibilities);
        list_addElement(localVarQueryParameters,keyPairQuery_visibilities);
    }

    // query parameters
    char *keyQuery_start = NULL;
    char * valueQuery_start = NULL;
    keyValuePair_t *keyPairQuery_start = 0;
    if (start)
    {
        keyQuery_start = strdup("start");
        valueQuery_start = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_start, MAX_NUMBER_LENGTH, "%d", *start);
        keyPairQuery_start = keyValuePair_create(keyQuery_start, valueQuery_start);
        list_addElement(localVarQueryParameters,keyPairQuery_start);
    }

    // query parameters
    char *keyQuery_limit = NULL;
    char * valueQuery_limit = NULL;
    keyValuePair_t *keyPairQuery_limit = 0;
    if (limit)
    {
        keyQuery_limit = strdup("limit");
        valueQuery_limit = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_limit, MAX_NUMBER_LENGTH, "%d", *limit);
        keyPairQuery_limit = keyValuePair_create(keyQuery_limit, valueQuery_limit);
        list_addElement(localVarQueryParameters,keyPairQuery_limit);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    sirqul_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *TournamentAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(TournamentAPIlocalVarJSON);
        cJSON_Delete(TournamentAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_version);
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(valueQuery_appKey){
        free(valueQuery_appKey);
        valueQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }
    if(keyQuery_status){
        free(keyQuery_status);
        keyQuery_status = NULL;
    }
    if(valueQuery_status){
        free(valueQuery_status);
        valueQuery_status = NULL;
    }
    if(keyPairQuery_status){
        keyValuePair_free(keyPairQuery_status);
        keyPairQuery_status = NULL;
    }
    if(keyQuery_missionType){
        free(keyQuery_missionType);
        keyQuery_missionType = NULL;
    }
    if(keyPairQuery_missionType){
        keyValuePair_free(keyPairQuery_missionType);
        keyPairQuery_missionType = NULL;
    }
    if(keyQuery_currentOnly){
        free(keyQuery_currentOnly);
        keyQuery_currentOnly = NULL;
    }
    if(valueQuery_currentOnly){
        free(valueQuery_currentOnly);
        valueQuery_currentOnly = NULL;
    }
    if(keyPairQuery_currentOnly){
        keyValuePair_free(keyPairQuery_currentOnly);
        keyPairQuery_currentOnly = NULL;
    }
    if(keyQuery_visibilities){
        free(keyQuery_visibilities);
        keyQuery_visibilities = NULL;
    }
    if(valueQuery_visibilities){
        free(valueQuery_visibilities);
        valueQuery_visibilities = NULL;
    }
    if(keyPairQuery_visibilities){
        keyValuePair_free(keyPairQuery_visibilities);
        keyPairQuery_visibilities = NULL;
    }
    if(keyQuery_start){
        free(keyQuery_start);
        keyQuery_start = NULL;
    }
    if(valueQuery_start){
        free(valueQuery_start);
        valueQuery_start = NULL;
    }
    if(keyPairQuery_start){
        keyValuePair_free(keyPairQuery_start);
        keyPairQuery_start = NULL;
    }
    if(keyQuery_limit){
        free(keyQuery_limit);
        keyQuery_limit = NULL;
    }
    if(valueQuery_limit){
        free(valueQuery_limit);
        valueQuery_limit = NULL;
    }
    if(keyPairQuery_limit){
        keyValuePair_free(keyPairQuery_limit);
        keyPairQuery_limit = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Tournaments
//
// Search for tournaments
//
mission_short_response_t*
TournamentAPI_searchTournaments(apiClient_t *apiClient, double version, long accountId, char *appKey, char *keyword, char *subType, int *includeInactive, char *missionTypes, sirqul_iot_platform_searchTournaments_filter_e filter, sirqul_iot_platform_searchTournaments_sortField_e sortField, int *descending, char *visibility, int *start, int *limit)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/api/{version}/tournament/search");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }

    // query parameters
    char *keyQuery_appKey = NULL;
    char * valueQuery_appKey = NULL;
    keyValuePair_t *keyPairQuery_appKey = 0;
    if (appKey)
    {
        keyQuery_appKey = strdup("appKey");
        valueQuery_appKey = strdup((appKey));
        keyPairQuery_appKey = keyValuePair_create(keyQuery_appKey, valueQuery_appKey);
        list_addElement(localVarQueryParameters,keyPairQuery_appKey);
    }

    // query parameters
    char *keyQuery_keyword = NULL;
    char * valueQuery_keyword = NULL;
    keyValuePair_t *keyPairQuery_keyword = 0;
    if (keyword)
    {
        keyQuery_keyword = strdup("keyword");
        valueQuery_keyword = strdup((keyword));
        keyPairQuery_keyword = keyValuePair_create(keyQuery_keyword, valueQuery_keyword);
        list_addElement(localVarQueryParameters,keyPairQuery_keyword);
    }

    // query parameters
    char *keyQuery_subType = NULL;
    char * valueQuery_subType = NULL;
    keyValuePair_t *keyPairQuery_subType = 0;
    if (subType)
    {
        keyQuery_subType = strdup("subType");
        valueQuery_subType = strdup((subType));
        keyPairQuery_subType = keyValuePair_create(keyQuery_subType, valueQuery_subType);
        list_addElement(localVarQueryParameters,keyPairQuery_subType);
    }

    // query parameters
    char *keyQuery_includeInactive = NULL;
    char * valueQuery_includeInactive = NULL;
    keyValuePair_t *keyPairQuery_includeInactive = 0;
    if (includeInactive)
    {
        keyQuery_includeInactive = strdup("includeInactive");
        valueQuery_includeInactive = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeInactive, MAX_NUMBER_LENGTH, "%d", *includeInactive);
        keyPairQuery_includeInactive = keyValuePair_create(keyQuery_includeInactive, valueQuery_includeInactive);
        list_addElement(localVarQueryParameters,keyPairQuery_includeInactive);
    }

    // query parameters
    char *keyQuery_missionTypes = NULL;
    char * valueQuery_missionTypes = NULL;
    keyValuePair_t *keyPairQuery_missionTypes = 0;
    if (missionTypes)
    {
        keyQuery_missionTypes = strdup("missionTypes");
        valueQuery_missionTypes = strdup((missionTypes));
        keyPairQuery_missionTypes = keyValuePair_create(keyQuery_missionTypes, valueQuery_missionTypes);
        list_addElement(localVarQueryParameters,keyPairQuery_missionTypes);
    }

    // query parameters
    char *keyQuery_filter = NULL;
    sirqul_iot_platform_searchTournaments_filter_e valueQuery_filter ;
    keyValuePair_t *keyPairQuery_filter = 0;
    if (filter)
    {
        keyQuery_filter = strdup("filter");
        valueQuery_filter = (filter);
        keyPairQuery_filter = keyValuePair_create(keyQuery_filter, strdup(searchTournaments_FILTER_ToString(
        valueQuery_filter)));
        list_addElement(localVarQueryParameters,keyPairQuery_filter);
    }

    // query parameters
    char *keyQuery_sortField = NULL;
    sirqul_iot_platform_searchTournaments_sortField_e valueQuery_sortField ;
    keyValuePair_t *keyPairQuery_sortField = 0;
    if (sortField)
    {
        keyQuery_sortField = strdup("sortField");
        valueQuery_sortField = (sortField);
        keyPairQuery_sortField = keyValuePair_create(keyQuery_sortField, strdup(searchTournaments_SORTFIELD_ToString(
        valueQuery_sortField)));
        list_addElement(localVarQueryParameters,keyPairQuery_sortField);
    }

    // query parameters
    char *keyQuery_descending = NULL;
    char * valueQuery_descending = NULL;
    keyValuePair_t *keyPairQuery_descending = 0;
    if (descending)
    {
        keyQuery_descending = strdup("descending");
        valueQuery_descending = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_descending, MAX_NUMBER_LENGTH, "%d", *descending);
        keyPairQuery_descending = keyValuePair_create(keyQuery_descending, valueQuery_descending);
        list_addElement(localVarQueryParameters,keyPairQuery_descending);
    }

    // query parameters
    char *keyQuery_visibility = NULL;
    char * valueQuery_visibility = NULL;
    keyValuePair_t *keyPairQuery_visibility = 0;
    if (visibility)
    {
        keyQuery_visibility = strdup("visibility");
        valueQuery_visibility = strdup((visibility));
        keyPairQuery_visibility = keyValuePair_create(keyQuery_visibility, valueQuery_visibility);
        list_addElement(localVarQueryParameters,keyPairQuery_visibility);
    }

    // query parameters
    char *keyQuery_start = NULL;
    char * valueQuery_start = NULL;
    keyValuePair_t *keyPairQuery_start = 0;
    if (start)
    {
        keyQuery_start = strdup("start");
        valueQuery_start = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_start, MAX_NUMBER_LENGTH, "%d", *start);
        keyPairQuery_start = keyValuePair_create(keyQuery_start, valueQuery_start);
        list_addElement(localVarQueryParameters,keyPairQuery_start);
    }

    // query parameters
    char *keyQuery_limit = NULL;
    char * valueQuery_limit = NULL;
    keyValuePair_t *keyPairQuery_limit = 0;
    if (limit)
    {
        keyQuery_limit = strdup("limit");
        valueQuery_limit = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_limit, MAX_NUMBER_LENGTH, "%d", *limit);
        keyPairQuery_limit = keyValuePair_create(keyQuery_limit, valueQuery_limit);
        list_addElement(localVarQueryParameters,keyPairQuery_limit);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    mission_short_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *TournamentAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = mission_short_response_parseFromJSON(TournamentAPIlocalVarJSON);
        cJSON_Delete(TournamentAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_version);
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(valueQuery_appKey){
        free(valueQuery_appKey);
        valueQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }
    if(keyQuery_keyword){
        free(keyQuery_keyword);
        keyQuery_keyword = NULL;
    }
    if(valueQuery_keyword){
        free(valueQuery_keyword);
        valueQuery_keyword = NULL;
    }
    if(keyPairQuery_keyword){
        keyValuePair_free(keyPairQuery_keyword);
        keyPairQuery_keyword = NULL;
    }
    if(keyQuery_subType){
        free(keyQuery_subType);
        keyQuery_subType = NULL;
    }
    if(valueQuery_subType){
        free(valueQuery_subType);
        valueQuery_subType = NULL;
    }
    if(keyPairQuery_subType){
        keyValuePair_free(keyPairQuery_subType);
        keyPairQuery_subType = NULL;
    }
    if(keyQuery_includeInactive){
        free(keyQuery_includeInactive);
        keyQuery_includeInactive = NULL;
    }
    if(valueQuery_includeInactive){
        free(valueQuery_includeInactive);
        valueQuery_includeInactive = NULL;
    }
    if(keyPairQuery_includeInactive){
        keyValuePair_free(keyPairQuery_includeInactive);
        keyPairQuery_includeInactive = NULL;
    }
    if(keyQuery_missionTypes){
        free(keyQuery_missionTypes);
        keyQuery_missionTypes = NULL;
    }
    if(valueQuery_missionTypes){
        free(valueQuery_missionTypes);
        valueQuery_missionTypes = NULL;
    }
    if(keyPairQuery_missionTypes){
        keyValuePair_free(keyPairQuery_missionTypes);
        keyPairQuery_missionTypes = NULL;
    }
    if(keyQuery_filter){
        free(keyQuery_filter);
        keyQuery_filter = NULL;
    }
    if(keyPairQuery_filter){
        keyValuePair_free(keyPairQuery_filter);
        keyPairQuery_filter = NULL;
    }
    if(keyQuery_sortField){
        free(keyQuery_sortField);
        keyQuery_sortField = NULL;
    }
    if(keyPairQuery_sortField){
        keyValuePair_free(keyPairQuery_sortField);
        keyPairQuery_sortField = NULL;
    }
    if(keyQuery_descending){
        free(keyQuery_descending);
        keyQuery_descending = NULL;
    }
    if(valueQuery_descending){
        free(valueQuery_descending);
        valueQuery_descending = NULL;
    }
    if(keyPairQuery_descending){
        keyValuePair_free(keyPairQuery_descending);
        keyPairQuery_descending = NULL;
    }
    if(keyQuery_visibility){
        free(keyQuery_visibility);
        keyQuery_visibility = NULL;
    }
    if(valueQuery_visibility){
        free(valueQuery_visibility);
        valueQuery_visibility = NULL;
    }
    if(keyPairQuery_visibility){
        keyValuePair_free(keyPairQuery_visibility);
        keyPairQuery_visibility = NULL;
    }
    if(keyQuery_start){
        free(keyQuery_start);
        keyQuery_start = NULL;
    }
    if(valueQuery_start){
        free(valueQuery_start);
        valueQuery_start = NULL;
    }
    if(keyPairQuery_start){
        keyValuePair_free(keyPairQuery_start);
        keyPairQuery_start = NULL;
    }
    if(keyQuery_limit){
        free(keyQuery_limit);
        keyQuery_limit = NULL;
    }
    if(valueQuery_limit){
        free(valueQuery_limit);
        valueQuery_limit = NULL;
    }
    if(keyPairQuery_limit){
        keyValuePair_free(keyPairQuery_limit);
        keyPairQuery_limit = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Submit Tournament Score
//
// Submit an array of scores for a tournament match. 
//
sirqul_response_t*
TournamentAPI_submitTournamentScore(apiClient_t *apiClient, double version, long accountId, char *appKey, long missionId, long gameId, long packId, char *scores, long gameLevelId)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/api/{version}/tournament/score");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }

    // query parameters
    char *keyQuery_appKey = NULL;
    char * valueQuery_appKey = NULL;
    keyValuePair_t *keyPairQuery_appKey = 0;
    if (appKey)
    {
        keyQuery_appKey = strdup("appKey");
        valueQuery_appKey = strdup((appKey));
        keyPairQuery_appKey = keyValuePair_create(keyQuery_appKey, valueQuery_appKey);
        list_addElement(localVarQueryParameters,keyPairQuery_appKey);
    }

    // query parameters
    char *keyQuery_missionId = NULL;
    char * valueQuery_missionId ;
    keyValuePair_t *keyPairQuery_missionId = 0;
    {
        keyQuery_missionId = strdup("missionId");
        valueQuery_missionId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_missionId, MAX_NUMBER_LENGTH_LONG, "%d", missionId);
        keyPairQuery_missionId = keyValuePair_create(keyQuery_missionId, valueQuery_missionId);
        list_addElement(localVarQueryParameters,keyPairQuery_missionId);
    }

    // query parameters
    char *keyQuery_gameId = NULL;
    char * valueQuery_gameId ;
    keyValuePair_t *keyPairQuery_gameId = 0;
    {
        keyQuery_gameId = strdup("gameId");
        valueQuery_gameId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_gameId, MAX_NUMBER_LENGTH_LONG, "%d", gameId);
        keyPairQuery_gameId = keyValuePair_create(keyQuery_gameId, valueQuery_gameId);
        list_addElement(localVarQueryParameters,keyPairQuery_gameId);
    }

    // query parameters
    char *keyQuery_packId = NULL;
    char * valueQuery_packId ;
    keyValuePair_t *keyPairQuery_packId = 0;
    {
        keyQuery_packId = strdup("packId");
        valueQuery_packId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_packId, MAX_NUMBER_LENGTH_LONG, "%d", packId);
        keyPairQuery_packId = keyValuePair_create(keyQuery_packId, valueQuery_packId);
        list_addElement(localVarQueryParameters,keyPairQuery_packId);
    }

    // query parameters
    char *keyQuery_gameLevelId = NULL;
    char * valueQuery_gameLevelId ;
    keyValuePair_t *keyPairQuery_gameLevelId = 0;
    {
        keyQuery_gameLevelId = strdup("gameLevelId");
        valueQuery_gameLevelId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_gameLevelId, MAX_NUMBER_LENGTH_LONG, "%d", gameLevelId);
        keyPairQuery_gameLevelId = keyValuePair_create(keyQuery_gameLevelId, valueQuery_gameLevelId);
        list_addElement(localVarQueryParameters,keyPairQuery_gameLevelId);
    }

    // query parameters
    char *keyQuery_scores = NULL;
    char * valueQuery_scores = NULL;
    keyValuePair_t *keyPairQuery_scores = 0;
    if (scores)
    {
        keyQuery_scores = strdup("scores");
        valueQuery_scores = strdup((scores));
        keyPairQuery_scores = keyValuePair_create(keyQuery_scores, valueQuery_scores);
        list_addElement(localVarQueryParameters,keyPairQuery_scores);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "POST");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    sirqul_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *TournamentAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(TournamentAPIlocalVarJSON);
        cJSON_Delete(TournamentAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_version);
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(valueQuery_appKey){
        free(valueQuery_appKey);
        valueQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }
    if(keyQuery_missionId){
        free(keyQuery_missionId);
        keyQuery_missionId = NULL;
    }
    if(keyPairQuery_missionId){
        keyValuePair_free(keyPairQuery_missionId);
        keyPairQuery_missionId = NULL;
    }
    if(keyQuery_gameId){
        free(keyQuery_gameId);
        keyQuery_gameId = NULL;
    }
    if(keyPairQuery_gameId){
        keyValuePair_free(keyPairQuery_gameId);
        keyPairQuery_gameId = NULL;
    }
    if(keyQuery_packId){
        free(keyQuery_packId);
        keyQuery_packId = NULL;
    }
    if(keyPairQuery_packId){
        keyValuePair_free(keyPairQuery_packId);
        keyPairQuery_packId = NULL;
    }
    if(keyQuery_gameLevelId){
        free(keyQuery_gameLevelId);
        keyQuery_gameLevelId = NULL;
    }
    if(keyPairQuery_gameLevelId){
        keyValuePair_free(keyPairQuery_gameLevelId);
        keyPairQuery_gameLevelId = NULL;
    }
    if(keyQuery_scores){
        free(keyQuery_scores);
        keyQuery_scores = NULL;
    }
    if(valueQuery_scores){
        free(valueQuery_scores);
        valueQuery_scores = NULL;
    }
    if(keyPairQuery_scores){
        keyValuePair_free(keyPairQuery_scores);
        keyPairQuery_scores = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Submit a vote for a multi-stage album tournament.
//
// Submit a vote for a multi-stage album tournament.
//
sirqul_response_t*
TournamentAPI_submitTournamentVote(apiClient_t *apiClient, double version, long accountId, char *appKey, long missionId, long gameObjectId, char *deviceId, int *checkIfDeviceAlreadyVoted)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/api/{version}/tournament/vote");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



    // query parameters
    char *keyQuery_deviceId = NULL;
    char * valueQuery_deviceId = NULL;
    keyValuePair_t *keyPairQuery_deviceId = 0;
    if (deviceId)
    {
        keyQuery_deviceId = strdup("deviceId");
        valueQuery_deviceId = strdup((deviceId));
        keyPairQuery_deviceId = keyValuePair_create(keyQuery_deviceId, valueQuery_deviceId);
        list_addElement(localVarQueryParameters,keyPairQuery_deviceId);
    }

    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }

    // query parameters
    char *keyQuery_appKey = NULL;
    char * valueQuery_appKey = NULL;
    keyValuePair_t *keyPairQuery_appKey = 0;
    if (appKey)
    {
        keyQuery_appKey = strdup("appKey");
        valueQuery_appKey = strdup((appKey));
        keyPairQuery_appKey = keyValuePair_create(keyQuery_appKey, valueQuery_appKey);
        list_addElement(localVarQueryParameters,keyPairQuery_appKey);
    }

    // query parameters
    char *keyQuery_missionId = NULL;
    char * valueQuery_missionId ;
    keyValuePair_t *keyPairQuery_missionId = 0;
    {
        keyQuery_missionId = strdup("missionId");
        valueQuery_missionId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_missionId, MAX_NUMBER_LENGTH_LONG, "%d", missionId);
        keyPairQuery_missionId = keyValuePair_create(keyQuery_missionId, valueQuery_missionId);
        list_addElement(localVarQueryParameters,keyPairQuery_missionId);
    }

    // query parameters
    char *keyQuery_gameObjectId = NULL;
    char * valueQuery_gameObjectId ;
    keyValuePair_t *keyPairQuery_gameObjectId = 0;
    {
        keyQuery_gameObjectId = strdup("gameObjectId");
        valueQuery_gameObjectId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_gameObjectId, MAX_NUMBER_LENGTH_LONG, "%d", gameObjectId);
        keyPairQuery_gameObjectId = keyValuePair_create(keyQuery_gameObjectId, valueQuery_gameObjectId);
        list_addElement(localVarQueryParameters,keyPairQuery_gameObjectId);
    }

    // query parameters
    char *keyQuery_checkIfDeviceAlreadyVoted = NULL;
    char * valueQuery_checkIfDeviceAlreadyVoted = NULL;
    keyValuePair_t *keyPairQuery_checkIfDeviceAlreadyVoted = 0;
    if (checkIfDeviceAlreadyVoted)
    {
        keyQuery_checkIfDeviceAlreadyVoted = strdup("checkIfDeviceAlreadyVoted");
        valueQuery_checkIfDeviceAlreadyVoted = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_checkIfDeviceAlreadyVoted, MAX_NUMBER_LENGTH, "%d", *checkIfDeviceAlreadyVoted);
        keyPairQuery_checkIfDeviceAlreadyVoted = keyValuePair_create(keyQuery_checkIfDeviceAlreadyVoted, valueQuery_checkIfDeviceAlreadyVoted);
        list_addElement(localVarQueryParameters,keyPairQuery_checkIfDeviceAlreadyVoted);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "POST");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    sirqul_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *TournamentAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(TournamentAPIlocalVarJSON);
        cJSON_Delete(TournamentAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_version);
    if(keyQuery_deviceId){
        free(keyQuery_deviceId);
        keyQuery_deviceId = NULL;
    }
    if(valueQuery_deviceId){
        free(valueQuery_deviceId);
        valueQuery_deviceId = NULL;
    }
    if(keyPairQuery_deviceId){
        keyValuePair_free(keyPairQuery_deviceId);
        keyPairQuery_deviceId = NULL;
    }
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(valueQuery_appKey){
        free(valueQuery_appKey);
        valueQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }
    if(keyQuery_missionId){
        free(keyQuery_missionId);
        keyQuery_missionId = NULL;
    }
    if(keyPairQuery_missionId){
        keyValuePair_free(keyPairQuery_missionId);
        keyPairQuery_missionId = NULL;
    }
    if(keyQuery_gameObjectId){
        free(keyQuery_gameObjectId);
        keyQuery_gameObjectId = NULL;
    }
    if(keyPairQuery_gameObjectId){
        keyValuePair_free(keyPairQuery_gameObjectId);
        keyPairQuery_gameObjectId = NULL;
    }
    if(keyQuery_checkIfDeviceAlreadyVoted){
        free(keyQuery_checkIfDeviceAlreadyVoted);
        keyQuery_checkIfDeviceAlreadyVoted = NULL;
    }
    if(valueQuery_checkIfDeviceAlreadyVoted){
        free(valueQuery_checkIfDeviceAlreadyVoted);
        valueQuery_checkIfDeviceAlreadyVoted = NULL;
    }
    if(keyPairQuery_checkIfDeviceAlreadyVoted){
        keyValuePair_free(keyPairQuery_checkIfDeviceAlreadyVoted);
        keyPairQuery_checkIfDeviceAlreadyVoted = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Substitute Tournament Player
//
// Service to replace the user's opponent in the current level - pack - mission with an AI account.
//
sirqul_response_t*
TournamentAPI_substituteTournamentPlayer(apiClient_t *apiClient, double version, long accountId, long missionId, long packId, long gameLevelId)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/api/{version}/tournament/substitute");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }

    // query parameters
    char *keyQuery_missionId = NULL;
    char * valueQuery_missionId ;
    keyValuePair_t *keyPairQuery_missionId = 0;
    {
        keyQuery_missionId = strdup("missionId");
        valueQuery_missionId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_missionId, MAX_NUMBER_LENGTH_LONG, "%d", missionId);
        keyPairQuery_missionId = keyValuePair_create(keyQuery_missionId, valueQuery_missionId);
        list_addElement(localVarQueryParameters,keyPairQuery_missionId);
    }

    // query parameters
    char *keyQuery_packId = NULL;
    char * valueQuery_packId ;
    keyValuePair_t *keyPairQuery_packId = 0;
    {
        keyQuery_packId = strdup("packId");
        valueQuery_packId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_packId, MAX_NUMBER_LENGTH_LONG, "%d", packId);
        keyPairQuery_packId = keyValuePair_create(keyQuery_packId, valueQuery_packId);
        list_addElement(localVarQueryParameters,keyPairQuery_packId);
    }

    // query parameters
    char *keyQuery_gameLevelId = NULL;
    char * valueQuery_gameLevelId ;
    keyValuePair_t *keyPairQuery_gameLevelId = 0;
    {
        keyQuery_gameLevelId = strdup("gameLevelId");
        valueQuery_gameLevelId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_gameLevelId, MAX_NUMBER_LENGTH_LONG, "%d", gameLevelId);
        keyPairQuery_gameLevelId = keyValuePair_create(keyQuery_gameLevelId, valueQuery_gameLevelId);
        list_addElement(localVarQueryParameters,keyPairQuery_gameLevelId);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "POST");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    sirqul_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *TournamentAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(TournamentAPIlocalVarJSON);
        cJSON_Delete(TournamentAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_version);
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_missionId){
        free(keyQuery_missionId);
        keyQuery_missionId = NULL;
    }
    if(keyPairQuery_missionId){
        keyValuePair_free(keyPairQuery_missionId);
        keyPairQuery_missionId = NULL;
    }
    if(keyQuery_packId){
        free(keyQuery_packId);
        keyQuery_packId = NULL;
    }
    if(keyPairQuery_packId){
        keyValuePair_free(keyPairQuery_packId);
        keyPairQuery_packId = NULL;
    }
    if(keyQuery_gameLevelId){
        free(keyQuery_gameLevelId);
        keyQuery_gameLevelId = NULL;
    }
    if(keyPairQuery_gameLevelId){
        keyValuePair_free(keyPairQuery_gameLevelId);
        keyPairQuery_gameLevelId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Update Tournament
//
// Update a tournament.
//
tournament_response_t*
TournamentAPI_updateTournament(apiClient_t *apiClient, double version, long accountId, long missionId, char *title, char *subType, long imageAssetId, int *secondsBetweenLevels, int *secondsForTieBreaker, int *secondsBetweenPacks, int *maximumLevelLength, int *costToPlay, char *costToPlayType, int *minimumToPlay, int *startingLimit, int *availableLimit, char *description, char *metaData, long startDate, char *audienceIds, int *active, int *enableBuyBack, char *offerIds, long offerAssetId, int *fixedReward, sirqul_iot_platform_updateTournament_splitReward_e splitReward, int *allocateTickets, char *tournamentData, sirqul_iot_platform_updateTournament_visibility_e visibility, int *preliminaryGroups, char *preliminaryGroupAdvancements, int *enableMultipleEntries, int *enableMultipleVotes, int *featured, char *winnerTag, char *tieTag)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/api/{version}/tournament/update");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }

    // query parameters
    char *keyQuery_missionId = NULL;
    char * valueQuery_missionId ;
    keyValuePair_t *keyPairQuery_missionId = 0;
    {
        keyQuery_missionId = strdup("missionId");
        valueQuery_missionId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_missionId, MAX_NUMBER_LENGTH_LONG, "%d", missionId);
        keyPairQuery_missionId = keyValuePair_create(keyQuery_missionId, valueQuery_missionId);
        list_addElement(localVarQueryParameters,keyPairQuery_missionId);
    }

    // query parameters
    char *keyQuery_title = NULL;
    char * valueQuery_title = NULL;
    keyValuePair_t *keyPairQuery_title = 0;
    if (title)
    {
        keyQuery_title = strdup("title");
        valueQuery_title = strdup((title));
        keyPairQuery_title = keyValuePair_create(keyQuery_title, valueQuery_title);
        list_addElement(localVarQueryParameters,keyPairQuery_title);
    }

    // query parameters
    char *keyQuery_subType = NULL;
    char * valueQuery_subType = NULL;
    keyValuePair_t *keyPairQuery_subType = 0;
    if (subType)
    {
        keyQuery_subType = strdup("subType");
        valueQuery_subType = strdup((subType));
        keyPairQuery_subType = keyValuePair_create(keyQuery_subType, valueQuery_subType);
        list_addElement(localVarQueryParameters,keyPairQuery_subType);
    }

    // query parameters
    char *keyQuery_imageAssetId = NULL;
    char * valueQuery_imageAssetId ;
    keyValuePair_t *keyPairQuery_imageAssetId = 0;
    {
        keyQuery_imageAssetId = strdup("imageAssetId");
        valueQuery_imageAssetId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_imageAssetId, MAX_NUMBER_LENGTH_LONG, "%d", imageAssetId);
        keyPairQuery_imageAssetId = keyValuePair_create(keyQuery_imageAssetId, valueQuery_imageAssetId);
        list_addElement(localVarQueryParameters,keyPairQuery_imageAssetId);
    }

    // query parameters
    char *keyQuery_secondsBetweenLevels = NULL;
    char * valueQuery_secondsBetweenLevels = NULL;
    keyValuePair_t *keyPairQuery_secondsBetweenLevels = 0;
    if (secondsBetweenLevels)
    {
        keyQuery_secondsBetweenLevels = strdup("secondsBetweenLevels");
        valueQuery_secondsBetweenLevels = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_secondsBetweenLevels, MAX_NUMBER_LENGTH, "%d", *secondsBetweenLevels);
        keyPairQuery_secondsBetweenLevels = keyValuePair_create(keyQuery_secondsBetweenLevels, valueQuery_secondsBetweenLevels);
        list_addElement(localVarQueryParameters,keyPairQuery_secondsBetweenLevels);
    }

    // query parameters
    char *keyQuery_secondsForTieBreaker = NULL;
    char * valueQuery_secondsForTieBreaker = NULL;
    keyValuePair_t *keyPairQuery_secondsForTieBreaker = 0;
    if (secondsForTieBreaker)
    {
        keyQuery_secondsForTieBreaker = strdup("secondsForTieBreaker");
        valueQuery_secondsForTieBreaker = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_secondsForTieBreaker, MAX_NUMBER_LENGTH, "%d", *secondsForTieBreaker);
        keyPairQuery_secondsForTieBreaker = keyValuePair_create(keyQuery_secondsForTieBreaker, valueQuery_secondsForTieBreaker);
        list_addElement(localVarQueryParameters,keyPairQuery_secondsForTieBreaker);
    }

    // query parameters
    char *keyQuery_secondsBetweenPacks = NULL;
    char * valueQuery_secondsBetweenPacks = NULL;
    keyValuePair_t *keyPairQuery_secondsBetweenPacks = 0;
    if (secondsBetweenPacks)
    {
        keyQuery_secondsBetweenPacks = strdup("secondsBetweenPacks");
        valueQuery_secondsBetweenPacks = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_secondsBetweenPacks, MAX_NUMBER_LENGTH, "%d", *secondsBetweenPacks);
        keyPairQuery_secondsBetweenPacks = keyValuePair_create(keyQuery_secondsBetweenPacks, valueQuery_secondsBetweenPacks);
        list_addElement(localVarQueryParameters,keyPairQuery_secondsBetweenPacks);
    }

    // query parameters
    char *keyQuery_maximumLevelLength = NULL;
    char * valueQuery_maximumLevelLength = NULL;
    keyValuePair_t *keyPairQuery_maximumLevelLength = 0;
    if (maximumLevelLength)
    {
        keyQuery_maximumLevelLength = strdup("maximumLevelLength");
        valueQuery_maximumLevelLength = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_maximumLevelLength, MAX_NUMBER_LENGTH, "%d", *maximumLevelLength);
        keyPairQuery_maximumLevelLength = keyValuePair_create(keyQuery_maximumLevelLength, valueQuery_maximumLevelLength);
        list_addElement(localVarQueryParameters,keyPairQuery_maximumLevelLength);
    }

    // query parameters
    char *keyQuery_costToPlay = NULL;
    char * valueQuery_costToPlay = NULL;
    keyValuePair_t *keyPairQuery_costToPlay = 0;
    if (costToPlay)
    {
        keyQuery_costToPlay = strdup("costToPlay");
        valueQuery_costToPlay = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_costToPlay, MAX_NUMBER_LENGTH, "%d", *costToPlay);
        keyPairQuery_costToPlay = keyValuePair_create(keyQuery_costToPlay, valueQuery_costToPlay);
        list_addElement(localVarQueryParameters,keyPairQuery_costToPlay);
    }

    // query parameters
    char *keyQuery_costToPlayType = NULL;
    char * valueQuery_costToPlayType = NULL;
    keyValuePair_t *keyPairQuery_costToPlayType = 0;
    if (costToPlayType)
    {
        keyQuery_costToPlayType = strdup("costToPlayType");
        valueQuery_costToPlayType = strdup((costToPlayType));
        keyPairQuery_costToPlayType = keyValuePair_create(keyQuery_costToPlayType, valueQuery_costToPlayType);
        list_addElement(localVarQueryParameters,keyPairQuery_costToPlayType);
    }

    // query parameters
    char *keyQuery_minimumToPlay = NULL;
    char * valueQuery_minimumToPlay = NULL;
    keyValuePair_t *keyPairQuery_minimumToPlay = 0;
    if (minimumToPlay)
    {
        keyQuery_minimumToPlay = strdup("minimumToPlay");
        valueQuery_minimumToPlay = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_minimumToPlay, MAX_NUMBER_LENGTH, "%d", *minimumToPlay);
        keyPairQuery_minimumToPlay = keyValuePair_create(keyQuery_minimumToPlay, valueQuery_minimumToPlay);
        list_addElement(localVarQueryParameters,keyPairQuery_minimumToPlay);
    }

    // query parameters
    char *keyQuery_startingLimit = NULL;
    char * valueQuery_startingLimit = NULL;
    keyValuePair_t *keyPairQuery_startingLimit = 0;
    if (startingLimit)
    {
        keyQuery_startingLimit = strdup("startingLimit");
        valueQuery_startingLimit = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_startingLimit, MAX_NUMBER_LENGTH, "%d", *startingLimit);
        keyPairQuery_startingLimit = keyValuePair_create(keyQuery_startingLimit, valueQuery_startingLimit);
        list_addElement(localVarQueryParameters,keyPairQuery_startingLimit);
    }

    // query parameters
    char *keyQuery_availableLimit = NULL;
    char * valueQuery_availableLimit = NULL;
    keyValuePair_t *keyPairQuery_availableLimit = 0;
    if (availableLimit)
    {
        keyQuery_availableLimit = strdup("availableLimit");
        valueQuery_availableLimit = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_availableLimit, MAX_NUMBER_LENGTH, "%d", *availableLimit);
        keyPairQuery_availableLimit = keyValuePair_create(keyQuery_availableLimit, valueQuery_availableLimit);
        list_addElement(localVarQueryParameters,keyPairQuery_availableLimit);
    }

    // query parameters
    char *keyQuery_description = NULL;
    char * valueQuery_description = NULL;
    keyValuePair_t *keyPairQuery_description = 0;
    if (description)
    {
        keyQuery_description = strdup("description");
        valueQuery_description = strdup((description));
        keyPairQuery_description = keyValuePair_create(keyQuery_description, valueQuery_description);
        list_addElement(localVarQueryParameters,keyPairQuery_description);
    }

    // query parameters
    char *keyQuery_metaData = NULL;
    char * valueQuery_metaData = NULL;
    keyValuePair_t *keyPairQuery_metaData = 0;
    if (metaData)
    {
        keyQuery_metaData = strdup("metaData");
        valueQuery_metaData = strdup((metaData));
        keyPairQuery_metaData = keyValuePair_create(keyQuery_metaData, valueQuery_metaData);
        list_addElement(localVarQueryParameters,keyPairQuery_metaData);
    }

    // query parameters
    char *keyQuery_startDate = NULL;
    char * valueQuery_startDate ;
    keyValuePair_t *keyPairQuery_startDate = 0;
    {
        keyQuery_startDate = strdup("startDate");
        valueQuery_startDate = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_startDate, MAX_NUMBER_LENGTH_LONG, "%d", startDate);
        keyPairQuery_startDate = keyValuePair_create(keyQuery_startDate, valueQuery_startDate);
        list_addElement(localVarQueryParameters,keyPairQuery_startDate);
    }

    // query parameters
    char *keyQuery_audienceIds = NULL;
    char * valueQuery_audienceIds = NULL;
    keyValuePair_t *keyPairQuery_audienceIds = 0;
    if (audienceIds)
    {
        keyQuery_audienceIds = strdup("audienceIds");
        valueQuery_audienceIds = strdup((audienceIds));
        keyPairQuery_audienceIds = keyValuePair_create(keyQuery_audienceIds, valueQuery_audienceIds);
        list_addElement(localVarQueryParameters,keyPairQuery_audienceIds);
    }

    // query parameters
    char *keyQuery_active = NULL;
    char * valueQuery_active = NULL;
    keyValuePair_t *keyPairQuery_active = 0;
    if (active)
    {
        keyQuery_active = strdup("active");
        valueQuery_active = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_active, MAX_NUMBER_LENGTH, "%d", *active);
        keyPairQuery_active = keyValuePair_create(keyQuery_active, valueQuery_active);
        list_addElement(localVarQueryParameters,keyPairQuery_active);
    }

    // query parameters
    char *keyQuery_enableBuyBack = NULL;
    char * valueQuery_enableBuyBack = NULL;
    keyValuePair_t *keyPairQuery_enableBuyBack = 0;
    if (enableBuyBack)
    {
        keyQuery_enableBuyBack = strdup("enableBuyBack");
        valueQuery_enableBuyBack = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_enableBuyBack, MAX_NUMBER_LENGTH, "%d", *enableBuyBack);
        keyPairQuery_enableBuyBack = keyValuePair_create(keyQuery_enableBuyBack, valueQuery_enableBuyBack);
        list_addElement(localVarQueryParameters,keyPairQuery_enableBuyBack);
    }

    // query parameters
    char *keyQuery_offerIds = NULL;
    char * valueQuery_offerIds = NULL;
    keyValuePair_t *keyPairQuery_offerIds = 0;
    if (offerIds)
    {
        keyQuery_offerIds = strdup("offerIds");
        valueQuery_offerIds = strdup((offerIds));
        keyPairQuery_offerIds = keyValuePair_create(keyQuery_offerIds, valueQuery_offerIds);
        list_addElement(localVarQueryParameters,keyPairQuery_offerIds);
    }

    // query parameters
    char *keyQuery_offerAssetId = NULL;
    char * valueQuery_offerAssetId ;
    keyValuePair_t *keyPairQuery_offerAssetId = 0;
    {
        keyQuery_offerAssetId = strdup("offerAssetId");
        valueQuery_offerAssetId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_offerAssetId, MAX_NUMBER_LENGTH_LONG, "%d", offerAssetId);
        keyPairQuery_offerAssetId = keyValuePair_create(keyQuery_offerAssetId, valueQuery_offerAssetId);
        list_addElement(localVarQueryParameters,keyPairQuery_offerAssetId);
    }

    // query parameters
    char *keyQuery_fixedReward = NULL;
    char * valueQuery_fixedReward = NULL;
    keyValuePair_t *keyPairQuery_fixedReward = 0;
    if (fixedReward)
    {
        keyQuery_fixedReward = strdup("fixedReward");
        valueQuery_fixedReward = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_fixedReward, MAX_NUMBER_LENGTH, "%d", *fixedReward);
        keyPairQuery_fixedReward = keyValuePair_create(keyQuery_fixedReward, valueQuery_fixedReward);
        list_addElement(localVarQueryParameters,keyPairQuery_fixedReward);
    }

    // query parameters
    char *keyQuery_splitReward = NULL;
    sirqul_iot_platform_updateTournament_splitReward_e valueQuery_splitReward ;
    keyValuePair_t *keyPairQuery_splitReward = 0;
    if (splitReward)
    {
        keyQuery_splitReward = strdup("splitReward");
        valueQuery_splitReward = (splitReward);
        keyPairQuery_splitReward = keyValuePair_create(keyQuery_splitReward, strdup(updateTournament_SPLITREWARD_ToString(
        valueQuery_splitReward)));
        list_addElement(localVarQueryParameters,keyPairQuery_splitReward);
    }

    // query parameters
    char *keyQuery_allocateTickets = NULL;
    char * valueQuery_allocateTickets = NULL;
    keyValuePair_t *keyPairQuery_allocateTickets = 0;
    if (allocateTickets)
    {
        keyQuery_allocateTickets = strdup("allocateTickets");
        valueQuery_allocateTickets = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_allocateTickets, MAX_NUMBER_LENGTH, "%d", *allocateTickets);
        keyPairQuery_allocateTickets = keyValuePair_create(keyQuery_allocateTickets, valueQuery_allocateTickets);
        list_addElement(localVarQueryParameters,keyPairQuery_allocateTickets);
    }

    // query parameters
    char *keyQuery_tournamentData = NULL;
    char * valueQuery_tournamentData = NULL;
    keyValuePair_t *keyPairQuery_tournamentData = 0;
    if (tournamentData)
    {
        keyQuery_tournamentData = strdup("tournamentData");
        valueQuery_tournamentData = strdup((tournamentData));
        keyPairQuery_tournamentData = keyValuePair_create(keyQuery_tournamentData, valueQuery_tournamentData);
        list_addElement(localVarQueryParameters,keyPairQuery_tournamentData);
    }

    // query parameters
    char *keyQuery_visibility = NULL;
    sirqul_iot_platform_updateTournament_visibility_e valueQuery_visibility ;
    keyValuePair_t *keyPairQuery_visibility = 0;
    if (visibility)
    {
        keyQuery_visibility = strdup("visibility");
        valueQuery_visibility = (visibility);
        keyPairQuery_visibility = keyValuePair_create(keyQuery_visibility, strdup(updateTournament_VISIBILITY_ToString(
        valueQuery_visibility)));
        list_addElement(localVarQueryParameters,keyPairQuery_visibility);
    }

    // query parameters
    char *keyQuery_preliminaryGroups = NULL;
    char * valueQuery_preliminaryGroups = NULL;
    keyValuePair_t *keyPairQuery_preliminaryGroups = 0;
    if (preliminaryGroups)
    {
        keyQuery_preliminaryGroups = strdup("preliminaryGroups");
        valueQuery_preliminaryGroups = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_preliminaryGroups, MAX_NUMBER_LENGTH, "%d", *preliminaryGroups);
        keyPairQuery_preliminaryGroups = keyValuePair_create(keyQuery_preliminaryGroups, valueQuery_preliminaryGroups);
        list_addElement(localVarQueryParameters,keyPairQuery_preliminaryGroups);
    }

    // query parameters
    char *keyQuery_preliminaryGroupAdvancements = NULL;
    char * valueQuery_preliminaryGroupAdvancements = NULL;
    keyValuePair_t *keyPairQuery_preliminaryGroupAdvancements = 0;
    if (preliminaryGroupAdvancements)
    {
        keyQuery_preliminaryGroupAdvancements = strdup("preliminaryGroupAdvancements");
        valueQuery_preliminaryGroupAdvancements = strdup((preliminaryGroupAdvancements));
        keyPairQuery_preliminaryGroupAdvancements = keyValuePair_create(keyQuery_preliminaryGroupAdvancements, valueQuery_preliminaryGroupAdvancements);
        list_addElement(localVarQueryParameters,keyPairQuery_preliminaryGroupAdvancements);
    }

    // query parameters
    char *keyQuery_enableMultipleEntries = NULL;
    char * valueQuery_enableMultipleEntries = NULL;
    keyValuePair_t *keyPairQuery_enableMultipleEntries = 0;
    if (enableMultipleEntries)
    {
        keyQuery_enableMultipleEntries = strdup("enableMultipleEntries");
        valueQuery_enableMultipleEntries = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_enableMultipleEntries, MAX_NUMBER_LENGTH, "%d", *enableMultipleEntries);
        keyPairQuery_enableMultipleEntries = keyValuePair_create(keyQuery_enableMultipleEntries, valueQuery_enableMultipleEntries);
        list_addElement(localVarQueryParameters,keyPairQuery_enableMultipleEntries);
    }

    // query parameters
    char *keyQuery_enableMultipleVotes = NULL;
    char * valueQuery_enableMultipleVotes = NULL;
    keyValuePair_t *keyPairQuery_enableMultipleVotes = 0;
    if (enableMultipleVotes)
    {
        keyQuery_enableMultipleVotes = strdup("enableMultipleVotes");
        valueQuery_enableMultipleVotes = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_enableMultipleVotes, MAX_NUMBER_LENGTH, "%d", *enableMultipleVotes);
        keyPairQuery_enableMultipleVotes = keyValuePair_create(keyQuery_enableMultipleVotes, valueQuery_enableMultipleVotes);
        list_addElement(localVarQueryParameters,keyPairQuery_enableMultipleVotes);
    }

    // query parameters
    char *keyQuery_featured = NULL;
    char * valueQuery_featured = NULL;
    keyValuePair_t *keyPairQuery_featured = 0;
    if (featured)
    {
        keyQuery_featured = strdup("featured");
        valueQuery_featured = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_featured, MAX_NUMBER_LENGTH, "%d", *featured);
        keyPairQuery_featured = keyValuePair_create(keyQuery_featured, valueQuery_featured);
        list_addElement(localVarQueryParameters,keyPairQuery_featured);
    }

    // query parameters
    char *keyQuery_winnerTag = NULL;
    char * valueQuery_winnerTag = NULL;
    keyValuePair_t *keyPairQuery_winnerTag = 0;
    if (winnerTag)
    {
        keyQuery_winnerTag = strdup("winnerTag");
        valueQuery_winnerTag = strdup((winnerTag));
        keyPairQuery_winnerTag = keyValuePair_create(keyQuery_winnerTag, valueQuery_winnerTag);
        list_addElement(localVarQueryParameters,keyPairQuery_winnerTag);
    }

    // query parameters
    char *keyQuery_tieTag = NULL;
    char * valueQuery_tieTag = NULL;
    keyValuePair_t *keyPairQuery_tieTag = 0;
    if (tieTag)
    {
        keyQuery_tieTag = strdup("tieTag");
        valueQuery_tieTag = strdup((tieTag));
        keyPairQuery_tieTag = keyValuePair_create(keyQuery_tieTag, valueQuery_tieTag);
        list_addElement(localVarQueryParameters,keyPairQuery_tieTag);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "POST");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    tournament_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *TournamentAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = tournament_response_parseFromJSON(TournamentAPIlocalVarJSON);
        cJSON_Delete(TournamentAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_version);
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_missionId){
        free(keyQuery_missionId);
        keyQuery_missionId = NULL;
    }
    if(keyPairQuery_missionId){
        keyValuePair_free(keyPairQuery_missionId);
        keyPairQuery_missionId = NULL;
    }
    if(keyQuery_title){
        free(keyQuery_title);
        keyQuery_title = NULL;
    }
    if(valueQuery_title){
        free(valueQuery_title);
        valueQuery_title = NULL;
    }
    if(keyPairQuery_title){
        keyValuePair_free(keyPairQuery_title);
        keyPairQuery_title = NULL;
    }
    if(keyQuery_subType){
        free(keyQuery_subType);
        keyQuery_subType = NULL;
    }
    if(valueQuery_subType){
        free(valueQuery_subType);
        valueQuery_subType = NULL;
    }
    if(keyPairQuery_subType){
        keyValuePair_free(keyPairQuery_subType);
        keyPairQuery_subType = NULL;
    }
    if(keyQuery_imageAssetId){
        free(keyQuery_imageAssetId);
        keyQuery_imageAssetId = NULL;
    }
    if(keyPairQuery_imageAssetId){
        keyValuePair_free(keyPairQuery_imageAssetId);
        keyPairQuery_imageAssetId = NULL;
    }
    if(keyQuery_secondsBetweenLevels){
        free(keyQuery_secondsBetweenLevels);
        keyQuery_secondsBetweenLevels = NULL;
    }
    if(valueQuery_secondsBetweenLevels){
        free(valueQuery_secondsBetweenLevels);
        valueQuery_secondsBetweenLevels = NULL;
    }
    if(keyPairQuery_secondsBetweenLevels){
        keyValuePair_free(keyPairQuery_secondsBetweenLevels);
        keyPairQuery_secondsBetweenLevels = NULL;
    }
    if(keyQuery_secondsForTieBreaker){
        free(keyQuery_secondsForTieBreaker);
        keyQuery_secondsForTieBreaker = NULL;
    }
    if(valueQuery_secondsForTieBreaker){
        free(valueQuery_secondsForTieBreaker);
        valueQuery_secondsForTieBreaker = NULL;
    }
    if(keyPairQuery_secondsForTieBreaker){
        keyValuePair_free(keyPairQuery_secondsForTieBreaker);
        keyPairQuery_secondsForTieBreaker = NULL;
    }
    if(keyQuery_secondsBetweenPacks){
        free(keyQuery_secondsBetweenPacks);
        keyQuery_secondsBetweenPacks = NULL;
    }
    if(valueQuery_secondsBetweenPacks){
        free(valueQuery_secondsBetweenPacks);
        valueQuery_secondsBetweenPacks = NULL;
    }
    if(keyPairQuery_secondsBetweenPacks){
        keyValuePair_free(keyPairQuery_secondsBetweenPacks);
        keyPairQuery_secondsBetweenPacks = NULL;
    }
    if(keyQuery_maximumLevelLength){
        free(keyQuery_maximumLevelLength);
        keyQuery_maximumLevelLength = NULL;
    }
    if(valueQuery_maximumLevelLength){
        free(valueQuery_maximumLevelLength);
        valueQuery_maximumLevelLength = NULL;
    }
    if(keyPairQuery_maximumLevelLength){
        keyValuePair_free(keyPairQuery_maximumLevelLength);
        keyPairQuery_maximumLevelLength = NULL;
    }
    if(keyQuery_costToPlay){
        free(keyQuery_costToPlay);
        keyQuery_costToPlay = NULL;
    }
    if(valueQuery_costToPlay){
        free(valueQuery_costToPlay);
        valueQuery_costToPlay = NULL;
    }
    if(keyPairQuery_costToPlay){
        keyValuePair_free(keyPairQuery_costToPlay);
        keyPairQuery_costToPlay = NULL;
    }
    if(keyQuery_costToPlayType){
        free(keyQuery_costToPlayType);
        keyQuery_costToPlayType = NULL;
    }
    if(valueQuery_costToPlayType){
        free(valueQuery_costToPlayType);
        valueQuery_costToPlayType = NULL;
    }
    if(keyPairQuery_costToPlayType){
        keyValuePair_free(keyPairQuery_costToPlayType);
        keyPairQuery_costToPlayType = NULL;
    }
    if(keyQuery_minimumToPlay){
        free(keyQuery_minimumToPlay);
        keyQuery_minimumToPlay = NULL;
    }
    if(valueQuery_minimumToPlay){
        free(valueQuery_minimumToPlay);
        valueQuery_minimumToPlay = NULL;
    }
    if(keyPairQuery_minimumToPlay){
        keyValuePair_free(keyPairQuery_minimumToPlay);
        keyPairQuery_minimumToPlay = NULL;
    }
    if(keyQuery_startingLimit){
        free(keyQuery_startingLimit);
        keyQuery_startingLimit = NULL;
    }
    if(valueQuery_startingLimit){
        free(valueQuery_startingLimit);
        valueQuery_startingLimit = NULL;
    }
    if(keyPairQuery_startingLimit){
        keyValuePair_free(keyPairQuery_startingLimit);
        keyPairQuery_startingLimit = NULL;
    }
    if(keyQuery_availableLimit){
        free(keyQuery_availableLimit);
        keyQuery_availableLimit = NULL;
    }
    if(valueQuery_availableLimit){
        free(valueQuery_availableLimit);
        valueQuery_availableLimit = NULL;
    }
    if(keyPairQuery_availableLimit){
        keyValuePair_free(keyPairQuery_availableLimit);
        keyPairQuery_availableLimit = NULL;
    }
    if(keyQuery_description){
        free(keyQuery_description);
        keyQuery_description = NULL;
    }
    if(valueQuery_description){
        free(valueQuery_description);
        valueQuery_description = NULL;
    }
    if(keyPairQuery_description){
        keyValuePair_free(keyPairQuery_description);
        keyPairQuery_description = NULL;
    }
    if(keyQuery_metaData){
        free(keyQuery_metaData);
        keyQuery_metaData = NULL;
    }
    if(valueQuery_metaData){
        free(valueQuery_metaData);
        valueQuery_metaData = NULL;
    }
    if(keyPairQuery_metaData){
        keyValuePair_free(keyPairQuery_metaData);
        keyPairQuery_metaData = NULL;
    }
    if(keyQuery_startDate){
        free(keyQuery_startDate);
        keyQuery_startDate = NULL;
    }
    if(keyPairQuery_startDate){
        keyValuePair_free(keyPairQuery_startDate);
        keyPairQuery_startDate = NULL;
    }
    if(keyQuery_audienceIds){
        free(keyQuery_audienceIds);
        keyQuery_audienceIds = NULL;
    }
    if(valueQuery_audienceIds){
        free(valueQuery_audienceIds);
        valueQuery_audienceIds = NULL;
    }
    if(keyPairQuery_audienceIds){
        keyValuePair_free(keyPairQuery_audienceIds);
        keyPairQuery_audienceIds = NULL;
    }
    if(keyQuery_active){
        free(keyQuery_active);
        keyQuery_active = NULL;
    }
    if(valueQuery_active){
        free(valueQuery_active);
        valueQuery_active = NULL;
    }
    if(keyPairQuery_active){
        keyValuePair_free(keyPairQuery_active);
        keyPairQuery_active = NULL;
    }
    if(keyQuery_enableBuyBack){
        free(keyQuery_enableBuyBack);
        keyQuery_enableBuyBack = NULL;
    }
    if(valueQuery_enableBuyBack){
        free(valueQuery_enableBuyBack);
        valueQuery_enableBuyBack = NULL;
    }
    if(keyPairQuery_enableBuyBack){
        keyValuePair_free(keyPairQuery_enableBuyBack);
        keyPairQuery_enableBuyBack = NULL;
    }
    if(keyQuery_offerIds){
        free(keyQuery_offerIds);
        keyQuery_offerIds = NULL;
    }
    if(valueQuery_offerIds){
        free(valueQuery_offerIds);
        valueQuery_offerIds = NULL;
    }
    if(keyPairQuery_offerIds){
        keyValuePair_free(keyPairQuery_offerIds);
        keyPairQuery_offerIds = NULL;
    }
    if(keyQuery_offerAssetId){
        free(keyQuery_offerAssetId);
        keyQuery_offerAssetId = NULL;
    }
    if(keyPairQuery_offerAssetId){
        keyValuePair_free(keyPairQuery_offerAssetId);
        keyPairQuery_offerAssetId = NULL;
    }
    if(keyQuery_fixedReward){
        free(keyQuery_fixedReward);
        keyQuery_fixedReward = NULL;
    }
    if(valueQuery_fixedReward){
        free(valueQuery_fixedReward);
        valueQuery_fixedReward = NULL;
    }
    if(keyPairQuery_fixedReward){
        keyValuePair_free(keyPairQuery_fixedReward);
        keyPairQuery_fixedReward = NULL;
    }
    if(keyQuery_splitReward){
        free(keyQuery_splitReward);
        keyQuery_splitReward = NULL;
    }
    if(keyPairQuery_splitReward){
        keyValuePair_free(keyPairQuery_splitReward);
        keyPairQuery_splitReward = NULL;
    }
    if(keyQuery_allocateTickets){
        free(keyQuery_allocateTickets);
        keyQuery_allocateTickets = NULL;
    }
    if(valueQuery_allocateTickets){
        free(valueQuery_allocateTickets);
        valueQuery_allocateTickets = NULL;
    }
    if(keyPairQuery_allocateTickets){
        keyValuePair_free(keyPairQuery_allocateTickets);
        keyPairQuery_allocateTickets = NULL;
    }
    if(keyQuery_tournamentData){
        free(keyQuery_tournamentData);
        keyQuery_tournamentData = NULL;
    }
    if(valueQuery_tournamentData){
        free(valueQuery_tournamentData);
        valueQuery_tournamentData = NULL;
    }
    if(keyPairQuery_tournamentData){
        keyValuePair_free(keyPairQuery_tournamentData);
        keyPairQuery_tournamentData = NULL;
    }
    if(keyQuery_visibility){
        free(keyQuery_visibility);
        keyQuery_visibility = NULL;
    }
    if(keyPairQuery_visibility){
        keyValuePair_free(keyPairQuery_visibility);
        keyPairQuery_visibility = NULL;
    }
    if(keyQuery_preliminaryGroups){
        free(keyQuery_preliminaryGroups);
        keyQuery_preliminaryGroups = NULL;
    }
    if(valueQuery_preliminaryGroups){
        free(valueQuery_preliminaryGroups);
        valueQuery_preliminaryGroups = NULL;
    }
    if(keyPairQuery_preliminaryGroups){
        keyValuePair_free(keyPairQuery_preliminaryGroups);
        keyPairQuery_preliminaryGroups = NULL;
    }
    if(keyQuery_preliminaryGroupAdvancements){
        free(keyQuery_preliminaryGroupAdvancements);
        keyQuery_preliminaryGroupAdvancements = NULL;
    }
    if(valueQuery_preliminaryGroupAdvancements){
        free(valueQuery_preliminaryGroupAdvancements);
        valueQuery_preliminaryGroupAdvancements = NULL;
    }
    if(keyPairQuery_preliminaryGroupAdvancements){
        keyValuePair_free(keyPairQuery_preliminaryGroupAdvancements);
        keyPairQuery_preliminaryGroupAdvancements = NULL;
    }
    if(keyQuery_enableMultipleEntries){
        free(keyQuery_enableMultipleEntries);
        keyQuery_enableMultipleEntries = NULL;
    }
    if(valueQuery_enableMultipleEntries){
        free(valueQuery_enableMultipleEntries);
        valueQuery_enableMultipleEntries = NULL;
    }
    if(keyPairQuery_enableMultipleEntries){
        keyValuePair_free(keyPairQuery_enableMultipleEntries);
        keyPairQuery_enableMultipleEntries = NULL;
    }
    if(keyQuery_enableMultipleVotes){
        free(keyQuery_enableMultipleVotes);
        keyQuery_enableMultipleVotes = NULL;
    }
    if(valueQuery_enableMultipleVotes){
        free(valueQuery_enableMultipleVotes);
        valueQuery_enableMultipleVotes = NULL;
    }
    if(keyPairQuery_enableMultipleVotes){
        keyValuePair_free(keyPairQuery_enableMultipleVotes);
        keyPairQuery_enableMultipleVotes = NULL;
    }
    if(keyQuery_featured){
        free(keyQuery_featured);
        keyQuery_featured = NULL;
    }
    if(valueQuery_featured){
        free(valueQuery_featured);
        valueQuery_featured = NULL;
    }
    if(keyPairQuery_featured){
        keyValuePair_free(keyPairQuery_featured);
        keyPairQuery_featured = NULL;
    }
    if(keyQuery_winnerTag){
        free(keyQuery_winnerTag);
        keyQuery_winnerTag = NULL;
    }
    if(valueQuery_winnerTag){
        free(valueQuery_winnerTag);
        valueQuery_winnerTag = NULL;
    }
    if(keyPairQuery_winnerTag){
        keyValuePair_free(keyPairQuery_winnerTag);
        keyPairQuery_winnerTag = NULL;
    }
    if(keyQuery_tieTag){
        free(keyQuery_tieTag);
        keyQuery_tieTag = NULL;
    }
    if(valueQuery_tieTag){
        free(valueQuery_tieTag);
        valueQuery_tieTag = NULL;
    }
    if(keyPairQuery_tieTag){
        keyValuePair_free(keyPairQuery_tieTag);
        keyPairQuery_tieTag = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

