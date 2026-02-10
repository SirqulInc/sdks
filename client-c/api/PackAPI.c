#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "PackAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21

// Functions for enum PACKTYPE for PackAPI_createPack

static char* createPack_PACKTYPE_ToString(sirqul_iot_platform_createPack_packType_e PACKTYPE){
    char *PACKTYPEArray[] =  { "NULL", "TUTORIAL", "BUILTIN", "DOWNLOAD", "THRESHOLD", "THEME", "TOURNAMENT" };
    return PACKTYPEArray[PACKTYPE];
}

static sirqul_iot_platform_createPack_packType_e createPack_PACKTYPE_FromString(char* PACKTYPE){
    int stringToReturn = 0;
    char *PACKTYPEArray[] =  { "NULL", "TUTORIAL", "BUILTIN", "DOWNLOAD", "THRESHOLD", "THEME", "TOURNAMENT" };
    size_t sizeofArray = sizeof(PACKTYPEArray) / sizeof(PACKTYPEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(PACKTYPE, PACKTYPEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function createPack_PACKTYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *createPack_PACKTYPE_convertToJSON(sirqul_iot_platform_createPack_packType_e PACKTYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "packType", createPack_PACKTYPE_ToString(PACKTYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function createPack_PACKTYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_createPack_packType_e createPack_PACKTYPE_parseFromJSON(cJSON* PACKTYPEJSON) {
    sirqul_iot_platform_createPack_packType_e PACKTYPEVariable = 0;
    cJSON *PACKTYPEVar = cJSON_GetObjectItemCaseSensitive(PACKTYPEJSON, "packType");
    if(!cJSON_IsString(PACKTYPEVar) || (PACKTYPEVar->valuestring == NULL))
    {
        goto end;
    }
    PACKTYPEVariable = createPack_PACKTYPE_FromString(PACKTYPEVar->valuestring);
    return PACKTYPEVariable;
end:
    return 0;
}
*/

// Functions for enum SEQUENCETYPE for PackAPI_createPack

static char* createPack_SEQUENCETYPE_ToString(sirqul_iot_platform_createPack_sequenceType_e SEQUENCETYPE){
    char *SEQUENCETYPEArray[] =  { "NULL", "FIRST_AVAILABLE", "ALL_AVAILABLE" };
    return SEQUENCETYPEArray[SEQUENCETYPE];
}

static sirqul_iot_platform_createPack_sequenceType_e createPack_SEQUENCETYPE_FromString(char* SEQUENCETYPE){
    int stringToReturn = 0;
    char *SEQUENCETYPEArray[] =  { "NULL", "FIRST_AVAILABLE", "ALL_AVAILABLE" };
    size_t sizeofArray = sizeof(SEQUENCETYPEArray) / sizeof(SEQUENCETYPEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(SEQUENCETYPE, SEQUENCETYPEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function createPack_SEQUENCETYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *createPack_SEQUENCETYPE_convertToJSON(sirqul_iot_platform_createPack_sequenceType_e SEQUENCETYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "sequenceType", createPack_SEQUENCETYPE_ToString(SEQUENCETYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function createPack_SEQUENCETYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_createPack_sequenceType_e createPack_SEQUENCETYPE_parseFromJSON(cJSON* SEQUENCETYPEJSON) {
    sirqul_iot_platform_createPack_sequenceType_e SEQUENCETYPEVariable = 0;
    cJSON *SEQUENCETYPEVar = cJSON_GetObjectItemCaseSensitive(SEQUENCETYPEJSON, "sequenceType");
    if(!cJSON_IsString(SEQUENCETYPEVar) || (SEQUENCETYPEVar->valuestring == NULL))
    {
        goto end;
    }
    SEQUENCETYPEVariable = createPack_SEQUENCETYPE_FromString(SEQUENCETYPEVar->valuestring);
    return SEQUENCETYPEVariable;
end:
    return 0;
}
*/

// Functions for enum SORTFIELD for PackAPI_searchPacks

static char* searchPacks_SORTFIELD_ToString(sirqul_iot_platform_searchPacks_sortField_e SORTFIELD){
    char *SORTFIELDArray[] =  { "NULL", "TITLE", "DESCRIPTION", "CREATED", "UPDATED" };
    return SORTFIELDArray[SORTFIELD];
}

static sirqul_iot_platform_searchPacks_sortField_e searchPacks_SORTFIELD_FromString(char* SORTFIELD){
    int stringToReturn = 0;
    char *SORTFIELDArray[] =  { "NULL", "TITLE", "DESCRIPTION", "CREATED", "UPDATED" };
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
// Function searchPacks_SORTFIELD_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *searchPacks_SORTFIELD_convertToJSON(sirqul_iot_platform_searchPacks_sortField_e SORTFIELD) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "sortField", searchPacks_SORTFIELD_ToString(SORTFIELD)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function searchPacks_SORTFIELD_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_searchPacks_sortField_e searchPacks_SORTFIELD_parseFromJSON(cJSON* SORTFIELDJSON) {
    sirqul_iot_platform_searchPacks_sortField_e SORTFIELDVariable = 0;
    cJSON *SORTFIELDVar = cJSON_GetObjectItemCaseSensitive(SORTFIELDJSON, "sortField");
    if(!cJSON_IsString(SORTFIELDVar) || (SORTFIELDVar->valuestring == NULL))
    {
        goto end;
    }
    SORTFIELDVariable = searchPacks_SORTFIELD_FromString(SORTFIELDVar->valuestring);
    return SORTFIELDVariable;
end:
    return 0;
}
*/

// Functions for enum PACKTYPE for PackAPI_searchPacks

static char* searchPacks_PACKTYPE_ToString(sirqul_iot_platform_searchPacks_packType_e PACKTYPE){
    char *PACKTYPEArray[] =  { "NULL", "TUTORIAL", "BUILTIN", "DOWNLOAD", "THRESHOLD", "THEME", "TOURNAMENT" };
    return PACKTYPEArray[PACKTYPE];
}

static sirqul_iot_platform_searchPacks_packType_e searchPacks_PACKTYPE_FromString(char* PACKTYPE){
    int stringToReturn = 0;
    char *PACKTYPEArray[] =  { "NULL", "TUTORIAL", "BUILTIN", "DOWNLOAD", "THRESHOLD", "THEME", "TOURNAMENT" };
    size_t sizeofArray = sizeof(PACKTYPEArray) / sizeof(PACKTYPEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(PACKTYPE, PACKTYPEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function searchPacks_PACKTYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *searchPacks_PACKTYPE_convertToJSON(sirqul_iot_platform_searchPacks_packType_e PACKTYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "packType", searchPacks_PACKTYPE_ToString(PACKTYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function searchPacks_PACKTYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_searchPacks_packType_e searchPacks_PACKTYPE_parseFromJSON(cJSON* PACKTYPEJSON) {
    sirqul_iot_platform_searchPacks_packType_e PACKTYPEVariable = 0;
    cJSON *PACKTYPEVar = cJSON_GetObjectItemCaseSensitive(PACKTYPEJSON, "packType");
    if(!cJSON_IsString(PACKTYPEVar) || (PACKTYPEVar->valuestring == NULL))
    {
        goto end;
    }
    PACKTYPEVariable = searchPacks_PACKTYPE_FromString(PACKTYPEVar->valuestring);
    return PACKTYPEVariable;
end:
    return 0;
}
*/

// Functions for enum PACKTYPE for PackAPI_updatePack

static char* updatePack_PACKTYPE_ToString(sirqul_iot_platform_updatePack_packType_e PACKTYPE){
    char *PACKTYPEArray[] =  { "NULL", "TUTORIAL", "BUILTIN", "DOWNLOAD", "THRESHOLD", "THEME", "TOURNAMENT" };
    return PACKTYPEArray[PACKTYPE];
}

static sirqul_iot_platform_updatePack_packType_e updatePack_PACKTYPE_FromString(char* PACKTYPE){
    int stringToReturn = 0;
    char *PACKTYPEArray[] =  { "NULL", "TUTORIAL", "BUILTIN", "DOWNLOAD", "THRESHOLD", "THEME", "TOURNAMENT" };
    size_t sizeofArray = sizeof(PACKTYPEArray) / sizeof(PACKTYPEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(PACKTYPE, PACKTYPEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function updatePack_PACKTYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *updatePack_PACKTYPE_convertToJSON(sirqul_iot_platform_updatePack_packType_e PACKTYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "packType", updatePack_PACKTYPE_ToString(PACKTYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function updatePack_PACKTYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_updatePack_packType_e updatePack_PACKTYPE_parseFromJSON(cJSON* PACKTYPEJSON) {
    sirqul_iot_platform_updatePack_packType_e PACKTYPEVariable = 0;
    cJSON *PACKTYPEVar = cJSON_GetObjectItemCaseSensitive(PACKTYPEJSON, "packType");
    if(!cJSON_IsString(PACKTYPEVar) || (PACKTYPEVar->valuestring == NULL))
    {
        goto end;
    }
    PACKTYPEVariable = updatePack_PACKTYPE_FromString(PACKTYPEVar->valuestring);
    return PACKTYPEVariable;
end:
    return 0;
}
*/

// Functions for enum SEQUENCETYPE for PackAPI_updatePack

static char* updatePack_SEQUENCETYPE_ToString(sirqul_iot_platform_updatePack_sequenceType_e SEQUENCETYPE){
    char *SEQUENCETYPEArray[] =  { "NULL", "FIRST_AVAILABLE", "ALL_AVAILABLE" };
    return SEQUENCETYPEArray[SEQUENCETYPE];
}

static sirqul_iot_platform_updatePack_sequenceType_e updatePack_SEQUENCETYPE_FromString(char* SEQUENCETYPE){
    int stringToReturn = 0;
    char *SEQUENCETYPEArray[] =  { "NULL", "FIRST_AVAILABLE", "ALL_AVAILABLE" };
    size_t sizeofArray = sizeof(SEQUENCETYPEArray) / sizeof(SEQUENCETYPEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(SEQUENCETYPE, SEQUENCETYPEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function updatePack_SEQUENCETYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *updatePack_SEQUENCETYPE_convertToJSON(sirqul_iot_platform_updatePack_sequenceType_e SEQUENCETYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "sequenceType", updatePack_SEQUENCETYPE_ToString(SEQUENCETYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function updatePack_SEQUENCETYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_updatePack_sequenceType_e updatePack_SEQUENCETYPE_parseFromJSON(cJSON* SEQUENCETYPEJSON) {
    sirqul_iot_platform_updatePack_sequenceType_e SEQUENCETYPEVariable = 0;
    cJSON *SEQUENCETYPEVar = cJSON_GetObjectItemCaseSensitive(SEQUENCETYPEJSON, "sequenceType");
    if(!cJSON_IsString(SEQUENCETYPEVar) || (SEQUENCETYPEVar->valuestring == NULL))
    {
        goto end;
    }
    SEQUENCETYPEVariable = updatePack_SEQUENCETYPE_FromString(SEQUENCETYPEVar->valuestring);
    return SEQUENCETYPEVariable;
end:
    return 0;
}
*/


// Create Pack
//
// Create a pack.
//
pack_response_t*
PackAPI_createPack(apiClient_t *apiClient, double version, long accountId, char *title, long packOrder, int *price, int *highest, int *allocateTickets, long ticketCount, char *description, char *searchTags, int *active, char *gameType, char *appKey, sirqul_iot_platform_createPack_packType_e packType, sirqul_iot_platform_createPack_sequenceType_e sequenceType, long backgroundId, long imageId, long startDate, long endDate, char *authorOverride, char *priceType, char *gameLevelIds, int *inGame, char *ticketType, long points)
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
    char *localVarPath = strdup("/api/{version}/pack/create");



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
    char *keyQuery_searchTags = NULL;
    char * valueQuery_searchTags = NULL;
    keyValuePair_t *keyPairQuery_searchTags = 0;
    if (searchTags)
    {
        keyQuery_searchTags = strdup("searchTags");
        valueQuery_searchTags = strdup((searchTags));
        keyPairQuery_searchTags = keyValuePair_create(keyQuery_searchTags, valueQuery_searchTags);
        list_addElement(localVarQueryParameters,keyPairQuery_searchTags);
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
    char *keyQuery_gameType = NULL;
    char * valueQuery_gameType = NULL;
    keyValuePair_t *keyPairQuery_gameType = 0;
    if (gameType)
    {
        keyQuery_gameType = strdup("gameType");
        valueQuery_gameType = strdup((gameType));
        keyPairQuery_gameType = keyValuePair_create(keyQuery_gameType, valueQuery_gameType);
        list_addElement(localVarQueryParameters,keyPairQuery_gameType);
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
    char *keyQuery_packType = NULL;
    sirqul_iot_platform_createPack_packType_e valueQuery_packType ;
    keyValuePair_t *keyPairQuery_packType = 0;
    if (packType)
    {
        keyQuery_packType = strdup("packType");
        valueQuery_packType = (packType);
        keyPairQuery_packType = keyValuePair_create(keyQuery_packType, strdup(createPack_PACKTYPE_ToString(
        valueQuery_packType)));
        list_addElement(localVarQueryParameters,keyPairQuery_packType);
    }

    // query parameters
    char *keyQuery_packOrder = NULL;
    char * valueQuery_packOrder ;
    keyValuePair_t *keyPairQuery_packOrder = 0;
    {
        keyQuery_packOrder = strdup("packOrder");
        valueQuery_packOrder = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_packOrder, MAX_NUMBER_LENGTH_LONG, "%d", packOrder);
        keyPairQuery_packOrder = keyValuePair_create(keyQuery_packOrder, valueQuery_packOrder);
        list_addElement(localVarQueryParameters,keyPairQuery_packOrder);
    }

    // query parameters
    char *keyQuery_sequenceType = NULL;
    sirqul_iot_platform_createPack_sequenceType_e valueQuery_sequenceType ;
    keyValuePair_t *keyPairQuery_sequenceType = 0;
    if (sequenceType)
    {
        keyQuery_sequenceType = strdup("sequenceType");
        valueQuery_sequenceType = (sequenceType);
        keyPairQuery_sequenceType = keyValuePair_create(keyQuery_sequenceType, strdup(createPack_SEQUENCETYPE_ToString(
        valueQuery_sequenceType)));
        list_addElement(localVarQueryParameters,keyPairQuery_sequenceType);
    }

    // query parameters
    char *keyQuery_backgroundId = NULL;
    char * valueQuery_backgroundId ;
    keyValuePair_t *keyPairQuery_backgroundId = 0;
    {
        keyQuery_backgroundId = strdup("backgroundId");
        valueQuery_backgroundId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_backgroundId, MAX_NUMBER_LENGTH_LONG, "%d", backgroundId);
        keyPairQuery_backgroundId = keyValuePair_create(keyQuery_backgroundId, valueQuery_backgroundId);
        list_addElement(localVarQueryParameters,keyPairQuery_backgroundId);
    }

    // query parameters
    char *keyQuery_imageId = NULL;
    char * valueQuery_imageId ;
    keyValuePair_t *keyPairQuery_imageId = 0;
    {
        keyQuery_imageId = strdup("imageId");
        valueQuery_imageId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_imageId, MAX_NUMBER_LENGTH_LONG, "%d", imageId);
        keyPairQuery_imageId = keyValuePair_create(keyQuery_imageId, valueQuery_imageId);
        list_addElement(localVarQueryParameters,keyPairQuery_imageId);
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
    char *keyQuery_endDate = NULL;
    char * valueQuery_endDate ;
    keyValuePair_t *keyPairQuery_endDate = 0;
    {
        keyQuery_endDate = strdup("endDate");
        valueQuery_endDate = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_endDate, MAX_NUMBER_LENGTH_LONG, "%d", endDate);
        keyPairQuery_endDate = keyValuePair_create(keyQuery_endDate, valueQuery_endDate);
        list_addElement(localVarQueryParameters,keyPairQuery_endDate);
    }

    // query parameters
    char *keyQuery_authorOverride = NULL;
    char * valueQuery_authorOverride = NULL;
    keyValuePair_t *keyPairQuery_authorOverride = 0;
    if (authorOverride)
    {
        keyQuery_authorOverride = strdup("authorOverride");
        valueQuery_authorOverride = strdup((authorOverride));
        keyPairQuery_authorOverride = keyValuePair_create(keyQuery_authorOverride, valueQuery_authorOverride);
        list_addElement(localVarQueryParameters,keyPairQuery_authorOverride);
    }

    // query parameters
    char *keyQuery_price = NULL;
    char * valueQuery_price = NULL;
    keyValuePair_t *keyPairQuery_price = 0;
    if (price)
    {
        keyQuery_price = strdup("price");
        valueQuery_price = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_price, MAX_NUMBER_LENGTH, "%d", *price);
        keyPairQuery_price = keyValuePair_create(keyQuery_price, valueQuery_price);
        list_addElement(localVarQueryParameters,keyPairQuery_price);
    }

    // query parameters
    char *keyQuery_priceType = NULL;
    char * valueQuery_priceType = NULL;
    keyValuePair_t *keyPairQuery_priceType = 0;
    if (priceType)
    {
        keyQuery_priceType = strdup("priceType");
        valueQuery_priceType = strdup((priceType));
        keyPairQuery_priceType = keyValuePair_create(keyQuery_priceType, valueQuery_priceType);
        list_addElement(localVarQueryParameters,keyPairQuery_priceType);
    }

    // query parameters
    char *keyQuery_gameLevelIds = NULL;
    char * valueQuery_gameLevelIds = NULL;
    keyValuePair_t *keyPairQuery_gameLevelIds = 0;
    if (gameLevelIds)
    {
        keyQuery_gameLevelIds = strdup("gameLevelIds");
        valueQuery_gameLevelIds = strdup((gameLevelIds));
        keyPairQuery_gameLevelIds = keyValuePair_create(keyQuery_gameLevelIds, valueQuery_gameLevelIds);
        list_addElement(localVarQueryParameters,keyPairQuery_gameLevelIds);
    }

    // query parameters
    char *keyQuery_inGame = NULL;
    char * valueQuery_inGame = NULL;
    keyValuePair_t *keyPairQuery_inGame = 0;
    if (inGame)
    {
        keyQuery_inGame = strdup("inGame");
        valueQuery_inGame = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_inGame, MAX_NUMBER_LENGTH, "%d", *inGame);
        keyPairQuery_inGame = keyValuePair_create(keyQuery_inGame, valueQuery_inGame);
        list_addElement(localVarQueryParameters,keyPairQuery_inGame);
    }

    // query parameters
    char *keyQuery_highest = NULL;
    char * valueQuery_highest = NULL;
    keyValuePair_t *keyPairQuery_highest = 0;
    if (highest)
    {
        keyQuery_highest = strdup("highest");
        valueQuery_highest = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_highest, MAX_NUMBER_LENGTH, "%d", *highest);
        keyPairQuery_highest = keyValuePair_create(keyQuery_highest, valueQuery_highest);
        list_addElement(localVarQueryParameters,keyPairQuery_highest);
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
    char *keyQuery_ticketCount = NULL;
    char * valueQuery_ticketCount ;
    keyValuePair_t *keyPairQuery_ticketCount = 0;
    {
        keyQuery_ticketCount = strdup("ticketCount");
        valueQuery_ticketCount = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_ticketCount, MAX_NUMBER_LENGTH_LONG, "%d", ticketCount);
        keyPairQuery_ticketCount = keyValuePair_create(keyQuery_ticketCount, valueQuery_ticketCount);
        list_addElement(localVarQueryParameters,keyPairQuery_ticketCount);
    }

    // query parameters
    char *keyQuery_ticketType = NULL;
    char * valueQuery_ticketType = NULL;
    keyValuePair_t *keyPairQuery_ticketType = 0;
    if (ticketType)
    {
        keyQuery_ticketType = strdup("ticketType");
        valueQuery_ticketType = strdup((ticketType));
        keyPairQuery_ticketType = keyValuePair_create(keyQuery_ticketType, valueQuery_ticketType);
        list_addElement(localVarQueryParameters,keyPairQuery_ticketType);
    }

    // query parameters
    char *keyQuery_points = NULL;
    char * valueQuery_points ;
    keyValuePair_t *keyPairQuery_points = 0;
    {
        keyQuery_points = strdup("points");
        valueQuery_points = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_points, MAX_NUMBER_LENGTH_LONG, "%d", points);
        keyPairQuery_points = keyValuePair_create(keyQuery_points, valueQuery_points);
        list_addElement(localVarQueryParameters,keyPairQuery_points);
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
    pack_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *PackAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = pack_response_parseFromJSON(PackAPIlocalVarJSON);
        cJSON_Delete(PackAPIlocalVarJSON);
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
    if(keyQuery_searchTags){
        free(keyQuery_searchTags);
        keyQuery_searchTags = NULL;
    }
    if(valueQuery_searchTags){
        free(valueQuery_searchTags);
        valueQuery_searchTags = NULL;
    }
    if(keyPairQuery_searchTags){
        keyValuePair_free(keyPairQuery_searchTags);
        keyPairQuery_searchTags = NULL;
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
    if(keyQuery_gameType){
        free(keyQuery_gameType);
        keyQuery_gameType = NULL;
    }
    if(valueQuery_gameType){
        free(valueQuery_gameType);
        valueQuery_gameType = NULL;
    }
    if(keyPairQuery_gameType){
        keyValuePair_free(keyPairQuery_gameType);
        keyPairQuery_gameType = NULL;
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
    if(keyQuery_packType){
        free(keyQuery_packType);
        keyQuery_packType = NULL;
    }
    if(keyPairQuery_packType){
        keyValuePair_free(keyPairQuery_packType);
        keyPairQuery_packType = NULL;
    }
    if(keyQuery_packOrder){
        free(keyQuery_packOrder);
        keyQuery_packOrder = NULL;
    }
    if(keyPairQuery_packOrder){
        keyValuePair_free(keyPairQuery_packOrder);
        keyPairQuery_packOrder = NULL;
    }
    if(keyQuery_sequenceType){
        free(keyQuery_sequenceType);
        keyQuery_sequenceType = NULL;
    }
    if(keyPairQuery_sequenceType){
        keyValuePair_free(keyPairQuery_sequenceType);
        keyPairQuery_sequenceType = NULL;
    }
    if(keyQuery_backgroundId){
        free(keyQuery_backgroundId);
        keyQuery_backgroundId = NULL;
    }
    if(keyPairQuery_backgroundId){
        keyValuePair_free(keyPairQuery_backgroundId);
        keyPairQuery_backgroundId = NULL;
    }
    if(keyQuery_imageId){
        free(keyQuery_imageId);
        keyQuery_imageId = NULL;
    }
    if(keyPairQuery_imageId){
        keyValuePair_free(keyPairQuery_imageId);
        keyPairQuery_imageId = NULL;
    }
    if(keyQuery_startDate){
        free(keyQuery_startDate);
        keyQuery_startDate = NULL;
    }
    if(keyPairQuery_startDate){
        keyValuePair_free(keyPairQuery_startDate);
        keyPairQuery_startDate = NULL;
    }
    if(keyQuery_endDate){
        free(keyQuery_endDate);
        keyQuery_endDate = NULL;
    }
    if(keyPairQuery_endDate){
        keyValuePair_free(keyPairQuery_endDate);
        keyPairQuery_endDate = NULL;
    }
    if(keyQuery_authorOverride){
        free(keyQuery_authorOverride);
        keyQuery_authorOverride = NULL;
    }
    if(valueQuery_authorOverride){
        free(valueQuery_authorOverride);
        valueQuery_authorOverride = NULL;
    }
    if(keyPairQuery_authorOverride){
        keyValuePair_free(keyPairQuery_authorOverride);
        keyPairQuery_authorOverride = NULL;
    }
    if(keyQuery_price){
        free(keyQuery_price);
        keyQuery_price = NULL;
    }
    if(valueQuery_price){
        free(valueQuery_price);
        valueQuery_price = NULL;
    }
    if(keyPairQuery_price){
        keyValuePair_free(keyPairQuery_price);
        keyPairQuery_price = NULL;
    }
    if(keyQuery_priceType){
        free(keyQuery_priceType);
        keyQuery_priceType = NULL;
    }
    if(valueQuery_priceType){
        free(valueQuery_priceType);
        valueQuery_priceType = NULL;
    }
    if(keyPairQuery_priceType){
        keyValuePair_free(keyPairQuery_priceType);
        keyPairQuery_priceType = NULL;
    }
    if(keyQuery_gameLevelIds){
        free(keyQuery_gameLevelIds);
        keyQuery_gameLevelIds = NULL;
    }
    if(valueQuery_gameLevelIds){
        free(valueQuery_gameLevelIds);
        valueQuery_gameLevelIds = NULL;
    }
    if(keyPairQuery_gameLevelIds){
        keyValuePair_free(keyPairQuery_gameLevelIds);
        keyPairQuery_gameLevelIds = NULL;
    }
    if(keyQuery_inGame){
        free(keyQuery_inGame);
        keyQuery_inGame = NULL;
    }
    if(valueQuery_inGame){
        free(valueQuery_inGame);
        valueQuery_inGame = NULL;
    }
    if(keyPairQuery_inGame){
        keyValuePair_free(keyPairQuery_inGame);
        keyPairQuery_inGame = NULL;
    }
    if(keyQuery_highest){
        free(keyQuery_highest);
        keyQuery_highest = NULL;
    }
    if(valueQuery_highest){
        free(valueQuery_highest);
        valueQuery_highest = NULL;
    }
    if(keyPairQuery_highest){
        keyValuePair_free(keyPairQuery_highest);
        keyPairQuery_highest = NULL;
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
    if(keyQuery_ticketCount){
        free(keyQuery_ticketCount);
        keyQuery_ticketCount = NULL;
    }
    if(keyPairQuery_ticketCount){
        keyValuePair_free(keyPairQuery_ticketCount);
        keyPairQuery_ticketCount = NULL;
    }
    if(keyQuery_ticketType){
        free(keyQuery_ticketType);
        keyQuery_ticketType = NULL;
    }
    if(valueQuery_ticketType){
        free(valueQuery_ticketType);
        valueQuery_ticketType = NULL;
    }
    if(keyPairQuery_ticketType){
        keyValuePair_free(keyPairQuery_ticketType);
        keyPairQuery_ticketType = NULL;
    }
    if(keyQuery_points){
        free(keyQuery_points);
        keyQuery_points = NULL;
    }
    if(keyPairQuery_points){
        keyValuePair_free(keyPairQuery_points);
        keyPairQuery_points = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Delete Pack
//
// Delete a pack.
//
sirqul_response_t*
PackAPI_deletePack(apiClient_t *apiClient, double version, long accountId, long packId)
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
    char *localVarPath = strdup("/api/{version}/pack/delete");



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
        cJSON *PackAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(PackAPIlocalVarJSON);
        cJSON_Delete(PackAPIlocalVarJSON);
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
    if(keyQuery_packId){
        free(keyQuery_packId);
        keyQuery_packId = NULL;
    }
    if(keyPairQuery_packId){
        keyValuePair_free(keyPairQuery_packId);
        keyPairQuery_packId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Pack
//
// Get a pack.
//
pack_response_t*
PackAPI_getPack(apiClient_t *apiClient, double version, long accountId, long packId, int *includeGameData)
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
    char *localVarPath = strdup("/api/{version}/pack/get");



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
    char *keyQuery_includeGameData = NULL;
    char * valueQuery_includeGameData = NULL;
    keyValuePair_t *keyPairQuery_includeGameData = 0;
    if (includeGameData)
    {
        keyQuery_includeGameData = strdup("includeGameData");
        valueQuery_includeGameData = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeGameData, MAX_NUMBER_LENGTH, "%d", *includeGameData);
        keyPairQuery_includeGameData = keyValuePair_create(keyQuery_includeGameData, valueQuery_includeGameData);
        list_addElement(localVarQueryParameters,keyPairQuery_includeGameData);
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
    pack_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *PackAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = pack_response_parseFromJSON(PackAPIlocalVarJSON);
        cJSON_Delete(PackAPIlocalVarJSON);
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
    if(keyQuery_packId){
        free(keyQuery_packId);
        keyQuery_packId = NULL;
    }
    if(keyPairQuery_packId){
        keyValuePair_free(keyPairQuery_packId);
        keyPairQuery_packId = NULL;
    }
    if(keyQuery_includeGameData){
        free(keyQuery_includeGameData);
        keyQuery_includeGameData = NULL;
    }
    if(valueQuery_includeGameData){
        free(valueQuery_includeGameData);
        valueQuery_includeGameData = NULL;
    }
    if(keyPairQuery_includeGameData){
        keyValuePair_free(keyPairQuery_includeGameData);
        keyPairQuery_includeGameData = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Packs
//
// Search on packs.
//
list_t*
PackAPI_searchPacks(apiClient_t *apiClient, double version, long accountId, sirqul_iot_platform_searchPacks_sortField_e sortField, int *descending, char *keyword, sirqul_iot_platform_searchPacks_packType_e packType, int *start, int *limit, int *includeGameData, int *includeInactive, char *appKey)
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
    char *localVarPath = strdup("/api/{version}/pack/search");



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
    char *keyQuery_packType = NULL;
    sirqul_iot_platform_searchPacks_packType_e valueQuery_packType ;
    keyValuePair_t *keyPairQuery_packType = 0;
    if (packType)
    {
        keyQuery_packType = strdup("packType");
        valueQuery_packType = (packType);
        keyPairQuery_packType = keyValuePair_create(keyQuery_packType, strdup(searchPacks_PACKTYPE_ToString(
        valueQuery_packType)));
        list_addElement(localVarQueryParameters,keyPairQuery_packType);
    }

    // query parameters
    char *keyQuery_sortField = NULL;
    sirqul_iot_platform_searchPacks_sortField_e valueQuery_sortField ;
    keyValuePair_t *keyPairQuery_sortField = 0;
    if (sortField)
    {
        keyQuery_sortField = strdup("sortField");
        valueQuery_sortField = (sortField);
        keyPairQuery_sortField = keyValuePair_create(keyQuery_sortField, strdup(searchPacks_SORTFIELD_ToString(
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

    // query parameters
    char *keyQuery_includeGameData = NULL;
    char * valueQuery_includeGameData = NULL;
    keyValuePair_t *keyPairQuery_includeGameData = 0;
    if (includeGameData)
    {
        keyQuery_includeGameData = strdup("includeGameData");
        valueQuery_includeGameData = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeGameData, MAX_NUMBER_LENGTH, "%d", *includeGameData);
        keyPairQuery_includeGameData = keyValuePair_create(keyQuery_includeGameData, valueQuery_includeGameData);
        list_addElement(localVarQueryParameters,keyPairQuery_includeGameData);
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
    list_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *PackAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(PackAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, PackAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( PackAPIlocalVarJSON);
        cJSON_Delete( VarJSON);
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
    if(keyQuery_packType){
        free(keyQuery_packType);
        keyQuery_packType = NULL;
    }
    if(keyPairQuery_packType){
        keyValuePair_free(keyPairQuery_packType);
        keyPairQuery_packType = NULL;
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
    if(keyQuery_includeGameData){
        free(keyQuery_includeGameData);
        keyQuery_includeGameData = NULL;
    }
    if(valueQuery_includeGameData){
        free(valueQuery_includeGameData);
        valueQuery_includeGameData = NULL;
    }
    if(keyPairQuery_includeGameData){
        keyValuePair_free(keyPairQuery_includeGameData);
        keyPairQuery_includeGameData = NULL;
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Update Pack
//
// Update a pack.
//
pack_response_t*
PackAPI_updatePack(apiClient_t *apiClient, double version, long accountId, long packId, int *allocateTickets, long ticketCount, char *title, char *description, char *searchTags, int *active, char *gameType, char *appKey, sirqul_iot_platform_updatePack_packType_e packType, long packOrder, sirqul_iot_platform_updatePack_sequenceType_e sequenceType, long backgroundId, long imageId, long startDate, long endDate, char *authorOverride, int *price, char *priceType, char *gameLevelIds, int *inGame, int *highest, char *ticketType, long points)
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
    char *localVarPath = strdup("/api/{version}/pack/update");



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
    char *keyQuery_searchTags = NULL;
    char * valueQuery_searchTags = NULL;
    keyValuePair_t *keyPairQuery_searchTags = 0;
    if (searchTags)
    {
        keyQuery_searchTags = strdup("searchTags");
        valueQuery_searchTags = strdup((searchTags));
        keyPairQuery_searchTags = keyValuePair_create(keyQuery_searchTags, valueQuery_searchTags);
        list_addElement(localVarQueryParameters,keyPairQuery_searchTags);
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
    char *keyQuery_gameType = NULL;
    char * valueQuery_gameType = NULL;
    keyValuePair_t *keyPairQuery_gameType = 0;
    if (gameType)
    {
        keyQuery_gameType = strdup("gameType");
        valueQuery_gameType = strdup((gameType));
        keyPairQuery_gameType = keyValuePair_create(keyQuery_gameType, valueQuery_gameType);
        list_addElement(localVarQueryParameters,keyPairQuery_gameType);
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
    char *keyQuery_packType = NULL;
    sirqul_iot_platform_updatePack_packType_e valueQuery_packType ;
    keyValuePair_t *keyPairQuery_packType = 0;
    if (packType)
    {
        keyQuery_packType = strdup("packType");
        valueQuery_packType = (packType);
        keyPairQuery_packType = keyValuePair_create(keyQuery_packType, strdup(updatePack_PACKTYPE_ToString(
        valueQuery_packType)));
        list_addElement(localVarQueryParameters,keyPairQuery_packType);
    }

    // query parameters
    char *keyQuery_packOrder = NULL;
    char * valueQuery_packOrder ;
    keyValuePair_t *keyPairQuery_packOrder = 0;
    {
        keyQuery_packOrder = strdup("packOrder");
        valueQuery_packOrder = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_packOrder, MAX_NUMBER_LENGTH_LONG, "%d", packOrder);
        keyPairQuery_packOrder = keyValuePair_create(keyQuery_packOrder, valueQuery_packOrder);
        list_addElement(localVarQueryParameters,keyPairQuery_packOrder);
    }

    // query parameters
    char *keyQuery_sequenceType = NULL;
    sirqul_iot_platform_updatePack_sequenceType_e valueQuery_sequenceType ;
    keyValuePair_t *keyPairQuery_sequenceType = 0;
    if (sequenceType)
    {
        keyQuery_sequenceType = strdup("sequenceType");
        valueQuery_sequenceType = (sequenceType);
        keyPairQuery_sequenceType = keyValuePair_create(keyQuery_sequenceType, strdup(updatePack_SEQUENCETYPE_ToString(
        valueQuery_sequenceType)));
        list_addElement(localVarQueryParameters,keyPairQuery_sequenceType);
    }

    // query parameters
    char *keyQuery_backgroundId = NULL;
    char * valueQuery_backgroundId ;
    keyValuePair_t *keyPairQuery_backgroundId = 0;
    {
        keyQuery_backgroundId = strdup("backgroundId");
        valueQuery_backgroundId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_backgroundId, MAX_NUMBER_LENGTH_LONG, "%d", backgroundId);
        keyPairQuery_backgroundId = keyValuePair_create(keyQuery_backgroundId, valueQuery_backgroundId);
        list_addElement(localVarQueryParameters,keyPairQuery_backgroundId);
    }

    // query parameters
    char *keyQuery_imageId = NULL;
    char * valueQuery_imageId ;
    keyValuePair_t *keyPairQuery_imageId = 0;
    {
        keyQuery_imageId = strdup("imageId");
        valueQuery_imageId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_imageId, MAX_NUMBER_LENGTH_LONG, "%d", imageId);
        keyPairQuery_imageId = keyValuePair_create(keyQuery_imageId, valueQuery_imageId);
        list_addElement(localVarQueryParameters,keyPairQuery_imageId);
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
    char *keyQuery_endDate = NULL;
    char * valueQuery_endDate ;
    keyValuePair_t *keyPairQuery_endDate = 0;
    {
        keyQuery_endDate = strdup("endDate");
        valueQuery_endDate = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_endDate, MAX_NUMBER_LENGTH_LONG, "%d", endDate);
        keyPairQuery_endDate = keyValuePair_create(keyQuery_endDate, valueQuery_endDate);
        list_addElement(localVarQueryParameters,keyPairQuery_endDate);
    }

    // query parameters
    char *keyQuery_authorOverride = NULL;
    char * valueQuery_authorOverride = NULL;
    keyValuePair_t *keyPairQuery_authorOverride = 0;
    if (authorOverride)
    {
        keyQuery_authorOverride = strdup("authorOverride");
        valueQuery_authorOverride = strdup((authorOverride));
        keyPairQuery_authorOverride = keyValuePair_create(keyQuery_authorOverride, valueQuery_authorOverride);
        list_addElement(localVarQueryParameters,keyPairQuery_authorOverride);
    }

    // query parameters
    char *keyQuery_price = NULL;
    char * valueQuery_price = NULL;
    keyValuePair_t *keyPairQuery_price = 0;
    if (price)
    {
        keyQuery_price = strdup("price");
        valueQuery_price = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_price, MAX_NUMBER_LENGTH, "%d", *price);
        keyPairQuery_price = keyValuePair_create(keyQuery_price, valueQuery_price);
        list_addElement(localVarQueryParameters,keyPairQuery_price);
    }

    // query parameters
    char *keyQuery_priceType = NULL;
    char * valueQuery_priceType = NULL;
    keyValuePair_t *keyPairQuery_priceType = 0;
    if (priceType)
    {
        keyQuery_priceType = strdup("priceType");
        valueQuery_priceType = strdup((priceType));
        keyPairQuery_priceType = keyValuePair_create(keyQuery_priceType, valueQuery_priceType);
        list_addElement(localVarQueryParameters,keyPairQuery_priceType);
    }

    // query parameters
    char *keyQuery_gameLevelIds = NULL;
    char * valueQuery_gameLevelIds = NULL;
    keyValuePair_t *keyPairQuery_gameLevelIds = 0;
    if (gameLevelIds)
    {
        keyQuery_gameLevelIds = strdup("gameLevelIds");
        valueQuery_gameLevelIds = strdup((gameLevelIds));
        keyPairQuery_gameLevelIds = keyValuePair_create(keyQuery_gameLevelIds, valueQuery_gameLevelIds);
        list_addElement(localVarQueryParameters,keyPairQuery_gameLevelIds);
    }

    // query parameters
    char *keyQuery_inGame = NULL;
    char * valueQuery_inGame = NULL;
    keyValuePair_t *keyPairQuery_inGame = 0;
    if (inGame)
    {
        keyQuery_inGame = strdup("inGame");
        valueQuery_inGame = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_inGame, MAX_NUMBER_LENGTH, "%d", *inGame);
        keyPairQuery_inGame = keyValuePair_create(keyQuery_inGame, valueQuery_inGame);
        list_addElement(localVarQueryParameters,keyPairQuery_inGame);
    }

    // query parameters
    char *keyQuery_highest = NULL;
    char * valueQuery_highest = NULL;
    keyValuePair_t *keyPairQuery_highest = 0;
    if (highest)
    {
        keyQuery_highest = strdup("highest");
        valueQuery_highest = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_highest, MAX_NUMBER_LENGTH, "%d", *highest);
        keyPairQuery_highest = keyValuePair_create(keyQuery_highest, valueQuery_highest);
        list_addElement(localVarQueryParameters,keyPairQuery_highest);
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
    char *keyQuery_ticketCount = NULL;
    char * valueQuery_ticketCount ;
    keyValuePair_t *keyPairQuery_ticketCount = 0;
    {
        keyQuery_ticketCount = strdup("ticketCount");
        valueQuery_ticketCount = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_ticketCount, MAX_NUMBER_LENGTH_LONG, "%d", ticketCount);
        keyPairQuery_ticketCount = keyValuePair_create(keyQuery_ticketCount, valueQuery_ticketCount);
        list_addElement(localVarQueryParameters,keyPairQuery_ticketCount);
    }

    // query parameters
    char *keyQuery_ticketType = NULL;
    char * valueQuery_ticketType = NULL;
    keyValuePair_t *keyPairQuery_ticketType = 0;
    if (ticketType)
    {
        keyQuery_ticketType = strdup("ticketType");
        valueQuery_ticketType = strdup((ticketType));
        keyPairQuery_ticketType = keyValuePair_create(keyQuery_ticketType, valueQuery_ticketType);
        list_addElement(localVarQueryParameters,keyPairQuery_ticketType);
    }

    // query parameters
    char *keyQuery_points = NULL;
    char * valueQuery_points ;
    keyValuePair_t *keyPairQuery_points = 0;
    {
        keyQuery_points = strdup("points");
        valueQuery_points = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_points, MAX_NUMBER_LENGTH_LONG, "%d", points);
        keyPairQuery_points = keyValuePair_create(keyQuery_points, valueQuery_points);
        list_addElement(localVarQueryParameters,keyPairQuery_points);
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
    pack_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *PackAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = pack_response_parseFromJSON(PackAPIlocalVarJSON);
        cJSON_Delete(PackAPIlocalVarJSON);
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
    if(keyQuery_packId){
        free(keyQuery_packId);
        keyQuery_packId = NULL;
    }
    if(keyPairQuery_packId){
        keyValuePair_free(keyPairQuery_packId);
        keyPairQuery_packId = NULL;
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
    if(keyQuery_searchTags){
        free(keyQuery_searchTags);
        keyQuery_searchTags = NULL;
    }
    if(valueQuery_searchTags){
        free(valueQuery_searchTags);
        valueQuery_searchTags = NULL;
    }
    if(keyPairQuery_searchTags){
        keyValuePair_free(keyPairQuery_searchTags);
        keyPairQuery_searchTags = NULL;
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
    if(keyQuery_gameType){
        free(keyQuery_gameType);
        keyQuery_gameType = NULL;
    }
    if(valueQuery_gameType){
        free(valueQuery_gameType);
        valueQuery_gameType = NULL;
    }
    if(keyPairQuery_gameType){
        keyValuePair_free(keyPairQuery_gameType);
        keyPairQuery_gameType = NULL;
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
    if(keyQuery_packType){
        free(keyQuery_packType);
        keyQuery_packType = NULL;
    }
    if(keyPairQuery_packType){
        keyValuePair_free(keyPairQuery_packType);
        keyPairQuery_packType = NULL;
    }
    if(keyQuery_packOrder){
        free(keyQuery_packOrder);
        keyQuery_packOrder = NULL;
    }
    if(keyPairQuery_packOrder){
        keyValuePair_free(keyPairQuery_packOrder);
        keyPairQuery_packOrder = NULL;
    }
    if(keyQuery_sequenceType){
        free(keyQuery_sequenceType);
        keyQuery_sequenceType = NULL;
    }
    if(keyPairQuery_sequenceType){
        keyValuePair_free(keyPairQuery_sequenceType);
        keyPairQuery_sequenceType = NULL;
    }
    if(keyQuery_backgroundId){
        free(keyQuery_backgroundId);
        keyQuery_backgroundId = NULL;
    }
    if(keyPairQuery_backgroundId){
        keyValuePair_free(keyPairQuery_backgroundId);
        keyPairQuery_backgroundId = NULL;
    }
    if(keyQuery_imageId){
        free(keyQuery_imageId);
        keyQuery_imageId = NULL;
    }
    if(keyPairQuery_imageId){
        keyValuePair_free(keyPairQuery_imageId);
        keyPairQuery_imageId = NULL;
    }
    if(keyQuery_startDate){
        free(keyQuery_startDate);
        keyQuery_startDate = NULL;
    }
    if(keyPairQuery_startDate){
        keyValuePair_free(keyPairQuery_startDate);
        keyPairQuery_startDate = NULL;
    }
    if(keyQuery_endDate){
        free(keyQuery_endDate);
        keyQuery_endDate = NULL;
    }
    if(keyPairQuery_endDate){
        keyValuePair_free(keyPairQuery_endDate);
        keyPairQuery_endDate = NULL;
    }
    if(keyQuery_authorOverride){
        free(keyQuery_authorOverride);
        keyQuery_authorOverride = NULL;
    }
    if(valueQuery_authorOverride){
        free(valueQuery_authorOverride);
        valueQuery_authorOverride = NULL;
    }
    if(keyPairQuery_authorOverride){
        keyValuePair_free(keyPairQuery_authorOverride);
        keyPairQuery_authorOverride = NULL;
    }
    if(keyQuery_price){
        free(keyQuery_price);
        keyQuery_price = NULL;
    }
    if(valueQuery_price){
        free(valueQuery_price);
        valueQuery_price = NULL;
    }
    if(keyPairQuery_price){
        keyValuePair_free(keyPairQuery_price);
        keyPairQuery_price = NULL;
    }
    if(keyQuery_priceType){
        free(keyQuery_priceType);
        keyQuery_priceType = NULL;
    }
    if(valueQuery_priceType){
        free(valueQuery_priceType);
        valueQuery_priceType = NULL;
    }
    if(keyPairQuery_priceType){
        keyValuePair_free(keyPairQuery_priceType);
        keyPairQuery_priceType = NULL;
    }
    if(keyQuery_gameLevelIds){
        free(keyQuery_gameLevelIds);
        keyQuery_gameLevelIds = NULL;
    }
    if(valueQuery_gameLevelIds){
        free(valueQuery_gameLevelIds);
        valueQuery_gameLevelIds = NULL;
    }
    if(keyPairQuery_gameLevelIds){
        keyValuePair_free(keyPairQuery_gameLevelIds);
        keyPairQuery_gameLevelIds = NULL;
    }
    if(keyQuery_inGame){
        free(keyQuery_inGame);
        keyQuery_inGame = NULL;
    }
    if(valueQuery_inGame){
        free(valueQuery_inGame);
        valueQuery_inGame = NULL;
    }
    if(keyPairQuery_inGame){
        keyValuePair_free(keyPairQuery_inGame);
        keyPairQuery_inGame = NULL;
    }
    if(keyQuery_highest){
        free(keyQuery_highest);
        keyQuery_highest = NULL;
    }
    if(valueQuery_highest){
        free(valueQuery_highest);
        valueQuery_highest = NULL;
    }
    if(keyPairQuery_highest){
        keyValuePair_free(keyPairQuery_highest);
        keyPairQuery_highest = NULL;
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
    if(keyQuery_ticketCount){
        free(keyQuery_ticketCount);
        keyQuery_ticketCount = NULL;
    }
    if(keyPairQuery_ticketCount){
        keyValuePair_free(keyPairQuery_ticketCount);
        keyPairQuery_ticketCount = NULL;
    }
    if(keyQuery_ticketType){
        free(keyQuery_ticketType);
        keyQuery_ticketType = NULL;
    }
    if(valueQuery_ticketType){
        free(valueQuery_ticketType);
        valueQuery_ticketType = NULL;
    }
    if(keyPairQuery_ticketType){
        keyValuePair_free(keyPairQuery_ticketType);
        keyPairQuery_ticketType = NULL;
    }
    if(keyQuery_points){
        free(keyQuery_points);
        keyQuery_points = NULL;
    }
    if(keyPairQuery_points){
        keyValuePair_free(keyPairQuery_points);
        keyPairQuery_points = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

