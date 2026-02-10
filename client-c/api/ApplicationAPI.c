#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "ApplicationAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21

// Functions for enum SCORINGTYPE for ApplicationAPI_createApplication

static char* createApplication_SCORINGTYPE_ToString(sirqul_iot_platform_createApplication_scoringType_e SCORINGTYPE){
    char *SCORINGTYPEArray[] =  { "NULL", "GAME_LEVEL", "GAME_OBJECT" };
    return SCORINGTYPEArray[SCORINGTYPE];
}

static sirqul_iot_platform_createApplication_scoringType_e createApplication_SCORINGTYPE_FromString(char* SCORINGTYPE){
    int stringToReturn = 0;
    char *SCORINGTYPEArray[] =  { "NULL", "GAME_LEVEL", "GAME_OBJECT" };
    size_t sizeofArray = sizeof(SCORINGTYPEArray) / sizeof(SCORINGTYPEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(SCORINGTYPE, SCORINGTYPEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function createApplication_SCORINGTYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *createApplication_SCORINGTYPE_convertToJSON(sirqul_iot_platform_createApplication_scoringType_e SCORINGTYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "scoringType", createApplication_SCORINGTYPE_ToString(SCORINGTYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function createApplication_SCORINGTYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_createApplication_scoringType_e createApplication_SCORINGTYPE_parseFromJSON(cJSON* SCORINGTYPEJSON) {
    sirqul_iot_platform_createApplication_scoringType_e SCORINGTYPEVariable = 0;
    cJSON *SCORINGTYPEVar = cJSON_GetObjectItemCaseSensitive(SCORINGTYPEJSON, "scoringType");
    if(!cJSON_IsString(SCORINGTYPEVar) || (SCORINGTYPEVar->valuestring == NULL))
    {
        goto end;
    }
    SCORINGTYPEVariable = createApplication_SCORINGTYPE_FromString(SCORINGTYPEVar->valuestring);
    return SCORINGTYPEVariable;
end:
    return 0;
}
*/

// Functions for enum PLACEMENTSIZE for ApplicationAPI_createApplication

static char* createApplication_PLACEMENTSIZE_ToString(sirqul_iot_platform_createApplication_placementSize_e PLACEMENTSIZE){
    char *PLACEMENTSIZEArray[] =  { "NULL", "CONFIG", "BANNER", "LEADERBOARD", "SKYSCRAPER", "VIDEO", "ZIP", "INTERSTITIAL", "CUSTOM1", "CUSTOM2", "CUSTOM3", "CUSTOM4", "CUSTOM5", "CUSTOM6", "CUSTOM7", "CUSTOM8", "CUSTOM9", "CUSTOM10" };
    return PLACEMENTSIZEArray[PLACEMENTSIZE];
}

static sirqul_iot_platform_createApplication_placementSize_e createApplication_PLACEMENTSIZE_FromString(char* PLACEMENTSIZE){
    int stringToReturn = 0;
    char *PLACEMENTSIZEArray[] =  { "NULL", "CONFIG", "BANNER", "LEADERBOARD", "SKYSCRAPER", "VIDEO", "ZIP", "INTERSTITIAL", "CUSTOM1", "CUSTOM2", "CUSTOM3", "CUSTOM4", "CUSTOM5", "CUSTOM6", "CUSTOM7", "CUSTOM8", "CUSTOM9", "CUSTOM10" };
    size_t sizeofArray = sizeof(PLACEMENTSIZEArray) / sizeof(PLACEMENTSIZEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(PLACEMENTSIZE, PLACEMENTSIZEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function createApplication_PLACEMENTSIZE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *createApplication_PLACEMENTSIZE_convertToJSON(sirqul_iot_platform_createApplication_placementSize_e PLACEMENTSIZE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "placementSize", createApplication_PLACEMENTSIZE_ToString(PLACEMENTSIZE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function createApplication_PLACEMENTSIZE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_createApplication_placementSize_e createApplication_PLACEMENTSIZE_parseFromJSON(cJSON* PLACEMENTSIZEJSON) {
    sirqul_iot_platform_createApplication_placementSize_e PLACEMENTSIZEVariable = 0;
    cJSON *PLACEMENTSIZEVar = cJSON_GetObjectItemCaseSensitive(PLACEMENTSIZEJSON, "placementSize");
    if(!cJSON_IsString(PLACEMENTSIZEVar) || (PLACEMENTSIZEVar->valuestring == NULL))
    {
        goto end;
    }
    PLACEMENTSIZEVariable = createApplication_PLACEMENTSIZE_FromString(PLACEMENTSIZEVar->valuestring);
    return PLACEMENTSIZEVariable;
end:
    return 0;
}
*/

// Functions for enum TRILATPROCESSINGTYPE for ApplicationAPI_createApplication

static char* createApplication_TRILATPROCESSINGTYPE_ToString(sirqul_iot_platform_createApplication_trilatProcessingType_e TRILATPROCESSINGTYPE){
    char *TRILATPROCESSINGTYPEArray[] =  { "NULL", "DEFAULT", "FINGERPRINT", "FINGERPRINT_V2" };
    return TRILATPROCESSINGTYPEArray[TRILATPROCESSINGTYPE];
}

static sirqul_iot_platform_createApplication_trilatProcessingType_e createApplication_TRILATPROCESSINGTYPE_FromString(char* TRILATPROCESSINGTYPE){
    int stringToReturn = 0;
    char *TRILATPROCESSINGTYPEArray[] =  { "NULL", "DEFAULT", "FINGERPRINT", "FINGERPRINT_V2" };
    size_t sizeofArray = sizeof(TRILATPROCESSINGTYPEArray) / sizeof(TRILATPROCESSINGTYPEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(TRILATPROCESSINGTYPE, TRILATPROCESSINGTYPEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function createApplication_TRILATPROCESSINGTYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *createApplication_TRILATPROCESSINGTYPE_convertToJSON(sirqul_iot_platform_createApplication_trilatProcessingType_e TRILATPROCESSINGTYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "trilatProcessingType", createApplication_TRILATPROCESSINGTYPE_ToString(TRILATPROCESSINGTYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function createApplication_TRILATPROCESSINGTYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_createApplication_trilatProcessingType_e createApplication_TRILATPROCESSINGTYPE_parseFromJSON(cJSON* TRILATPROCESSINGTYPEJSON) {
    sirqul_iot_platform_createApplication_trilatProcessingType_e TRILATPROCESSINGTYPEVariable = 0;
    cJSON *TRILATPROCESSINGTYPEVar = cJSON_GetObjectItemCaseSensitive(TRILATPROCESSINGTYPEJSON, "trilatProcessingType");
    if(!cJSON_IsString(TRILATPROCESSINGTYPEVar) || (TRILATPROCESSINGTYPEVar->valuestring == NULL))
    {
        goto end;
    }
    TRILATPROCESSINGTYPEVariable = createApplication_TRILATPROCESSINGTYPE_FromString(TRILATPROCESSINGTYPEVar->valuestring);
    return TRILATPROCESSINGTYPEVariable;
end:
    return 0;
}
*/

// Functions for enum SIZE for ApplicationAPI_createApplicationPlacement

static char* createApplicationPlacement_SIZE_ToString(sirqul_iot_platform_createApplicationPlacement_size_e SIZE){
    char *SIZEArray[] =  { "NULL", "CONFIG", "BANNER", "LEADERBOARD", "SKYSCRAPER", "VIDEO", "ZIP", "INTERSTITIAL", "CUSTOM1", "CUSTOM2", "CUSTOM3", "CUSTOM4", "CUSTOM5", "CUSTOM6", "CUSTOM7", "CUSTOM8", "CUSTOM9", "CUSTOM10" };
    return SIZEArray[SIZE];
}

static sirqul_iot_platform_createApplicationPlacement_size_e createApplicationPlacement_SIZE_FromString(char* SIZE){
    int stringToReturn = 0;
    char *SIZEArray[] =  { "NULL", "CONFIG", "BANNER", "LEADERBOARD", "SKYSCRAPER", "VIDEO", "ZIP", "INTERSTITIAL", "CUSTOM1", "CUSTOM2", "CUSTOM3", "CUSTOM4", "CUSTOM5", "CUSTOM6", "CUSTOM7", "CUSTOM8", "CUSTOM9", "CUSTOM10" };
    size_t sizeofArray = sizeof(SIZEArray) / sizeof(SIZEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(SIZE, SIZEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function createApplicationPlacement_SIZE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *createApplicationPlacement_SIZE_convertToJSON(sirqul_iot_platform_createApplicationPlacement_size_e SIZE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "size", createApplicationPlacement_SIZE_ToString(SIZE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function createApplicationPlacement_SIZE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_createApplicationPlacement_size_e createApplicationPlacement_SIZE_parseFromJSON(cJSON* SIZEJSON) {
    sirqul_iot_platform_createApplicationPlacement_size_e SIZEVariable = 0;
    cJSON *SIZEVar = cJSON_GetObjectItemCaseSensitive(SIZEJSON, "size");
    if(!cJSON_IsString(SIZEVar) || (SIZEVar->valuestring == NULL))
    {
        goto end;
    }
    SIZEVariable = createApplicationPlacement_SIZE_FromString(SIZEVar->valuestring);
    return SIZEVariable;
end:
    return 0;
}
*/

// Functions for enum SORTFIELD for ApplicationAPI_listApplications

static char* listApplications_SORTFIELD_ToString(sirqul_iot_platform_listApplications_sortField_e SORTFIELD){
    char *SORTFIELDArray[] =  { "NULL", "CREATED", "UPDATED", "DELETED", "SEARCH_TAGS", "ACTIVE", "HAS_ADVERTISEMENTS", "PUBLIC_NOTIFICATIONS", "PLACEMENTS", "BILLABLE_ENTITY_ID", "BILLABLE_ENTITY_NAME", "RESPONSIBLE_DISPLAY", "TITLE", "NAME", "ABOUT", "DESCRIPTION", "APPLICATION_ID", "APP_TYPE", "GAME_TYPE", "BUNDLE_ID", "SCORING_TYPE", "LANDING_PAGE_URL", "EULA_VERSION", "BUILD_VERSION", "API_VERSION" };
    return SORTFIELDArray[SORTFIELD];
}

static sirqul_iot_platform_listApplications_sortField_e listApplications_SORTFIELD_FromString(char* SORTFIELD){
    int stringToReturn = 0;
    char *SORTFIELDArray[] =  { "NULL", "CREATED", "UPDATED", "DELETED", "SEARCH_TAGS", "ACTIVE", "HAS_ADVERTISEMENTS", "PUBLIC_NOTIFICATIONS", "PLACEMENTS", "BILLABLE_ENTITY_ID", "BILLABLE_ENTITY_NAME", "RESPONSIBLE_DISPLAY", "TITLE", "NAME", "ABOUT", "DESCRIPTION", "APPLICATION_ID", "APP_TYPE", "GAME_TYPE", "BUNDLE_ID", "SCORING_TYPE", "LANDING_PAGE_URL", "EULA_VERSION", "BUILD_VERSION", "API_VERSION" };
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
// Function listApplications_SORTFIELD_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *listApplications_SORTFIELD_convertToJSON(sirqul_iot_platform_listApplications_sortField_e SORTFIELD) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "sortField", listApplications_SORTFIELD_ToString(SORTFIELD)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function listApplications_SORTFIELD_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_listApplications_sortField_e listApplications_SORTFIELD_parseFromJSON(cJSON* SORTFIELDJSON) {
    sirqul_iot_platform_listApplications_sortField_e SORTFIELDVariable = 0;
    cJSON *SORTFIELDVar = cJSON_GetObjectItemCaseSensitive(SORTFIELDJSON, "sortField");
    if(!cJSON_IsString(SORTFIELDVar) || (SORTFIELDVar->valuestring == NULL))
    {
        goto end;
    }
    SORTFIELDVariable = listApplications_SORTFIELD_FromString(SORTFIELDVar->valuestring);
    return SORTFIELDVariable;
end:
    return 0;
}
*/

// Functions for enum SORTFIELD for ApplicationAPI_searchApplications

static char* searchApplications_SORTFIELD_ToString(sirqul_iot_platform_searchApplications_sortField_e SORTFIELD){
    char *SORTFIELDArray[] =  { "NULL", "CREATED", "UPDATED", "DELETED", "SEARCH_TAGS", "ACTIVE", "HAS_ADVERTISEMENTS", "PUBLIC_NOTIFICATIONS", "PLACEMENTS", "BILLABLE_ENTITY_ID", "BILLABLE_ENTITY_NAME", "RESPONSIBLE_DISPLAY", "TITLE", "NAME", "ABOUT", "DESCRIPTION", "APPLICATION_ID", "APP_TYPE", "GAME_TYPE", "BUNDLE_ID", "SCORING_TYPE", "LANDING_PAGE_URL", "EULA_VERSION", "BUILD_VERSION", "API_VERSION" };
    return SORTFIELDArray[SORTFIELD];
}

static sirqul_iot_platform_searchApplications_sortField_e searchApplications_SORTFIELD_FromString(char* SORTFIELD){
    int stringToReturn = 0;
    char *SORTFIELDArray[] =  { "NULL", "CREATED", "UPDATED", "DELETED", "SEARCH_TAGS", "ACTIVE", "HAS_ADVERTISEMENTS", "PUBLIC_NOTIFICATIONS", "PLACEMENTS", "BILLABLE_ENTITY_ID", "BILLABLE_ENTITY_NAME", "RESPONSIBLE_DISPLAY", "TITLE", "NAME", "ABOUT", "DESCRIPTION", "APPLICATION_ID", "APP_TYPE", "GAME_TYPE", "BUNDLE_ID", "SCORING_TYPE", "LANDING_PAGE_URL", "EULA_VERSION", "BUILD_VERSION", "API_VERSION" };
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
// Function searchApplications_SORTFIELD_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *searchApplications_SORTFIELD_convertToJSON(sirqul_iot_platform_searchApplications_sortField_e SORTFIELD) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "sortField", searchApplications_SORTFIELD_ToString(SORTFIELD)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function searchApplications_SORTFIELD_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_searchApplications_sortField_e searchApplications_SORTFIELD_parseFromJSON(cJSON* SORTFIELDJSON) {
    sirqul_iot_platform_searchApplications_sortField_e SORTFIELDVariable = 0;
    cJSON *SORTFIELDVar = cJSON_GetObjectItemCaseSensitive(SORTFIELDJSON, "sortField");
    if(!cJSON_IsString(SORTFIELDVar) || (SORTFIELDVar->valuestring == NULL))
    {
        goto end;
    }
    SORTFIELDVariable = searchApplications_SORTFIELD_FromString(SORTFIELDVar->valuestring);
    return SORTFIELDVariable;
end:
    return 0;
}
*/

// Functions for enum SCORINGTYPE for ApplicationAPI_updateApplication

static char* updateApplication_SCORINGTYPE_ToString(sirqul_iot_platform_updateApplication_scoringType_e SCORINGTYPE){
    char *SCORINGTYPEArray[] =  { "NULL", "GAME_LEVEL", "GAME_OBJECT" };
    return SCORINGTYPEArray[SCORINGTYPE];
}

static sirqul_iot_platform_updateApplication_scoringType_e updateApplication_SCORINGTYPE_FromString(char* SCORINGTYPE){
    int stringToReturn = 0;
    char *SCORINGTYPEArray[] =  { "NULL", "GAME_LEVEL", "GAME_OBJECT" };
    size_t sizeofArray = sizeof(SCORINGTYPEArray) / sizeof(SCORINGTYPEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(SCORINGTYPE, SCORINGTYPEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function updateApplication_SCORINGTYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *updateApplication_SCORINGTYPE_convertToJSON(sirqul_iot_platform_updateApplication_scoringType_e SCORINGTYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "scoringType", updateApplication_SCORINGTYPE_ToString(SCORINGTYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function updateApplication_SCORINGTYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_updateApplication_scoringType_e updateApplication_SCORINGTYPE_parseFromJSON(cJSON* SCORINGTYPEJSON) {
    sirqul_iot_platform_updateApplication_scoringType_e SCORINGTYPEVariable = 0;
    cJSON *SCORINGTYPEVar = cJSON_GetObjectItemCaseSensitive(SCORINGTYPEJSON, "scoringType");
    if(!cJSON_IsString(SCORINGTYPEVar) || (SCORINGTYPEVar->valuestring == NULL))
    {
        goto end;
    }
    SCORINGTYPEVariable = updateApplication_SCORINGTYPE_FromString(SCORINGTYPEVar->valuestring);
    return SCORINGTYPEVariable;
end:
    return 0;
}
*/

// Functions for enum PLACEMENTSIZE for ApplicationAPI_updateApplication

static char* updateApplication_PLACEMENTSIZE_ToString(sirqul_iot_platform_updateApplication_placementSize_e PLACEMENTSIZE){
    char *PLACEMENTSIZEArray[] =  { "NULL", "CONFIG", "BANNER", "LEADERBOARD", "SKYSCRAPER", "VIDEO", "ZIP", "INTERSTITIAL", "CUSTOM1", "CUSTOM2", "CUSTOM3", "CUSTOM4", "CUSTOM5", "CUSTOM6", "CUSTOM7", "CUSTOM8", "CUSTOM9", "CUSTOM10" };
    return PLACEMENTSIZEArray[PLACEMENTSIZE];
}

static sirqul_iot_platform_updateApplication_placementSize_e updateApplication_PLACEMENTSIZE_FromString(char* PLACEMENTSIZE){
    int stringToReturn = 0;
    char *PLACEMENTSIZEArray[] =  { "NULL", "CONFIG", "BANNER", "LEADERBOARD", "SKYSCRAPER", "VIDEO", "ZIP", "INTERSTITIAL", "CUSTOM1", "CUSTOM2", "CUSTOM3", "CUSTOM4", "CUSTOM5", "CUSTOM6", "CUSTOM7", "CUSTOM8", "CUSTOM9", "CUSTOM10" };
    size_t sizeofArray = sizeof(PLACEMENTSIZEArray) / sizeof(PLACEMENTSIZEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(PLACEMENTSIZE, PLACEMENTSIZEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function updateApplication_PLACEMENTSIZE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *updateApplication_PLACEMENTSIZE_convertToJSON(sirqul_iot_platform_updateApplication_placementSize_e PLACEMENTSIZE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "placementSize", updateApplication_PLACEMENTSIZE_ToString(PLACEMENTSIZE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function updateApplication_PLACEMENTSIZE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_updateApplication_placementSize_e updateApplication_PLACEMENTSIZE_parseFromJSON(cJSON* PLACEMENTSIZEJSON) {
    sirqul_iot_platform_updateApplication_placementSize_e PLACEMENTSIZEVariable = 0;
    cJSON *PLACEMENTSIZEVar = cJSON_GetObjectItemCaseSensitive(PLACEMENTSIZEJSON, "placementSize");
    if(!cJSON_IsString(PLACEMENTSIZEVar) || (PLACEMENTSIZEVar->valuestring == NULL))
    {
        goto end;
    }
    PLACEMENTSIZEVariable = updateApplication_PLACEMENTSIZE_FromString(PLACEMENTSIZEVar->valuestring);
    return PLACEMENTSIZEVariable;
end:
    return 0;
}
*/

// Functions for enum TRILATPROCESSINGTYPE for ApplicationAPI_updateApplication

static char* updateApplication_TRILATPROCESSINGTYPE_ToString(sirqul_iot_platform_updateApplication_trilatProcessingType_e TRILATPROCESSINGTYPE){
    char *TRILATPROCESSINGTYPEArray[] =  { "NULL", "DEFAULT", "FINGERPRINT", "FINGERPRINT_V2" };
    return TRILATPROCESSINGTYPEArray[TRILATPROCESSINGTYPE];
}

static sirqul_iot_platform_updateApplication_trilatProcessingType_e updateApplication_TRILATPROCESSINGTYPE_FromString(char* TRILATPROCESSINGTYPE){
    int stringToReturn = 0;
    char *TRILATPROCESSINGTYPEArray[] =  { "NULL", "DEFAULT", "FINGERPRINT", "FINGERPRINT_V2" };
    size_t sizeofArray = sizeof(TRILATPROCESSINGTYPEArray) / sizeof(TRILATPROCESSINGTYPEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(TRILATPROCESSINGTYPE, TRILATPROCESSINGTYPEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function updateApplication_TRILATPROCESSINGTYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *updateApplication_TRILATPROCESSINGTYPE_convertToJSON(sirqul_iot_platform_updateApplication_trilatProcessingType_e TRILATPROCESSINGTYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "trilatProcessingType", updateApplication_TRILATPROCESSINGTYPE_ToString(TRILATPROCESSINGTYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function updateApplication_TRILATPROCESSINGTYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_updateApplication_trilatProcessingType_e updateApplication_TRILATPROCESSINGTYPE_parseFromJSON(cJSON* TRILATPROCESSINGTYPEJSON) {
    sirqul_iot_platform_updateApplication_trilatProcessingType_e TRILATPROCESSINGTYPEVariable = 0;
    cJSON *TRILATPROCESSINGTYPEVar = cJSON_GetObjectItemCaseSensitive(TRILATPROCESSINGTYPEJSON, "trilatProcessingType");
    if(!cJSON_IsString(TRILATPROCESSINGTYPEVar) || (TRILATPROCESSINGTYPEVar->valuestring == NULL))
    {
        goto end;
    }
    TRILATPROCESSINGTYPEVariable = updateApplication_TRILATPROCESSINGTYPE_FromString(TRILATPROCESSINGTYPEVar->valuestring);
    return TRILATPROCESSINGTYPEVariable;
end:
    return 0;
}
*/

// Functions for enum SIZE for ApplicationAPI_updateApplicationPlacement

static char* updateApplicationPlacement_SIZE_ToString(sirqul_iot_platform_updateApplicationPlacement_size_e SIZE){
    char *SIZEArray[] =  { "NULL", "CONFIG", "BANNER", "LEADERBOARD", "SKYSCRAPER", "VIDEO", "ZIP", "INTERSTITIAL", "CUSTOM1", "CUSTOM2", "CUSTOM3", "CUSTOM4", "CUSTOM5", "CUSTOM6", "CUSTOM7", "CUSTOM8", "CUSTOM9", "CUSTOM10" };
    return SIZEArray[SIZE];
}

static sirqul_iot_platform_updateApplicationPlacement_size_e updateApplicationPlacement_SIZE_FromString(char* SIZE){
    int stringToReturn = 0;
    char *SIZEArray[] =  { "NULL", "CONFIG", "BANNER", "LEADERBOARD", "SKYSCRAPER", "VIDEO", "ZIP", "INTERSTITIAL", "CUSTOM1", "CUSTOM2", "CUSTOM3", "CUSTOM4", "CUSTOM5", "CUSTOM6", "CUSTOM7", "CUSTOM8", "CUSTOM9", "CUSTOM10" };
    size_t sizeofArray = sizeof(SIZEArray) / sizeof(SIZEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(SIZE, SIZEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function updateApplicationPlacement_SIZE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *updateApplicationPlacement_SIZE_convertToJSON(sirqul_iot_platform_updateApplicationPlacement_size_e SIZE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "size", updateApplicationPlacement_SIZE_ToString(SIZE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function updateApplicationPlacement_SIZE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_updateApplicationPlacement_size_e updateApplicationPlacement_SIZE_parseFromJSON(cJSON* SIZEJSON) {
    sirqul_iot_platform_updateApplicationPlacement_size_e SIZEVariable = 0;
    cJSON *SIZEVar = cJSON_GetObjectItemCaseSensitive(SIZEJSON, "size");
    if(!cJSON_IsString(SIZEVar) || (SIZEVar->valuestring == NULL))
    {
        goto end;
    }
    SIZEVariable = updateApplicationPlacement_SIZE_FromString(SIZEVar->valuestring);
    return SIZEVariable;
end:
    return 0;
}
*/


// Create Application
//
// Create an application record and one placement record for that application. You can create more placements for this application by using {@link createApplicationPlacement}.
//
application_response_t*
ApplicationAPI_createApplication(apiClient_t *apiClient, double version, char *appName, char *deviceId, long accountId, char *about, char *bundleId, long appIconAssetId, long appLogoAssetId, char *facebookAppId, char *facebookAppSecret, char *googleApiKey, int *updateEULADate, char *eulaVersion, char *landingPageUrl, int *showInActivities, char *activityDescription, char *inviteWelcomeText, char *invitePageUrl, char *urlScheme, char *platforms, char *downloadUrls, char *categoryIds, sirqul_iot_platform_createApplication_scoringType_e scoringType, int *hintCost, int *maxScore, float ticketsPerPoint, int *hasGameData, int *publicNotifications, int *useMatchingAlgorithm, int *globalTickets, float buildVersion, float apiVersion, char *placementName, char *placementDescription, sirqul_iot_platform_createApplication_placementSize_e placementSize, int *placementHeight, int *placementWidth, int *placementRefreshInterval, int *createObjectStore, int *publicContentApproval, int *productionMode, int *minimumSessionLength, int *sessionGapLength, int *localAdsEnabled, char *sqootApiKey, sirqul_iot_platform_createApplication_trilatProcessingType_e trilatProcessingType, int *maxSampleSize, double minRSSI, char *modules, int *authorizedCount, char *authorizedServers, char *defaultTimezone, char *smtpPass, char *metaData, char *placementMetaData, int *ipsFloor, int *enableAPNSBadge, int *includeInReport, long defaultAppFilterId, int *enableWelcomeEmail, char *appleAppId, char *appleTeamId, char *appleAuthKeyId, binary_t* appleAuthKey, char *appleIssuerId, char *appStoreKeyId, binary_t* appStoreKey, binary_t* googlePrivateKeyFile, char *authorizeNetApiKey, char *authorizeNetTransactionKey, char *emailSender, char *smtpUser, char *smtpHost, char *vatomBusinessId, char *vatomRestClientId, char *vatomRestSecretKey, char *twilioAccountSID, char *twilioAuthToken, char *twilioSenderPhoneNumber, char *openAISecretKey)
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
    char *localVarPath = strdup("/api/{version}/application/create");



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
    char *keyQuery_appName = NULL;
    char * valueQuery_appName = NULL;
    keyValuePair_t *keyPairQuery_appName = 0;
    if (appName)
    {
        keyQuery_appName = strdup("appName");
        valueQuery_appName = strdup((appName));
        keyPairQuery_appName = keyValuePair_create(keyQuery_appName, valueQuery_appName);
        list_addElement(localVarQueryParameters,keyPairQuery_appName);
    }

    // query parameters
    char *keyQuery_about = NULL;
    char * valueQuery_about = NULL;
    keyValuePair_t *keyPairQuery_about = 0;
    if (about)
    {
        keyQuery_about = strdup("about");
        valueQuery_about = strdup((about));
        keyPairQuery_about = keyValuePair_create(keyQuery_about, valueQuery_about);
        list_addElement(localVarQueryParameters,keyPairQuery_about);
    }

    // query parameters
    char *keyQuery_bundleId = NULL;
    char * valueQuery_bundleId = NULL;
    keyValuePair_t *keyPairQuery_bundleId = 0;
    if (bundleId)
    {
        keyQuery_bundleId = strdup("bundleId");
        valueQuery_bundleId = strdup((bundleId));
        keyPairQuery_bundleId = keyValuePair_create(keyQuery_bundleId, valueQuery_bundleId);
        list_addElement(localVarQueryParameters,keyPairQuery_bundleId);
    }

    // query parameters
    char *keyQuery_appIconAssetId = NULL;
    char * valueQuery_appIconAssetId ;
    keyValuePair_t *keyPairQuery_appIconAssetId = 0;
    {
        keyQuery_appIconAssetId = strdup("appIconAssetId");
        valueQuery_appIconAssetId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_appIconAssetId, MAX_NUMBER_LENGTH_LONG, "%d", appIconAssetId);
        keyPairQuery_appIconAssetId = keyValuePair_create(keyQuery_appIconAssetId, valueQuery_appIconAssetId);
        list_addElement(localVarQueryParameters,keyPairQuery_appIconAssetId);
    }

    // query parameters
    char *keyQuery_appLogoAssetId = NULL;
    char * valueQuery_appLogoAssetId ;
    keyValuePair_t *keyPairQuery_appLogoAssetId = 0;
    {
        keyQuery_appLogoAssetId = strdup("appLogoAssetId");
        valueQuery_appLogoAssetId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_appLogoAssetId, MAX_NUMBER_LENGTH_LONG, "%d", appLogoAssetId);
        keyPairQuery_appLogoAssetId = keyValuePair_create(keyQuery_appLogoAssetId, valueQuery_appLogoAssetId);
        list_addElement(localVarQueryParameters,keyPairQuery_appLogoAssetId);
    }

    // query parameters
    char *keyQuery_facebookAppId = NULL;
    char * valueQuery_facebookAppId = NULL;
    keyValuePair_t *keyPairQuery_facebookAppId = 0;
    if (facebookAppId)
    {
        keyQuery_facebookAppId = strdup("facebookAppId");
        valueQuery_facebookAppId = strdup((facebookAppId));
        keyPairQuery_facebookAppId = keyValuePair_create(keyQuery_facebookAppId, valueQuery_facebookAppId);
        list_addElement(localVarQueryParameters,keyPairQuery_facebookAppId);
    }

    // query parameters
    char *keyQuery_facebookAppSecret = NULL;
    char * valueQuery_facebookAppSecret = NULL;
    keyValuePair_t *keyPairQuery_facebookAppSecret = 0;
    if (facebookAppSecret)
    {
        keyQuery_facebookAppSecret = strdup("facebookAppSecret");
        valueQuery_facebookAppSecret = strdup((facebookAppSecret));
        keyPairQuery_facebookAppSecret = keyValuePair_create(keyQuery_facebookAppSecret, valueQuery_facebookAppSecret);
        list_addElement(localVarQueryParameters,keyPairQuery_facebookAppSecret);
    }

    // query parameters
    char *keyQuery_googleApiKey = NULL;
    char * valueQuery_googleApiKey = NULL;
    keyValuePair_t *keyPairQuery_googleApiKey = 0;
    if (googleApiKey)
    {
        keyQuery_googleApiKey = strdup("googleApiKey");
        valueQuery_googleApiKey = strdup((googleApiKey));
        keyPairQuery_googleApiKey = keyValuePair_create(keyQuery_googleApiKey, valueQuery_googleApiKey);
        list_addElement(localVarQueryParameters,keyPairQuery_googleApiKey);
    }

    // query parameters
    char *keyQuery_updateEULADate = NULL;
    char * valueQuery_updateEULADate = NULL;
    keyValuePair_t *keyPairQuery_updateEULADate = 0;
    if (updateEULADate)
    {
        keyQuery_updateEULADate = strdup("updateEULADate");
        valueQuery_updateEULADate = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_updateEULADate, MAX_NUMBER_LENGTH, "%d", *updateEULADate);
        keyPairQuery_updateEULADate = keyValuePair_create(keyQuery_updateEULADate, valueQuery_updateEULADate);
        list_addElement(localVarQueryParameters,keyPairQuery_updateEULADate);
    }

    // query parameters
    char *keyQuery_eulaVersion = NULL;
    char * valueQuery_eulaVersion = NULL;
    keyValuePair_t *keyPairQuery_eulaVersion = 0;
    if (eulaVersion)
    {
        keyQuery_eulaVersion = strdup("eulaVersion");
        valueQuery_eulaVersion = strdup((eulaVersion));
        keyPairQuery_eulaVersion = keyValuePair_create(keyQuery_eulaVersion, valueQuery_eulaVersion);
        list_addElement(localVarQueryParameters,keyPairQuery_eulaVersion);
    }

    // query parameters
    char *keyQuery_landingPageUrl = NULL;
    char * valueQuery_landingPageUrl = NULL;
    keyValuePair_t *keyPairQuery_landingPageUrl = 0;
    if (landingPageUrl)
    {
        keyQuery_landingPageUrl = strdup("landingPageUrl");
        valueQuery_landingPageUrl = strdup((landingPageUrl));
        keyPairQuery_landingPageUrl = keyValuePair_create(keyQuery_landingPageUrl, valueQuery_landingPageUrl);
        list_addElement(localVarQueryParameters,keyPairQuery_landingPageUrl);
    }

    // query parameters
    char *keyQuery_showInActivities = NULL;
    char * valueQuery_showInActivities = NULL;
    keyValuePair_t *keyPairQuery_showInActivities = 0;
    if (showInActivities)
    {
        keyQuery_showInActivities = strdup("showInActivities");
        valueQuery_showInActivities = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_showInActivities, MAX_NUMBER_LENGTH, "%d", *showInActivities);
        keyPairQuery_showInActivities = keyValuePair_create(keyQuery_showInActivities, valueQuery_showInActivities);
        list_addElement(localVarQueryParameters,keyPairQuery_showInActivities);
    }

    // query parameters
    char *keyQuery_activityDescription = NULL;
    char * valueQuery_activityDescription = NULL;
    keyValuePair_t *keyPairQuery_activityDescription = 0;
    if (activityDescription)
    {
        keyQuery_activityDescription = strdup("activityDescription");
        valueQuery_activityDescription = strdup((activityDescription));
        keyPairQuery_activityDescription = keyValuePair_create(keyQuery_activityDescription, valueQuery_activityDescription);
        list_addElement(localVarQueryParameters,keyPairQuery_activityDescription);
    }

    // query parameters
    char *keyQuery_inviteWelcomeText = NULL;
    char * valueQuery_inviteWelcomeText = NULL;
    keyValuePair_t *keyPairQuery_inviteWelcomeText = 0;
    if (inviteWelcomeText)
    {
        keyQuery_inviteWelcomeText = strdup("inviteWelcomeText");
        valueQuery_inviteWelcomeText = strdup((inviteWelcomeText));
        keyPairQuery_inviteWelcomeText = keyValuePair_create(keyQuery_inviteWelcomeText, valueQuery_inviteWelcomeText);
        list_addElement(localVarQueryParameters,keyPairQuery_inviteWelcomeText);
    }

    // query parameters
    char *keyQuery_invitePageUrl = NULL;
    char * valueQuery_invitePageUrl = NULL;
    keyValuePair_t *keyPairQuery_invitePageUrl = 0;
    if (invitePageUrl)
    {
        keyQuery_invitePageUrl = strdup("invitePageUrl");
        valueQuery_invitePageUrl = strdup((invitePageUrl));
        keyPairQuery_invitePageUrl = keyValuePair_create(keyQuery_invitePageUrl, valueQuery_invitePageUrl);
        list_addElement(localVarQueryParameters,keyPairQuery_invitePageUrl);
    }

    // query parameters
    char *keyQuery_urlScheme = NULL;
    char * valueQuery_urlScheme = NULL;
    keyValuePair_t *keyPairQuery_urlScheme = 0;
    if (urlScheme)
    {
        keyQuery_urlScheme = strdup("urlScheme");
        valueQuery_urlScheme = strdup((urlScheme));
        keyPairQuery_urlScheme = keyValuePair_create(keyQuery_urlScheme, valueQuery_urlScheme);
        list_addElement(localVarQueryParameters,keyPairQuery_urlScheme);
    }

    // query parameters
    char *keyQuery_platforms = NULL;
    char * valueQuery_platforms = NULL;
    keyValuePair_t *keyPairQuery_platforms = 0;
    if (platforms)
    {
        keyQuery_platforms = strdup("platforms");
        valueQuery_platforms = strdup((platforms));
        keyPairQuery_platforms = keyValuePair_create(keyQuery_platforms, valueQuery_platforms);
        list_addElement(localVarQueryParameters,keyPairQuery_platforms);
    }

    // query parameters
    char *keyQuery_downloadUrls = NULL;
    char * valueQuery_downloadUrls = NULL;
    keyValuePair_t *keyPairQuery_downloadUrls = 0;
    if (downloadUrls)
    {
        keyQuery_downloadUrls = strdup("downloadUrls");
        valueQuery_downloadUrls = strdup((downloadUrls));
        keyPairQuery_downloadUrls = keyValuePair_create(keyQuery_downloadUrls, valueQuery_downloadUrls);
        list_addElement(localVarQueryParameters,keyPairQuery_downloadUrls);
    }

    // query parameters
    char *keyQuery_categoryIds = NULL;
    char * valueQuery_categoryIds = NULL;
    keyValuePair_t *keyPairQuery_categoryIds = 0;
    if (categoryIds)
    {
        keyQuery_categoryIds = strdup("categoryIds");
        valueQuery_categoryIds = strdup((categoryIds));
        keyPairQuery_categoryIds = keyValuePair_create(keyQuery_categoryIds, valueQuery_categoryIds);
        list_addElement(localVarQueryParameters,keyPairQuery_categoryIds);
    }

    // query parameters
    char *keyQuery_scoringType = NULL;
    sirqul_iot_platform_createApplication_scoringType_e valueQuery_scoringType ;
    keyValuePair_t *keyPairQuery_scoringType = 0;
    if (scoringType)
    {
        keyQuery_scoringType = strdup("scoringType");
        valueQuery_scoringType = (scoringType);
        keyPairQuery_scoringType = keyValuePair_create(keyQuery_scoringType, strdup(createApplication_SCORINGTYPE_ToString(
        valueQuery_scoringType)));
        list_addElement(localVarQueryParameters,keyPairQuery_scoringType);
    }

    // query parameters
    char *keyQuery_hintCost = NULL;
    char * valueQuery_hintCost = NULL;
    keyValuePair_t *keyPairQuery_hintCost = 0;
    if (hintCost)
    {
        keyQuery_hintCost = strdup("hintCost");
        valueQuery_hintCost = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_hintCost, MAX_NUMBER_LENGTH, "%d", *hintCost);
        keyPairQuery_hintCost = keyValuePair_create(keyQuery_hintCost, valueQuery_hintCost);
        list_addElement(localVarQueryParameters,keyPairQuery_hintCost);
    }

    // query parameters
    char *keyQuery_maxScore = NULL;
    char * valueQuery_maxScore = NULL;
    keyValuePair_t *keyPairQuery_maxScore = 0;
    if (maxScore)
    {
        keyQuery_maxScore = strdup("maxScore");
        valueQuery_maxScore = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_maxScore, MAX_NUMBER_LENGTH, "%d", *maxScore);
        keyPairQuery_maxScore = keyValuePair_create(keyQuery_maxScore, valueQuery_maxScore);
        list_addElement(localVarQueryParameters,keyPairQuery_maxScore);
    }

    // query parameters
    char *keyQuery_ticketsPerPoint = NULL;
    char * valueQuery_ticketsPerPoint = NULL;
    keyValuePair_t *keyPairQuery_ticketsPerPoint = 0;
    {
        keyQuery_ticketsPerPoint = strdup("ticketsPerPoint");
        int s = snprintf(NULL, 0, "%.7e", ticketsPerPoint);
        if (s >= 0)
        {
            valueQuery_ticketsPerPoint = calloc(1,s+1);
            snprintf(valueQuery_ticketsPerPoint, s+1, "%.7e", ticketsPerPoint);
        }
        keyPairQuery_ticketsPerPoint = keyValuePair_create(keyQuery_ticketsPerPoint, valueQuery_ticketsPerPoint);
        list_addElement(localVarQueryParameters,keyPairQuery_ticketsPerPoint);
    }

    // query parameters
    char *keyQuery_hasGameData = NULL;
    char * valueQuery_hasGameData = NULL;
    keyValuePair_t *keyPairQuery_hasGameData = 0;
    if (hasGameData)
    {
        keyQuery_hasGameData = strdup("hasGameData");
        valueQuery_hasGameData = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_hasGameData, MAX_NUMBER_LENGTH, "%d", *hasGameData);
        keyPairQuery_hasGameData = keyValuePair_create(keyQuery_hasGameData, valueQuery_hasGameData);
        list_addElement(localVarQueryParameters,keyPairQuery_hasGameData);
    }

    // query parameters
    char *keyQuery_publicNotifications = NULL;
    char * valueQuery_publicNotifications = NULL;
    keyValuePair_t *keyPairQuery_publicNotifications = 0;
    if (publicNotifications)
    {
        keyQuery_publicNotifications = strdup("publicNotifications");
        valueQuery_publicNotifications = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_publicNotifications, MAX_NUMBER_LENGTH, "%d", *publicNotifications);
        keyPairQuery_publicNotifications = keyValuePair_create(keyQuery_publicNotifications, valueQuery_publicNotifications);
        list_addElement(localVarQueryParameters,keyPairQuery_publicNotifications);
    }

    // query parameters
    char *keyQuery_useMatchingAlgorithm = NULL;
    char * valueQuery_useMatchingAlgorithm = NULL;
    keyValuePair_t *keyPairQuery_useMatchingAlgorithm = 0;
    if (useMatchingAlgorithm)
    {
        keyQuery_useMatchingAlgorithm = strdup("useMatchingAlgorithm");
        valueQuery_useMatchingAlgorithm = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_useMatchingAlgorithm, MAX_NUMBER_LENGTH, "%d", *useMatchingAlgorithm);
        keyPairQuery_useMatchingAlgorithm = keyValuePair_create(keyQuery_useMatchingAlgorithm, valueQuery_useMatchingAlgorithm);
        list_addElement(localVarQueryParameters,keyPairQuery_useMatchingAlgorithm);
    }

    // query parameters
    char *keyQuery_globalTickets = NULL;
    char * valueQuery_globalTickets = NULL;
    keyValuePair_t *keyPairQuery_globalTickets = 0;
    if (globalTickets)
    {
        keyQuery_globalTickets = strdup("globalTickets");
        valueQuery_globalTickets = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_globalTickets, MAX_NUMBER_LENGTH, "%d", *globalTickets);
        keyPairQuery_globalTickets = keyValuePair_create(keyQuery_globalTickets, valueQuery_globalTickets);
        list_addElement(localVarQueryParameters,keyPairQuery_globalTickets);
    }

    // query parameters
    char *keyQuery_buildVersion = NULL;
    char * valueQuery_buildVersion = NULL;
    keyValuePair_t *keyPairQuery_buildVersion = 0;
    {
        keyQuery_buildVersion = strdup("buildVersion");
        int s = snprintf(NULL, 0, "%.7e", buildVersion);
        if (s >= 0)
        {
            valueQuery_buildVersion = calloc(1,s+1);
            snprintf(valueQuery_buildVersion, s+1, "%.7e", buildVersion);
        }
        keyPairQuery_buildVersion = keyValuePair_create(keyQuery_buildVersion, valueQuery_buildVersion);
        list_addElement(localVarQueryParameters,keyPairQuery_buildVersion);
    }

    // query parameters
    char *keyQuery_apiVersion = NULL;
    char * valueQuery_apiVersion = NULL;
    keyValuePair_t *keyPairQuery_apiVersion = 0;
    {
        keyQuery_apiVersion = strdup("apiVersion");
        int s = snprintf(NULL, 0, "%.7e", apiVersion);
        if (s >= 0)
        {
            valueQuery_apiVersion = calloc(1,s+1);
            snprintf(valueQuery_apiVersion, s+1, "%.7e", apiVersion);
        }
        keyPairQuery_apiVersion = keyValuePair_create(keyQuery_apiVersion, valueQuery_apiVersion);
        list_addElement(localVarQueryParameters,keyPairQuery_apiVersion);
    }

    // query parameters
    char *keyQuery_placementName = NULL;
    char * valueQuery_placementName = NULL;
    keyValuePair_t *keyPairQuery_placementName = 0;
    if (placementName)
    {
        keyQuery_placementName = strdup("placementName");
        valueQuery_placementName = strdup((placementName));
        keyPairQuery_placementName = keyValuePair_create(keyQuery_placementName, valueQuery_placementName);
        list_addElement(localVarQueryParameters,keyPairQuery_placementName);
    }

    // query parameters
    char *keyQuery_placementDescription = NULL;
    char * valueQuery_placementDescription = NULL;
    keyValuePair_t *keyPairQuery_placementDescription = 0;
    if (placementDescription)
    {
        keyQuery_placementDescription = strdup("placementDescription");
        valueQuery_placementDescription = strdup((placementDescription));
        keyPairQuery_placementDescription = keyValuePair_create(keyQuery_placementDescription, valueQuery_placementDescription);
        list_addElement(localVarQueryParameters,keyPairQuery_placementDescription);
    }

    // query parameters
    char *keyQuery_placementSize = NULL;
    sirqul_iot_platform_createApplication_placementSize_e valueQuery_placementSize ;
    keyValuePair_t *keyPairQuery_placementSize = 0;
    if (placementSize)
    {
        keyQuery_placementSize = strdup("placementSize");
        valueQuery_placementSize = (placementSize);
        keyPairQuery_placementSize = keyValuePair_create(keyQuery_placementSize, strdup(createApplication_PLACEMENTSIZE_ToString(
        valueQuery_placementSize)));
        list_addElement(localVarQueryParameters,keyPairQuery_placementSize);
    }

    // query parameters
    char *keyQuery_placementHeight = NULL;
    char * valueQuery_placementHeight = NULL;
    keyValuePair_t *keyPairQuery_placementHeight = 0;
    if (placementHeight)
    {
        keyQuery_placementHeight = strdup("placementHeight");
        valueQuery_placementHeight = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_placementHeight, MAX_NUMBER_LENGTH, "%d", *placementHeight);
        keyPairQuery_placementHeight = keyValuePair_create(keyQuery_placementHeight, valueQuery_placementHeight);
        list_addElement(localVarQueryParameters,keyPairQuery_placementHeight);
    }

    // query parameters
    char *keyQuery_placementWidth = NULL;
    char * valueQuery_placementWidth = NULL;
    keyValuePair_t *keyPairQuery_placementWidth = 0;
    if (placementWidth)
    {
        keyQuery_placementWidth = strdup("placementWidth");
        valueQuery_placementWidth = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_placementWidth, MAX_NUMBER_LENGTH, "%d", *placementWidth);
        keyPairQuery_placementWidth = keyValuePair_create(keyQuery_placementWidth, valueQuery_placementWidth);
        list_addElement(localVarQueryParameters,keyPairQuery_placementWidth);
    }

    // query parameters
    char *keyQuery_placementRefreshInterval = NULL;
    char * valueQuery_placementRefreshInterval = NULL;
    keyValuePair_t *keyPairQuery_placementRefreshInterval = 0;
    if (placementRefreshInterval)
    {
        keyQuery_placementRefreshInterval = strdup("placementRefreshInterval");
        valueQuery_placementRefreshInterval = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_placementRefreshInterval, MAX_NUMBER_LENGTH, "%d", *placementRefreshInterval);
        keyPairQuery_placementRefreshInterval = keyValuePair_create(keyQuery_placementRefreshInterval, valueQuery_placementRefreshInterval);
        list_addElement(localVarQueryParameters,keyPairQuery_placementRefreshInterval);
    }

    // query parameters
    char *keyQuery_createObjectStore = NULL;
    char * valueQuery_createObjectStore = NULL;
    keyValuePair_t *keyPairQuery_createObjectStore = 0;
    if (createObjectStore)
    {
        keyQuery_createObjectStore = strdup("createObjectStore");
        valueQuery_createObjectStore = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_createObjectStore, MAX_NUMBER_LENGTH, "%d", *createObjectStore);
        keyPairQuery_createObjectStore = keyValuePair_create(keyQuery_createObjectStore, valueQuery_createObjectStore);
        list_addElement(localVarQueryParameters,keyPairQuery_createObjectStore);
    }

    // query parameters
    char *keyQuery_publicContentApproval = NULL;
    char * valueQuery_publicContentApproval = NULL;
    keyValuePair_t *keyPairQuery_publicContentApproval = 0;
    if (publicContentApproval)
    {
        keyQuery_publicContentApproval = strdup("publicContentApproval");
        valueQuery_publicContentApproval = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_publicContentApproval, MAX_NUMBER_LENGTH, "%d", *publicContentApproval);
        keyPairQuery_publicContentApproval = keyValuePair_create(keyQuery_publicContentApproval, valueQuery_publicContentApproval);
        list_addElement(localVarQueryParameters,keyPairQuery_publicContentApproval);
    }

    // query parameters
    char *keyQuery_productionMode = NULL;
    char * valueQuery_productionMode = NULL;
    keyValuePair_t *keyPairQuery_productionMode = 0;
    if (productionMode)
    {
        keyQuery_productionMode = strdup("productionMode");
        valueQuery_productionMode = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_productionMode, MAX_NUMBER_LENGTH, "%d", *productionMode);
        keyPairQuery_productionMode = keyValuePair_create(keyQuery_productionMode, valueQuery_productionMode);
        list_addElement(localVarQueryParameters,keyPairQuery_productionMode);
    }

    // query parameters
    char *keyQuery_minimumSessionLength = NULL;
    char * valueQuery_minimumSessionLength = NULL;
    keyValuePair_t *keyPairQuery_minimumSessionLength = 0;
    if (minimumSessionLength)
    {
        keyQuery_minimumSessionLength = strdup("minimumSessionLength");
        valueQuery_minimumSessionLength = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_minimumSessionLength, MAX_NUMBER_LENGTH, "%d", *minimumSessionLength);
        keyPairQuery_minimumSessionLength = keyValuePair_create(keyQuery_minimumSessionLength, valueQuery_minimumSessionLength);
        list_addElement(localVarQueryParameters,keyPairQuery_minimumSessionLength);
    }

    // query parameters
    char *keyQuery_sessionGapLength = NULL;
    char * valueQuery_sessionGapLength = NULL;
    keyValuePair_t *keyPairQuery_sessionGapLength = 0;
    if (sessionGapLength)
    {
        keyQuery_sessionGapLength = strdup("sessionGapLength");
        valueQuery_sessionGapLength = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_sessionGapLength, MAX_NUMBER_LENGTH, "%d", *sessionGapLength);
        keyPairQuery_sessionGapLength = keyValuePair_create(keyQuery_sessionGapLength, valueQuery_sessionGapLength);
        list_addElement(localVarQueryParameters,keyPairQuery_sessionGapLength);
    }

    // query parameters
    char *keyQuery_localAdsEnabled = NULL;
    char * valueQuery_localAdsEnabled = NULL;
    keyValuePair_t *keyPairQuery_localAdsEnabled = 0;
    if (localAdsEnabled)
    {
        keyQuery_localAdsEnabled = strdup("localAdsEnabled");
        valueQuery_localAdsEnabled = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_localAdsEnabled, MAX_NUMBER_LENGTH, "%d", *localAdsEnabled);
        keyPairQuery_localAdsEnabled = keyValuePair_create(keyQuery_localAdsEnabled, valueQuery_localAdsEnabled);
        list_addElement(localVarQueryParameters,keyPairQuery_localAdsEnabled);
    }

    // query parameters
    char *keyQuery_sqootApiKey = NULL;
    char * valueQuery_sqootApiKey = NULL;
    keyValuePair_t *keyPairQuery_sqootApiKey = 0;
    if (sqootApiKey)
    {
        keyQuery_sqootApiKey = strdup("sqootApiKey");
        valueQuery_sqootApiKey = strdup((sqootApiKey));
        keyPairQuery_sqootApiKey = keyValuePair_create(keyQuery_sqootApiKey, valueQuery_sqootApiKey);
        list_addElement(localVarQueryParameters,keyPairQuery_sqootApiKey);
    }

    // query parameters
    char *keyQuery_trilatProcessingType = NULL;
    sirqul_iot_platform_createApplication_trilatProcessingType_e valueQuery_trilatProcessingType ;
    keyValuePair_t *keyPairQuery_trilatProcessingType = 0;
    if (trilatProcessingType)
    {
        keyQuery_trilatProcessingType = strdup("trilatProcessingType");
        valueQuery_trilatProcessingType = (trilatProcessingType);
        keyPairQuery_trilatProcessingType = keyValuePair_create(keyQuery_trilatProcessingType, strdup(createApplication_TRILATPROCESSINGTYPE_ToString(
        valueQuery_trilatProcessingType)));
        list_addElement(localVarQueryParameters,keyPairQuery_trilatProcessingType);
    }

    // query parameters
    char *keyQuery_maxSampleSize = NULL;
    char * valueQuery_maxSampleSize = NULL;
    keyValuePair_t *keyPairQuery_maxSampleSize = 0;
    if (maxSampleSize)
    {
        keyQuery_maxSampleSize = strdup("maxSampleSize");
        valueQuery_maxSampleSize = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_maxSampleSize, MAX_NUMBER_LENGTH, "%d", *maxSampleSize);
        keyPairQuery_maxSampleSize = keyValuePair_create(keyQuery_maxSampleSize, valueQuery_maxSampleSize);
        list_addElement(localVarQueryParameters,keyPairQuery_maxSampleSize);
    }

    // query parameters
    char *keyQuery_minRSSI = NULL;
    char * valueQuery_minRSSI = NULL;
    keyValuePair_t *keyPairQuery_minRSSI = 0;
    {
        keyQuery_minRSSI = strdup("minRSSI");
        int s = snprintf(NULL, 0, "%.16e", minRSSI);
        if (s >= 0)
        {
            valueQuery_minRSSI = calloc(1,s+1);
            snprintf(valueQuery_minRSSI, s+1, "%.16e", minRSSI);
        }
        keyPairQuery_minRSSI = keyValuePair_create(keyQuery_minRSSI, valueQuery_minRSSI);
        list_addElement(localVarQueryParameters,keyPairQuery_minRSSI);
    }

    // query parameters
    char *keyQuery_modules = NULL;
    char * valueQuery_modules = NULL;
    keyValuePair_t *keyPairQuery_modules = 0;
    if (modules)
    {
        keyQuery_modules = strdup("modules");
        valueQuery_modules = strdup((modules));
        keyPairQuery_modules = keyValuePair_create(keyQuery_modules, valueQuery_modules);
        list_addElement(localVarQueryParameters,keyPairQuery_modules);
    }

    // query parameters
    char *keyQuery_authorizedCount = NULL;
    char * valueQuery_authorizedCount = NULL;
    keyValuePair_t *keyPairQuery_authorizedCount = 0;
    if (authorizedCount)
    {
        keyQuery_authorizedCount = strdup("authorizedCount");
        valueQuery_authorizedCount = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_authorizedCount, MAX_NUMBER_LENGTH, "%d", *authorizedCount);
        keyPairQuery_authorizedCount = keyValuePair_create(keyQuery_authorizedCount, valueQuery_authorizedCount);
        list_addElement(localVarQueryParameters,keyPairQuery_authorizedCount);
    }

    // query parameters
    char *keyQuery_authorizedServers = NULL;
    char * valueQuery_authorizedServers = NULL;
    keyValuePair_t *keyPairQuery_authorizedServers = 0;
    if (authorizedServers)
    {
        keyQuery_authorizedServers = strdup("authorizedServers");
        valueQuery_authorizedServers = strdup((authorizedServers));
        keyPairQuery_authorizedServers = keyValuePair_create(keyQuery_authorizedServers, valueQuery_authorizedServers);
        list_addElement(localVarQueryParameters,keyPairQuery_authorizedServers);
    }

    // query parameters
    char *keyQuery_defaultTimezone = NULL;
    char * valueQuery_defaultTimezone = NULL;
    keyValuePair_t *keyPairQuery_defaultTimezone = 0;
    if (defaultTimezone)
    {
        keyQuery_defaultTimezone = strdup("defaultTimezone");
        valueQuery_defaultTimezone = strdup((defaultTimezone));
        keyPairQuery_defaultTimezone = keyValuePair_create(keyQuery_defaultTimezone, valueQuery_defaultTimezone);
        list_addElement(localVarQueryParameters,keyPairQuery_defaultTimezone);
    }

    // query parameters
    char *keyQuery_smtpPass = NULL;
    char * valueQuery_smtpPass = NULL;
    keyValuePair_t *keyPairQuery_smtpPass = 0;
    if (smtpPass)
    {
        keyQuery_smtpPass = strdup("smtpPass");
        valueQuery_smtpPass = strdup((smtpPass));
        keyPairQuery_smtpPass = keyValuePair_create(keyQuery_smtpPass, valueQuery_smtpPass);
        list_addElement(localVarQueryParameters,keyPairQuery_smtpPass);
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
    char *keyQuery_placementMetaData = NULL;
    char * valueQuery_placementMetaData = NULL;
    keyValuePair_t *keyPairQuery_placementMetaData = 0;
    if (placementMetaData)
    {
        keyQuery_placementMetaData = strdup("placementMetaData");
        valueQuery_placementMetaData = strdup((placementMetaData));
        keyPairQuery_placementMetaData = keyValuePair_create(keyQuery_placementMetaData, valueQuery_placementMetaData);
        list_addElement(localVarQueryParameters,keyPairQuery_placementMetaData);
    }

    // query parameters
    char *keyQuery_ipsFloor = NULL;
    char * valueQuery_ipsFloor = NULL;
    keyValuePair_t *keyPairQuery_ipsFloor = 0;
    if (ipsFloor)
    {
        keyQuery_ipsFloor = strdup("ipsFloor");
        valueQuery_ipsFloor = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_ipsFloor, MAX_NUMBER_LENGTH, "%d", *ipsFloor);
        keyPairQuery_ipsFloor = keyValuePair_create(keyQuery_ipsFloor, valueQuery_ipsFloor);
        list_addElement(localVarQueryParameters,keyPairQuery_ipsFloor);
    }

    // query parameters
    char *keyQuery_enableAPNSBadge = NULL;
    char * valueQuery_enableAPNSBadge = NULL;
    keyValuePair_t *keyPairQuery_enableAPNSBadge = 0;
    if (enableAPNSBadge)
    {
        keyQuery_enableAPNSBadge = strdup("enableAPNSBadge");
        valueQuery_enableAPNSBadge = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_enableAPNSBadge, MAX_NUMBER_LENGTH, "%d", *enableAPNSBadge);
        keyPairQuery_enableAPNSBadge = keyValuePair_create(keyQuery_enableAPNSBadge, valueQuery_enableAPNSBadge);
        list_addElement(localVarQueryParameters,keyPairQuery_enableAPNSBadge);
    }

    // query parameters
    char *keyQuery_includeInReport = NULL;
    char * valueQuery_includeInReport = NULL;
    keyValuePair_t *keyPairQuery_includeInReport = 0;
    if (includeInReport)
    {
        keyQuery_includeInReport = strdup("includeInReport");
        valueQuery_includeInReport = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeInReport, MAX_NUMBER_LENGTH, "%d", *includeInReport);
        keyPairQuery_includeInReport = keyValuePair_create(keyQuery_includeInReport, valueQuery_includeInReport);
        list_addElement(localVarQueryParameters,keyPairQuery_includeInReport);
    }

    // query parameters
    char *keyQuery_defaultAppFilterId = NULL;
    char * valueQuery_defaultAppFilterId ;
    keyValuePair_t *keyPairQuery_defaultAppFilterId = 0;
    {
        keyQuery_defaultAppFilterId = strdup("defaultAppFilterId");
        valueQuery_defaultAppFilterId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_defaultAppFilterId, MAX_NUMBER_LENGTH_LONG, "%d", defaultAppFilterId);
        keyPairQuery_defaultAppFilterId = keyValuePair_create(keyQuery_defaultAppFilterId, valueQuery_defaultAppFilterId);
        list_addElement(localVarQueryParameters,keyPairQuery_defaultAppFilterId);
    }

    // query parameters
    char *keyQuery_enableWelcomeEmail = NULL;
    char * valueQuery_enableWelcomeEmail = NULL;
    keyValuePair_t *keyPairQuery_enableWelcomeEmail = 0;
    if (enableWelcomeEmail)
    {
        keyQuery_enableWelcomeEmail = strdup("enableWelcomeEmail");
        valueQuery_enableWelcomeEmail = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_enableWelcomeEmail, MAX_NUMBER_LENGTH, "%d", *enableWelcomeEmail);
        keyPairQuery_enableWelcomeEmail = keyValuePair_create(keyQuery_enableWelcomeEmail, valueQuery_enableWelcomeEmail);
        list_addElement(localVarQueryParameters,keyPairQuery_enableWelcomeEmail);
    }

    // query parameters
    char *keyQuery_appleAppId = NULL;
    char * valueQuery_appleAppId = NULL;
    keyValuePair_t *keyPairQuery_appleAppId = 0;
    if (appleAppId)
    {
        keyQuery_appleAppId = strdup("appleAppId");
        valueQuery_appleAppId = strdup((appleAppId));
        keyPairQuery_appleAppId = keyValuePair_create(keyQuery_appleAppId, valueQuery_appleAppId);
        list_addElement(localVarQueryParameters,keyPairQuery_appleAppId);
    }

    // query parameters
    char *keyQuery_appleTeamId = NULL;
    char * valueQuery_appleTeamId = NULL;
    keyValuePair_t *keyPairQuery_appleTeamId = 0;
    if (appleTeamId)
    {
        keyQuery_appleTeamId = strdup("appleTeamId");
        valueQuery_appleTeamId = strdup((appleTeamId));
        keyPairQuery_appleTeamId = keyValuePair_create(keyQuery_appleTeamId, valueQuery_appleTeamId);
        list_addElement(localVarQueryParameters,keyPairQuery_appleTeamId);
    }

    // query parameters
    char *keyQuery_appleAuthKeyId = NULL;
    char * valueQuery_appleAuthKeyId = NULL;
    keyValuePair_t *keyPairQuery_appleAuthKeyId = 0;
    if (appleAuthKeyId)
    {
        keyQuery_appleAuthKeyId = strdup("appleAuthKeyId");
        valueQuery_appleAuthKeyId = strdup((appleAuthKeyId));
        keyPairQuery_appleAuthKeyId = keyValuePair_create(keyQuery_appleAuthKeyId, valueQuery_appleAuthKeyId);
        list_addElement(localVarQueryParameters,keyPairQuery_appleAuthKeyId);
    }

    // query parameters
    char *keyQuery_appleAuthKey = NULL;
    binary_t* valueQuery_appleAuthKey ;
    keyValuePair_t *keyPairQuery_appleAuthKey = 0;
    if (appleAuthKey)
    {
        keyQuery_appleAuthKey = strdup("appleAuthKey");
        valueQuery_appleAuthKey = (appleAuthKey);
        keyPairQuery_appleAuthKey = keyValuePair_create(keyQuery_appleAuthKey, &valueQuery_appleAuthKey);
        list_addElement(localVarQueryParameters,keyPairQuery_appleAuthKey);
    }

    // query parameters
    char *keyQuery_appleIssuerId = NULL;
    char * valueQuery_appleIssuerId = NULL;
    keyValuePair_t *keyPairQuery_appleIssuerId = 0;
    if (appleIssuerId)
    {
        keyQuery_appleIssuerId = strdup("appleIssuerId");
        valueQuery_appleIssuerId = strdup((appleIssuerId));
        keyPairQuery_appleIssuerId = keyValuePair_create(keyQuery_appleIssuerId, valueQuery_appleIssuerId);
        list_addElement(localVarQueryParameters,keyPairQuery_appleIssuerId);
    }

    // query parameters
    char *keyQuery_appStoreKeyId = NULL;
    char * valueQuery_appStoreKeyId = NULL;
    keyValuePair_t *keyPairQuery_appStoreKeyId = 0;
    if (appStoreKeyId)
    {
        keyQuery_appStoreKeyId = strdup("appStoreKeyId");
        valueQuery_appStoreKeyId = strdup((appStoreKeyId));
        keyPairQuery_appStoreKeyId = keyValuePair_create(keyQuery_appStoreKeyId, valueQuery_appStoreKeyId);
        list_addElement(localVarQueryParameters,keyPairQuery_appStoreKeyId);
    }

    // query parameters
    char *keyQuery_appStoreKey = NULL;
    binary_t* valueQuery_appStoreKey ;
    keyValuePair_t *keyPairQuery_appStoreKey = 0;
    if (appStoreKey)
    {
        keyQuery_appStoreKey = strdup("appStoreKey");
        valueQuery_appStoreKey = (appStoreKey);
        keyPairQuery_appStoreKey = keyValuePair_create(keyQuery_appStoreKey, &valueQuery_appStoreKey);
        list_addElement(localVarQueryParameters,keyPairQuery_appStoreKey);
    }

    // query parameters
    char *keyQuery_googlePrivateKeyFile = NULL;
    binary_t* valueQuery_googlePrivateKeyFile ;
    keyValuePair_t *keyPairQuery_googlePrivateKeyFile = 0;
    if (googlePrivateKeyFile)
    {
        keyQuery_googlePrivateKeyFile = strdup("googlePrivateKeyFile");
        valueQuery_googlePrivateKeyFile = (googlePrivateKeyFile);
        keyPairQuery_googlePrivateKeyFile = keyValuePair_create(keyQuery_googlePrivateKeyFile, &valueQuery_googlePrivateKeyFile);
        list_addElement(localVarQueryParameters,keyPairQuery_googlePrivateKeyFile);
    }

    // query parameters
    char *keyQuery_authorizeNetApiKey = NULL;
    char * valueQuery_authorizeNetApiKey = NULL;
    keyValuePair_t *keyPairQuery_authorizeNetApiKey = 0;
    if (authorizeNetApiKey)
    {
        keyQuery_authorizeNetApiKey = strdup("authorizeNetApiKey");
        valueQuery_authorizeNetApiKey = strdup((authorizeNetApiKey));
        keyPairQuery_authorizeNetApiKey = keyValuePair_create(keyQuery_authorizeNetApiKey, valueQuery_authorizeNetApiKey);
        list_addElement(localVarQueryParameters,keyPairQuery_authorizeNetApiKey);
    }

    // query parameters
    char *keyQuery_authorizeNetTransactionKey = NULL;
    char * valueQuery_authorizeNetTransactionKey = NULL;
    keyValuePair_t *keyPairQuery_authorizeNetTransactionKey = 0;
    if (authorizeNetTransactionKey)
    {
        keyQuery_authorizeNetTransactionKey = strdup("authorizeNetTransactionKey");
        valueQuery_authorizeNetTransactionKey = strdup((authorizeNetTransactionKey));
        keyPairQuery_authorizeNetTransactionKey = keyValuePair_create(keyQuery_authorizeNetTransactionKey, valueQuery_authorizeNetTransactionKey);
        list_addElement(localVarQueryParameters,keyPairQuery_authorizeNetTransactionKey);
    }

    // query parameters
    char *keyQuery_emailSender = NULL;
    char * valueQuery_emailSender = NULL;
    keyValuePair_t *keyPairQuery_emailSender = 0;
    if (emailSender)
    {
        keyQuery_emailSender = strdup("emailSender");
        valueQuery_emailSender = strdup((emailSender));
        keyPairQuery_emailSender = keyValuePair_create(keyQuery_emailSender, valueQuery_emailSender);
        list_addElement(localVarQueryParameters,keyPairQuery_emailSender);
    }

    // query parameters
    char *keyQuery_smtpUser = NULL;
    char * valueQuery_smtpUser = NULL;
    keyValuePair_t *keyPairQuery_smtpUser = 0;
    if (smtpUser)
    {
        keyQuery_smtpUser = strdup("smtpUser");
        valueQuery_smtpUser = strdup((smtpUser));
        keyPairQuery_smtpUser = keyValuePair_create(keyQuery_smtpUser, valueQuery_smtpUser);
        list_addElement(localVarQueryParameters,keyPairQuery_smtpUser);
    }

    // query parameters
    char *keyQuery_smtpHost = NULL;
    char * valueQuery_smtpHost = NULL;
    keyValuePair_t *keyPairQuery_smtpHost = 0;
    if (smtpHost)
    {
        keyQuery_smtpHost = strdup("smtpHost");
        valueQuery_smtpHost = strdup((smtpHost));
        keyPairQuery_smtpHost = keyValuePair_create(keyQuery_smtpHost, valueQuery_smtpHost);
        list_addElement(localVarQueryParameters,keyPairQuery_smtpHost);
    }

    // query parameters
    char *keyQuery_vatomBusinessId = NULL;
    char * valueQuery_vatomBusinessId = NULL;
    keyValuePair_t *keyPairQuery_vatomBusinessId = 0;
    if (vatomBusinessId)
    {
        keyQuery_vatomBusinessId = strdup("vatomBusinessId");
        valueQuery_vatomBusinessId = strdup((vatomBusinessId));
        keyPairQuery_vatomBusinessId = keyValuePair_create(keyQuery_vatomBusinessId, valueQuery_vatomBusinessId);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomBusinessId);
    }

    // query parameters
    char *keyQuery_vatomRestClientId = NULL;
    char * valueQuery_vatomRestClientId = NULL;
    keyValuePair_t *keyPairQuery_vatomRestClientId = 0;
    if (vatomRestClientId)
    {
        keyQuery_vatomRestClientId = strdup("vatomRestClientId");
        valueQuery_vatomRestClientId = strdup((vatomRestClientId));
        keyPairQuery_vatomRestClientId = keyValuePair_create(keyQuery_vatomRestClientId, valueQuery_vatomRestClientId);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomRestClientId);
    }

    // query parameters
    char *keyQuery_vatomRestSecretKey = NULL;
    char * valueQuery_vatomRestSecretKey = NULL;
    keyValuePair_t *keyPairQuery_vatomRestSecretKey = 0;
    if (vatomRestSecretKey)
    {
        keyQuery_vatomRestSecretKey = strdup("vatomRestSecretKey");
        valueQuery_vatomRestSecretKey = strdup((vatomRestSecretKey));
        keyPairQuery_vatomRestSecretKey = keyValuePair_create(keyQuery_vatomRestSecretKey, valueQuery_vatomRestSecretKey);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomRestSecretKey);
    }

    // query parameters
    char *keyQuery_twilioAccountSID = NULL;
    char * valueQuery_twilioAccountSID = NULL;
    keyValuePair_t *keyPairQuery_twilioAccountSID = 0;
    if (twilioAccountSID)
    {
        keyQuery_twilioAccountSID = strdup("twilioAccountSID");
        valueQuery_twilioAccountSID = strdup((twilioAccountSID));
        keyPairQuery_twilioAccountSID = keyValuePair_create(keyQuery_twilioAccountSID, valueQuery_twilioAccountSID);
        list_addElement(localVarQueryParameters,keyPairQuery_twilioAccountSID);
    }

    // query parameters
    char *keyQuery_twilioAuthToken = NULL;
    char * valueQuery_twilioAuthToken = NULL;
    keyValuePair_t *keyPairQuery_twilioAuthToken = 0;
    if (twilioAuthToken)
    {
        keyQuery_twilioAuthToken = strdup("twilioAuthToken");
        valueQuery_twilioAuthToken = strdup((twilioAuthToken));
        keyPairQuery_twilioAuthToken = keyValuePair_create(keyQuery_twilioAuthToken, valueQuery_twilioAuthToken);
        list_addElement(localVarQueryParameters,keyPairQuery_twilioAuthToken);
    }

    // query parameters
    char *keyQuery_twilioSenderPhoneNumber = NULL;
    char * valueQuery_twilioSenderPhoneNumber = NULL;
    keyValuePair_t *keyPairQuery_twilioSenderPhoneNumber = 0;
    if (twilioSenderPhoneNumber)
    {
        keyQuery_twilioSenderPhoneNumber = strdup("twilioSenderPhoneNumber");
        valueQuery_twilioSenderPhoneNumber = strdup((twilioSenderPhoneNumber));
        keyPairQuery_twilioSenderPhoneNumber = keyValuePair_create(keyQuery_twilioSenderPhoneNumber, valueQuery_twilioSenderPhoneNumber);
        list_addElement(localVarQueryParameters,keyPairQuery_twilioSenderPhoneNumber);
    }

    // query parameters
    char *keyQuery_openAISecretKey = NULL;
    char * valueQuery_openAISecretKey = NULL;
    keyValuePair_t *keyPairQuery_openAISecretKey = 0;
    if (openAISecretKey)
    {
        keyQuery_openAISecretKey = strdup("openAISecretKey");
        valueQuery_openAISecretKey = strdup((openAISecretKey));
        keyPairQuery_openAISecretKey = keyValuePair_create(keyQuery_openAISecretKey, valueQuery_openAISecretKey);
        list_addElement(localVarQueryParameters,keyPairQuery_openAISecretKey);
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
    application_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ApplicationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = application_response_parseFromJSON(ApplicationAPIlocalVarJSON);
        cJSON_Delete(ApplicationAPIlocalVarJSON);
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
    if(keyQuery_appName){
        free(keyQuery_appName);
        keyQuery_appName = NULL;
    }
    if(valueQuery_appName){
        free(valueQuery_appName);
        valueQuery_appName = NULL;
    }
    if(keyPairQuery_appName){
        keyValuePair_free(keyPairQuery_appName);
        keyPairQuery_appName = NULL;
    }
    if(keyQuery_about){
        free(keyQuery_about);
        keyQuery_about = NULL;
    }
    if(valueQuery_about){
        free(valueQuery_about);
        valueQuery_about = NULL;
    }
    if(keyPairQuery_about){
        keyValuePair_free(keyPairQuery_about);
        keyPairQuery_about = NULL;
    }
    if(keyQuery_bundleId){
        free(keyQuery_bundleId);
        keyQuery_bundleId = NULL;
    }
    if(valueQuery_bundleId){
        free(valueQuery_bundleId);
        valueQuery_bundleId = NULL;
    }
    if(keyPairQuery_bundleId){
        keyValuePair_free(keyPairQuery_bundleId);
        keyPairQuery_bundleId = NULL;
    }
    if(keyQuery_appIconAssetId){
        free(keyQuery_appIconAssetId);
        keyQuery_appIconAssetId = NULL;
    }
    if(keyPairQuery_appIconAssetId){
        keyValuePair_free(keyPairQuery_appIconAssetId);
        keyPairQuery_appIconAssetId = NULL;
    }
    if(keyQuery_appLogoAssetId){
        free(keyQuery_appLogoAssetId);
        keyQuery_appLogoAssetId = NULL;
    }
    if(keyPairQuery_appLogoAssetId){
        keyValuePair_free(keyPairQuery_appLogoAssetId);
        keyPairQuery_appLogoAssetId = NULL;
    }
    if(keyQuery_facebookAppId){
        free(keyQuery_facebookAppId);
        keyQuery_facebookAppId = NULL;
    }
    if(valueQuery_facebookAppId){
        free(valueQuery_facebookAppId);
        valueQuery_facebookAppId = NULL;
    }
    if(keyPairQuery_facebookAppId){
        keyValuePair_free(keyPairQuery_facebookAppId);
        keyPairQuery_facebookAppId = NULL;
    }
    if(keyQuery_facebookAppSecret){
        free(keyQuery_facebookAppSecret);
        keyQuery_facebookAppSecret = NULL;
    }
    if(valueQuery_facebookAppSecret){
        free(valueQuery_facebookAppSecret);
        valueQuery_facebookAppSecret = NULL;
    }
    if(keyPairQuery_facebookAppSecret){
        keyValuePair_free(keyPairQuery_facebookAppSecret);
        keyPairQuery_facebookAppSecret = NULL;
    }
    if(keyQuery_googleApiKey){
        free(keyQuery_googleApiKey);
        keyQuery_googleApiKey = NULL;
    }
    if(valueQuery_googleApiKey){
        free(valueQuery_googleApiKey);
        valueQuery_googleApiKey = NULL;
    }
    if(keyPairQuery_googleApiKey){
        keyValuePair_free(keyPairQuery_googleApiKey);
        keyPairQuery_googleApiKey = NULL;
    }
    if(keyQuery_updateEULADate){
        free(keyQuery_updateEULADate);
        keyQuery_updateEULADate = NULL;
    }
    if(valueQuery_updateEULADate){
        free(valueQuery_updateEULADate);
        valueQuery_updateEULADate = NULL;
    }
    if(keyPairQuery_updateEULADate){
        keyValuePair_free(keyPairQuery_updateEULADate);
        keyPairQuery_updateEULADate = NULL;
    }
    if(keyQuery_eulaVersion){
        free(keyQuery_eulaVersion);
        keyQuery_eulaVersion = NULL;
    }
    if(valueQuery_eulaVersion){
        free(valueQuery_eulaVersion);
        valueQuery_eulaVersion = NULL;
    }
    if(keyPairQuery_eulaVersion){
        keyValuePair_free(keyPairQuery_eulaVersion);
        keyPairQuery_eulaVersion = NULL;
    }
    if(keyQuery_landingPageUrl){
        free(keyQuery_landingPageUrl);
        keyQuery_landingPageUrl = NULL;
    }
    if(valueQuery_landingPageUrl){
        free(valueQuery_landingPageUrl);
        valueQuery_landingPageUrl = NULL;
    }
    if(keyPairQuery_landingPageUrl){
        keyValuePair_free(keyPairQuery_landingPageUrl);
        keyPairQuery_landingPageUrl = NULL;
    }
    if(keyQuery_showInActivities){
        free(keyQuery_showInActivities);
        keyQuery_showInActivities = NULL;
    }
    if(valueQuery_showInActivities){
        free(valueQuery_showInActivities);
        valueQuery_showInActivities = NULL;
    }
    if(keyPairQuery_showInActivities){
        keyValuePair_free(keyPairQuery_showInActivities);
        keyPairQuery_showInActivities = NULL;
    }
    if(keyQuery_activityDescription){
        free(keyQuery_activityDescription);
        keyQuery_activityDescription = NULL;
    }
    if(valueQuery_activityDescription){
        free(valueQuery_activityDescription);
        valueQuery_activityDescription = NULL;
    }
    if(keyPairQuery_activityDescription){
        keyValuePair_free(keyPairQuery_activityDescription);
        keyPairQuery_activityDescription = NULL;
    }
    if(keyQuery_inviteWelcomeText){
        free(keyQuery_inviteWelcomeText);
        keyQuery_inviteWelcomeText = NULL;
    }
    if(valueQuery_inviteWelcomeText){
        free(valueQuery_inviteWelcomeText);
        valueQuery_inviteWelcomeText = NULL;
    }
    if(keyPairQuery_inviteWelcomeText){
        keyValuePair_free(keyPairQuery_inviteWelcomeText);
        keyPairQuery_inviteWelcomeText = NULL;
    }
    if(keyQuery_invitePageUrl){
        free(keyQuery_invitePageUrl);
        keyQuery_invitePageUrl = NULL;
    }
    if(valueQuery_invitePageUrl){
        free(valueQuery_invitePageUrl);
        valueQuery_invitePageUrl = NULL;
    }
    if(keyPairQuery_invitePageUrl){
        keyValuePair_free(keyPairQuery_invitePageUrl);
        keyPairQuery_invitePageUrl = NULL;
    }
    if(keyQuery_urlScheme){
        free(keyQuery_urlScheme);
        keyQuery_urlScheme = NULL;
    }
    if(valueQuery_urlScheme){
        free(valueQuery_urlScheme);
        valueQuery_urlScheme = NULL;
    }
    if(keyPairQuery_urlScheme){
        keyValuePair_free(keyPairQuery_urlScheme);
        keyPairQuery_urlScheme = NULL;
    }
    if(keyQuery_platforms){
        free(keyQuery_platforms);
        keyQuery_platforms = NULL;
    }
    if(valueQuery_platforms){
        free(valueQuery_platforms);
        valueQuery_platforms = NULL;
    }
    if(keyPairQuery_platforms){
        keyValuePair_free(keyPairQuery_platforms);
        keyPairQuery_platforms = NULL;
    }
    if(keyQuery_downloadUrls){
        free(keyQuery_downloadUrls);
        keyQuery_downloadUrls = NULL;
    }
    if(valueQuery_downloadUrls){
        free(valueQuery_downloadUrls);
        valueQuery_downloadUrls = NULL;
    }
    if(keyPairQuery_downloadUrls){
        keyValuePair_free(keyPairQuery_downloadUrls);
        keyPairQuery_downloadUrls = NULL;
    }
    if(keyQuery_categoryIds){
        free(keyQuery_categoryIds);
        keyQuery_categoryIds = NULL;
    }
    if(valueQuery_categoryIds){
        free(valueQuery_categoryIds);
        valueQuery_categoryIds = NULL;
    }
    if(keyPairQuery_categoryIds){
        keyValuePair_free(keyPairQuery_categoryIds);
        keyPairQuery_categoryIds = NULL;
    }
    if(keyQuery_scoringType){
        free(keyQuery_scoringType);
        keyQuery_scoringType = NULL;
    }
    if(keyPairQuery_scoringType){
        keyValuePair_free(keyPairQuery_scoringType);
        keyPairQuery_scoringType = NULL;
    }
    if(keyQuery_hintCost){
        free(keyQuery_hintCost);
        keyQuery_hintCost = NULL;
    }
    if(valueQuery_hintCost){
        free(valueQuery_hintCost);
        valueQuery_hintCost = NULL;
    }
    if(keyPairQuery_hintCost){
        keyValuePair_free(keyPairQuery_hintCost);
        keyPairQuery_hintCost = NULL;
    }
    if(keyQuery_maxScore){
        free(keyQuery_maxScore);
        keyQuery_maxScore = NULL;
    }
    if(valueQuery_maxScore){
        free(valueQuery_maxScore);
        valueQuery_maxScore = NULL;
    }
    if(keyPairQuery_maxScore){
        keyValuePair_free(keyPairQuery_maxScore);
        keyPairQuery_maxScore = NULL;
    }
    if(keyQuery_ticketsPerPoint){
        free(keyQuery_ticketsPerPoint);
        keyQuery_ticketsPerPoint = NULL;
    }
    if(keyPairQuery_ticketsPerPoint){
        keyValuePair_free(keyPairQuery_ticketsPerPoint);
        keyPairQuery_ticketsPerPoint = NULL;
    }
    if(keyQuery_hasGameData){
        free(keyQuery_hasGameData);
        keyQuery_hasGameData = NULL;
    }
    if(valueQuery_hasGameData){
        free(valueQuery_hasGameData);
        valueQuery_hasGameData = NULL;
    }
    if(keyPairQuery_hasGameData){
        keyValuePair_free(keyPairQuery_hasGameData);
        keyPairQuery_hasGameData = NULL;
    }
    if(keyQuery_publicNotifications){
        free(keyQuery_publicNotifications);
        keyQuery_publicNotifications = NULL;
    }
    if(valueQuery_publicNotifications){
        free(valueQuery_publicNotifications);
        valueQuery_publicNotifications = NULL;
    }
    if(keyPairQuery_publicNotifications){
        keyValuePair_free(keyPairQuery_publicNotifications);
        keyPairQuery_publicNotifications = NULL;
    }
    if(keyQuery_useMatchingAlgorithm){
        free(keyQuery_useMatchingAlgorithm);
        keyQuery_useMatchingAlgorithm = NULL;
    }
    if(valueQuery_useMatchingAlgorithm){
        free(valueQuery_useMatchingAlgorithm);
        valueQuery_useMatchingAlgorithm = NULL;
    }
    if(keyPairQuery_useMatchingAlgorithm){
        keyValuePair_free(keyPairQuery_useMatchingAlgorithm);
        keyPairQuery_useMatchingAlgorithm = NULL;
    }
    if(keyQuery_globalTickets){
        free(keyQuery_globalTickets);
        keyQuery_globalTickets = NULL;
    }
    if(valueQuery_globalTickets){
        free(valueQuery_globalTickets);
        valueQuery_globalTickets = NULL;
    }
    if(keyPairQuery_globalTickets){
        keyValuePair_free(keyPairQuery_globalTickets);
        keyPairQuery_globalTickets = NULL;
    }
    if(keyQuery_buildVersion){
        free(keyQuery_buildVersion);
        keyQuery_buildVersion = NULL;
    }
    if(keyPairQuery_buildVersion){
        keyValuePair_free(keyPairQuery_buildVersion);
        keyPairQuery_buildVersion = NULL;
    }
    if(keyQuery_apiVersion){
        free(keyQuery_apiVersion);
        keyQuery_apiVersion = NULL;
    }
    if(keyPairQuery_apiVersion){
        keyValuePair_free(keyPairQuery_apiVersion);
        keyPairQuery_apiVersion = NULL;
    }
    if(keyQuery_placementName){
        free(keyQuery_placementName);
        keyQuery_placementName = NULL;
    }
    if(valueQuery_placementName){
        free(valueQuery_placementName);
        valueQuery_placementName = NULL;
    }
    if(keyPairQuery_placementName){
        keyValuePair_free(keyPairQuery_placementName);
        keyPairQuery_placementName = NULL;
    }
    if(keyQuery_placementDescription){
        free(keyQuery_placementDescription);
        keyQuery_placementDescription = NULL;
    }
    if(valueQuery_placementDescription){
        free(valueQuery_placementDescription);
        valueQuery_placementDescription = NULL;
    }
    if(keyPairQuery_placementDescription){
        keyValuePair_free(keyPairQuery_placementDescription);
        keyPairQuery_placementDescription = NULL;
    }
    if(keyQuery_placementSize){
        free(keyQuery_placementSize);
        keyQuery_placementSize = NULL;
    }
    if(keyPairQuery_placementSize){
        keyValuePair_free(keyPairQuery_placementSize);
        keyPairQuery_placementSize = NULL;
    }
    if(keyQuery_placementHeight){
        free(keyQuery_placementHeight);
        keyQuery_placementHeight = NULL;
    }
    if(valueQuery_placementHeight){
        free(valueQuery_placementHeight);
        valueQuery_placementHeight = NULL;
    }
    if(keyPairQuery_placementHeight){
        keyValuePair_free(keyPairQuery_placementHeight);
        keyPairQuery_placementHeight = NULL;
    }
    if(keyQuery_placementWidth){
        free(keyQuery_placementWidth);
        keyQuery_placementWidth = NULL;
    }
    if(valueQuery_placementWidth){
        free(valueQuery_placementWidth);
        valueQuery_placementWidth = NULL;
    }
    if(keyPairQuery_placementWidth){
        keyValuePair_free(keyPairQuery_placementWidth);
        keyPairQuery_placementWidth = NULL;
    }
    if(keyQuery_placementRefreshInterval){
        free(keyQuery_placementRefreshInterval);
        keyQuery_placementRefreshInterval = NULL;
    }
    if(valueQuery_placementRefreshInterval){
        free(valueQuery_placementRefreshInterval);
        valueQuery_placementRefreshInterval = NULL;
    }
    if(keyPairQuery_placementRefreshInterval){
        keyValuePair_free(keyPairQuery_placementRefreshInterval);
        keyPairQuery_placementRefreshInterval = NULL;
    }
    if(keyQuery_createObjectStore){
        free(keyQuery_createObjectStore);
        keyQuery_createObjectStore = NULL;
    }
    if(valueQuery_createObjectStore){
        free(valueQuery_createObjectStore);
        valueQuery_createObjectStore = NULL;
    }
    if(keyPairQuery_createObjectStore){
        keyValuePair_free(keyPairQuery_createObjectStore);
        keyPairQuery_createObjectStore = NULL;
    }
    if(keyQuery_publicContentApproval){
        free(keyQuery_publicContentApproval);
        keyQuery_publicContentApproval = NULL;
    }
    if(valueQuery_publicContentApproval){
        free(valueQuery_publicContentApproval);
        valueQuery_publicContentApproval = NULL;
    }
    if(keyPairQuery_publicContentApproval){
        keyValuePair_free(keyPairQuery_publicContentApproval);
        keyPairQuery_publicContentApproval = NULL;
    }
    if(keyQuery_productionMode){
        free(keyQuery_productionMode);
        keyQuery_productionMode = NULL;
    }
    if(valueQuery_productionMode){
        free(valueQuery_productionMode);
        valueQuery_productionMode = NULL;
    }
    if(keyPairQuery_productionMode){
        keyValuePair_free(keyPairQuery_productionMode);
        keyPairQuery_productionMode = NULL;
    }
    if(keyQuery_minimumSessionLength){
        free(keyQuery_minimumSessionLength);
        keyQuery_minimumSessionLength = NULL;
    }
    if(valueQuery_minimumSessionLength){
        free(valueQuery_minimumSessionLength);
        valueQuery_minimumSessionLength = NULL;
    }
    if(keyPairQuery_minimumSessionLength){
        keyValuePair_free(keyPairQuery_minimumSessionLength);
        keyPairQuery_minimumSessionLength = NULL;
    }
    if(keyQuery_sessionGapLength){
        free(keyQuery_sessionGapLength);
        keyQuery_sessionGapLength = NULL;
    }
    if(valueQuery_sessionGapLength){
        free(valueQuery_sessionGapLength);
        valueQuery_sessionGapLength = NULL;
    }
    if(keyPairQuery_sessionGapLength){
        keyValuePair_free(keyPairQuery_sessionGapLength);
        keyPairQuery_sessionGapLength = NULL;
    }
    if(keyQuery_localAdsEnabled){
        free(keyQuery_localAdsEnabled);
        keyQuery_localAdsEnabled = NULL;
    }
    if(valueQuery_localAdsEnabled){
        free(valueQuery_localAdsEnabled);
        valueQuery_localAdsEnabled = NULL;
    }
    if(keyPairQuery_localAdsEnabled){
        keyValuePair_free(keyPairQuery_localAdsEnabled);
        keyPairQuery_localAdsEnabled = NULL;
    }
    if(keyQuery_sqootApiKey){
        free(keyQuery_sqootApiKey);
        keyQuery_sqootApiKey = NULL;
    }
    if(valueQuery_sqootApiKey){
        free(valueQuery_sqootApiKey);
        valueQuery_sqootApiKey = NULL;
    }
    if(keyPairQuery_sqootApiKey){
        keyValuePair_free(keyPairQuery_sqootApiKey);
        keyPairQuery_sqootApiKey = NULL;
    }
    if(keyQuery_trilatProcessingType){
        free(keyQuery_trilatProcessingType);
        keyQuery_trilatProcessingType = NULL;
    }
    if(keyPairQuery_trilatProcessingType){
        keyValuePair_free(keyPairQuery_trilatProcessingType);
        keyPairQuery_trilatProcessingType = NULL;
    }
    if(keyQuery_maxSampleSize){
        free(keyQuery_maxSampleSize);
        keyQuery_maxSampleSize = NULL;
    }
    if(valueQuery_maxSampleSize){
        free(valueQuery_maxSampleSize);
        valueQuery_maxSampleSize = NULL;
    }
    if(keyPairQuery_maxSampleSize){
        keyValuePair_free(keyPairQuery_maxSampleSize);
        keyPairQuery_maxSampleSize = NULL;
    }
    if(keyQuery_minRSSI){
        free(keyQuery_minRSSI);
        keyQuery_minRSSI = NULL;
    }
    if(keyPairQuery_minRSSI){
        keyValuePair_free(keyPairQuery_minRSSI);
        keyPairQuery_minRSSI = NULL;
    }
    if(keyQuery_modules){
        free(keyQuery_modules);
        keyQuery_modules = NULL;
    }
    if(valueQuery_modules){
        free(valueQuery_modules);
        valueQuery_modules = NULL;
    }
    if(keyPairQuery_modules){
        keyValuePair_free(keyPairQuery_modules);
        keyPairQuery_modules = NULL;
    }
    if(keyQuery_authorizedCount){
        free(keyQuery_authorizedCount);
        keyQuery_authorizedCount = NULL;
    }
    if(valueQuery_authorizedCount){
        free(valueQuery_authorizedCount);
        valueQuery_authorizedCount = NULL;
    }
    if(keyPairQuery_authorizedCount){
        keyValuePair_free(keyPairQuery_authorizedCount);
        keyPairQuery_authorizedCount = NULL;
    }
    if(keyQuery_authorizedServers){
        free(keyQuery_authorizedServers);
        keyQuery_authorizedServers = NULL;
    }
    if(valueQuery_authorizedServers){
        free(valueQuery_authorizedServers);
        valueQuery_authorizedServers = NULL;
    }
    if(keyPairQuery_authorizedServers){
        keyValuePair_free(keyPairQuery_authorizedServers);
        keyPairQuery_authorizedServers = NULL;
    }
    if(keyQuery_defaultTimezone){
        free(keyQuery_defaultTimezone);
        keyQuery_defaultTimezone = NULL;
    }
    if(valueQuery_defaultTimezone){
        free(valueQuery_defaultTimezone);
        valueQuery_defaultTimezone = NULL;
    }
    if(keyPairQuery_defaultTimezone){
        keyValuePair_free(keyPairQuery_defaultTimezone);
        keyPairQuery_defaultTimezone = NULL;
    }
    if(keyQuery_smtpPass){
        free(keyQuery_smtpPass);
        keyQuery_smtpPass = NULL;
    }
    if(valueQuery_smtpPass){
        free(valueQuery_smtpPass);
        valueQuery_smtpPass = NULL;
    }
    if(keyPairQuery_smtpPass){
        keyValuePair_free(keyPairQuery_smtpPass);
        keyPairQuery_smtpPass = NULL;
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
    if(keyQuery_placementMetaData){
        free(keyQuery_placementMetaData);
        keyQuery_placementMetaData = NULL;
    }
    if(valueQuery_placementMetaData){
        free(valueQuery_placementMetaData);
        valueQuery_placementMetaData = NULL;
    }
    if(keyPairQuery_placementMetaData){
        keyValuePair_free(keyPairQuery_placementMetaData);
        keyPairQuery_placementMetaData = NULL;
    }
    if(keyQuery_ipsFloor){
        free(keyQuery_ipsFloor);
        keyQuery_ipsFloor = NULL;
    }
    if(valueQuery_ipsFloor){
        free(valueQuery_ipsFloor);
        valueQuery_ipsFloor = NULL;
    }
    if(keyPairQuery_ipsFloor){
        keyValuePair_free(keyPairQuery_ipsFloor);
        keyPairQuery_ipsFloor = NULL;
    }
    if(keyQuery_enableAPNSBadge){
        free(keyQuery_enableAPNSBadge);
        keyQuery_enableAPNSBadge = NULL;
    }
    if(valueQuery_enableAPNSBadge){
        free(valueQuery_enableAPNSBadge);
        valueQuery_enableAPNSBadge = NULL;
    }
    if(keyPairQuery_enableAPNSBadge){
        keyValuePair_free(keyPairQuery_enableAPNSBadge);
        keyPairQuery_enableAPNSBadge = NULL;
    }
    if(keyQuery_includeInReport){
        free(keyQuery_includeInReport);
        keyQuery_includeInReport = NULL;
    }
    if(valueQuery_includeInReport){
        free(valueQuery_includeInReport);
        valueQuery_includeInReport = NULL;
    }
    if(keyPairQuery_includeInReport){
        keyValuePair_free(keyPairQuery_includeInReport);
        keyPairQuery_includeInReport = NULL;
    }
    if(keyQuery_defaultAppFilterId){
        free(keyQuery_defaultAppFilterId);
        keyQuery_defaultAppFilterId = NULL;
    }
    if(keyPairQuery_defaultAppFilterId){
        keyValuePair_free(keyPairQuery_defaultAppFilterId);
        keyPairQuery_defaultAppFilterId = NULL;
    }
    if(keyQuery_enableWelcomeEmail){
        free(keyQuery_enableWelcomeEmail);
        keyQuery_enableWelcomeEmail = NULL;
    }
    if(valueQuery_enableWelcomeEmail){
        free(valueQuery_enableWelcomeEmail);
        valueQuery_enableWelcomeEmail = NULL;
    }
    if(keyPairQuery_enableWelcomeEmail){
        keyValuePair_free(keyPairQuery_enableWelcomeEmail);
        keyPairQuery_enableWelcomeEmail = NULL;
    }
    if(keyQuery_appleAppId){
        free(keyQuery_appleAppId);
        keyQuery_appleAppId = NULL;
    }
    if(valueQuery_appleAppId){
        free(valueQuery_appleAppId);
        valueQuery_appleAppId = NULL;
    }
    if(keyPairQuery_appleAppId){
        keyValuePair_free(keyPairQuery_appleAppId);
        keyPairQuery_appleAppId = NULL;
    }
    if(keyQuery_appleTeamId){
        free(keyQuery_appleTeamId);
        keyQuery_appleTeamId = NULL;
    }
    if(valueQuery_appleTeamId){
        free(valueQuery_appleTeamId);
        valueQuery_appleTeamId = NULL;
    }
    if(keyPairQuery_appleTeamId){
        keyValuePair_free(keyPairQuery_appleTeamId);
        keyPairQuery_appleTeamId = NULL;
    }
    if(keyQuery_appleAuthKeyId){
        free(keyQuery_appleAuthKeyId);
        keyQuery_appleAuthKeyId = NULL;
    }
    if(valueQuery_appleAuthKeyId){
        free(valueQuery_appleAuthKeyId);
        valueQuery_appleAuthKeyId = NULL;
    }
    if(keyPairQuery_appleAuthKeyId){
        keyValuePair_free(keyPairQuery_appleAuthKeyId);
        keyPairQuery_appleAuthKeyId = NULL;
    }
    if(keyQuery_appleAuthKey){
        free(keyQuery_appleAuthKey);
        keyQuery_appleAuthKey = NULL;
    }
    if(keyPairQuery_appleAuthKey){
        keyValuePair_free(keyPairQuery_appleAuthKey);
        keyPairQuery_appleAuthKey = NULL;
    }
    if(keyQuery_appleIssuerId){
        free(keyQuery_appleIssuerId);
        keyQuery_appleIssuerId = NULL;
    }
    if(valueQuery_appleIssuerId){
        free(valueQuery_appleIssuerId);
        valueQuery_appleIssuerId = NULL;
    }
    if(keyPairQuery_appleIssuerId){
        keyValuePair_free(keyPairQuery_appleIssuerId);
        keyPairQuery_appleIssuerId = NULL;
    }
    if(keyQuery_appStoreKeyId){
        free(keyQuery_appStoreKeyId);
        keyQuery_appStoreKeyId = NULL;
    }
    if(valueQuery_appStoreKeyId){
        free(valueQuery_appStoreKeyId);
        valueQuery_appStoreKeyId = NULL;
    }
    if(keyPairQuery_appStoreKeyId){
        keyValuePair_free(keyPairQuery_appStoreKeyId);
        keyPairQuery_appStoreKeyId = NULL;
    }
    if(keyQuery_appStoreKey){
        free(keyQuery_appStoreKey);
        keyQuery_appStoreKey = NULL;
    }
    if(keyPairQuery_appStoreKey){
        keyValuePair_free(keyPairQuery_appStoreKey);
        keyPairQuery_appStoreKey = NULL;
    }
    if(keyQuery_googlePrivateKeyFile){
        free(keyQuery_googlePrivateKeyFile);
        keyQuery_googlePrivateKeyFile = NULL;
    }
    if(keyPairQuery_googlePrivateKeyFile){
        keyValuePair_free(keyPairQuery_googlePrivateKeyFile);
        keyPairQuery_googlePrivateKeyFile = NULL;
    }
    if(keyQuery_authorizeNetApiKey){
        free(keyQuery_authorizeNetApiKey);
        keyQuery_authorizeNetApiKey = NULL;
    }
    if(valueQuery_authorizeNetApiKey){
        free(valueQuery_authorizeNetApiKey);
        valueQuery_authorizeNetApiKey = NULL;
    }
    if(keyPairQuery_authorizeNetApiKey){
        keyValuePair_free(keyPairQuery_authorizeNetApiKey);
        keyPairQuery_authorizeNetApiKey = NULL;
    }
    if(keyQuery_authorizeNetTransactionKey){
        free(keyQuery_authorizeNetTransactionKey);
        keyQuery_authorizeNetTransactionKey = NULL;
    }
    if(valueQuery_authorizeNetTransactionKey){
        free(valueQuery_authorizeNetTransactionKey);
        valueQuery_authorizeNetTransactionKey = NULL;
    }
    if(keyPairQuery_authorizeNetTransactionKey){
        keyValuePair_free(keyPairQuery_authorizeNetTransactionKey);
        keyPairQuery_authorizeNetTransactionKey = NULL;
    }
    if(keyQuery_emailSender){
        free(keyQuery_emailSender);
        keyQuery_emailSender = NULL;
    }
    if(valueQuery_emailSender){
        free(valueQuery_emailSender);
        valueQuery_emailSender = NULL;
    }
    if(keyPairQuery_emailSender){
        keyValuePair_free(keyPairQuery_emailSender);
        keyPairQuery_emailSender = NULL;
    }
    if(keyQuery_smtpUser){
        free(keyQuery_smtpUser);
        keyQuery_smtpUser = NULL;
    }
    if(valueQuery_smtpUser){
        free(valueQuery_smtpUser);
        valueQuery_smtpUser = NULL;
    }
    if(keyPairQuery_smtpUser){
        keyValuePair_free(keyPairQuery_smtpUser);
        keyPairQuery_smtpUser = NULL;
    }
    if(keyQuery_smtpHost){
        free(keyQuery_smtpHost);
        keyQuery_smtpHost = NULL;
    }
    if(valueQuery_smtpHost){
        free(valueQuery_smtpHost);
        valueQuery_smtpHost = NULL;
    }
    if(keyPairQuery_smtpHost){
        keyValuePair_free(keyPairQuery_smtpHost);
        keyPairQuery_smtpHost = NULL;
    }
    if(keyQuery_vatomBusinessId){
        free(keyQuery_vatomBusinessId);
        keyQuery_vatomBusinessId = NULL;
    }
    if(valueQuery_vatomBusinessId){
        free(valueQuery_vatomBusinessId);
        valueQuery_vatomBusinessId = NULL;
    }
    if(keyPairQuery_vatomBusinessId){
        keyValuePair_free(keyPairQuery_vatomBusinessId);
        keyPairQuery_vatomBusinessId = NULL;
    }
    if(keyQuery_vatomRestClientId){
        free(keyQuery_vatomRestClientId);
        keyQuery_vatomRestClientId = NULL;
    }
    if(valueQuery_vatomRestClientId){
        free(valueQuery_vatomRestClientId);
        valueQuery_vatomRestClientId = NULL;
    }
    if(keyPairQuery_vatomRestClientId){
        keyValuePair_free(keyPairQuery_vatomRestClientId);
        keyPairQuery_vatomRestClientId = NULL;
    }
    if(keyQuery_vatomRestSecretKey){
        free(keyQuery_vatomRestSecretKey);
        keyQuery_vatomRestSecretKey = NULL;
    }
    if(valueQuery_vatomRestSecretKey){
        free(valueQuery_vatomRestSecretKey);
        valueQuery_vatomRestSecretKey = NULL;
    }
    if(keyPairQuery_vatomRestSecretKey){
        keyValuePair_free(keyPairQuery_vatomRestSecretKey);
        keyPairQuery_vatomRestSecretKey = NULL;
    }
    if(keyQuery_twilioAccountSID){
        free(keyQuery_twilioAccountSID);
        keyQuery_twilioAccountSID = NULL;
    }
    if(valueQuery_twilioAccountSID){
        free(valueQuery_twilioAccountSID);
        valueQuery_twilioAccountSID = NULL;
    }
    if(keyPairQuery_twilioAccountSID){
        keyValuePair_free(keyPairQuery_twilioAccountSID);
        keyPairQuery_twilioAccountSID = NULL;
    }
    if(keyQuery_twilioAuthToken){
        free(keyQuery_twilioAuthToken);
        keyQuery_twilioAuthToken = NULL;
    }
    if(valueQuery_twilioAuthToken){
        free(valueQuery_twilioAuthToken);
        valueQuery_twilioAuthToken = NULL;
    }
    if(keyPairQuery_twilioAuthToken){
        keyValuePair_free(keyPairQuery_twilioAuthToken);
        keyPairQuery_twilioAuthToken = NULL;
    }
    if(keyQuery_twilioSenderPhoneNumber){
        free(keyQuery_twilioSenderPhoneNumber);
        keyQuery_twilioSenderPhoneNumber = NULL;
    }
    if(valueQuery_twilioSenderPhoneNumber){
        free(valueQuery_twilioSenderPhoneNumber);
        valueQuery_twilioSenderPhoneNumber = NULL;
    }
    if(keyPairQuery_twilioSenderPhoneNumber){
        keyValuePair_free(keyPairQuery_twilioSenderPhoneNumber);
        keyPairQuery_twilioSenderPhoneNumber = NULL;
    }
    if(keyQuery_openAISecretKey){
        free(keyQuery_openAISecretKey);
        keyQuery_openAISecretKey = NULL;
    }
    if(valueQuery_openAISecretKey){
        free(valueQuery_openAISecretKey);
        valueQuery_openAISecretKey = NULL;
    }
    if(keyPairQuery_openAISecretKey){
        keyValuePair_free(keyPairQuery_openAISecretKey);
        keyPairQuery_openAISecretKey = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Create Ad Placement
//
// Creates a new ad placement for an application.
//
placement_response_t*
ApplicationAPI_createApplicationPlacement(apiClient_t *apiClient, double version, char *appKey, sirqul_iot_platform_createApplicationPlacement_size_e size, char *deviceId, long accountId, char *name, char *description, int *height, int *width, int *refreshInterval, long defaultImageId, int *active)
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
    char *localVarPath = strdup("/api/{version}/application/placement/create");



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
    char *keyQuery_name = NULL;
    char * valueQuery_name = NULL;
    keyValuePair_t *keyPairQuery_name = 0;
    if (name)
    {
        keyQuery_name = strdup("name");
        valueQuery_name = strdup((name));
        keyPairQuery_name = keyValuePair_create(keyQuery_name, valueQuery_name);
        list_addElement(localVarQueryParameters,keyPairQuery_name);
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
    char *keyQuery_size = NULL;
    sirqul_iot_platform_createApplicationPlacement_size_e valueQuery_size ;
    keyValuePair_t *keyPairQuery_size = 0;
    if (size)
    {
        keyQuery_size = strdup("size");
        valueQuery_size = (size);
        keyPairQuery_size = keyValuePair_create(keyQuery_size, strdup(createApplicationPlacement_SIZE_ToString(
        valueQuery_size)));
        list_addElement(localVarQueryParameters,keyPairQuery_size);
    }

    // query parameters
    char *keyQuery_height = NULL;
    char * valueQuery_height = NULL;
    keyValuePair_t *keyPairQuery_height = 0;
    if (height)
    {
        keyQuery_height = strdup("height");
        valueQuery_height = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_height, MAX_NUMBER_LENGTH, "%d", *height);
        keyPairQuery_height = keyValuePair_create(keyQuery_height, valueQuery_height);
        list_addElement(localVarQueryParameters,keyPairQuery_height);
    }

    // query parameters
    char *keyQuery_width = NULL;
    char * valueQuery_width = NULL;
    keyValuePair_t *keyPairQuery_width = 0;
    if (width)
    {
        keyQuery_width = strdup("width");
        valueQuery_width = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_width, MAX_NUMBER_LENGTH, "%d", *width);
        keyPairQuery_width = keyValuePair_create(keyQuery_width, valueQuery_width);
        list_addElement(localVarQueryParameters,keyPairQuery_width);
    }

    // query parameters
    char *keyQuery_refreshInterval = NULL;
    char * valueQuery_refreshInterval = NULL;
    keyValuePair_t *keyPairQuery_refreshInterval = 0;
    if (refreshInterval)
    {
        keyQuery_refreshInterval = strdup("refreshInterval");
        valueQuery_refreshInterval = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_refreshInterval, MAX_NUMBER_LENGTH, "%d", *refreshInterval);
        keyPairQuery_refreshInterval = keyValuePair_create(keyQuery_refreshInterval, valueQuery_refreshInterval);
        list_addElement(localVarQueryParameters,keyPairQuery_refreshInterval);
    }

    // query parameters
    char *keyQuery_defaultImageId = NULL;
    char * valueQuery_defaultImageId ;
    keyValuePair_t *keyPairQuery_defaultImageId = 0;
    {
        keyQuery_defaultImageId = strdup("defaultImageId");
        valueQuery_defaultImageId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_defaultImageId, MAX_NUMBER_LENGTH_LONG, "%d", defaultImageId);
        keyPairQuery_defaultImageId = keyValuePair_create(keyQuery_defaultImageId, valueQuery_defaultImageId);
        list_addElement(localVarQueryParameters,keyPairQuery_defaultImageId);
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
    placement_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ApplicationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = placement_response_parseFromJSON(ApplicationAPIlocalVarJSON);
        cJSON_Delete(ApplicationAPIlocalVarJSON);
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
    if(keyQuery_name){
        free(keyQuery_name);
        keyQuery_name = NULL;
    }
    if(valueQuery_name){
        free(valueQuery_name);
        valueQuery_name = NULL;
    }
    if(keyPairQuery_name){
        keyValuePair_free(keyPairQuery_name);
        keyPairQuery_name = NULL;
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
    if(keyQuery_size){
        free(keyQuery_size);
        keyQuery_size = NULL;
    }
    if(keyPairQuery_size){
        keyValuePair_free(keyPairQuery_size);
        keyPairQuery_size = NULL;
    }
    if(keyQuery_height){
        free(keyQuery_height);
        keyQuery_height = NULL;
    }
    if(valueQuery_height){
        free(valueQuery_height);
        valueQuery_height = NULL;
    }
    if(keyPairQuery_height){
        keyValuePair_free(keyPairQuery_height);
        keyPairQuery_height = NULL;
    }
    if(keyQuery_width){
        free(keyQuery_width);
        keyQuery_width = NULL;
    }
    if(valueQuery_width){
        free(valueQuery_width);
        valueQuery_width = NULL;
    }
    if(keyPairQuery_width){
        keyValuePair_free(keyPairQuery_width);
        keyPairQuery_width = NULL;
    }
    if(keyQuery_refreshInterval){
        free(keyQuery_refreshInterval);
        keyQuery_refreshInterval = NULL;
    }
    if(valueQuery_refreshInterval){
        free(valueQuery_refreshInterval);
        valueQuery_refreshInterval = NULL;
    }
    if(keyPairQuery_refreshInterval){
        keyValuePair_free(keyPairQuery_refreshInterval);
        keyPairQuery_refreshInterval = NULL;
    }
    if(keyQuery_defaultImageId){
        free(keyQuery_defaultImageId);
        keyQuery_defaultImageId = NULL;
    }
    if(keyPairQuery_defaultImageId){
        keyValuePair_free(keyPairQuery_defaultImageId);
        keyPairQuery_defaultImageId = NULL;
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Delete Application
//
// Set the deleted timestamp to current time. This effectively deletes the application since all queries should ignore any records with a deleted timestamp
//
sirqul_response_t*
ApplicationAPI_deleteApplication(apiClient_t *apiClient, double version, long accountId, char *appKey)
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
    char *localVarPath = strdup("/api/{version}/application/delete");



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
        cJSON *ApplicationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(ApplicationAPIlocalVarJSON);
        cJSON_Delete(ApplicationAPIlocalVarJSON);
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Delete Ad Placement
//
// Deletes an ad placement for an application.
//
placement_response_t*
ApplicationAPI_deleteApplicationPlacement(apiClient_t *apiClient, double version, long placementId, char *deviceId, long accountId)
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
    char *localVarPath = strdup("/api/{version}/application/placement/delete");



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
    char *keyQuery_placementId = NULL;
    char * valueQuery_placementId ;
    keyValuePair_t *keyPairQuery_placementId = 0;
    {
        keyQuery_placementId = strdup("placementId");
        valueQuery_placementId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_placementId, MAX_NUMBER_LENGTH_LONG, "%d", placementId);
        keyPairQuery_placementId = keyValuePair_create(keyQuery_placementId, valueQuery_placementId);
        list_addElement(localVarQueryParameters,keyPairQuery_placementId);
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
    placement_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ApplicationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = placement_response_parseFromJSON(ApplicationAPIlocalVarJSON);
        cJSON_Delete(ApplicationAPIlocalVarJSON);
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
    if(keyQuery_placementId){
        free(keyQuery_placementId);
        keyQuery_placementId = NULL;
    }
    if(keyPairQuery_placementId){
        keyValuePair_free(keyPairQuery_placementId);
        keyPairQuery_placementId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Application
//
// Get a specific application by appKey
//
application_response_t*
ApplicationAPI_getApplication(apiClient_t *apiClient, double version, char *appKey, long applicationId)
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
    char *localVarPath = strdup("/api/{version}/application/get");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



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
    char *keyQuery_applicationId = NULL;
    char * valueQuery_applicationId ;
    keyValuePair_t *keyPairQuery_applicationId = 0;
    {
        keyQuery_applicationId = strdup("applicationId");
        valueQuery_applicationId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_applicationId, MAX_NUMBER_LENGTH_LONG, "%d", applicationId);
        keyPairQuery_applicationId = keyValuePair_create(keyQuery_applicationId, valueQuery_applicationId);
        list_addElement(localVarQueryParameters,keyPairQuery_applicationId);
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
    application_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ApplicationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = application_response_parseFromJSON(ApplicationAPIlocalVarJSON);
        cJSON_Delete(ApplicationAPIlocalVarJSON);
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
    if(keyQuery_applicationId){
        free(keyQuery_applicationId);
        keyQuery_applicationId = NULL;
    }
    if(keyPairQuery_applicationId){
        keyValuePair_free(keyPairQuery_applicationId);
        keyPairQuery_applicationId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Ad Placement
//
// Get details of an ad placement
//
placement_response_t*
ApplicationAPI_getApplicationPlacement(apiClient_t *apiClient, double version, long placementId, char *deviceId, long accountId)
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
    char *localVarPath = strdup("/api/{version}/application/placement/get");



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
    char *keyQuery_placementId = NULL;
    char * valueQuery_placementId ;
    keyValuePair_t *keyPairQuery_placementId = 0;
    {
        keyQuery_placementId = strdup("placementId");
        valueQuery_placementId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_placementId, MAX_NUMBER_LENGTH_LONG, "%d", placementId);
        keyPairQuery_placementId = keyValuePair_create(keyQuery_placementId, valueQuery_placementId);
        list_addElement(localVarQueryParameters,keyPairQuery_placementId);
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
    placement_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ApplicationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = placement_response_parseFromJSON(ApplicationAPIlocalVarJSON);
        cJSON_Delete(ApplicationAPIlocalVarJSON);
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
    if(keyQuery_placementId){
        free(keyQuery_placementId);
        keyQuery_placementId = NULL;
    }
    if(keyPairQuery_placementId){
        keyValuePair_free(keyPairQuery_placementId);
        keyPairQuery_placementId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get API versions
//
// Will return a comma separated list of numbers, newest first. For example: 3.0, 2.2, 2.1, 1.8
//
sirqul_response_t*
ApplicationAPI_getApplicationVersions(apiClient_t *apiClient, double version)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/api/{version}/application/versions");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;


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
        cJSON *ApplicationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(ApplicationAPIlocalVarJSON);
        cJSON_Delete(ApplicationAPIlocalVarJSON);
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
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_version);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Application Users
//
// Get a list of users per application
//
account_list_response_t*
ApplicationAPI_getUniqueUsersByApp(apiClient_t *apiClient, double version, char *appKey, char *q, char *keyword, long since, int *_i, int *start, int *_l, int *limit)
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
    char *localVarPath = strdup("/api/{version}/application/users");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



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
    char *keyQuery_q = NULL;
    char * valueQuery_q = NULL;
    keyValuePair_t *keyPairQuery_q = 0;
    if (q)
    {
        keyQuery_q = strdup("q");
        valueQuery_q = strdup((q));
        keyPairQuery_q = keyValuePair_create(keyQuery_q, valueQuery_q);
        list_addElement(localVarQueryParameters,keyPairQuery_q);
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
    char *keyQuery_since = NULL;
    char * valueQuery_since ;
    keyValuePair_t *keyPairQuery_since = 0;
    {
        keyQuery_since = strdup("since");
        valueQuery_since = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_since, MAX_NUMBER_LENGTH_LONG, "%d", since);
        keyPairQuery_since = keyValuePair_create(keyQuery_since, valueQuery_since);
        list_addElement(localVarQueryParameters,keyPairQuery_since);
    }

    // query parameters
    char *keyQuery__i = NULL;
    char * valueQuery__i = NULL;
    keyValuePair_t *keyPairQuery__i = 0;
    if (_i)
    {
        keyQuery__i = strdup("_i");
        valueQuery__i = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery__i, MAX_NUMBER_LENGTH, "%d", *_i);
        keyPairQuery__i = keyValuePair_create(keyQuery__i, valueQuery__i);
        list_addElement(localVarQueryParameters,keyPairQuery__i);
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
    char *keyQuery__l = NULL;
    char * valueQuery__l = NULL;
    keyValuePair_t *keyPairQuery__l = 0;
    if (_l)
    {
        keyQuery__l = strdup("_l");
        valueQuery__l = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery__l, MAX_NUMBER_LENGTH, "%d", *_l);
        keyPairQuery__l = keyValuePair_create(keyQuery__l, valueQuery__l);
        list_addElement(localVarQueryParameters,keyPairQuery__l);
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
    account_list_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ApplicationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = account_list_response_parseFromJSON(ApplicationAPIlocalVarJSON);
        cJSON_Delete(ApplicationAPIlocalVarJSON);
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
    if(keyQuery_q){
        free(keyQuery_q);
        keyQuery_q = NULL;
    }
    if(valueQuery_q){
        free(valueQuery_q);
        valueQuery_q = NULL;
    }
    if(keyPairQuery_q){
        keyValuePair_free(keyPairQuery_q);
        keyPairQuery_q = NULL;
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
    if(keyQuery_since){
        free(keyQuery_since);
        keyQuery_since = NULL;
    }
    if(keyPairQuery_since){
        keyValuePair_free(keyPairQuery_since);
        keyPairQuery_since = NULL;
    }
    if(keyQuery__i){
        free(keyQuery__i);
        keyQuery__i = NULL;
    }
    if(valueQuery__i){
        free(valueQuery__i);
        valueQuery__i = NULL;
    }
    if(keyPairQuery__i){
        keyValuePair_free(keyPairQuery__i);
        keyPairQuery__i = NULL;
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
    if(keyQuery__l){
        free(keyQuery__l);
        keyQuery__l = NULL;
    }
    if(valueQuery__l){
        free(valueQuery__l);
        valueQuery__l = NULL;
    }
    if(keyPairQuery__l){
        keyValuePair_free(keyPairQuery__l);
        keyPairQuery__l = NULL;
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

// List Applications
//
// List active applications matching the criteria (as a consumer)
//
list_t*
ApplicationAPI_listApplications(apiClient_t *apiClient, double version, long accountId, char *q, char *keyword, char *platforms, char *deviceIds, char *deviceVersions, char *categoryIds, sirqul_iot_platform_listApplications_sortField_e sortField, int *hasAds, int *publicNotifications, int *filterBillable, int *filterContentAdmin, int *descending, int *_i, int *start, int *_l, int *limit, char *applicationIds, int *hasObjectStore, int *activeOnly)
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
    char *localVarPath = strdup("/api/{version}/application/list");



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
    char *keyQuery_q = NULL;
    char * valueQuery_q = NULL;
    keyValuePair_t *keyPairQuery_q = 0;
    if (q)
    {
        keyQuery_q = strdup("q");
        valueQuery_q = strdup((q));
        keyPairQuery_q = keyValuePair_create(keyQuery_q, valueQuery_q);
        list_addElement(localVarQueryParameters,keyPairQuery_q);
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
    char *keyQuery_platforms = NULL;
    char * valueQuery_platforms = NULL;
    keyValuePair_t *keyPairQuery_platforms = 0;
    if (platforms)
    {
        keyQuery_platforms = strdup("platforms");
        valueQuery_platforms = strdup((platforms));
        keyPairQuery_platforms = keyValuePair_create(keyQuery_platforms, valueQuery_platforms);
        list_addElement(localVarQueryParameters,keyPairQuery_platforms);
    }

    // query parameters
    char *keyQuery_deviceIds = NULL;
    char * valueQuery_deviceIds = NULL;
    keyValuePair_t *keyPairQuery_deviceIds = 0;
    if (deviceIds)
    {
        keyQuery_deviceIds = strdup("deviceIds");
        valueQuery_deviceIds = strdup((deviceIds));
        keyPairQuery_deviceIds = keyValuePair_create(keyQuery_deviceIds, valueQuery_deviceIds);
        list_addElement(localVarQueryParameters,keyPairQuery_deviceIds);
    }

    // query parameters
    char *keyQuery_deviceVersions = NULL;
    char * valueQuery_deviceVersions = NULL;
    keyValuePair_t *keyPairQuery_deviceVersions = 0;
    if (deviceVersions)
    {
        keyQuery_deviceVersions = strdup("deviceVersions");
        valueQuery_deviceVersions = strdup((deviceVersions));
        keyPairQuery_deviceVersions = keyValuePair_create(keyQuery_deviceVersions, valueQuery_deviceVersions);
        list_addElement(localVarQueryParameters,keyPairQuery_deviceVersions);
    }

    // query parameters
    char *keyQuery_categoryIds = NULL;
    char * valueQuery_categoryIds = NULL;
    keyValuePair_t *keyPairQuery_categoryIds = 0;
    if (categoryIds)
    {
        keyQuery_categoryIds = strdup("categoryIds");
        valueQuery_categoryIds = strdup((categoryIds));
        keyPairQuery_categoryIds = keyValuePair_create(keyQuery_categoryIds, valueQuery_categoryIds);
        list_addElement(localVarQueryParameters,keyPairQuery_categoryIds);
    }

    // query parameters
    char *keyQuery_sortField = NULL;
    sirqul_iot_platform_listApplications_sortField_e valueQuery_sortField ;
    keyValuePair_t *keyPairQuery_sortField = 0;
    if (sortField)
    {
        keyQuery_sortField = strdup("sortField");
        valueQuery_sortField = (sortField);
        keyPairQuery_sortField = keyValuePair_create(keyQuery_sortField, strdup(listApplications_SORTFIELD_ToString(
        valueQuery_sortField)));
        list_addElement(localVarQueryParameters,keyPairQuery_sortField);
    }

    // query parameters
    char *keyQuery_hasAds = NULL;
    char * valueQuery_hasAds = NULL;
    keyValuePair_t *keyPairQuery_hasAds = 0;
    if (hasAds)
    {
        keyQuery_hasAds = strdup("hasAds");
        valueQuery_hasAds = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_hasAds, MAX_NUMBER_LENGTH, "%d", *hasAds);
        keyPairQuery_hasAds = keyValuePair_create(keyQuery_hasAds, valueQuery_hasAds);
        list_addElement(localVarQueryParameters,keyPairQuery_hasAds);
    }

    // query parameters
    char *keyQuery_publicNotifications = NULL;
    char * valueQuery_publicNotifications = NULL;
    keyValuePair_t *keyPairQuery_publicNotifications = 0;
    if (publicNotifications)
    {
        keyQuery_publicNotifications = strdup("publicNotifications");
        valueQuery_publicNotifications = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_publicNotifications, MAX_NUMBER_LENGTH, "%d", *publicNotifications);
        keyPairQuery_publicNotifications = keyValuePair_create(keyQuery_publicNotifications, valueQuery_publicNotifications);
        list_addElement(localVarQueryParameters,keyPairQuery_publicNotifications);
    }

    // query parameters
    char *keyQuery_filterBillable = NULL;
    char * valueQuery_filterBillable = NULL;
    keyValuePair_t *keyPairQuery_filterBillable = 0;
    if (filterBillable)
    {
        keyQuery_filterBillable = strdup("filterBillable");
        valueQuery_filterBillable = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_filterBillable, MAX_NUMBER_LENGTH, "%d", *filterBillable);
        keyPairQuery_filterBillable = keyValuePair_create(keyQuery_filterBillable, valueQuery_filterBillable);
        list_addElement(localVarQueryParameters,keyPairQuery_filterBillable);
    }

    // query parameters
    char *keyQuery_filterContentAdmin = NULL;
    char * valueQuery_filterContentAdmin = NULL;
    keyValuePair_t *keyPairQuery_filterContentAdmin = 0;
    if (filterContentAdmin)
    {
        keyQuery_filterContentAdmin = strdup("filterContentAdmin");
        valueQuery_filterContentAdmin = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_filterContentAdmin, MAX_NUMBER_LENGTH, "%d", *filterContentAdmin);
        keyPairQuery_filterContentAdmin = keyValuePair_create(keyQuery_filterContentAdmin, valueQuery_filterContentAdmin);
        list_addElement(localVarQueryParameters,keyPairQuery_filterContentAdmin);
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
    char *keyQuery__i = NULL;
    char * valueQuery__i = NULL;
    keyValuePair_t *keyPairQuery__i = 0;
    if (_i)
    {
        keyQuery__i = strdup("_i");
        valueQuery__i = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery__i, MAX_NUMBER_LENGTH, "%d", *_i);
        keyPairQuery__i = keyValuePair_create(keyQuery__i, valueQuery__i);
        list_addElement(localVarQueryParameters,keyPairQuery__i);
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
    char *keyQuery__l = NULL;
    char * valueQuery__l = NULL;
    keyValuePair_t *keyPairQuery__l = 0;
    if (_l)
    {
        keyQuery__l = strdup("_l");
        valueQuery__l = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery__l, MAX_NUMBER_LENGTH, "%d", *_l);
        keyPairQuery__l = keyValuePair_create(keyQuery__l, valueQuery__l);
        list_addElement(localVarQueryParameters,keyPairQuery__l);
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
    char *keyQuery_applicationIds = NULL;
    char * valueQuery_applicationIds = NULL;
    keyValuePair_t *keyPairQuery_applicationIds = 0;
    if (applicationIds)
    {
        keyQuery_applicationIds = strdup("applicationIds");
        valueQuery_applicationIds = strdup((applicationIds));
        keyPairQuery_applicationIds = keyValuePair_create(keyQuery_applicationIds, valueQuery_applicationIds);
        list_addElement(localVarQueryParameters,keyPairQuery_applicationIds);
    }

    // query parameters
    char *keyQuery_hasObjectStore = NULL;
    char * valueQuery_hasObjectStore = NULL;
    keyValuePair_t *keyPairQuery_hasObjectStore = 0;
    if (hasObjectStore)
    {
        keyQuery_hasObjectStore = strdup("hasObjectStore");
        valueQuery_hasObjectStore = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_hasObjectStore, MAX_NUMBER_LENGTH, "%d", *hasObjectStore);
        keyPairQuery_hasObjectStore = keyValuePair_create(keyQuery_hasObjectStore, valueQuery_hasObjectStore);
        list_addElement(localVarQueryParameters,keyPairQuery_hasObjectStore);
    }

    // query parameters
    char *keyQuery_activeOnly = NULL;
    char * valueQuery_activeOnly = NULL;
    keyValuePair_t *keyPairQuery_activeOnly = 0;
    if (activeOnly)
    {
        keyQuery_activeOnly = strdup("activeOnly");
        valueQuery_activeOnly = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_activeOnly, MAX_NUMBER_LENGTH, "%d", *activeOnly);
        keyPairQuery_activeOnly = keyValuePair_create(keyQuery_activeOnly, valueQuery_activeOnly);
        list_addElement(localVarQueryParameters,keyPairQuery_activeOnly);
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
        cJSON *ApplicationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(ApplicationAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, ApplicationAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( ApplicationAPIlocalVarJSON);
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
    if(keyQuery_q){
        free(keyQuery_q);
        keyQuery_q = NULL;
    }
    if(valueQuery_q){
        free(valueQuery_q);
        valueQuery_q = NULL;
    }
    if(keyPairQuery_q){
        keyValuePair_free(keyPairQuery_q);
        keyPairQuery_q = NULL;
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
    if(keyQuery_platforms){
        free(keyQuery_platforms);
        keyQuery_platforms = NULL;
    }
    if(valueQuery_platforms){
        free(valueQuery_platforms);
        valueQuery_platforms = NULL;
    }
    if(keyPairQuery_platforms){
        keyValuePair_free(keyPairQuery_platforms);
        keyPairQuery_platforms = NULL;
    }
    if(keyQuery_deviceIds){
        free(keyQuery_deviceIds);
        keyQuery_deviceIds = NULL;
    }
    if(valueQuery_deviceIds){
        free(valueQuery_deviceIds);
        valueQuery_deviceIds = NULL;
    }
    if(keyPairQuery_deviceIds){
        keyValuePair_free(keyPairQuery_deviceIds);
        keyPairQuery_deviceIds = NULL;
    }
    if(keyQuery_deviceVersions){
        free(keyQuery_deviceVersions);
        keyQuery_deviceVersions = NULL;
    }
    if(valueQuery_deviceVersions){
        free(valueQuery_deviceVersions);
        valueQuery_deviceVersions = NULL;
    }
    if(keyPairQuery_deviceVersions){
        keyValuePair_free(keyPairQuery_deviceVersions);
        keyPairQuery_deviceVersions = NULL;
    }
    if(keyQuery_categoryIds){
        free(keyQuery_categoryIds);
        keyQuery_categoryIds = NULL;
    }
    if(valueQuery_categoryIds){
        free(valueQuery_categoryIds);
        valueQuery_categoryIds = NULL;
    }
    if(keyPairQuery_categoryIds){
        keyValuePair_free(keyPairQuery_categoryIds);
        keyPairQuery_categoryIds = NULL;
    }
    if(keyQuery_sortField){
        free(keyQuery_sortField);
        keyQuery_sortField = NULL;
    }
    if(keyPairQuery_sortField){
        keyValuePair_free(keyPairQuery_sortField);
        keyPairQuery_sortField = NULL;
    }
    if(keyQuery_hasAds){
        free(keyQuery_hasAds);
        keyQuery_hasAds = NULL;
    }
    if(valueQuery_hasAds){
        free(valueQuery_hasAds);
        valueQuery_hasAds = NULL;
    }
    if(keyPairQuery_hasAds){
        keyValuePair_free(keyPairQuery_hasAds);
        keyPairQuery_hasAds = NULL;
    }
    if(keyQuery_publicNotifications){
        free(keyQuery_publicNotifications);
        keyQuery_publicNotifications = NULL;
    }
    if(valueQuery_publicNotifications){
        free(valueQuery_publicNotifications);
        valueQuery_publicNotifications = NULL;
    }
    if(keyPairQuery_publicNotifications){
        keyValuePair_free(keyPairQuery_publicNotifications);
        keyPairQuery_publicNotifications = NULL;
    }
    if(keyQuery_filterBillable){
        free(keyQuery_filterBillable);
        keyQuery_filterBillable = NULL;
    }
    if(valueQuery_filterBillable){
        free(valueQuery_filterBillable);
        valueQuery_filterBillable = NULL;
    }
    if(keyPairQuery_filterBillable){
        keyValuePair_free(keyPairQuery_filterBillable);
        keyPairQuery_filterBillable = NULL;
    }
    if(keyQuery_filterContentAdmin){
        free(keyQuery_filterContentAdmin);
        keyQuery_filterContentAdmin = NULL;
    }
    if(valueQuery_filterContentAdmin){
        free(valueQuery_filterContentAdmin);
        valueQuery_filterContentAdmin = NULL;
    }
    if(keyPairQuery_filterContentAdmin){
        keyValuePair_free(keyPairQuery_filterContentAdmin);
        keyPairQuery_filterContentAdmin = NULL;
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
    if(keyQuery__i){
        free(keyQuery__i);
        keyQuery__i = NULL;
    }
    if(valueQuery__i){
        free(valueQuery__i);
        valueQuery__i = NULL;
    }
    if(keyPairQuery__i){
        keyValuePair_free(keyPairQuery__i);
        keyPairQuery__i = NULL;
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
    if(keyQuery__l){
        free(keyQuery__l);
        keyQuery__l = NULL;
    }
    if(valueQuery__l){
        free(valueQuery__l);
        valueQuery__l = NULL;
    }
    if(keyPairQuery__l){
        keyValuePair_free(keyPairQuery__l);
        keyPairQuery__l = NULL;
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
    if(keyQuery_applicationIds){
        free(keyQuery_applicationIds);
        keyQuery_applicationIds = NULL;
    }
    if(valueQuery_applicationIds){
        free(valueQuery_applicationIds);
        valueQuery_applicationIds = NULL;
    }
    if(keyPairQuery_applicationIds){
        keyValuePair_free(keyPairQuery_applicationIds);
        keyPairQuery_applicationIds = NULL;
    }
    if(keyQuery_hasObjectStore){
        free(keyQuery_hasObjectStore);
        keyQuery_hasObjectStore = NULL;
    }
    if(valueQuery_hasObjectStore){
        free(valueQuery_hasObjectStore);
        valueQuery_hasObjectStore = NULL;
    }
    if(keyPairQuery_hasObjectStore){
        keyValuePair_free(keyPairQuery_hasObjectStore);
        keyPairQuery_hasObjectStore = NULL;
    }
    if(keyQuery_activeOnly){
        free(keyQuery_activeOnly);
        keyQuery_activeOnly = NULL;
    }
    if(valueQuery_activeOnly){
        free(valueQuery_activeOnly);
        valueQuery_activeOnly = NULL;
    }
    if(keyPairQuery_activeOnly){
        keyValuePair_free(keyPairQuery_activeOnly);
        keyPairQuery_activeOnly = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search for Ad Placements
//
// Searches placements for an application.
//
list_t*
ApplicationAPI_searchApplicationPlacement(apiClient_t *apiClient, double version, char *appKey, char *deviceId, long accountId, int *start, int *limit)
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
    char *localVarPath = strdup("/api/{version}/application/placement/search");



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
    list_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ApplicationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(ApplicationAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, ApplicationAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( ApplicationAPIlocalVarJSON);
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

// Search for Application Settings
//
// Returns a list of applications that the user has logged into before, and returns specific settings for that application and user
//
application_settings_response_t*
ApplicationAPI_searchApplicationSettings(apiClient_t *apiClient, double version, char *deviceId, long accountId, long connectionAccountId, char *keyword, char *sortField, int *descending, int *start, int *limit)
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
    char *localVarPath = strdup("/api/{version}/application/settings/search");



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
    char *keyQuery_connectionAccountId = NULL;
    char * valueQuery_connectionAccountId ;
    keyValuePair_t *keyPairQuery_connectionAccountId = 0;
    {
        keyQuery_connectionAccountId = strdup("connectionAccountId");
        valueQuery_connectionAccountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_connectionAccountId, MAX_NUMBER_LENGTH_LONG, "%d", connectionAccountId);
        keyPairQuery_connectionAccountId = keyValuePair_create(keyQuery_connectionAccountId, valueQuery_connectionAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_connectionAccountId);
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
    char *keyQuery_sortField = NULL;
    char * valueQuery_sortField = NULL;
    keyValuePair_t *keyPairQuery_sortField = 0;
    if (sortField)
    {
        keyQuery_sortField = strdup("sortField");
        valueQuery_sortField = strdup((sortField));
        keyPairQuery_sortField = keyValuePair_create(keyQuery_sortField, valueQuery_sortField);
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
    application_settings_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ApplicationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = application_settings_response_parseFromJSON(ApplicationAPIlocalVarJSON);
        cJSON_Delete(ApplicationAPIlocalVarJSON);
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
    if(keyQuery_connectionAccountId){
        free(keyQuery_connectionAccountId);
        keyQuery_connectionAccountId = NULL;
    }
    if(keyPairQuery_connectionAccountId){
        keyValuePair_free(keyPairQuery_connectionAccountId);
        keyPairQuery_connectionAccountId = NULL;
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
    if(keyQuery_sortField){
        free(keyQuery_sortField);
        keyQuery_sortField = NULL;
    }
    if(valueQuery_sortField){
        free(valueQuery_sortField);
        valueQuery_sortField = NULL;
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

// Search Applications
//
// Search for applications matching the criteria that the logged in user has access to
//
list_t*
ApplicationAPI_searchApplications(apiClient_t *apiClient, double version, char *deviceId, long accountId, double latitude, double longitude, char *q, char *keyword, char *qSearchFields, sirqul_iot_platform_searchApplications_sortField_e sortField, int *descending, int *_i, int *start, int *_l, int *limit, int *hasAds, int *publicNotifications, int *activeOnly)
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
    char *localVarPath = strdup("/api/{version}/application/search");



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
    char *keyQuery_latitude = NULL;
    char * valueQuery_latitude = NULL;
    keyValuePair_t *keyPairQuery_latitude = 0;
    {
        keyQuery_latitude = strdup("latitude");
        int s = snprintf(NULL, 0, "%.16e", latitude);
        if (s >= 0)
        {
            valueQuery_latitude = calloc(1,s+1);
            snprintf(valueQuery_latitude, s+1, "%.16e", latitude);
        }
        keyPairQuery_latitude = keyValuePair_create(keyQuery_latitude, valueQuery_latitude);
        list_addElement(localVarQueryParameters,keyPairQuery_latitude);
    }

    // query parameters
    char *keyQuery_longitude = NULL;
    char * valueQuery_longitude = NULL;
    keyValuePair_t *keyPairQuery_longitude = 0;
    {
        keyQuery_longitude = strdup("longitude");
        int s = snprintf(NULL, 0, "%.16e", longitude);
        if (s >= 0)
        {
            valueQuery_longitude = calloc(1,s+1);
            snprintf(valueQuery_longitude, s+1, "%.16e", longitude);
        }
        keyPairQuery_longitude = keyValuePair_create(keyQuery_longitude, valueQuery_longitude);
        list_addElement(localVarQueryParameters,keyPairQuery_longitude);
    }

    // query parameters
    char *keyQuery_q = NULL;
    char * valueQuery_q = NULL;
    keyValuePair_t *keyPairQuery_q = 0;
    if (q)
    {
        keyQuery_q = strdup("q");
        valueQuery_q = strdup((q));
        keyPairQuery_q = keyValuePair_create(keyQuery_q, valueQuery_q);
        list_addElement(localVarQueryParameters,keyPairQuery_q);
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
    char *keyQuery_qSearchFields = NULL;
    char * valueQuery_qSearchFields = NULL;
    keyValuePair_t *keyPairQuery_qSearchFields = 0;
    if (qSearchFields)
    {
        keyQuery_qSearchFields = strdup("qSearchFields");
        valueQuery_qSearchFields = strdup((qSearchFields));
        keyPairQuery_qSearchFields = keyValuePair_create(keyQuery_qSearchFields, valueQuery_qSearchFields);
        list_addElement(localVarQueryParameters,keyPairQuery_qSearchFields);
    }

    // query parameters
    char *keyQuery_sortField = NULL;
    sirqul_iot_platform_searchApplications_sortField_e valueQuery_sortField ;
    keyValuePair_t *keyPairQuery_sortField = 0;
    if (sortField)
    {
        keyQuery_sortField = strdup("sortField");
        valueQuery_sortField = (sortField);
        keyPairQuery_sortField = keyValuePair_create(keyQuery_sortField, strdup(searchApplications_SORTFIELD_ToString(
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
    char *keyQuery__i = NULL;
    char * valueQuery__i = NULL;
    keyValuePair_t *keyPairQuery__i = 0;
    if (_i)
    {
        keyQuery__i = strdup("_i");
        valueQuery__i = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery__i, MAX_NUMBER_LENGTH, "%d", *_i);
        keyPairQuery__i = keyValuePair_create(keyQuery__i, valueQuery__i);
        list_addElement(localVarQueryParameters,keyPairQuery__i);
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
    char *keyQuery__l = NULL;
    char * valueQuery__l = NULL;
    keyValuePair_t *keyPairQuery__l = 0;
    if (_l)
    {
        keyQuery__l = strdup("_l");
        valueQuery__l = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery__l, MAX_NUMBER_LENGTH, "%d", *_l);
        keyPairQuery__l = keyValuePair_create(keyQuery__l, valueQuery__l);
        list_addElement(localVarQueryParameters,keyPairQuery__l);
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
    char *keyQuery_hasAds = NULL;
    char * valueQuery_hasAds = NULL;
    keyValuePair_t *keyPairQuery_hasAds = 0;
    if (hasAds)
    {
        keyQuery_hasAds = strdup("hasAds");
        valueQuery_hasAds = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_hasAds, MAX_NUMBER_LENGTH, "%d", *hasAds);
        keyPairQuery_hasAds = keyValuePair_create(keyQuery_hasAds, valueQuery_hasAds);
        list_addElement(localVarQueryParameters,keyPairQuery_hasAds);
    }

    // query parameters
    char *keyQuery_publicNotifications = NULL;
    char * valueQuery_publicNotifications = NULL;
    keyValuePair_t *keyPairQuery_publicNotifications = 0;
    if (publicNotifications)
    {
        keyQuery_publicNotifications = strdup("publicNotifications");
        valueQuery_publicNotifications = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_publicNotifications, MAX_NUMBER_LENGTH, "%d", *publicNotifications);
        keyPairQuery_publicNotifications = keyValuePair_create(keyQuery_publicNotifications, valueQuery_publicNotifications);
        list_addElement(localVarQueryParameters,keyPairQuery_publicNotifications);
    }

    // query parameters
    char *keyQuery_activeOnly = NULL;
    char * valueQuery_activeOnly = NULL;
    keyValuePair_t *keyPairQuery_activeOnly = 0;
    if (activeOnly)
    {
        keyQuery_activeOnly = strdup("activeOnly");
        valueQuery_activeOnly = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_activeOnly, MAX_NUMBER_LENGTH, "%d", *activeOnly);
        keyPairQuery_activeOnly = keyValuePair_create(keyQuery_activeOnly, valueQuery_activeOnly);
        list_addElement(localVarQueryParameters,keyPairQuery_activeOnly);
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
        cJSON *ApplicationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(ApplicationAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, ApplicationAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( ApplicationAPIlocalVarJSON);
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
    if(keyQuery_latitude){
        free(keyQuery_latitude);
        keyQuery_latitude = NULL;
    }
    if(keyPairQuery_latitude){
        keyValuePair_free(keyPairQuery_latitude);
        keyPairQuery_latitude = NULL;
    }
    if(keyQuery_longitude){
        free(keyQuery_longitude);
        keyQuery_longitude = NULL;
    }
    if(keyPairQuery_longitude){
        keyValuePair_free(keyPairQuery_longitude);
        keyPairQuery_longitude = NULL;
    }
    if(keyQuery_q){
        free(keyQuery_q);
        keyQuery_q = NULL;
    }
    if(valueQuery_q){
        free(valueQuery_q);
        valueQuery_q = NULL;
    }
    if(keyPairQuery_q){
        keyValuePair_free(keyPairQuery_q);
        keyPairQuery_q = NULL;
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
    if(keyQuery_qSearchFields){
        free(keyQuery_qSearchFields);
        keyQuery_qSearchFields = NULL;
    }
    if(valueQuery_qSearchFields){
        free(valueQuery_qSearchFields);
        valueQuery_qSearchFields = NULL;
    }
    if(keyPairQuery_qSearchFields){
        keyValuePair_free(keyPairQuery_qSearchFields);
        keyPairQuery_qSearchFields = NULL;
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
    if(keyQuery__i){
        free(keyQuery__i);
        keyQuery__i = NULL;
    }
    if(valueQuery__i){
        free(valueQuery__i);
        valueQuery__i = NULL;
    }
    if(keyPairQuery__i){
        keyValuePair_free(keyPairQuery__i);
        keyPairQuery__i = NULL;
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
    if(keyQuery__l){
        free(keyQuery__l);
        keyQuery__l = NULL;
    }
    if(valueQuery__l){
        free(valueQuery__l);
        valueQuery__l = NULL;
    }
    if(keyPairQuery__l){
        keyValuePair_free(keyPairQuery__l);
        keyPairQuery__l = NULL;
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
    if(keyQuery_hasAds){
        free(keyQuery_hasAds);
        keyQuery_hasAds = NULL;
    }
    if(valueQuery_hasAds){
        free(valueQuery_hasAds);
        valueQuery_hasAds = NULL;
    }
    if(keyPairQuery_hasAds){
        keyValuePair_free(keyPairQuery_hasAds);
        keyPairQuery_hasAds = NULL;
    }
    if(keyQuery_publicNotifications){
        free(keyQuery_publicNotifications);
        keyQuery_publicNotifications = NULL;
    }
    if(valueQuery_publicNotifications){
        free(valueQuery_publicNotifications);
        valueQuery_publicNotifications = NULL;
    }
    if(keyPairQuery_publicNotifications){
        keyValuePair_free(keyPairQuery_publicNotifications);
        keyPairQuery_publicNotifications = NULL;
    }
    if(keyQuery_activeOnly){
        free(keyQuery_activeOnly);
        keyQuery_activeOnly = NULL;
    }
    if(valueQuery_activeOnly){
        free(valueQuery_activeOnly);
        valueQuery_activeOnly = NULL;
    }
    if(keyPairQuery_activeOnly){
        keyValuePair_free(keyPairQuery_activeOnly);
        keyPairQuery_activeOnly = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Update Application
//
// Update an application record
//
application_response_t*
ApplicationAPI_updateApplication(apiClient_t *apiClient, double version, char *appKey, char *appName, char *deviceId, long accountId, char *about, char *bundleId, long appIconAssetId, long appLogoAssetId, char *facebookAppId, char *facebookAppSecret, char *googleApiKey, int *updateEULADate, char *eulaVersion, char *landingPageUrl, int *showInActivities, char *activityDescription, char *inviteWelcomeText, char *invitePageUrl, char *urlScheme, char *platforms, char *downloadUrls, char *categoryIds, sirqul_iot_platform_updateApplication_scoringType_e scoringType, int *hintCost, int *maxScore, float ticketsPerPoint, int *hasGameData, int *publicNotifications, int *useMatchingAlgorithm, int *globalTickets, float buildVersion, float apiVersion, char *placementName, char *placementDescription, sirqul_iot_platform_updateApplication_placementSize_e placementSize, int *placementHeight, int *placementWidth, int *placementRefreshInterval, int *createObjectStore, int *publicContentApproval, int *productionMode, int *minimumSessionLength, int *sessionGapLength, int *localAdsEnabled, char *sqootApiKey, sirqul_iot_platform_updateApplication_trilatProcessingType_e trilatProcessingType, int *maxSampleSize, double minRSSI, char *modules, int *authorizedCount, char *authorizedServers, char *defaultTimezone, char *smtpPass, char *metaData, char *placementMetaData, int *ipsFloor, int *enableAPNSBadge, int *includeInReport, long defaultAppFilterId, int *enableWelcomeEmail, char *appleAppId, char *appleTeamId, char *appleAuthKeyId, binary_t* appleAuthKey, char *appleIssuerId, char *appStoreKeyId, binary_t* appStoreKey, binary_t* googlePrivateKeyFile, char *authorizeNetApiKey, char *authorizeNetTransactionKey, char *emailSender, char *smtpUser, char *smtpHost, char *vatomBusinessId, char *vatomRestClientId, char *vatomRestSecretKey, char *twilioAccountSID, char *twilioAuthToken, char *twilioSenderPhoneNumber, char *openAISecretKey)
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
    char *localVarPath = strdup("/api/{version}/application/update");



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
    char *keyQuery_appName = NULL;
    char * valueQuery_appName = NULL;
    keyValuePair_t *keyPairQuery_appName = 0;
    if (appName)
    {
        keyQuery_appName = strdup("appName");
        valueQuery_appName = strdup((appName));
        keyPairQuery_appName = keyValuePair_create(keyQuery_appName, valueQuery_appName);
        list_addElement(localVarQueryParameters,keyPairQuery_appName);
    }

    // query parameters
    char *keyQuery_about = NULL;
    char * valueQuery_about = NULL;
    keyValuePair_t *keyPairQuery_about = 0;
    if (about)
    {
        keyQuery_about = strdup("about");
        valueQuery_about = strdup((about));
        keyPairQuery_about = keyValuePair_create(keyQuery_about, valueQuery_about);
        list_addElement(localVarQueryParameters,keyPairQuery_about);
    }

    // query parameters
    char *keyQuery_bundleId = NULL;
    char * valueQuery_bundleId = NULL;
    keyValuePair_t *keyPairQuery_bundleId = 0;
    if (bundleId)
    {
        keyQuery_bundleId = strdup("bundleId");
        valueQuery_bundleId = strdup((bundleId));
        keyPairQuery_bundleId = keyValuePair_create(keyQuery_bundleId, valueQuery_bundleId);
        list_addElement(localVarQueryParameters,keyPairQuery_bundleId);
    }

    // query parameters
    char *keyQuery_appIconAssetId = NULL;
    char * valueQuery_appIconAssetId ;
    keyValuePair_t *keyPairQuery_appIconAssetId = 0;
    {
        keyQuery_appIconAssetId = strdup("appIconAssetId");
        valueQuery_appIconAssetId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_appIconAssetId, MAX_NUMBER_LENGTH_LONG, "%d", appIconAssetId);
        keyPairQuery_appIconAssetId = keyValuePair_create(keyQuery_appIconAssetId, valueQuery_appIconAssetId);
        list_addElement(localVarQueryParameters,keyPairQuery_appIconAssetId);
    }

    // query parameters
    char *keyQuery_appLogoAssetId = NULL;
    char * valueQuery_appLogoAssetId ;
    keyValuePair_t *keyPairQuery_appLogoAssetId = 0;
    {
        keyQuery_appLogoAssetId = strdup("appLogoAssetId");
        valueQuery_appLogoAssetId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_appLogoAssetId, MAX_NUMBER_LENGTH_LONG, "%d", appLogoAssetId);
        keyPairQuery_appLogoAssetId = keyValuePair_create(keyQuery_appLogoAssetId, valueQuery_appLogoAssetId);
        list_addElement(localVarQueryParameters,keyPairQuery_appLogoAssetId);
    }

    // query parameters
    char *keyQuery_facebookAppId = NULL;
    char * valueQuery_facebookAppId = NULL;
    keyValuePair_t *keyPairQuery_facebookAppId = 0;
    if (facebookAppId)
    {
        keyQuery_facebookAppId = strdup("facebookAppId");
        valueQuery_facebookAppId = strdup((facebookAppId));
        keyPairQuery_facebookAppId = keyValuePair_create(keyQuery_facebookAppId, valueQuery_facebookAppId);
        list_addElement(localVarQueryParameters,keyPairQuery_facebookAppId);
    }

    // query parameters
    char *keyQuery_facebookAppSecret = NULL;
    char * valueQuery_facebookAppSecret = NULL;
    keyValuePair_t *keyPairQuery_facebookAppSecret = 0;
    if (facebookAppSecret)
    {
        keyQuery_facebookAppSecret = strdup("facebookAppSecret");
        valueQuery_facebookAppSecret = strdup((facebookAppSecret));
        keyPairQuery_facebookAppSecret = keyValuePair_create(keyQuery_facebookAppSecret, valueQuery_facebookAppSecret);
        list_addElement(localVarQueryParameters,keyPairQuery_facebookAppSecret);
    }

    // query parameters
    char *keyQuery_googleApiKey = NULL;
    char * valueQuery_googleApiKey = NULL;
    keyValuePair_t *keyPairQuery_googleApiKey = 0;
    if (googleApiKey)
    {
        keyQuery_googleApiKey = strdup("googleApiKey");
        valueQuery_googleApiKey = strdup((googleApiKey));
        keyPairQuery_googleApiKey = keyValuePair_create(keyQuery_googleApiKey, valueQuery_googleApiKey);
        list_addElement(localVarQueryParameters,keyPairQuery_googleApiKey);
    }

    // query parameters
    char *keyQuery_updateEULADate = NULL;
    char * valueQuery_updateEULADate = NULL;
    keyValuePair_t *keyPairQuery_updateEULADate = 0;
    if (updateEULADate)
    {
        keyQuery_updateEULADate = strdup("updateEULADate");
        valueQuery_updateEULADate = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_updateEULADate, MAX_NUMBER_LENGTH, "%d", *updateEULADate);
        keyPairQuery_updateEULADate = keyValuePair_create(keyQuery_updateEULADate, valueQuery_updateEULADate);
        list_addElement(localVarQueryParameters,keyPairQuery_updateEULADate);
    }

    // query parameters
    char *keyQuery_eulaVersion = NULL;
    char * valueQuery_eulaVersion = NULL;
    keyValuePair_t *keyPairQuery_eulaVersion = 0;
    if (eulaVersion)
    {
        keyQuery_eulaVersion = strdup("eulaVersion");
        valueQuery_eulaVersion = strdup((eulaVersion));
        keyPairQuery_eulaVersion = keyValuePair_create(keyQuery_eulaVersion, valueQuery_eulaVersion);
        list_addElement(localVarQueryParameters,keyPairQuery_eulaVersion);
    }

    // query parameters
    char *keyQuery_landingPageUrl = NULL;
    char * valueQuery_landingPageUrl = NULL;
    keyValuePair_t *keyPairQuery_landingPageUrl = 0;
    if (landingPageUrl)
    {
        keyQuery_landingPageUrl = strdup("landingPageUrl");
        valueQuery_landingPageUrl = strdup((landingPageUrl));
        keyPairQuery_landingPageUrl = keyValuePair_create(keyQuery_landingPageUrl, valueQuery_landingPageUrl);
        list_addElement(localVarQueryParameters,keyPairQuery_landingPageUrl);
    }

    // query parameters
    char *keyQuery_showInActivities = NULL;
    char * valueQuery_showInActivities = NULL;
    keyValuePair_t *keyPairQuery_showInActivities = 0;
    if (showInActivities)
    {
        keyQuery_showInActivities = strdup("showInActivities");
        valueQuery_showInActivities = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_showInActivities, MAX_NUMBER_LENGTH, "%d", *showInActivities);
        keyPairQuery_showInActivities = keyValuePair_create(keyQuery_showInActivities, valueQuery_showInActivities);
        list_addElement(localVarQueryParameters,keyPairQuery_showInActivities);
    }

    // query parameters
    char *keyQuery_activityDescription = NULL;
    char * valueQuery_activityDescription = NULL;
    keyValuePair_t *keyPairQuery_activityDescription = 0;
    if (activityDescription)
    {
        keyQuery_activityDescription = strdup("activityDescription");
        valueQuery_activityDescription = strdup((activityDescription));
        keyPairQuery_activityDescription = keyValuePair_create(keyQuery_activityDescription, valueQuery_activityDescription);
        list_addElement(localVarQueryParameters,keyPairQuery_activityDescription);
    }

    // query parameters
    char *keyQuery_inviteWelcomeText = NULL;
    char * valueQuery_inviteWelcomeText = NULL;
    keyValuePair_t *keyPairQuery_inviteWelcomeText = 0;
    if (inviteWelcomeText)
    {
        keyQuery_inviteWelcomeText = strdup("inviteWelcomeText");
        valueQuery_inviteWelcomeText = strdup((inviteWelcomeText));
        keyPairQuery_inviteWelcomeText = keyValuePair_create(keyQuery_inviteWelcomeText, valueQuery_inviteWelcomeText);
        list_addElement(localVarQueryParameters,keyPairQuery_inviteWelcomeText);
    }

    // query parameters
    char *keyQuery_invitePageUrl = NULL;
    char * valueQuery_invitePageUrl = NULL;
    keyValuePair_t *keyPairQuery_invitePageUrl = 0;
    if (invitePageUrl)
    {
        keyQuery_invitePageUrl = strdup("invitePageUrl");
        valueQuery_invitePageUrl = strdup((invitePageUrl));
        keyPairQuery_invitePageUrl = keyValuePair_create(keyQuery_invitePageUrl, valueQuery_invitePageUrl);
        list_addElement(localVarQueryParameters,keyPairQuery_invitePageUrl);
    }

    // query parameters
    char *keyQuery_urlScheme = NULL;
    char * valueQuery_urlScheme = NULL;
    keyValuePair_t *keyPairQuery_urlScheme = 0;
    if (urlScheme)
    {
        keyQuery_urlScheme = strdup("urlScheme");
        valueQuery_urlScheme = strdup((urlScheme));
        keyPairQuery_urlScheme = keyValuePair_create(keyQuery_urlScheme, valueQuery_urlScheme);
        list_addElement(localVarQueryParameters,keyPairQuery_urlScheme);
    }

    // query parameters
    char *keyQuery_platforms = NULL;
    char * valueQuery_platforms = NULL;
    keyValuePair_t *keyPairQuery_platforms = 0;
    if (platforms)
    {
        keyQuery_platforms = strdup("platforms");
        valueQuery_platforms = strdup((platforms));
        keyPairQuery_platforms = keyValuePair_create(keyQuery_platforms, valueQuery_platforms);
        list_addElement(localVarQueryParameters,keyPairQuery_platforms);
    }

    // query parameters
    char *keyQuery_downloadUrls = NULL;
    char * valueQuery_downloadUrls = NULL;
    keyValuePair_t *keyPairQuery_downloadUrls = 0;
    if (downloadUrls)
    {
        keyQuery_downloadUrls = strdup("downloadUrls");
        valueQuery_downloadUrls = strdup((downloadUrls));
        keyPairQuery_downloadUrls = keyValuePair_create(keyQuery_downloadUrls, valueQuery_downloadUrls);
        list_addElement(localVarQueryParameters,keyPairQuery_downloadUrls);
    }

    // query parameters
    char *keyQuery_categoryIds = NULL;
    char * valueQuery_categoryIds = NULL;
    keyValuePair_t *keyPairQuery_categoryIds = 0;
    if (categoryIds)
    {
        keyQuery_categoryIds = strdup("categoryIds");
        valueQuery_categoryIds = strdup((categoryIds));
        keyPairQuery_categoryIds = keyValuePair_create(keyQuery_categoryIds, valueQuery_categoryIds);
        list_addElement(localVarQueryParameters,keyPairQuery_categoryIds);
    }

    // query parameters
    char *keyQuery_scoringType = NULL;
    sirqul_iot_platform_updateApplication_scoringType_e valueQuery_scoringType ;
    keyValuePair_t *keyPairQuery_scoringType = 0;
    if (scoringType)
    {
        keyQuery_scoringType = strdup("scoringType");
        valueQuery_scoringType = (scoringType);
        keyPairQuery_scoringType = keyValuePair_create(keyQuery_scoringType, strdup(updateApplication_SCORINGTYPE_ToString(
        valueQuery_scoringType)));
        list_addElement(localVarQueryParameters,keyPairQuery_scoringType);
    }

    // query parameters
    char *keyQuery_hintCost = NULL;
    char * valueQuery_hintCost = NULL;
    keyValuePair_t *keyPairQuery_hintCost = 0;
    if (hintCost)
    {
        keyQuery_hintCost = strdup("hintCost");
        valueQuery_hintCost = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_hintCost, MAX_NUMBER_LENGTH, "%d", *hintCost);
        keyPairQuery_hintCost = keyValuePair_create(keyQuery_hintCost, valueQuery_hintCost);
        list_addElement(localVarQueryParameters,keyPairQuery_hintCost);
    }

    // query parameters
    char *keyQuery_maxScore = NULL;
    char * valueQuery_maxScore = NULL;
    keyValuePair_t *keyPairQuery_maxScore = 0;
    if (maxScore)
    {
        keyQuery_maxScore = strdup("maxScore");
        valueQuery_maxScore = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_maxScore, MAX_NUMBER_LENGTH, "%d", *maxScore);
        keyPairQuery_maxScore = keyValuePair_create(keyQuery_maxScore, valueQuery_maxScore);
        list_addElement(localVarQueryParameters,keyPairQuery_maxScore);
    }

    // query parameters
    char *keyQuery_ticketsPerPoint = NULL;
    char * valueQuery_ticketsPerPoint = NULL;
    keyValuePair_t *keyPairQuery_ticketsPerPoint = 0;
    {
        keyQuery_ticketsPerPoint = strdup("ticketsPerPoint");
        int s = snprintf(NULL, 0, "%.7e", ticketsPerPoint);
        if (s >= 0)
        {
            valueQuery_ticketsPerPoint = calloc(1,s+1);
            snprintf(valueQuery_ticketsPerPoint, s+1, "%.7e", ticketsPerPoint);
        }
        keyPairQuery_ticketsPerPoint = keyValuePair_create(keyQuery_ticketsPerPoint, valueQuery_ticketsPerPoint);
        list_addElement(localVarQueryParameters,keyPairQuery_ticketsPerPoint);
    }

    // query parameters
    char *keyQuery_hasGameData = NULL;
    char * valueQuery_hasGameData = NULL;
    keyValuePair_t *keyPairQuery_hasGameData = 0;
    if (hasGameData)
    {
        keyQuery_hasGameData = strdup("hasGameData");
        valueQuery_hasGameData = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_hasGameData, MAX_NUMBER_LENGTH, "%d", *hasGameData);
        keyPairQuery_hasGameData = keyValuePair_create(keyQuery_hasGameData, valueQuery_hasGameData);
        list_addElement(localVarQueryParameters,keyPairQuery_hasGameData);
    }

    // query parameters
    char *keyQuery_publicNotifications = NULL;
    char * valueQuery_publicNotifications = NULL;
    keyValuePair_t *keyPairQuery_publicNotifications = 0;
    if (publicNotifications)
    {
        keyQuery_publicNotifications = strdup("publicNotifications");
        valueQuery_publicNotifications = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_publicNotifications, MAX_NUMBER_LENGTH, "%d", *publicNotifications);
        keyPairQuery_publicNotifications = keyValuePair_create(keyQuery_publicNotifications, valueQuery_publicNotifications);
        list_addElement(localVarQueryParameters,keyPairQuery_publicNotifications);
    }

    // query parameters
    char *keyQuery_useMatchingAlgorithm = NULL;
    char * valueQuery_useMatchingAlgorithm = NULL;
    keyValuePair_t *keyPairQuery_useMatchingAlgorithm = 0;
    if (useMatchingAlgorithm)
    {
        keyQuery_useMatchingAlgorithm = strdup("useMatchingAlgorithm");
        valueQuery_useMatchingAlgorithm = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_useMatchingAlgorithm, MAX_NUMBER_LENGTH, "%d", *useMatchingAlgorithm);
        keyPairQuery_useMatchingAlgorithm = keyValuePair_create(keyQuery_useMatchingAlgorithm, valueQuery_useMatchingAlgorithm);
        list_addElement(localVarQueryParameters,keyPairQuery_useMatchingAlgorithm);
    }

    // query parameters
    char *keyQuery_globalTickets = NULL;
    char * valueQuery_globalTickets = NULL;
    keyValuePair_t *keyPairQuery_globalTickets = 0;
    if (globalTickets)
    {
        keyQuery_globalTickets = strdup("globalTickets");
        valueQuery_globalTickets = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_globalTickets, MAX_NUMBER_LENGTH, "%d", *globalTickets);
        keyPairQuery_globalTickets = keyValuePair_create(keyQuery_globalTickets, valueQuery_globalTickets);
        list_addElement(localVarQueryParameters,keyPairQuery_globalTickets);
    }

    // query parameters
    char *keyQuery_buildVersion = NULL;
    char * valueQuery_buildVersion = NULL;
    keyValuePair_t *keyPairQuery_buildVersion = 0;
    {
        keyQuery_buildVersion = strdup("buildVersion");
        int s = snprintf(NULL, 0, "%.7e", buildVersion);
        if (s >= 0)
        {
            valueQuery_buildVersion = calloc(1,s+1);
            snprintf(valueQuery_buildVersion, s+1, "%.7e", buildVersion);
        }
        keyPairQuery_buildVersion = keyValuePair_create(keyQuery_buildVersion, valueQuery_buildVersion);
        list_addElement(localVarQueryParameters,keyPairQuery_buildVersion);
    }

    // query parameters
    char *keyQuery_apiVersion = NULL;
    char * valueQuery_apiVersion = NULL;
    keyValuePair_t *keyPairQuery_apiVersion = 0;
    {
        keyQuery_apiVersion = strdup("apiVersion");
        int s = snprintf(NULL, 0, "%.7e", apiVersion);
        if (s >= 0)
        {
            valueQuery_apiVersion = calloc(1,s+1);
            snprintf(valueQuery_apiVersion, s+1, "%.7e", apiVersion);
        }
        keyPairQuery_apiVersion = keyValuePair_create(keyQuery_apiVersion, valueQuery_apiVersion);
        list_addElement(localVarQueryParameters,keyPairQuery_apiVersion);
    }

    // query parameters
    char *keyQuery_placementName = NULL;
    char * valueQuery_placementName = NULL;
    keyValuePair_t *keyPairQuery_placementName = 0;
    if (placementName)
    {
        keyQuery_placementName = strdup("placementName");
        valueQuery_placementName = strdup((placementName));
        keyPairQuery_placementName = keyValuePair_create(keyQuery_placementName, valueQuery_placementName);
        list_addElement(localVarQueryParameters,keyPairQuery_placementName);
    }

    // query parameters
    char *keyQuery_placementDescription = NULL;
    char * valueQuery_placementDescription = NULL;
    keyValuePair_t *keyPairQuery_placementDescription = 0;
    if (placementDescription)
    {
        keyQuery_placementDescription = strdup("placementDescription");
        valueQuery_placementDescription = strdup((placementDescription));
        keyPairQuery_placementDescription = keyValuePair_create(keyQuery_placementDescription, valueQuery_placementDescription);
        list_addElement(localVarQueryParameters,keyPairQuery_placementDescription);
    }

    // query parameters
    char *keyQuery_placementSize = NULL;
    sirqul_iot_platform_updateApplication_placementSize_e valueQuery_placementSize ;
    keyValuePair_t *keyPairQuery_placementSize = 0;
    if (placementSize)
    {
        keyQuery_placementSize = strdup("placementSize");
        valueQuery_placementSize = (placementSize);
        keyPairQuery_placementSize = keyValuePair_create(keyQuery_placementSize, strdup(updateApplication_PLACEMENTSIZE_ToString(
        valueQuery_placementSize)));
        list_addElement(localVarQueryParameters,keyPairQuery_placementSize);
    }

    // query parameters
    char *keyQuery_placementHeight = NULL;
    char * valueQuery_placementHeight = NULL;
    keyValuePair_t *keyPairQuery_placementHeight = 0;
    if (placementHeight)
    {
        keyQuery_placementHeight = strdup("placementHeight");
        valueQuery_placementHeight = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_placementHeight, MAX_NUMBER_LENGTH, "%d", *placementHeight);
        keyPairQuery_placementHeight = keyValuePair_create(keyQuery_placementHeight, valueQuery_placementHeight);
        list_addElement(localVarQueryParameters,keyPairQuery_placementHeight);
    }

    // query parameters
    char *keyQuery_placementWidth = NULL;
    char * valueQuery_placementWidth = NULL;
    keyValuePair_t *keyPairQuery_placementWidth = 0;
    if (placementWidth)
    {
        keyQuery_placementWidth = strdup("placementWidth");
        valueQuery_placementWidth = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_placementWidth, MAX_NUMBER_LENGTH, "%d", *placementWidth);
        keyPairQuery_placementWidth = keyValuePair_create(keyQuery_placementWidth, valueQuery_placementWidth);
        list_addElement(localVarQueryParameters,keyPairQuery_placementWidth);
    }

    // query parameters
    char *keyQuery_placementRefreshInterval = NULL;
    char * valueQuery_placementRefreshInterval = NULL;
    keyValuePair_t *keyPairQuery_placementRefreshInterval = 0;
    if (placementRefreshInterval)
    {
        keyQuery_placementRefreshInterval = strdup("placementRefreshInterval");
        valueQuery_placementRefreshInterval = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_placementRefreshInterval, MAX_NUMBER_LENGTH, "%d", *placementRefreshInterval);
        keyPairQuery_placementRefreshInterval = keyValuePair_create(keyQuery_placementRefreshInterval, valueQuery_placementRefreshInterval);
        list_addElement(localVarQueryParameters,keyPairQuery_placementRefreshInterval);
    }

    // query parameters
    char *keyQuery_createObjectStore = NULL;
    char * valueQuery_createObjectStore = NULL;
    keyValuePair_t *keyPairQuery_createObjectStore = 0;
    if (createObjectStore)
    {
        keyQuery_createObjectStore = strdup("createObjectStore");
        valueQuery_createObjectStore = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_createObjectStore, MAX_NUMBER_LENGTH, "%d", *createObjectStore);
        keyPairQuery_createObjectStore = keyValuePair_create(keyQuery_createObjectStore, valueQuery_createObjectStore);
        list_addElement(localVarQueryParameters,keyPairQuery_createObjectStore);
    }

    // query parameters
    char *keyQuery_publicContentApproval = NULL;
    char * valueQuery_publicContentApproval = NULL;
    keyValuePair_t *keyPairQuery_publicContentApproval = 0;
    if (publicContentApproval)
    {
        keyQuery_publicContentApproval = strdup("publicContentApproval");
        valueQuery_publicContentApproval = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_publicContentApproval, MAX_NUMBER_LENGTH, "%d", *publicContentApproval);
        keyPairQuery_publicContentApproval = keyValuePair_create(keyQuery_publicContentApproval, valueQuery_publicContentApproval);
        list_addElement(localVarQueryParameters,keyPairQuery_publicContentApproval);
    }

    // query parameters
    char *keyQuery_productionMode = NULL;
    char * valueQuery_productionMode = NULL;
    keyValuePair_t *keyPairQuery_productionMode = 0;
    if (productionMode)
    {
        keyQuery_productionMode = strdup("productionMode");
        valueQuery_productionMode = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_productionMode, MAX_NUMBER_LENGTH, "%d", *productionMode);
        keyPairQuery_productionMode = keyValuePair_create(keyQuery_productionMode, valueQuery_productionMode);
        list_addElement(localVarQueryParameters,keyPairQuery_productionMode);
    }

    // query parameters
    char *keyQuery_minimumSessionLength = NULL;
    char * valueQuery_minimumSessionLength = NULL;
    keyValuePair_t *keyPairQuery_minimumSessionLength = 0;
    if (minimumSessionLength)
    {
        keyQuery_minimumSessionLength = strdup("minimumSessionLength");
        valueQuery_minimumSessionLength = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_minimumSessionLength, MAX_NUMBER_LENGTH, "%d", *minimumSessionLength);
        keyPairQuery_minimumSessionLength = keyValuePair_create(keyQuery_minimumSessionLength, valueQuery_minimumSessionLength);
        list_addElement(localVarQueryParameters,keyPairQuery_minimumSessionLength);
    }

    // query parameters
    char *keyQuery_sessionGapLength = NULL;
    char * valueQuery_sessionGapLength = NULL;
    keyValuePair_t *keyPairQuery_sessionGapLength = 0;
    if (sessionGapLength)
    {
        keyQuery_sessionGapLength = strdup("sessionGapLength");
        valueQuery_sessionGapLength = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_sessionGapLength, MAX_NUMBER_LENGTH, "%d", *sessionGapLength);
        keyPairQuery_sessionGapLength = keyValuePair_create(keyQuery_sessionGapLength, valueQuery_sessionGapLength);
        list_addElement(localVarQueryParameters,keyPairQuery_sessionGapLength);
    }

    // query parameters
    char *keyQuery_localAdsEnabled = NULL;
    char * valueQuery_localAdsEnabled = NULL;
    keyValuePair_t *keyPairQuery_localAdsEnabled = 0;
    if (localAdsEnabled)
    {
        keyQuery_localAdsEnabled = strdup("localAdsEnabled");
        valueQuery_localAdsEnabled = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_localAdsEnabled, MAX_NUMBER_LENGTH, "%d", *localAdsEnabled);
        keyPairQuery_localAdsEnabled = keyValuePair_create(keyQuery_localAdsEnabled, valueQuery_localAdsEnabled);
        list_addElement(localVarQueryParameters,keyPairQuery_localAdsEnabled);
    }

    // query parameters
    char *keyQuery_sqootApiKey = NULL;
    char * valueQuery_sqootApiKey = NULL;
    keyValuePair_t *keyPairQuery_sqootApiKey = 0;
    if (sqootApiKey)
    {
        keyQuery_sqootApiKey = strdup("sqootApiKey");
        valueQuery_sqootApiKey = strdup((sqootApiKey));
        keyPairQuery_sqootApiKey = keyValuePair_create(keyQuery_sqootApiKey, valueQuery_sqootApiKey);
        list_addElement(localVarQueryParameters,keyPairQuery_sqootApiKey);
    }

    // query parameters
    char *keyQuery_trilatProcessingType = NULL;
    sirqul_iot_platform_updateApplication_trilatProcessingType_e valueQuery_trilatProcessingType ;
    keyValuePair_t *keyPairQuery_trilatProcessingType = 0;
    if (trilatProcessingType)
    {
        keyQuery_trilatProcessingType = strdup("trilatProcessingType");
        valueQuery_trilatProcessingType = (trilatProcessingType);
        keyPairQuery_trilatProcessingType = keyValuePair_create(keyQuery_trilatProcessingType, strdup(updateApplication_TRILATPROCESSINGTYPE_ToString(
        valueQuery_trilatProcessingType)));
        list_addElement(localVarQueryParameters,keyPairQuery_trilatProcessingType);
    }

    // query parameters
    char *keyQuery_maxSampleSize = NULL;
    char * valueQuery_maxSampleSize = NULL;
    keyValuePair_t *keyPairQuery_maxSampleSize = 0;
    if (maxSampleSize)
    {
        keyQuery_maxSampleSize = strdup("maxSampleSize");
        valueQuery_maxSampleSize = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_maxSampleSize, MAX_NUMBER_LENGTH, "%d", *maxSampleSize);
        keyPairQuery_maxSampleSize = keyValuePair_create(keyQuery_maxSampleSize, valueQuery_maxSampleSize);
        list_addElement(localVarQueryParameters,keyPairQuery_maxSampleSize);
    }

    // query parameters
    char *keyQuery_minRSSI = NULL;
    char * valueQuery_minRSSI = NULL;
    keyValuePair_t *keyPairQuery_minRSSI = 0;
    {
        keyQuery_minRSSI = strdup("minRSSI");
        int s = snprintf(NULL, 0, "%.16e", minRSSI);
        if (s >= 0)
        {
            valueQuery_minRSSI = calloc(1,s+1);
            snprintf(valueQuery_minRSSI, s+1, "%.16e", minRSSI);
        }
        keyPairQuery_minRSSI = keyValuePair_create(keyQuery_minRSSI, valueQuery_minRSSI);
        list_addElement(localVarQueryParameters,keyPairQuery_minRSSI);
    }

    // query parameters
    char *keyQuery_modules = NULL;
    char * valueQuery_modules = NULL;
    keyValuePair_t *keyPairQuery_modules = 0;
    if (modules)
    {
        keyQuery_modules = strdup("modules");
        valueQuery_modules = strdup((modules));
        keyPairQuery_modules = keyValuePair_create(keyQuery_modules, valueQuery_modules);
        list_addElement(localVarQueryParameters,keyPairQuery_modules);
    }

    // query parameters
    char *keyQuery_authorizedCount = NULL;
    char * valueQuery_authorizedCount = NULL;
    keyValuePair_t *keyPairQuery_authorizedCount = 0;
    if (authorizedCount)
    {
        keyQuery_authorizedCount = strdup("authorizedCount");
        valueQuery_authorizedCount = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_authorizedCount, MAX_NUMBER_LENGTH, "%d", *authorizedCount);
        keyPairQuery_authorizedCount = keyValuePair_create(keyQuery_authorizedCount, valueQuery_authorizedCount);
        list_addElement(localVarQueryParameters,keyPairQuery_authorizedCount);
    }

    // query parameters
    char *keyQuery_authorizedServers = NULL;
    char * valueQuery_authorizedServers = NULL;
    keyValuePair_t *keyPairQuery_authorizedServers = 0;
    if (authorizedServers)
    {
        keyQuery_authorizedServers = strdup("authorizedServers");
        valueQuery_authorizedServers = strdup((authorizedServers));
        keyPairQuery_authorizedServers = keyValuePair_create(keyQuery_authorizedServers, valueQuery_authorizedServers);
        list_addElement(localVarQueryParameters,keyPairQuery_authorizedServers);
    }

    // query parameters
    char *keyQuery_defaultTimezone = NULL;
    char * valueQuery_defaultTimezone = NULL;
    keyValuePair_t *keyPairQuery_defaultTimezone = 0;
    if (defaultTimezone)
    {
        keyQuery_defaultTimezone = strdup("defaultTimezone");
        valueQuery_defaultTimezone = strdup((defaultTimezone));
        keyPairQuery_defaultTimezone = keyValuePair_create(keyQuery_defaultTimezone, valueQuery_defaultTimezone);
        list_addElement(localVarQueryParameters,keyPairQuery_defaultTimezone);
    }

    // query parameters
    char *keyQuery_smtpPass = NULL;
    char * valueQuery_smtpPass = NULL;
    keyValuePair_t *keyPairQuery_smtpPass = 0;
    if (smtpPass)
    {
        keyQuery_smtpPass = strdup("smtpPass");
        valueQuery_smtpPass = strdup((smtpPass));
        keyPairQuery_smtpPass = keyValuePair_create(keyQuery_smtpPass, valueQuery_smtpPass);
        list_addElement(localVarQueryParameters,keyPairQuery_smtpPass);
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
    char *keyQuery_placementMetaData = NULL;
    char * valueQuery_placementMetaData = NULL;
    keyValuePair_t *keyPairQuery_placementMetaData = 0;
    if (placementMetaData)
    {
        keyQuery_placementMetaData = strdup("placementMetaData");
        valueQuery_placementMetaData = strdup((placementMetaData));
        keyPairQuery_placementMetaData = keyValuePair_create(keyQuery_placementMetaData, valueQuery_placementMetaData);
        list_addElement(localVarQueryParameters,keyPairQuery_placementMetaData);
    }

    // query parameters
    char *keyQuery_ipsFloor = NULL;
    char * valueQuery_ipsFloor = NULL;
    keyValuePair_t *keyPairQuery_ipsFloor = 0;
    if (ipsFloor)
    {
        keyQuery_ipsFloor = strdup("ipsFloor");
        valueQuery_ipsFloor = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_ipsFloor, MAX_NUMBER_LENGTH, "%d", *ipsFloor);
        keyPairQuery_ipsFloor = keyValuePair_create(keyQuery_ipsFloor, valueQuery_ipsFloor);
        list_addElement(localVarQueryParameters,keyPairQuery_ipsFloor);
    }

    // query parameters
    char *keyQuery_enableAPNSBadge = NULL;
    char * valueQuery_enableAPNSBadge = NULL;
    keyValuePair_t *keyPairQuery_enableAPNSBadge = 0;
    if (enableAPNSBadge)
    {
        keyQuery_enableAPNSBadge = strdup("enableAPNSBadge");
        valueQuery_enableAPNSBadge = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_enableAPNSBadge, MAX_NUMBER_LENGTH, "%d", *enableAPNSBadge);
        keyPairQuery_enableAPNSBadge = keyValuePair_create(keyQuery_enableAPNSBadge, valueQuery_enableAPNSBadge);
        list_addElement(localVarQueryParameters,keyPairQuery_enableAPNSBadge);
    }

    // query parameters
    char *keyQuery_includeInReport = NULL;
    char * valueQuery_includeInReport = NULL;
    keyValuePair_t *keyPairQuery_includeInReport = 0;
    if (includeInReport)
    {
        keyQuery_includeInReport = strdup("includeInReport");
        valueQuery_includeInReport = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeInReport, MAX_NUMBER_LENGTH, "%d", *includeInReport);
        keyPairQuery_includeInReport = keyValuePair_create(keyQuery_includeInReport, valueQuery_includeInReport);
        list_addElement(localVarQueryParameters,keyPairQuery_includeInReport);
    }

    // query parameters
    char *keyQuery_defaultAppFilterId = NULL;
    char * valueQuery_defaultAppFilterId ;
    keyValuePair_t *keyPairQuery_defaultAppFilterId = 0;
    {
        keyQuery_defaultAppFilterId = strdup("defaultAppFilterId");
        valueQuery_defaultAppFilterId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_defaultAppFilterId, MAX_NUMBER_LENGTH_LONG, "%d", defaultAppFilterId);
        keyPairQuery_defaultAppFilterId = keyValuePair_create(keyQuery_defaultAppFilterId, valueQuery_defaultAppFilterId);
        list_addElement(localVarQueryParameters,keyPairQuery_defaultAppFilterId);
    }

    // query parameters
    char *keyQuery_enableWelcomeEmail = NULL;
    char * valueQuery_enableWelcomeEmail = NULL;
    keyValuePair_t *keyPairQuery_enableWelcomeEmail = 0;
    if (enableWelcomeEmail)
    {
        keyQuery_enableWelcomeEmail = strdup("enableWelcomeEmail");
        valueQuery_enableWelcomeEmail = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_enableWelcomeEmail, MAX_NUMBER_LENGTH, "%d", *enableWelcomeEmail);
        keyPairQuery_enableWelcomeEmail = keyValuePair_create(keyQuery_enableWelcomeEmail, valueQuery_enableWelcomeEmail);
        list_addElement(localVarQueryParameters,keyPairQuery_enableWelcomeEmail);
    }

    // query parameters
    char *keyQuery_appleAppId = NULL;
    char * valueQuery_appleAppId = NULL;
    keyValuePair_t *keyPairQuery_appleAppId = 0;
    if (appleAppId)
    {
        keyQuery_appleAppId = strdup("appleAppId");
        valueQuery_appleAppId = strdup((appleAppId));
        keyPairQuery_appleAppId = keyValuePair_create(keyQuery_appleAppId, valueQuery_appleAppId);
        list_addElement(localVarQueryParameters,keyPairQuery_appleAppId);
    }

    // query parameters
    char *keyQuery_appleTeamId = NULL;
    char * valueQuery_appleTeamId = NULL;
    keyValuePair_t *keyPairQuery_appleTeamId = 0;
    if (appleTeamId)
    {
        keyQuery_appleTeamId = strdup("appleTeamId");
        valueQuery_appleTeamId = strdup((appleTeamId));
        keyPairQuery_appleTeamId = keyValuePair_create(keyQuery_appleTeamId, valueQuery_appleTeamId);
        list_addElement(localVarQueryParameters,keyPairQuery_appleTeamId);
    }

    // query parameters
    char *keyQuery_appleAuthKeyId = NULL;
    char * valueQuery_appleAuthKeyId = NULL;
    keyValuePair_t *keyPairQuery_appleAuthKeyId = 0;
    if (appleAuthKeyId)
    {
        keyQuery_appleAuthKeyId = strdup("appleAuthKeyId");
        valueQuery_appleAuthKeyId = strdup((appleAuthKeyId));
        keyPairQuery_appleAuthKeyId = keyValuePair_create(keyQuery_appleAuthKeyId, valueQuery_appleAuthKeyId);
        list_addElement(localVarQueryParameters,keyPairQuery_appleAuthKeyId);
    }

    // query parameters
    char *keyQuery_appleAuthKey = NULL;
    binary_t* valueQuery_appleAuthKey ;
    keyValuePair_t *keyPairQuery_appleAuthKey = 0;
    if (appleAuthKey)
    {
        keyQuery_appleAuthKey = strdup("appleAuthKey");
        valueQuery_appleAuthKey = (appleAuthKey);
        keyPairQuery_appleAuthKey = keyValuePair_create(keyQuery_appleAuthKey, &valueQuery_appleAuthKey);
        list_addElement(localVarQueryParameters,keyPairQuery_appleAuthKey);
    }

    // query parameters
    char *keyQuery_appleIssuerId = NULL;
    char * valueQuery_appleIssuerId = NULL;
    keyValuePair_t *keyPairQuery_appleIssuerId = 0;
    if (appleIssuerId)
    {
        keyQuery_appleIssuerId = strdup("appleIssuerId");
        valueQuery_appleIssuerId = strdup((appleIssuerId));
        keyPairQuery_appleIssuerId = keyValuePair_create(keyQuery_appleIssuerId, valueQuery_appleIssuerId);
        list_addElement(localVarQueryParameters,keyPairQuery_appleIssuerId);
    }

    // query parameters
    char *keyQuery_appStoreKeyId = NULL;
    char * valueQuery_appStoreKeyId = NULL;
    keyValuePair_t *keyPairQuery_appStoreKeyId = 0;
    if (appStoreKeyId)
    {
        keyQuery_appStoreKeyId = strdup("appStoreKeyId");
        valueQuery_appStoreKeyId = strdup((appStoreKeyId));
        keyPairQuery_appStoreKeyId = keyValuePair_create(keyQuery_appStoreKeyId, valueQuery_appStoreKeyId);
        list_addElement(localVarQueryParameters,keyPairQuery_appStoreKeyId);
    }

    // query parameters
    char *keyQuery_appStoreKey = NULL;
    binary_t* valueQuery_appStoreKey ;
    keyValuePair_t *keyPairQuery_appStoreKey = 0;
    if (appStoreKey)
    {
        keyQuery_appStoreKey = strdup("appStoreKey");
        valueQuery_appStoreKey = (appStoreKey);
        keyPairQuery_appStoreKey = keyValuePair_create(keyQuery_appStoreKey, &valueQuery_appStoreKey);
        list_addElement(localVarQueryParameters,keyPairQuery_appStoreKey);
    }

    // query parameters
    char *keyQuery_googlePrivateKeyFile = NULL;
    binary_t* valueQuery_googlePrivateKeyFile ;
    keyValuePair_t *keyPairQuery_googlePrivateKeyFile = 0;
    if (googlePrivateKeyFile)
    {
        keyQuery_googlePrivateKeyFile = strdup("googlePrivateKeyFile");
        valueQuery_googlePrivateKeyFile = (googlePrivateKeyFile);
        keyPairQuery_googlePrivateKeyFile = keyValuePair_create(keyQuery_googlePrivateKeyFile, &valueQuery_googlePrivateKeyFile);
        list_addElement(localVarQueryParameters,keyPairQuery_googlePrivateKeyFile);
    }

    // query parameters
    char *keyQuery_authorizeNetApiKey = NULL;
    char * valueQuery_authorizeNetApiKey = NULL;
    keyValuePair_t *keyPairQuery_authorizeNetApiKey = 0;
    if (authorizeNetApiKey)
    {
        keyQuery_authorizeNetApiKey = strdup("authorizeNetApiKey");
        valueQuery_authorizeNetApiKey = strdup((authorizeNetApiKey));
        keyPairQuery_authorizeNetApiKey = keyValuePair_create(keyQuery_authorizeNetApiKey, valueQuery_authorizeNetApiKey);
        list_addElement(localVarQueryParameters,keyPairQuery_authorizeNetApiKey);
    }

    // query parameters
    char *keyQuery_authorizeNetTransactionKey = NULL;
    char * valueQuery_authorizeNetTransactionKey = NULL;
    keyValuePair_t *keyPairQuery_authorizeNetTransactionKey = 0;
    if (authorizeNetTransactionKey)
    {
        keyQuery_authorizeNetTransactionKey = strdup("authorizeNetTransactionKey");
        valueQuery_authorizeNetTransactionKey = strdup((authorizeNetTransactionKey));
        keyPairQuery_authorizeNetTransactionKey = keyValuePair_create(keyQuery_authorizeNetTransactionKey, valueQuery_authorizeNetTransactionKey);
        list_addElement(localVarQueryParameters,keyPairQuery_authorizeNetTransactionKey);
    }

    // query parameters
    char *keyQuery_emailSender = NULL;
    char * valueQuery_emailSender = NULL;
    keyValuePair_t *keyPairQuery_emailSender = 0;
    if (emailSender)
    {
        keyQuery_emailSender = strdup("emailSender");
        valueQuery_emailSender = strdup((emailSender));
        keyPairQuery_emailSender = keyValuePair_create(keyQuery_emailSender, valueQuery_emailSender);
        list_addElement(localVarQueryParameters,keyPairQuery_emailSender);
    }

    // query parameters
    char *keyQuery_smtpUser = NULL;
    char * valueQuery_smtpUser = NULL;
    keyValuePair_t *keyPairQuery_smtpUser = 0;
    if (smtpUser)
    {
        keyQuery_smtpUser = strdup("smtpUser");
        valueQuery_smtpUser = strdup((smtpUser));
        keyPairQuery_smtpUser = keyValuePair_create(keyQuery_smtpUser, valueQuery_smtpUser);
        list_addElement(localVarQueryParameters,keyPairQuery_smtpUser);
    }

    // query parameters
    char *keyQuery_smtpHost = NULL;
    char * valueQuery_smtpHost = NULL;
    keyValuePair_t *keyPairQuery_smtpHost = 0;
    if (smtpHost)
    {
        keyQuery_smtpHost = strdup("smtpHost");
        valueQuery_smtpHost = strdup((smtpHost));
        keyPairQuery_smtpHost = keyValuePair_create(keyQuery_smtpHost, valueQuery_smtpHost);
        list_addElement(localVarQueryParameters,keyPairQuery_smtpHost);
    }

    // query parameters
    char *keyQuery_vatomBusinessId = NULL;
    char * valueQuery_vatomBusinessId = NULL;
    keyValuePair_t *keyPairQuery_vatomBusinessId = 0;
    if (vatomBusinessId)
    {
        keyQuery_vatomBusinessId = strdup("vatomBusinessId");
        valueQuery_vatomBusinessId = strdup((vatomBusinessId));
        keyPairQuery_vatomBusinessId = keyValuePair_create(keyQuery_vatomBusinessId, valueQuery_vatomBusinessId);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomBusinessId);
    }

    // query parameters
    char *keyQuery_vatomRestClientId = NULL;
    char * valueQuery_vatomRestClientId = NULL;
    keyValuePair_t *keyPairQuery_vatomRestClientId = 0;
    if (vatomRestClientId)
    {
        keyQuery_vatomRestClientId = strdup("vatomRestClientId");
        valueQuery_vatomRestClientId = strdup((vatomRestClientId));
        keyPairQuery_vatomRestClientId = keyValuePair_create(keyQuery_vatomRestClientId, valueQuery_vatomRestClientId);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomRestClientId);
    }

    // query parameters
    char *keyQuery_vatomRestSecretKey = NULL;
    char * valueQuery_vatomRestSecretKey = NULL;
    keyValuePair_t *keyPairQuery_vatomRestSecretKey = 0;
    if (vatomRestSecretKey)
    {
        keyQuery_vatomRestSecretKey = strdup("vatomRestSecretKey");
        valueQuery_vatomRestSecretKey = strdup((vatomRestSecretKey));
        keyPairQuery_vatomRestSecretKey = keyValuePair_create(keyQuery_vatomRestSecretKey, valueQuery_vatomRestSecretKey);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomRestSecretKey);
    }

    // query parameters
    char *keyQuery_twilioAccountSID = NULL;
    char * valueQuery_twilioAccountSID = NULL;
    keyValuePair_t *keyPairQuery_twilioAccountSID = 0;
    if (twilioAccountSID)
    {
        keyQuery_twilioAccountSID = strdup("twilioAccountSID");
        valueQuery_twilioAccountSID = strdup((twilioAccountSID));
        keyPairQuery_twilioAccountSID = keyValuePair_create(keyQuery_twilioAccountSID, valueQuery_twilioAccountSID);
        list_addElement(localVarQueryParameters,keyPairQuery_twilioAccountSID);
    }

    // query parameters
    char *keyQuery_twilioAuthToken = NULL;
    char * valueQuery_twilioAuthToken = NULL;
    keyValuePair_t *keyPairQuery_twilioAuthToken = 0;
    if (twilioAuthToken)
    {
        keyQuery_twilioAuthToken = strdup("twilioAuthToken");
        valueQuery_twilioAuthToken = strdup((twilioAuthToken));
        keyPairQuery_twilioAuthToken = keyValuePair_create(keyQuery_twilioAuthToken, valueQuery_twilioAuthToken);
        list_addElement(localVarQueryParameters,keyPairQuery_twilioAuthToken);
    }

    // query parameters
    char *keyQuery_twilioSenderPhoneNumber = NULL;
    char * valueQuery_twilioSenderPhoneNumber = NULL;
    keyValuePair_t *keyPairQuery_twilioSenderPhoneNumber = 0;
    if (twilioSenderPhoneNumber)
    {
        keyQuery_twilioSenderPhoneNumber = strdup("twilioSenderPhoneNumber");
        valueQuery_twilioSenderPhoneNumber = strdup((twilioSenderPhoneNumber));
        keyPairQuery_twilioSenderPhoneNumber = keyValuePair_create(keyQuery_twilioSenderPhoneNumber, valueQuery_twilioSenderPhoneNumber);
        list_addElement(localVarQueryParameters,keyPairQuery_twilioSenderPhoneNumber);
    }

    // query parameters
    char *keyQuery_openAISecretKey = NULL;
    char * valueQuery_openAISecretKey = NULL;
    keyValuePair_t *keyPairQuery_openAISecretKey = 0;
    if (openAISecretKey)
    {
        keyQuery_openAISecretKey = strdup("openAISecretKey");
        valueQuery_openAISecretKey = strdup((openAISecretKey));
        keyPairQuery_openAISecretKey = keyValuePair_create(keyQuery_openAISecretKey, valueQuery_openAISecretKey);
        list_addElement(localVarQueryParameters,keyPairQuery_openAISecretKey);
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
    application_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ApplicationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = application_response_parseFromJSON(ApplicationAPIlocalVarJSON);
        cJSON_Delete(ApplicationAPIlocalVarJSON);
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
    if(keyQuery_appName){
        free(keyQuery_appName);
        keyQuery_appName = NULL;
    }
    if(valueQuery_appName){
        free(valueQuery_appName);
        valueQuery_appName = NULL;
    }
    if(keyPairQuery_appName){
        keyValuePair_free(keyPairQuery_appName);
        keyPairQuery_appName = NULL;
    }
    if(keyQuery_about){
        free(keyQuery_about);
        keyQuery_about = NULL;
    }
    if(valueQuery_about){
        free(valueQuery_about);
        valueQuery_about = NULL;
    }
    if(keyPairQuery_about){
        keyValuePair_free(keyPairQuery_about);
        keyPairQuery_about = NULL;
    }
    if(keyQuery_bundleId){
        free(keyQuery_bundleId);
        keyQuery_bundleId = NULL;
    }
    if(valueQuery_bundleId){
        free(valueQuery_bundleId);
        valueQuery_bundleId = NULL;
    }
    if(keyPairQuery_bundleId){
        keyValuePair_free(keyPairQuery_bundleId);
        keyPairQuery_bundleId = NULL;
    }
    if(keyQuery_appIconAssetId){
        free(keyQuery_appIconAssetId);
        keyQuery_appIconAssetId = NULL;
    }
    if(keyPairQuery_appIconAssetId){
        keyValuePair_free(keyPairQuery_appIconAssetId);
        keyPairQuery_appIconAssetId = NULL;
    }
    if(keyQuery_appLogoAssetId){
        free(keyQuery_appLogoAssetId);
        keyQuery_appLogoAssetId = NULL;
    }
    if(keyPairQuery_appLogoAssetId){
        keyValuePair_free(keyPairQuery_appLogoAssetId);
        keyPairQuery_appLogoAssetId = NULL;
    }
    if(keyQuery_facebookAppId){
        free(keyQuery_facebookAppId);
        keyQuery_facebookAppId = NULL;
    }
    if(valueQuery_facebookAppId){
        free(valueQuery_facebookAppId);
        valueQuery_facebookAppId = NULL;
    }
    if(keyPairQuery_facebookAppId){
        keyValuePair_free(keyPairQuery_facebookAppId);
        keyPairQuery_facebookAppId = NULL;
    }
    if(keyQuery_facebookAppSecret){
        free(keyQuery_facebookAppSecret);
        keyQuery_facebookAppSecret = NULL;
    }
    if(valueQuery_facebookAppSecret){
        free(valueQuery_facebookAppSecret);
        valueQuery_facebookAppSecret = NULL;
    }
    if(keyPairQuery_facebookAppSecret){
        keyValuePair_free(keyPairQuery_facebookAppSecret);
        keyPairQuery_facebookAppSecret = NULL;
    }
    if(keyQuery_googleApiKey){
        free(keyQuery_googleApiKey);
        keyQuery_googleApiKey = NULL;
    }
    if(valueQuery_googleApiKey){
        free(valueQuery_googleApiKey);
        valueQuery_googleApiKey = NULL;
    }
    if(keyPairQuery_googleApiKey){
        keyValuePair_free(keyPairQuery_googleApiKey);
        keyPairQuery_googleApiKey = NULL;
    }
    if(keyQuery_updateEULADate){
        free(keyQuery_updateEULADate);
        keyQuery_updateEULADate = NULL;
    }
    if(valueQuery_updateEULADate){
        free(valueQuery_updateEULADate);
        valueQuery_updateEULADate = NULL;
    }
    if(keyPairQuery_updateEULADate){
        keyValuePair_free(keyPairQuery_updateEULADate);
        keyPairQuery_updateEULADate = NULL;
    }
    if(keyQuery_eulaVersion){
        free(keyQuery_eulaVersion);
        keyQuery_eulaVersion = NULL;
    }
    if(valueQuery_eulaVersion){
        free(valueQuery_eulaVersion);
        valueQuery_eulaVersion = NULL;
    }
    if(keyPairQuery_eulaVersion){
        keyValuePair_free(keyPairQuery_eulaVersion);
        keyPairQuery_eulaVersion = NULL;
    }
    if(keyQuery_landingPageUrl){
        free(keyQuery_landingPageUrl);
        keyQuery_landingPageUrl = NULL;
    }
    if(valueQuery_landingPageUrl){
        free(valueQuery_landingPageUrl);
        valueQuery_landingPageUrl = NULL;
    }
    if(keyPairQuery_landingPageUrl){
        keyValuePair_free(keyPairQuery_landingPageUrl);
        keyPairQuery_landingPageUrl = NULL;
    }
    if(keyQuery_showInActivities){
        free(keyQuery_showInActivities);
        keyQuery_showInActivities = NULL;
    }
    if(valueQuery_showInActivities){
        free(valueQuery_showInActivities);
        valueQuery_showInActivities = NULL;
    }
    if(keyPairQuery_showInActivities){
        keyValuePair_free(keyPairQuery_showInActivities);
        keyPairQuery_showInActivities = NULL;
    }
    if(keyQuery_activityDescription){
        free(keyQuery_activityDescription);
        keyQuery_activityDescription = NULL;
    }
    if(valueQuery_activityDescription){
        free(valueQuery_activityDescription);
        valueQuery_activityDescription = NULL;
    }
    if(keyPairQuery_activityDescription){
        keyValuePair_free(keyPairQuery_activityDescription);
        keyPairQuery_activityDescription = NULL;
    }
    if(keyQuery_inviteWelcomeText){
        free(keyQuery_inviteWelcomeText);
        keyQuery_inviteWelcomeText = NULL;
    }
    if(valueQuery_inviteWelcomeText){
        free(valueQuery_inviteWelcomeText);
        valueQuery_inviteWelcomeText = NULL;
    }
    if(keyPairQuery_inviteWelcomeText){
        keyValuePair_free(keyPairQuery_inviteWelcomeText);
        keyPairQuery_inviteWelcomeText = NULL;
    }
    if(keyQuery_invitePageUrl){
        free(keyQuery_invitePageUrl);
        keyQuery_invitePageUrl = NULL;
    }
    if(valueQuery_invitePageUrl){
        free(valueQuery_invitePageUrl);
        valueQuery_invitePageUrl = NULL;
    }
    if(keyPairQuery_invitePageUrl){
        keyValuePair_free(keyPairQuery_invitePageUrl);
        keyPairQuery_invitePageUrl = NULL;
    }
    if(keyQuery_urlScheme){
        free(keyQuery_urlScheme);
        keyQuery_urlScheme = NULL;
    }
    if(valueQuery_urlScheme){
        free(valueQuery_urlScheme);
        valueQuery_urlScheme = NULL;
    }
    if(keyPairQuery_urlScheme){
        keyValuePair_free(keyPairQuery_urlScheme);
        keyPairQuery_urlScheme = NULL;
    }
    if(keyQuery_platforms){
        free(keyQuery_platforms);
        keyQuery_platforms = NULL;
    }
    if(valueQuery_platforms){
        free(valueQuery_platforms);
        valueQuery_platforms = NULL;
    }
    if(keyPairQuery_platforms){
        keyValuePair_free(keyPairQuery_platforms);
        keyPairQuery_platforms = NULL;
    }
    if(keyQuery_downloadUrls){
        free(keyQuery_downloadUrls);
        keyQuery_downloadUrls = NULL;
    }
    if(valueQuery_downloadUrls){
        free(valueQuery_downloadUrls);
        valueQuery_downloadUrls = NULL;
    }
    if(keyPairQuery_downloadUrls){
        keyValuePair_free(keyPairQuery_downloadUrls);
        keyPairQuery_downloadUrls = NULL;
    }
    if(keyQuery_categoryIds){
        free(keyQuery_categoryIds);
        keyQuery_categoryIds = NULL;
    }
    if(valueQuery_categoryIds){
        free(valueQuery_categoryIds);
        valueQuery_categoryIds = NULL;
    }
    if(keyPairQuery_categoryIds){
        keyValuePair_free(keyPairQuery_categoryIds);
        keyPairQuery_categoryIds = NULL;
    }
    if(keyQuery_scoringType){
        free(keyQuery_scoringType);
        keyQuery_scoringType = NULL;
    }
    if(keyPairQuery_scoringType){
        keyValuePair_free(keyPairQuery_scoringType);
        keyPairQuery_scoringType = NULL;
    }
    if(keyQuery_hintCost){
        free(keyQuery_hintCost);
        keyQuery_hintCost = NULL;
    }
    if(valueQuery_hintCost){
        free(valueQuery_hintCost);
        valueQuery_hintCost = NULL;
    }
    if(keyPairQuery_hintCost){
        keyValuePair_free(keyPairQuery_hintCost);
        keyPairQuery_hintCost = NULL;
    }
    if(keyQuery_maxScore){
        free(keyQuery_maxScore);
        keyQuery_maxScore = NULL;
    }
    if(valueQuery_maxScore){
        free(valueQuery_maxScore);
        valueQuery_maxScore = NULL;
    }
    if(keyPairQuery_maxScore){
        keyValuePair_free(keyPairQuery_maxScore);
        keyPairQuery_maxScore = NULL;
    }
    if(keyQuery_ticketsPerPoint){
        free(keyQuery_ticketsPerPoint);
        keyQuery_ticketsPerPoint = NULL;
    }
    if(keyPairQuery_ticketsPerPoint){
        keyValuePair_free(keyPairQuery_ticketsPerPoint);
        keyPairQuery_ticketsPerPoint = NULL;
    }
    if(keyQuery_hasGameData){
        free(keyQuery_hasGameData);
        keyQuery_hasGameData = NULL;
    }
    if(valueQuery_hasGameData){
        free(valueQuery_hasGameData);
        valueQuery_hasGameData = NULL;
    }
    if(keyPairQuery_hasGameData){
        keyValuePair_free(keyPairQuery_hasGameData);
        keyPairQuery_hasGameData = NULL;
    }
    if(keyQuery_publicNotifications){
        free(keyQuery_publicNotifications);
        keyQuery_publicNotifications = NULL;
    }
    if(valueQuery_publicNotifications){
        free(valueQuery_publicNotifications);
        valueQuery_publicNotifications = NULL;
    }
    if(keyPairQuery_publicNotifications){
        keyValuePair_free(keyPairQuery_publicNotifications);
        keyPairQuery_publicNotifications = NULL;
    }
    if(keyQuery_useMatchingAlgorithm){
        free(keyQuery_useMatchingAlgorithm);
        keyQuery_useMatchingAlgorithm = NULL;
    }
    if(valueQuery_useMatchingAlgorithm){
        free(valueQuery_useMatchingAlgorithm);
        valueQuery_useMatchingAlgorithm = NULL;
    }
    if(keyPairQuery_useMatchingAlgorithm){
        keyValuePair_free(keyPairQuery_useMatchingAlgorithm);
        keyPairQuery_useMatchingAlgorithm = NULL;
    }
    if(keyQuery_globalTickets){
        free(keyQuery_globalTickets);
        keyQuery_globalTickets = NULL;
    }
    if(valueQuery_globalTickets){
        free(valueQuery_globalTickets);
        valueQuery_globalTickets = NULL;
    }
    if(keyPairQuery_globalTickets){
        keyValuePair_free(keyPairQuery_globalTickets);
        keyPairQuery_globalTickets = NULL;
    }
    if(keyQuery_buildVersion){
        free(keyQuery_buildVersion);
        keyQuery_buildVersion = NULL;
    }
    if(keyPairQuery_buildVersion){
        keyValuePair_free(keyPairQuery_buildVersion);
        keyPairQuery_buildVersion = NULL;
    }
    if(keyQuery_apiVersion){
        free(keyQuery_apiVersion);
        keyQuery_apiVersion = NULL;
    }
    if(keyPairQuery_apiVersion){
        keyValuePair_free(keyPairQuery_apiVersion);
        keyPairQuery_apiVersion = NULL;
    }
    if(keyQuery_placementName){
        free(keyQuery_placementName);
        keyQuery_placementName = NULL;
    }
    if(valueQuery_placementName){
        free(valueQuery_placementName);
        valueQuery_placementName = NULL;
    }
    if(keyPairQuery_placementName){
        keyValuePair_free(keyPairQuery_placementName);
        keyPairQuery_placementName = NULL;
    }
    if(keyQuery_placementDescription){
        free(keyQuery_placementDescription);
        keyQuery_placementDescription = NULL;
    }
    if(valueQuery_placementDescription){
        free(valueQuery_placementDescription);
        valueQuery_placementDescription = NULL;
    }
    if(keyPairQuery_placementDescription){
        keyValuePair_free(keyPairQuery_placementDescription);
        keyPairQuery_placementDescription = NULL;
    }
    if(keyQuery_placementSize){
        free(keyQuery_placementSize);
        keyQuery_placementSize = NULL;
    }
    if(keyPairQuery_placementSize){
        keyValuePair_free(keyPairQuery_placementSize);
        keyPairQuery_placementSize = NULL;
    }
    if(keyQuery_placementHeight){
        free(keyQuery_placementHeight);
        keyQuery_placementHeight = NULL;
    }
    if(valueQuery_placementHeight){
        free(valueQuery_placementHeight);
        valueQuery_placementHeight = NULL;
    }
    if(keyPairQuery_placementHeight){
        keyValuePair_free(keyPairQuery_placementHeight);
        keyPairQuery_placementHeight = NULL;
    }
    if(keyQuery_placementWidth){
        free(keyQuery_placementWidth);
        keyQuery_placementWidth = NULL;
    }
    if(valueQuery_placementWidth){
        free(valueQuery_placementWidth);
        valueQuery_placementWidth = NULL;
    }
    if(keyPairQuery_placementWidth){
        keyValuePair_free(keyPairQuery_placementWidth);
        keyPairQuery_placementWidth = NULL;
    }
    if(keyQuery_placementRefreshInterval){
        free(keyQuery_placementRefreshInterval);
        keyQuery_placementRefreshInterval = NULL;
    }
    if(valueQuery_placementRefreshInterval){
        free(valueQuery_placementRefreshInterval);
        valueQuery_placementRefreshInterval = NULL;
    }
    if(keyPairQuery_placementRefreshInterval){
        keyValuePair_free(keyPairQuery_placementRefreshInterval);
        keyPairQuery_placementRefreshInterval = NULL;
    }
    if(keyQuery_createObjectStore){
        free(keyQuery_createObjectStore);
        keyQuery_createObjectStore = NULL;
    }
    if(valueQuery_createObjectStore){
        free(valueQuery_createObjectStore);
        valueQuery_createObjectStore = NULL;
    }
    if(keyPairQuery_createObjectStore){
        keyValuePair_free(keyPairQuery_createObjectStore);
        keyPairQuery_createObjectStore = NULL;
    }
    if(keyQuery_publicContentApproval){
        free(keyQuery_publicContentApproval);
        keyQuery_publicContentApproval = NULL;
    }
    if(valueQuery_publicContentApproval){
        free(valueQuery_publicContentApproval);
        valueQuery_publicContentApproval = NULL;
    }
    if(keyPairQuery_publicContentApproval){
        keyValuePair_free(keyPairQuery_publicContentApproval);
        keyPairQuery_publicContentApproval = NULL;
    }
    if(keyQuery_productionMode){
        free(keyQuery_productionMode);
        keyQuery_productionMode = NULL;
    }
    if(valueQuery_productionMode){
        free(valueQuery_productionMode);
        valueQuery_productionMode = NULL;
    }
    if(keyPairQuery_productionMode){
        keyValuePair_free(keyPairQuery_productionMode);
        keyPairQuery_productionMode = NULL;
    }
    if(keyQuery_minimumSessionLength){
        free(keyQuery_minimumSessionLength);
        keyQuery_minimumSessionLength = NULL;
    }
    if(valueQuery_minimumSessionLength){
        free(valueQuery_minimumSessionLength);
        valueQuery_minimumSessionLength = NULL;
    }
    if(keyPairQuery_minimumSessionLength){
        keyValuePair_free(keyPairQuery_minimumSessionLength);
        keyPairQuery_minimumSessionLength = NULL;
    }
    if(keyQuery_sessionGapLength){
        free(keyQuery_sessionGapLength);
        keyQuery_sessionGapLength = NULL;
    }
    if(valueQuery_sessionGapLength){
        free(valueQuery_sessionGapLength);
        valueQuery_sessionGapLength = NULL;
    }
    if(keyPairQuery_sessionGapLength){
        keyValuePair_free(keyPairQuery_sessionGapLength);
        keyPairQuery_sessionGapLength = NULL;
    }
    if(keyQuery_localAdsEnabled){
        free(keyQuery_localAdsEnabled);
        keyQuery_localAdsEnabled = NULL;
    }
    if(valueQuery_localAdsEnabled){
        free(valueQuery_localAdsEnabled);
        valueQuery_localAdsEnabled = NULL;
    }
    if(keyPairQuery_localAdsEnabled){
        keyValuePair_free(keyPairQuery_localAdsEnabled);
        keyPairQuery_localAdsEnabled = NULL;
    }
    if(keyQuery_sqootApiKey){
        free(keyQuery_sqootApiKey);
        keyQuery_sqootApiKey = NULL;
    }
    if(valueQuery_sqootApiKey){
        free(valueQuery_sqootApiKey);
        valueQuery_sqootApiKey = NULL;
    }
    if(keyPairQuery_sqootApiKey){
        keyValuePair_free(keyPairQuery_sqootApiKey);
        keyPairQuery_sqootApiKey = NULL;
    }
    if(keyQuery_trilatProcessingType){
        free(keyQuery_trilatProcessingType);
        keyQuery_trilatProcessingType = NULL;
    }
    if(keyPairQuery_trilatProcessingType){
        keyValuePair_free(keyPairQuery_trilatProcessingType);
        keyPairQuery_trilatProcessingType = NULL;
    }
    if(keyQuery_maxSampleSize){
        free(keyQuery_maxSampleSize);
        keyQuery_maxSampleSize = NULL;
    }
    if(valueQuery_maxSampleSize){
        free(valueQuery_maxSampleSize);
        valueQuery_maxSampleSize = NULL;
    }
    if(keyPairQuery_maxSampleSize){
        keyValuePair_free(keyPairQuery_maxSampleSize);
        keyPairQuery_maxSampleSize = NULL;
    }
    if(keyQuery_minRSSI){
        free(keyQuery_minRSSI);
        keyQuery_minRSSI = NULL;
    }
    if(keyPairQuery_minRSSI){
        keyValuePair_free(keyPairQuery_minRSSI);
        keyPairQuery_minRSSI = NULL;
    }
    if(keyQuery_modules){
        free(keyQuery_modules);
        keyQuery_modules = NULL;
    }
    if(valueQuery_modules){
        free(valueQuery_modules);
        valueQuery_modules = NULL;
    }
    if(keyPairQuery_modules){
        keyValuePair_free(keyPairQuery_modules);
        keyPairQuery_modules = NULL;
    }
    if(keyQuery_authorizedCount){
        free(keyQuery_authorizedCount);
        keyQuery_authorizedCount = NULL;
    }
    if(valueQuery_authorizedCount){
        free(valueQuery_authorizedCount);
        valueQuery_authorizedCount = NULL;
    }
    if(keyPairQuery_authorizedCount){
        keyValuePair_free(keyPairQuery_authorizedCount);
        keyPairQuery_authorizedCount = NULL;
    }
    if(keyQuery_authorizedServers){
        free(keyQuery_authorizedServers);
        keyQuery_authorizedServers = NULL;
    }
    if(valueQuery_authorizedServers){
        free(valueQuery_authorizedServers);
        valueQuery_authorizedServers = NULL;
    }
    if(keyPairQuery_authorizedServers){
        keyValuePair_free(keyPairQuery_authorizedServers);
        keyPairQuery_authorizedServers = NULL;
    }
    if(keyQuery_defaultTimezone){
        free(keyQuery_defaultTimezone);
        keyQuery_defaultTimezone = NULL;
    }
    if(valueQuery_defaultTimezone){
        free(valueQuery_defaultTimezone);
        valueQuery_defaultTimezone = NULL;
    }
    if(keyPairQuery_defaultTimezone){
        keyValuePair_free(keyPairQuery_defaultTimezone);
        keyPairQuery_defaultTimezone = NULL;
    }
    if(keyQuery_smtpPass){
        free(keyQuery_smtpPass);
        keyQuery_smtpPass = NULL;
    }
    if(valueQuery_smtpPass){
        free(valueQuery_smtpPass);
        valueQuery_smtpPass = NULL;
    }
    if(keyPairQuery_smtpPass){
        keyValuePair_free(keyPairQuery_smtpPass);
        keyPairQuery_smtpPass = NULL;
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
    if(keyQuery_placementMetaData){
        free(keyQuery_placementMetaData);
        keyQuery_placementMetaData = NULL;
    }
    if(valueQuery_placementMetaData){
        free(valueQuery_placementMetaData);
        valueQuery_placementMetaData = NULL;
    }
    if(keyPairQuery_placementMetaData){
        keyValuePair_free(keyPairQuery_placementMetaData);
        keyPairQuery_placementMetaData = NULL;
    }
    if(keyQuery_ipsFloor){
        free(keyQuery_ipsFloor);
        keyQuery_ipsFloor = NULL;
    }
    if(valueQuery_ipsFloor){
        free(valueQuery_ipsFloor);
        valueQuery_ipsFloor = NULL;
    }
    if(keyPairQuery_ipsFloor){
        keyValuePair_free(keyPairQuery_ipsFloor);
        keyPairQuery_ipsFloor = NULL;
    }
    if(keyQuery_enableAPNSBadge){
        free(keyQuery_enableAPNSBadge);
        keyQuery_enableAPNSBadge = NULL;
    }
    if(valueQuery_enableAPNSBadge){
        free(valueQuery_enableAPNSBadge);
        valueQuery_enableAPNSBadge = NULL;
    }
    if(keyPairQuery_enableAPNSBadge){
        keyValuePair_free(keyPairQuery_enableAPNSBadge);
        keyPairQuery_enableAPNSBadge = NULL;
    }
    if(keyQuery_includeInReport){
        free(keyQuery_includeInReport);
        keyQuery_includeInReport = NULL;
    }
    if(valueQuery_includeInReport){
        free(valueQuery_includeInReport);
        valueQuery_includeInReport = NULL;
    }
    if(keyPairQuery_includeInReport){
        keyValuePair_free(keyPairQuery_includeInReport);
        keyPairQuery_includeInReport = NULL;
    }
    if(keyQuery_defaultAppFilterId){
        free(keyQuery_defaultAppFilterId);
        keyQuery_defaultAppFilterId = NULL;
    }
    if(keyPairQuery_defaultAppFilterId){
        keyValuePair_free(keyPairQuery_defaultAppFilterId);
        keyPairQuery_defaultAppFilterId = NULL;
    }
    if(keyQuery_enableWelcomeEmail){
        free(keyQuery_enableWelcomeEmail);
        keyQuery_enableWelcomeEmail = NULL;
    }
    if(valueQuery_enableWelcomeEmail){
        free(valueQuery_enableWelcomeEmail);
        valueQuery_enableWelcomeEmail = NULL;
    }
    if(keyPairQuery_enableWelcomeEmail){
        keyValuePair_free(keyPairQuery_enableWelcomeEmail);
        keyPairQuery_enableWelcomeEmail = NULL;
    }
    if(keyQuery_appleAppId){
        free(keyQuery_appleAppId);
        keyQuery_appleAppId = NULL;
    }
    if(valueQuery_appleAppId){
        free(valueQuery_appleAppId);
        valueQuery_appleAppId = NULL;
    }
    if(keyPairQuery_appleAppId){
        keyValuePair_free(keyPairQuery_appleAppId);
        keyPairQuery_appleAppId = NULL;
    }
    if(keyQuery_appleTeamId){
        free(keyQuery_appleTeamId);
        keyQuery_appleTeamId = NULL;
    }
    if(valueQuery_appleTeamId){
        free(valueQuery_appleTeamId);
        valueQuery_appleTeamId = NULL;
    }
    if(keyPairQuery_appleTeamId){
        keyValuePair_free(keyPairQuery_appleTeamId);
        keyPairQuery_appleTeamId = NULL;
    }
    if(keyQuery_appleAuthKeyId){
        free(keyQuery_appleAuthKeyId);
        keyQuery_appleAuthKeyId = NULL;
    }
    if(valueQuery_appleAuthKeyId){
        free(valueQuery_appleAuthKeyId);
        valueQuery_appleAuthKeyId = NULL;
    }
    if(keyPairQuery_appleAuthKeyId){
        keyValuePair_free(keyPairQuery_appleAuthKeyId);
        keyPairQuery_appleAuthKeyId = NULL;
    }
    if(keyQuery_appleAuthKey){
        free(keyQuery_appleAuthKey);
        keyQuery_appleAuthKey = NULL;
    }
    if(keyPairQuery_appleAuthKey){
        keyValuePair_free(keyPairQuery_appleAuthKey);
        keyPairQuery_appleAuthKey = NULL;
    }
    if(keyQuery_appleIssuerId){
        free(keyQuery_appleIssuerId);
        keyQuery_appleIssuerId = NULL;
    }
    if(valueQuery_appleIssuerId){
        free(valueQuery_appleIssuerId);
        valueQuery_appleIssuerId = NULL;
    }
    if(keyPairQuery_appleIssuerId){
        keyValuePair_free(keyPairQuery_appleIssuerId);
        keyPairQuery_appleIssuerId = NULL;
    }
    if(keyQuery_appStoreKeyId){
        free(keyQuery_appStoreKeyId);
        keyQuery_appStoreKeyId = NULL;
    }
    if(valueQuery_appStoreKeyId){
        free(valueQuery_appStoreKeyId);
        valueQuery_appStoreKeyId = NULL;
    }
    if(keyPairQuery_appStoreKeyId){
        keyValuePair_free(keyPairQuery_appStoreKeyId);
        keyPairQuery_appStoreKeyId = NULL;
    }
    if(keyQuery_appStoreKey){
        free(keyQuery_appStoreKey);
        keyQuery_appStoreKey = NULL;
    }
    if(keyPairQuery_appStoreKey){
        keyValuePair_free(keyPairQuery_appStoreKey);
        keyPairQuery_appStoreKey = NULL;
    }
    if(keyQuery_googlePrivateKeyFile){
        free(keyQuery_googlePrivateKeyFile);
        keyQuery_googlePrivateKeyFile = NULL;
    }
    if(keyPairQuery_googlePrivateKeyFile){
        keyValuePair_free(keyPairQuery_googlePrivateKeyFile);
        keyPairQuery_googlePrivateKeyFile = NULL;
    }
    if(keyQuery_authorizeNetApiKey){
        free(keyQuery_authorizeNetApiKey);
        keyQuery_authorizeNetApiKey = NULL;
    }
    if(valueQuery_authorizeNetApiKey){
        free(valueQuery_authorizeNetApiKey);
        valueQuery_authorizeNetApiKey = NULL;
    }
    if(keyPairQuery_authorizeNetApiKey){
        keyValuePair_free(keyPairQuery_authorizeNetApiKey);
        keyPairQuery_authorizeNetApiKey = NULL;
    }
    if(keyQuery_authorizeNetTransactionKey){
        free(keyQuery_authorizeNetTransactionKey);
        keyQuery_authorizeNetTransactionKey = NULL;
    }
    if(valueQuery_authorizeNetTransactionKey){
        free(valueQuery_authorizeNetTransactionKey);
        valueQuery_authorizeNetTransactionKey = NULL;
    }
    if(keyPairQuery_authorizeNetTransactionKey){
        keyValuePair_free(keyPairQuery_authorizeNetTransactionKey);
        keyPairQuery_authorizeNetTransactionKey = NULL;
    }
    if(keyQuery_emailSender){
        free(keyQuery_emailSender);
        keyQuery_emailSender = NULL;
    }
    if(valueQuery_emailSender){
        free(valueQuery_emailSender);
        valueQuery_emailSender = NULL;
    }
    if(keyPairQuery_emailSender){
        keyValuePair_free(keyPairQuery_emailSender);
        keyPairQuery_emailSender = NULL;
    }
    if(keyQuery_smtpUser){
        free(keyQuery_smtpUser);
        keyQuery_smtpUser = NULL;
    }
    if(valueQuery_smtpUser){
        free(valueQuery_smtpUser);
        valueQuery_smtpUser = NULL;
    }
    if(keyPairQuery_smtpUser){
        keyValuePair_free(keyPairQuery_smtpUser);
        keyPairQuery_smtpUser = NULL;
    }
    if(keyQuery_smtpHost){
        free(keyQuery_smtpHost);
        keyQuery_smtpHost = NULL;
    }
    if(valueQuery_smtpHost){
        free(valueQuery_smtpHost);
        valueQuery_smtpHost = NULL;
    }
    if(keyPairQuery_smtpHost){
        keyValuePair_free(keyPairQuery_smtpHost);
        keyPairQuery_smtpHost = NULL;
    }
    if(keyQuery_vatomBusinessId){
        free(keyQuery_vatomBusinessId);
        keyQuery_vatomBusinessId = NULL;
    }
    if(valueQuery_vatomBusinessId){
        free(valueQuery_vatomBusinessId);
        valueQuery_vatomBusinessId = NULL;
    }
    if(keyPairQuery_vatomBusinessId){
        keyValuePair_free(keyPairQuery_vatomBusinessId);
        keyPairQuery_vatomBusinessId = NULL;
    }
    if(keyQuery_vatomRestClientId){
        free(keyQuery_vatomRestClientId);
        keyQuery_vatomRestClientId = NULL;
    }
    if(valueQuery_vatomRestClientId){
        free(valueQuery_vatomRestClientId);
        valueQuery_vatomRestClientId = NULL;
    }
    if(keyPairQuery_vatomRestClientId){
        keyValuePair_free(keyPairQuery_vatomRestClientId);
        keyPairQuery_vatomRestClientId = NULL;
    }
    if(keyQuery_vatomRestSecretKey){
        free(keyQuery_vatomRestSecretKey);
        keyQuery_vatomRestSecretKey = NULL;
    }
    if(valueQuery_vatomRestSecretKey){
        free(valueQuery_vatomRestSecretKey);
        valueQuery_vatomRestSecretKey = NULL;
    }
    if(keyPairQuery_vatomRestSecretKey){
        keyValuePair_free(keyPairQuery_vatomRestSecretKey);
        keyPairQuery_vatomRestSecretKey = NULL;
    }
    if(keyQuery_twilioAccountSID){
        free(keyQuery_twilioAccountSID);
        keyQuery_twilioAccountSID = NULL;
    }
    if(valueQuery_twilioAccountSID){
        free(valueQuery_twilioAccountSID);
        valueQuery_twilioAccountSID = NULL;
    }
    if(keyPairQuery_twilioAccountSID){
        keyValuePair_free(keyPairQuery_twilioAccountSID);
        keyPairQuery_twilioAccountSID = NULL;
    }
    if(keyQuery_twilioAuthToken){
        free(keyQuery_twilioAuthToken);
        keyQuery_twilioAuthToken = NULL;
    }
    if(valueQuery_twilioAuthToken){
        free(valueQuery_twilioAuthToken);
        valueQuery_twilioAuthToken = NULL;
    }
    if(keyPairQuery_twilioAuthToken){
        keyValuePair_free(keyPairQuery_twilioAuthToken);
        keyPairQuery_twilioAuthToken = NULL;
    }
    if(keyQuery_twilioSenderPhoneNumber){
        free(keyQuery_twilioSenderPhoneNumber);
        keyQuery_twilioSenderPhoneNumber = NULL;
    }
    if(valueQuery_twilioSenderPhoneNumber){
        free(valueQuery_twilioSenderPhoneNumber);
        valueQuery_twilioSenderPhoneNumber = NULL;
    }
    if(keyPairQuery_twilioSenderPhoneNumber){
        keyValuePair_free(keyPairQuery_twilioSenderPhoneNumber);
        keyPairQuery_twilioSenderPhoneNumber = NULL;
    }
    if(keyQuery_openAISecretKey){
        free(keyQuery_openAISecretKey);
        keyQuery_openAISecretKey = NULL;
    }
    if(valueQuery_openAISecretKey){
        free(valueQuery_openAISecretKey);
        valueQuery_openAISecretKey = NULL;
    }
    if(keyPairQuery_openAISecretKey){
        keyValuePair_free(keyPairQuery_openAISecretKey);
        keyPairQuery_openAISecretKey = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Change Appliation Status
//
// Set the application's active flag to true/false. This effectively activates or deactivates the application.
//
sirqul_response_t*
ApplicationAPI_updateApplicationActive(apiClient_t *apiClient, double version, long accountId, char *appKey, int *active)
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
    char *localVarPath = strdup("/api/{version}/application/active");



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
        cJSON *ApplicationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(ApplicationAPIlocalVarJSON);
        cJSON_Delete(ApplicationAPIlocalVarJSON);
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Update Ad Placement
//
// Updates an ad placement for an application.
//
placement_response_t*
ApplicationAPI_updateApplicationPlacement(apiClient_t *apiClient, double version, long placementId, char *deviceId, long accountId, char *name, char *description, sirqul_iot_platform_updateApplicationPlacement_size_e size, int *height, int *width, int *refreshInterval, long defaultImageId, int *active)
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
    char *localVarPath = strdup("/api/{version}/application/placement/update");



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
    char *keyQuery_placementId = NULL;
    char * valueQuery_placementId ;
    keyValuePair_t *keyPairQuery_placementId = 0;
    {
        keyQuery_placementId = strdup("placementId");
        valueQuery_placementId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_placementId, MAX_NUMBER_LENGTH_LONG, "%d", placementId);
        keyPairQuery_placementId = keyValuePair_create(keyQuery_placementId, valueQuery_placementId);
        list_addElement(localVarQueryParameters,keyPairQuery_placementId);
    }

    // query parameters
    char *keyQuery_name = NULL;
    char * valueQuery_name = NULL;
    keyValuePair_t *keyPairQuery_name = 0;
    if (name)
    {
        keyQuery_name = strdup("name");
        valueQuery_name = strdup((name));
        keyPairQuery_name = keyValuePair_create(keyQuery_name, valueQuery_name);
        list_addElement(localVarQueryParameters,keyPairQuery_name);
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
    char *keyQuery_size = NULL;
    sirqul_iot_platform_updateApplicationPlacement_size_e valueQuery_size ;
    keyValuePair_t *keyPairQuery_size = 0;
    if (size)
    {
        keyQuery_size = strdup("size");
        valueQuery_size = (size);
        keyPairQuery_size = keyValuePair_create(keyQuery_size, strdup(updateApplicationPlacement_SIZE_ToString(
        valueQuery_size)));
        list_addElement(localVarQueryParameters,keyPairQuery_size);
    }

    // query parameters
    char *keyQuery_height = NULL;
    char * valueQuery_height = NULL;
    keyValuePair_t *keyPairQuery_height = 0;
    if (height)
    {
        keyQuery_height = strdup("height");
        valueQuery_height = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_height, MAX_NUMBER_LENGTH, "%d", *height);
        keyPairQuery_height = keyValuePair_create(keyQuery_height, valueQuery_height);
        list_addElement(localVarQueryParameters,keyPairQuery_height);
    }

    // query parameters
    char *keyQuery_width = NULL;
    char * valueQuery_width = NULL;
    keyValuePair_t *keyPairQuery_width = 0;
    if (width)
    {
        keyQuery_width = strdup("width");
        valueQuery_width = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_width, MAX_NUMBER_LENGTH, "%d", *width);
        keyPairQuery_width = keyValuePair_create(keyQuery_width, valueQuery_width);
        list_addElement(localVarQueryParameters,keyPairQuery_width);
    }

    // query parameters
    char *keyQuery_refreshInterval = NULL;
    char * valueQuery_refreshInterval = NULL;
    keyValuePair_t *keyPairQuery_refreshInterval = 0;
    if (refreshInterval)
    {
        keyQuery_refreshInterval = strdup("refreshInterval");
        valueQuery_refreshInterval = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_refreshInterval, MAX_NUMBER_LENGTH, "%d", *refreshInterval);
        keyPairQuery_refreshInterval = keyValuePair_create(keyQuery_refreshInterval, valueQuery_refreshInterval);
        list_addElement(localVarQueryParameters,keyPairQuery_refreshInterval);
    }

    // query parameters
    char *keyQuery_defaultImageId = NULL;
    char * valueQuery_defaultImageId ;
    keyValuePair_t *keyPairQuery_defaultImageId = 0;
    {
        keyQuery_defaultImageId = strdup("defaultImageId");
        valueQuery_defaultImageId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_defaultImageId, MAX_NUMBER_LENGTH_LONG, "%d", defaultImageId);
        keyPairQuery_defaultImageId = keyValuePair_create(keyQuery_defaultImageId, valueQuery_defaultImageId);
        list_addElement(localVarQueryParameters,keyPairQuery_defaultImageId);
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
    placement_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ApplicationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = placement_response_parseFromJSON(ApplicationAPIlocalVarJSON);
        cJSON_Delete(ApplicationAPIlocalVarJSON);
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
    if(keyQuery_placementId){
        free(keyQuery_placementId);
        keyQuery_placementId = NULL;
    }
    if(keyPairQuery_placementId){
        keyValuePair_free(keyPairQuery_placementId);
        keyPairQuery_placementId = NULL;
    }
    if(keyQuery_name){
        free(keyQuery_name);
        keyQuery_name = NULL;
    }
    if(valueQuery_name){
        free(valueQuery_name);
        valueQuery_name = NULL;
    }
    if(keyPairQuery_name){
        keyValuePair_free(keyPairQuery_name);
        keyPairQuery_name = NULL;
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
    if(keyQuery_size){
        free(keyQuery_size);
        keyQuery_size = NULL;
    }
    if(keyPairQuery_size){
        keyValuePair_free(keyPairQuery_size);
        keyPairQuery_size = NULL;
    }
    if(keyQuery_height){
        free(keyQuery_height);
        keyQuery_height = NULL;
    }
    if(valueQuery_height){
        free(valueQuery_height);
        valueQuery_height = NULL;
    }
    if(keyPairQuery_height){
        keyValuePair_free(keyPairQuery_height);
        keyPairQuery_height = NULL;
    }
    if(keyQuery_width){
        free(keyQuery_width);
        keyQuery_width = NULL;
    }
    if(valueQuery_width){
        free(valueQuery_width);
        valueQuery_width = NULL;
    }
    if(keyPairQuery_width){
        keyValuePair_free(keyPairQuery_width);
        keyPairQuery_width = NULL;
    }
    if(keyQuery_refreshInterval){
        free(keyQuery_refreshInterval);
        keyQuery_refreshInterval = NULL;
    }
    if(valueQuery_refreshInterval){
        free(valueQuery_refreshInterval);
        valueQuery_refreshInterval = NULL;
    }
    if(keyPairQuery_refreshInterval){
        keyValuePair_free(keyPairQuery_refreshInterval);
        keyPairQuery_refreshInterval = NULL;
    }
    if(keyQuery_defaultImageId){
        free(keyQuery_defaultImageId);
        keyQuery_defaultImageId = NULL;
    }
    if(keyPairQuery_defaultImageId){
        keyValuePair_free(keyPairQuery_defaultImageId);
        keyPairQuery_defaultImageId = NULL;
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Create Application Certificate
//
// Uploads a certificate for an application that the user has access to.
//
sirqul_response_t*
ApplicationAPI_uploadApplicationCertificate(apiClient_t *apiClient, double version, char *appKey, char *deviceId, long accountId, binary_t* certificate)
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
    char *localVarPath = strdup("/api/{version}/application/certificate/create");



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
    char *keyQuery_certificate = NULL;
    binary_t* valueQuery_certificate ;
    keyValuePair_t *keyPairQuery_certificate = 0;
    if (certificate)
    {
        keyQuery_certificate = strdup("certificate");
        valueQuery_certificate = (certificate);
        keyPairQuery_certificate = keyValuePair_create(keyQuery_certificate, &valueQuery_certificate);
        list_addElement(localVarQueryParameters,keyPairQuery_certificate);
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
        cJSON *ApplicationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(ApplicationAPIlocalVarJSON);
        cJSON_Delete(ApplicationAPIlocalVarJSON);
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
    if(keyQuery_certificate){
        free(keyQuery_certificate);
        keyQuery_certificate = NULL;
    }
    if(keyPairQuery_certificate){
        keyValuePair_free(keyPairQuery_certificate);
        keyPairQuery_certificate = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

