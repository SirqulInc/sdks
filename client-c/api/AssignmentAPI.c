#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "AssignmentAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21

// Functions for enum SORTFIELD for AssignmentAPI_assignmentSearch

static char* assignmentSearch_SORTFIELD_ToString(sirqul_iot_platform_assignmentSearch_sortField_e SORTFIELD){
    char *SORTFIELDArray[] =  { "NULL", "ID", "CREATED", "UPDATED", "DELETED", "SEARCH_TAGS", "ACTIVE", "ASSIGNEE_ID", "CREATOR_ID", "LOCATION_ID", "LOCATION_NAME", "CURRENT_STATUS", "CURRENT_STATUS_TYPE", "STATUSES" };
    return SORTFIELDArray[SORTFIELD];
}

static sirqul_iot_platform_assignmentSearch_sortField_e assignmentSearch_SORTFIELD_FromString(char* SORTFIELD){
    int stringToReturn = 0;
    char *SORTFIELDArray[] =  { "NULL", "ID", "CREATED", "UPDATED", "DELETED", "SEARCH_TAGS", "ACTIVE", "ASSIGNEE_ID", "CREATOR_ID", "LOCATION_ID", "LOCATION_NAME", "CURRENT_STATUS", "CURRENT_STATUS_TYPE", "STATUSES" };
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
// Function assignmentSearch_SORTFIELD_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *assignmentSearch_SORTFIELD_convertToJSON(sirqul_iot_platform_assignmentSearch_sortField_e SORTFIELD) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "sortField", assignmentSearch_SORTFIELD_ToString(SORTFIELD)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function assignmentSearch_SORTFIELD_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_assignmentSearch_sortField_e assignmentSearch_SORTFIELD_parseFromJSON(cJSON* SORTFIELDJSON) {
    sirqul_iot_platform_assignmentSearch_sortField_e SORTFIELDVariable = 0;
    cJSON *SORTFIELDVar = cJSON_GetObjectItemCaseSensitive(SORTFIELDJSON, "sortField");
    if(!cJSON_IsString(SORTFIELDVar) || (SORTFIELDVar->valuestring == NULL))
    {
        goto end;
    }
    SORTFIELDVariable = assignmentSearch_SORTFIELD_FromString(SORTFIELDVar->valuestring);
    return SORTFIELDVariable;
end:
    return 0;
}
*/

// Functions for enum CURRENTSTATUSTYPE for AssignmentAPI_assignmentSearch

static char* assignmentSearch_CURRENTSTATUSTYPE_ToString(sirqul_iot_platform_assignmentSearch_currentStatusType_e CURRENTSTATUSTYPE){
    char *CURRENTSTATUSTYPEArray[] =  { "NULL", "NEW", "IN_PROGRESS", "SUBSCRIBED", "ARCHIVED" };
    return CURRENTSTATUSTYPEArray[CURRENTSTATUSTYPE];
}

static sirqul_iot_platform_assignmentSearch_currentStatusType_e assignmentSearch_CURRENTSTATUSTYPE_FromString(char* CURRENTSTATUSTYPE){
    int stringToReturn = 0;
    char *CURRENTSTATUSTYPEArray[] =  { "NULL", "NEW", "IN_PROGRESS", "SUBSCRIBED", "ARCHIVED" };
    size_t sizeofArray = sizeof(CURRENTSTATUSTYPEArray) / sizeof(CURRENTSTATUSTYPEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(CURRENTSTATUSTYPE, CURRENTSTATUSTYPEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function assignmentSearch_CURRENTSTATUSTYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *assignmentSearch_CURRENTSTATUSTYPE_convertToJSON(sirqul_iot_platform_assignmentSearch_currentStatusType_e CURRENTSTATUSTYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "currentStatusType", assignmentSearch_CURRENTSTATUSTYPE_ToString(CURRENTSTATUSTYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function assignmentSearch_CURRENTSTATUSTYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_assignmentSearch_currentStatusType_e assignmentSearch_CURRENTSTATUSTYPE_parseFromJSON(cJSON* CURRENTSTATUSTYPEJSON) {
    sirqul_iot_platform_assignmentSearch_currentStatusType_e CURRENTSTATUSTYPEVariable = 0;
    cJSON *CURRENTSTATUSTYPEVar = cJSON_GetObjectItemCaseSensitive(CURRENTSTATUSTYPEJSON, "currentStatusType");
    if(!cJSON_IsString(CURRENTSTATUSTYPEVar) || (CURRENTSTATUSTYPEVar->valuestring == NULL))
    {
        goto end;
    }
    CURRENTSTATUSTYPEVariable = assignmentSearch_CURRENTSTATUSTYPE_FromString(CURRENTSTATUSTYPEVar->valuestring);
    return CURRENTSTATUSTYPEVariable;
end:
    return 0;
}
*/

// Functions for enum TODO for AssignmentAPI_assignmentStatusCreate

static char* assignmentStatusCreate_TODO_ToString(sirqul_iot_platform_assignmentStatusCreate_toDo_e TODO){
    char *TODOArray[] =  { "NULL", "SITE_VISIT", "PHONE", "RECONTACT", "RENEWAL", "CREDIT" };
    return TODOArray[TODO];
}

static sirqul_iot_platform_assignmentStatusCreate_toDo_e assignmentStatusCreate_TODO_FromString(char* TODO){
    int stringToReturn = 0;
    char *TODOArray[] =  { "NULL", "SITE_VISIT", "PHONE", "RECONTACT", "RENEWAL", "CREDIT" };
    size_t sizeofArray = sizeof(TODOArray) / sizeof(TODOArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(TODO, TODOArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function assignmentStatusCreate_TODO_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *assignmentStatusCreate_TODO_convertToJSON(sirqul_iot_platform_assignmentStatusCreate_toDo_e TODO) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "toDo", assignmentStatusCreate_TODO_ToString(TODO)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function assignmentStatusCreate_TODO_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_assignmentStatusCreate_toDo_e assignmentStatusCreate_TODO_parseFromJSON(cJSON* TODOJSON) {
    sirqul_iot_platform_assignmentStatusCreate_toDo_e TODOVariable = 0;
    cJSON *TODOVar = cJSON_GetObjectItemCaseSensitive(TODOJSON, "toDo");
    if(!cJSON_IsString(TODOVar) || (TODOVar->valuestring == NULL))
    {
        goto end;
    }
    TODOVariable = assignmentStatusCreate_TODO_FromString(TODOVar->valuestring);
    return TODOVariable;
end:
    return 0;
}
*/

// Functions for enum CONNECTION for AssignmentAPI_assignmentStatusCreate

static char* assignmentStatusCreate_CONNECTION_ToString(sirqul_iot_platform_assignmentStatusCreate_connection_e CONNECTION){
    char *CONNECTIONArray[] =  { "NULL", "INITIAL", "FOLLOW_UP", "DECLINED" };
    return CONNECTIONArray[CONNECTION];
}

static sirqul_iot_platform_assignmentStatusCreate_connection_e assignmentStatusCreate_CONNECTION_FromString(char* CONNECTION){
    int stringToReturn = 0;
    char *CONNECTIONArray[] =  { "NULL", "INITIAL", "FOLLOW_UP", "DECLINED" };
    size_t sizeofArray = sizeof(CONNECTIONArray) / sizeof(CONNECTIONArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(CONNECTION, CONNECTIONArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function assignmentStatusCreate_CONNECTION_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *assignmentStatusCreate_CONNECTION_convertToJSON(sirqul_iot_platform_assignmentStatusCreate_connection_e CONNECTION) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "connection", assignmentStatusCreate_CONNECTION_ToString(CONNECTION)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function assignmentStatusCreate_CONNECTION_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_assignmentStatusCreate_connection_e assignmentStatusCreate_CONNECTION_parseFromJSON(cJSON* CONNECTIONJSON) {
    sirqul_iot_platform_assignmentStatusCreate_connection_e CONNECTIONVariable = 0;
    cJSON *CONNECTIONVar = cJSON_GetObjectItemCaseSensitive(CONNECTIONJSON, "connection");
    if(!cJSON_IsString(CONNECTIONVar) || (CONNECTIONVar->valuestring == NULL))
    {
        goto end;
    }
    CONNECTIONVariable = assignmentStatusCreate_CONNECTION_FromString(CONNECTIONVar->valuestring);
    return CONNECTIONVariable;
end:
    return 0;
}
*/

// Functions for enum METHOD for AssignmentAPI_assignmentStatusCreate

static char* assignmentStatusCreate_METHOD_ToString(sirqul_iot_platform_assignmentStatusCreate_method_e METHOD){
    char *METHODArray[] =  { "NULL", "PHONE", "SITE_VISIT", "EMAIL" };
    return METHODArray[METHOD];
}

static sirqul_iot_platform_assignmentStatusCreate_method_e assignmentStatusCreate_METHOD_FromString(char* METHOD){
    int stringToReturn = 0;
    char *METHODArray[] =  { "NULL", "PHONE", "SITE_VISIT", "EMAIL" };
    size_t sizeofArray = sizeof(METHODArray) / sizeof(METHODArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(METHOD, METHODArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function assignmentStatusCreate_METHOD_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *assignmentStatusCreate_METHOD_convertToJSON(sirqul_iot_platform_assignmentStatusCreate_method_e METHOD) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "method", assignmentStatusCreate_METHOD_ToString(METHOD)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function assignmentStatusCreate_METHOD_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_assignmentStatusCreate_method_e assignmentStatusCreate_METHOD_parseFromJSON(cJSON* METHODJSON) {
    sirqul_iot_platform_assignmentStatusCreate_method_e METHODVariable = 0;
    cJSON *METHODVar = cJSON_GetObjectItemCaseSensitive(METHODJSON, "method");
    if(!cJSON_IsString(METHODVar) || (METHODVar->valuestring == NULL))
    {
        goto end;
    }
    METHODVariable = assignmentStatusCreate_METHOD_FromString(METHODVar->valuestring);
    return METHODVariable;
end:
    return 0;
}
*/

// Functions for enum STATUS for AssignmentAPI_assignmentStatusCreate

static char* assignmentStatusCreate_STATUS_ToString(sirqul_iot_platform_assignmentStatusCreate_status_e STATUS){
    char *STATUSArray[] =  { "NULL", "ARCHIVED", "SUBSCRIBED", "UNSUBSCRIBED", "CONTACTED", "DECLINED", "NOT_CONTACTED" };
    return STATUSArray[STATUS];
}

static sirqul_iot_platform_assignmentStatusCreate_status_e assignmentStatusCreate_STATUS_FromString(char* STATUS){
    int stringToReturn = 0;
    char *STATUSArray[] =  { "NULL", "ARCHIVED", "SUBSCRIBED", "UNSUBSCRIBED", "CONTACTED", "DECLINED", "NOT_CONTACTED" };
    size_t sizeofArray = sizeof(STATUSArray) / sizeof(STATUSArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(STATUS, STATUSArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function assignmentStatusCreate_STATUS_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *assignmentStatusCreate_STATUS_convertToJSON(sirqul_iot_platform_assignmentStatusCreate_status_e STATUS) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "status", assignmentStatusCreate_STATUS_ToString(STATUS)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function assignmentStatusCreate_STATUS_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_assignmentStatusCreate_status_e assignmentStatusCreate_STATUS_parseFromJSON(cJSON* STATUSJSON) {
    sirqul_iot_platform_assignmentStatusCreate_status_e STATUSVariable = 0;
    cJSON *STATUSVar = cJSON_GetObjectItemCaseSensitive(STATUSJSON, "status");
    if(!cJSON_IsString(STATUSVar) || (STATUSVar->valuestring == NULL))
    {
        goto end;
    }
    STATUSVariable = assignmentStatusCreate_STATUS_FromString(STATUSVar->valuestring);
    return STATUSVariable;
end:
    return 0;
}
*/

// Functions for enum CLOSURE for AssignmentAPI_assignmentStatusCreate

static char* assignmentStatusCreate_CLOSURE_ToString(sirqul_iot_platform_assignmentStatusCreate_closure_e CLOSURE){
    char *CLOSUREArray[] =  { "NULL", "PHONE", "SITE_VISIT", "PHONE_SITE", "WEB" };
    return CLOSUREArray[CLOSURE];
}

static sirqul_iot_platform_assignmentStatusCreate_closure_e assignmentStatusCreate_CLOSURE_FromString(char* CLOSURE){
    int stringToReturn = 0;
    char *CLOSUREArray[] =  { "NULL", "PHONE", "SITE_VISIT", "PHONE_SITE", "WEB" };
    size_t sizeofArray = sizeof(CLOSUREArray) / sizeof(CLOSUREArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(CLOSURE, CLOSUREArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function assignmentStatusCreate_CLOSURE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *assignmentStatusCreate_CLOSURE_convertToJSON(sirqul_iot_platform_assignmentStatusCreate_closure_e CLOSURE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "closure", assignmentStatusCreate_CLOSURE_ToString(CLOSURE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function assignmentStatusCreate_CLOSURE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_assignmentStatusCreate_closure_e assignmentStatusCreate_CLOSURE_parseFromJSON(cJSON* CLOSUREJSON) {
    sirqul_iot_platform_assignmentStatusCreate_closure_e CLOSUREVariable = 0;
    cJSON *CLOSUREVar = cJSON_GetObjectItemCaseSensitive(CLOSUREJSON, "closure");
    if(!cJSON_IsString(CLOSUREVar) || (CLOSUREVar->valuestring == NULL))
    {
        goto end;
    }
    CLOSUREVariable = assignmentStatusCreate_CLOSURE_FromString(CLOSUREVar->valuestring);
    return CLOSUREVariable;
end:
    return 0;
}
*/

// Functions for enum SORTFIELD for AssignmentAPI_assignmentStatusSearch

static char* assignmentStatusSearch_SORTFIELD_ToString(sirqul_iot_platform_assignmentStatusSearch_sortField_e SORTFIELD){
    char *SORTFIELDArray[] =  { "NULL", "ID", "CREATED", "UPDATED", "DELETED", "SEARCH_TAGS", "ACTIVE", "ASSIGNEE_ID", "CREATOR_ID", "LOCATION_ID", "LOCATION_NAME", "CURRENT_STATUS", "CURRENT_STATUS_TYPE", "TODO", "CONNECTION", "METHOD", "STATUS", "CLOSURE", "MESSAGE", "FOLLOW_UP" };
    return SORTFIELDArray[SORTFIELD];
}

static sirqul_iot_platform_assignmentStatusSearch_sortField_e assignmentStatusSearch_SORTFIELD_FromString(char* SORTFIELD){
    int stringToReturn = 0;
    char *SORTFIELDArray[] =  { "NULL", "ID", "CREATED", "UPDATED", "DELETED", "SEARCH_TAGS", "ACTIVE", "ASSIGNEE_ID", "CREATOR_ID", "LOCATION_ID", "LOCATION_NAME", "CURRENT_STATUS", "CURRENT_STATUS_TYPE", "TODO", "CONNECTION", "METHOD", "STATUS", "CLOSURE", "MESSAGE", "FOLLOW_UP" };
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
// Function assignmentStatusSearch_SORTFIELD_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *assignmentStatusSearch_SORTFIELD_convertToJSON(sirqul_iot_platform_assignmentStatusSearch_sortField_e SORTFIELD) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "sortField", assignmentStatusSearch_SORTFIELD_ToString(SORTFIELD)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function assignmentStatusSearch_SORTFIELD_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_assignmentStatusSearch_sortField_e assignmentStatusSearch_SORTFIELD_parseFromJSON(cJSON* SORTFIELDJSON) {
    sirqul_iot_platform_assignmentStatusSearch_sortField_e SORTFIELDVariable = 0;
    cJSON *SORTFIELDVar = cJSON_GetObjectItemCaseSensitive(SORTFIELDJSON, "sortField");
    if(!cJSON_IsString(SORTFIELDVar) || (SORTFIELDVar->valuestring == NULL))
    {
        goto end;
    }
    SORTFIELDVariable = assignmentStatusSearch_SORTFIELD_FromString(SORTFIELDVar->valuestring);
    return SORTFIELDVariable;
end:
    return 0;
}
*/

// Functions for enum STATUSTYPE for AssignmentAPI_assignmentStatusSearch

static char* assignmentStatusSearch_STATUSTYPE_ToString(sirqul_iot_platform_assignmentStatusSearch_statusType_e STATUSTYPE){
    char *STATUSTYPEArray[] =  { "NULL", "ARCHIVED", "SUBSCRIBED", "UNSUBSCRIBED", "CONTACTED", "DECLINED", "NOT_CONTACTED" };
    return STATUSTYPEArray[STATUSTYPE];
}

static sirqul_iot_platform_assignmentStatusSearch_statusType_e assignmentStatusSearch_STATUSTYPE_FromString(char* STATUSTYPE){
    int stringToReturn = 0;
    char *STATUSTYPEArray[] =  { "NULL", "ARCHIVED", "SUBSCRIBED", "UNSUBSCRIBED", "CONTACTED", "DECLINED", "NOT_CONTACTED" };
    size_t sizeofArray = sizeof(STATUSTYPEArray) / sizeof(STATUSTYPEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(STATUSTYPE, STATUSTYPEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function assignmentStatusSearch_STATUSTYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *assignmentStatusSearch_STATUSTYPE_convertToJSON(sirqul_iot_platform_assignmentStatusSearch_statusType_e STATUSTYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "statusType", assignmentStatusSearch_STATUSTYPE_ToString(STATUSTYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function assignmentStatusSearch_STATUSTYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_assignmentStatusSearch_statusType_e assignmentStatusSearch_STATUSTYPE_parseFromJSON(cJSON* STATUSTYPEJSON) {
    sirqul_iot_platform_assignmentStatusSearch_statusType_e STATUSTYPEVariable = 0;
    cJSON *STATUSTYPEVar = cJSON_GetObjectItemCaseSensitive(STATUSTYPEJSON, "statusType");
    if(!cJSON_IsString(STATUSTYPEVar) || (STATUSTYPEVar->valuestring == NULL))
    {
        goto end;
    }
    STATUSTYPEVariable = assignmentStatusSearch_STATUSTYPE_FromString(STATUSTYPEVar->valuestring);
    return STATUSTYPEVariable;
end:
    return 0;
}
*/

// Functions for enum TODO for AssignmentAPI_assignmentStatusUpdate

static char* assignmentStatusUpdate_TODO_ToString(sirqul_iot_platform_assignmentStatusUpdate_toDo_e TODO){
    char *TODOArray[] =  { "NULL", "SITE_VISIT", "PHONE", "RECONTACT", "RENEWAL", "CREDIT" };
    return TODOArray[TODO];
}

static sirqul_iot_platform_assignmentStatusUpdate_toDo_e assignmentStatusUpdate_TODO_FromString(char* TODO){
    int stringToReturn = 0;
    char *TODOArray[] =  { "NULL", "SITE_VISIT", "PHONE", "RECONTACT", "RENEWAL", "CREDIT" };
    size_t sizeofArray = sizeof(TODOArray) / sizeof(TODOArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(TODO, TODOArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function assignmentStatusUpdate_TODO_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *assignmentStatusUpdate_TODO_convertToJSON(sirqul_iot_platform_assignmentStatusUpdate_toDo_e TODO) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "toDo", assignmentStatusUpdate_TODO_ToString(TODO)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function assignmentStatusUpdate_TODO_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_assignmentStatusUpdate_toDo_e assignmentStatusUpdate_TODO_parseFromJSON(cJSON* TODOJSON) {
    sirqul_iot_platform_assignmentStatusUpdate_toDo_e TODOVariable = 0;
    cJSON *TODOVar = cJSON_GetObjectItemCaseSensitive(TODOJSON, "toDo");
    if(!cJSON_IsString(TODOVar) || (TODOVar->valuestring == NULL))
    {
        goto end;
    }
    TODOVariable = assignmentStatusUpdate_TODO_FromString(TODOVar->valuestring);
    return TODOVariable;
end:
    return 0;
}
*/

// Functions for enum CONNECTION for AssignmentAPI_assignmentStatusUpdate

static char* assignmentStatusUpdate_CONNECTION_ToString(sirqul_iot_platform_assignmentStatusUpdate_connection_e CONNECTION){
    char *CONNECTIONArray[] =  { "NULL", "INITIAL", "FOLLOW_UP", "DECLINED" };
    return CONNECTIONArray[CONNECTION];
}

static sirqul_iot_platform_assignmentStatusUpdate_connection_e assignmentStatusUpdate_CONNECTION_FromString(char* CONNECTION){
    int stringToReturn = 0;
    char *CONNECTIONArray[] =  { "NULL", "INITIAL", "FOLLOW_UP", "DECLINED" };
    size_t sizeofArray = sizeof(CONNECTIONArray) / sizeof(CONNECTIONArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(CONNECTION, CONNECTIONArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function assignmentStatusUpdate_CONNECTION_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *assignmentStatusUpdate_CONNECTION_convertToJSON(sirqul_iot_platform_assignmentStatusUpdate_connection_e CONNECTION) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "connection", assignmentStatusUpdate_CONNECTION_ToString(CONNECTION)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function assignmentStatusUpdate_CONNECTION_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_assignmentStatusUpdate_connection_e assignmentStatusUpdate_CONNECTION_parseFromJSON(cJSON* CONNECTIONJSON) {
    sirqul_iot_platform_assignmentStatusUpdate_connection_e CONNECTIONVariable = 0;
    cJSON *CONNECTIONVar = cJSON_GetObjectItemCaseSensitive(CONNECTIONJSON, "connection");
    if(!cJSON_IsString(CONNECTIONVar) || (CONNECTIONVar->valuestring == NULL))
    {
        goto end;
    }
    CONNECTIONVariable = assignmentStatusUpdate_CONNECTION_FromString(CONNECTIONVar->valuestring);
    return CONNECTIONVariable;
end:
    return 0;
}
*/

// Functions for enum METHOD for AssignmentAPI_assignmentStatusUpdate

static char* assignmentStatusUpdate_METHOD_ToString(sirqul_iot_platform_assignmentStatusUpdate_method_e METHOD){
    char *METHODArray[] =  { "NULL", "PHONE", "SITE_VISIT", "EMAIL" };
    return METHODArray[METHOD];
}

static sirqul_iot_platform_assignmentStatusUpdate_method_e assignmentStatusUpdate_METHOD_FromString(char* METHOD){
    int stringToReturn = 0;
    char *METHODArray[] =  { "NULL", "PHONE", "SITE_VISIT", "EMAIL" };
    size_t sizeofArray = sizeof(METHODArray) / sizeof(METHODArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(METHOD, METHODArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function assignmentStatusUpdate_METHOD_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *assignmentStatusUpdate_METHOD_convertToJSON(sirqul_iot_platform_assignmentStatusUpdate_method_e METHOD) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "method", assignmentStatusUpdate_METHOD_ToString(METHOD)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function assignmentStatusUpdate_METHOD_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_assignmentStatusUpdate_method_e assignmentStatusUpdate_METHOD_parseFromJSON(cJSON* METHODJSON) {
    sirqul_iot_platform_assignmentStatusUpdate_method_e METHODVariable = 0;
    cJSON *METHODVar = cJSON_GetObjectItemCaseSensitive(METHODJSON, "method");
    if(!cJSON_IsString(METHODVar) || (METHODVar->valuestring == NULL))
    {
        goto end;
    }
    METHODVariable = assignmentStatusUpdate_METHOD_FromString(METHODVar->valuestring);
    return METHODVariable;
end:
    return 0;
}
*/

// Functions for enum STATUS for AssignmentAPI_assignmentStatusUpdate

static char* assignmentStatusUpdate_STATUS_ToString(sirqul_iot_platform_assignmentStatusUpdate_status_e STATUS){
    char *STATUSArray[] =  { "NULL", "ARCHIVED", "SUBSCRIBED", "UNSUBSCRIBED", "CONTACTED", "DECLINED", "NOT_CONTACTED" };
    return STATUSArray[STATUS];
}

static sirqul_iot_platform_assignmentStatusUpdate_status_e assignmentStatusUpdate_STATUS_FromString(char* STATUS){
    int stringToReturn = 0;
    char *STATUSArray[] =  { "NULL", "ARCHIVED", "SUBSCRIBED", "UNSUBSCRIBED", "CONTACTED", "DECLINED", "NOT_CONTACTED" };
    size_t sizeofArray = sizeof(STATUSArray) / sizeof(STATUSArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(STATUS, STATUSArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function assignmentStatusUpdate_STATUS_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *assignmentStatusUpdate_STATUS_convertToJSON(sirqul_iot_platform_assignmentStatusUpdate_status_e STATUS) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "status", assignmentStatusUpdate_STATUS_ToString(STATUS)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function assignmentStatusUpdate_STATUS_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_assignmentStatusUpdate_status_e assignmentStatusUpdate_STATUS_parseFromJSON(cJSON* STATUSJSON) {
    sirqul_iot_platform_assignmentStatusUpdate_status_e STATUSVariable = 0;
    cJSON *STATUSVar = cJSON_GetObjectItemCaseSensitive(STATUSJSON, "status");
    if(!cJSON_IsString(STATUSVar) || (STATUSVar->valuestring == NULL))
    {
        goto end;
    }
    STATUSVariable = assignmentStatusUpdate_STATUS_FromString(STATUSVar->valuestring);
    return STATUSVariable;
end:
    return 0;
}
*/

// Functions for enum CLOSURE for AssignmentAPI_assignmentStatusUpdate

static char* assignmentStatusUpdate_CLOSURE_ToString(sirqul_iot_platform_assignmentStatusUpdate_closure_e CLOSURE){
    char *CLOSUREArray[] =  { "NULL", "PHONE", "SITE_VISIT", "PHONE_SITE", "WEB" };
    return CLOSUREArray[CLOSURE];
}

static sirqul_iot_platform_assignmentStatusUpdate_closure_e assignmentStatusUpdate_CLOSURE_FromString(char* CLOSURE){
    int stringToReturn = 0;
    char *CLOSUREArray[] =  { "NULL", "PHONE", "SITE_VISIT", "PHONE_SITE", "WEB" };
    size_t sizeofArray = sizeof(CLOSUREArray) / sizeof(CLOSUREArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(CLOSURE, CLOSUREArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function assignmentStatusUpdate_CLOSURE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *assignmentStatusUpdate_CLOSURE_convertToJSON(sirqul_iot_platform_assignmentStatusUpdate_closure_e CLOSURE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "closure", assignmentStatusUpdate_CLOSURE_ToString(CLOSURE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function assignmentStatusUpdate_CLOSURE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_assignmentStatusUpdate_closure_e assignmentStatusUpdate_CLOSURE_parseFromJSON(cJSON* CLOSUREJSON) {
    sirqul_iot_platform_assignmentStatusUpdate_closure_e CLOSUREVariable = 0;
    cJSON *CLOSUREVar = cJSON_GetObjectItemCaseSensitive(CLOSUREJSON, "closure");
    if(!cJSON_IsString(CLOSUREVar) || (CLOSUREVar->valuestring == NULL))
    {
        goto end;
    }
    CLOSUREVariable = assignmentStatusUpdate_CLOSURE_FromString(CLOSUREVar->valuestring);
    return CLOSUREVariable;
end:
    return 0;
}
*/


// Search Assignment Assignees
//
// Search for avaiable users for creating or updating assignment.
//
list_t*
AssignmentAPI_assigmentAssigneeAccountSearch(apiClient_t *apiClient, long accountId, char *keyword)
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
    char *localVarPath = strdup("/assignment/assignee/search");





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
        cJSON *AssignmentAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(AssignmentAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, AssignmentAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( AssignmentAPIlocalVarJSON);
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Create Assignment
//
// Create an assignment.
//
assignment_response_t*
AssignmentAPI_assignmentCreate(apiClient_t *apiClient, long accountId, char *name, long assigneeAccountId, char *description, long retailerLocationId, char *tags, int *active)
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
    char *localVarPath = strdup("/assignment/create");





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
    char *keyQuery_assigneeAccountId = NULL;
    char * valueQuery_assigneeAccountId ;
    keyValuePair_t *keyPairQuery_assigneeAccountId = 0;
    {
        keyQuery_assigneeAccountId = strdup("assigneeAccountId");
        valueQuery_assigneeAccountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_assigneeAccountId, MAX_NUMBER_LENGTH_LONG, "%d", assigneeAccountId);
        keyPairQuery_assigneeAccountId = keyValuePair_create(keyQuery_assigneeAccountId, valueQuery_assigneeAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_assigneeAccountId);
    }

    // query parameters
    char *keyQuery_retailerLocationId = NULL;
    char * valueQuery_retailerLocationId ;
    keyValuePair_t *keyPairQuery_retailerLocationId = 0;
    {
        keyQuery_retailerLocationId = strdup("retailerLocationId");
        valueQuery_retailerLocationId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_retailerLocationId, MAX_NUMBER_LENGTH_LONG, "%d", retailerLocationId);
        keyPairQuery_retailerLocationId = keyValuePair_create(keyQuery_retailerLocationId, valueQuery_retailerLocationId);
        list_addElement(localVarQueryParameters,keyPairQuery_retailerLocationId);
    }

    // query parameters
    char *keyQuery_tags = NULL;
    char * valueQuery_tags = NULL;
    keyValuePair_t *keyPairQuery_tags = 0;
    if (tags)
    {
        keyQuery_tags = strdup("tags");
        valueQuery_tags = strdup((tags));
        keyPairQuery_tags = keyValuePair_create(keyQuery_tags, valueQuery_tags);
        list_addElement(localVarQueryParameters,keyPairQuery_tags);
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
    assignment_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AssignmentAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = assignment_response_parseFromJSON(AssignmentAPIlocalVarJSON);
        cJSON_Delete(AssignmentAPIlocalVarJSON);
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
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
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
    if(keyQuery_assigneeAccountId){
        free(keyQuery_assigneeAccountId);
        keyQuery_assigneeAccountId = NULL;
    }
    if(keyPairQuery_assigneeAccountId){
        keyValuePair_free(keyPairQuery_assigneeAccountId);
        keyPairQuery_assigneeAccountId = NULL;
    }
    if(keyQuery_retailerLocationId){
        free(keyQuery_retailerLocationId);
        keyQuery_retailerLocationId = NULL;
    }
    if(keyPairQuery_retailerLocationId){
        keyValuePair_free(keyPairQuery_retailerLocationId);
        keyPairQuery_retailerLocationId = NULL;
    }
    if(keyQuery_tags){
        free(keyQuery_tags);
        keyQuery_tags = NULL;
    }
    if(valueQuery_tags){
        free(valueQuery_tags);
        valueQuery_tags = NULL;
    }
    if(keyPairQuery_tags){
        keyValuePair_free(keyPairQuery_tags);
        keyPairQuery_tags = NULL;
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

// Delete Assignment
//
// Delete an assignment.
//
sirqul_response_t*
AssignmentAPI_assignmentDelete(apiClient_t *apiClient, long accountId, long assignmentId)
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
    char *localVarPath = strdup("/assignment/delete");





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
    char *keyQuery_assignmentId = NULL;
    char * valueQuery_assignmentId ;
    keyValuePair_t *keyPairQuery_assignmentId = 0;
    {
        keyQuery_assignmentId = strdup("assignmentId");
        valueQuery_assignmentId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_assignmentId, MAX_NUMBER_LENGTH_LONG, "%d", assignmentId);
        keyPairQuery_assignmentId = keyValuePair_create(keyQuery_assignmentId, valueQuery_assignmentId);
        list_addElement(localVarQueryParameters,keyPairQuery_assignmentId);
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
        cJSON *AssignmentAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(AssignmentAPIlocalVarJSON);
        cJSON_Delete(AssignmentAPIlocalVarJSON);
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
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_assignmentId){
        free(keyQuery_assignmentId);
        keyQuery_assignmentId = NULL;
    }
    if(keyPairQuery_assignmentId){
        keyValuePair_free(keyPairQuery_assignmentId);
        keyPairQuery_assignmentId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Assignment
//
// Get the details of an assignment.
//
assignment_response_t*
AssignmentAPI_assignmentGet(apiClient_t *apiClient, long accountId, long assignmentId)
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
    char *localVarPath = strdup("/assignment/get");





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
    char *keyQuery_assignmentId = NULL;
    char * valueQuery_assignmentId ;
    keyValuePair_t *keyPairQuery_assignmentId = 0;
    {
        keyQuery_assignmentId = strdup("assignmentId");
        valueQuery_assignmentId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_assignmentId, MAX_NUMBER_LENGTH_LONG, "%d", assignmentId);
        keyPairQuery_assignmentId = keyValuePair_create(keyQuery_assignmentId, valueQuery_assignmentId);
        list_addElement(localVarQueryParameters,keyPairQuery_assignmentId);
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
    assignment_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AssignmentAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = assignment_response_parseFromJSON(AssignmentAPIlocalVarJSON);
        cJSON_Delete(AssignmentAPIlocalVarJSON);
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
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_assignmentId){
        free(keyQuery_assignmentId);
        keyQuery_assignmentId = NULL;
    }
    if(keyPairQuery_assignmentId){
        keyValuePair_free(keyPairQuery_assignmentId);
        keyPairQuery_assignmentId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Assignments
//
// Search for assignments by the given parameters.
//
list_t*
AssignmentAPI_assignmentSearch(apiClient_t *apiClient, long accountId, sirqul_iot_platform_assignmentSearch_sortField_e sortField, int *descending, int *activeOnly, int *start, int *limit, long creatorAccountId, char *assigneeAccountIds, char *retailerLocationIds, sirqul_iot_platform_assignmentSearch_currentStatusType_e currentStatusType, char *keyword)
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
    char *localVarPath = strdup("/assignment/search");





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
    char *keyQuery_creatorAccountId = NULL;
    char * valueQuery_creatorAccountId ;
    keyValuePair_t *keyPairQuery_creatorAccountId = 0;
    {
        keyQuery_creatorAccountId = strdup("creatorAccountId");
        valueQuery_creatorAccountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_creatorAccountId, MAX_NUMBER_LENGTH_LONG, "%d", creatorAccountId);
        keyPairQuery_creatorAccountId = keyValuePair_create(keyQuery_creatorAccountId, valueQuery_creatorAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_creatorAccountId);
    }

    // query parameters
    char *keyQuery_assigneeAccountIds = NULL;
    char * valueQuery_assigneeAccountIds = NULL;
    keyValuePair_t *keyPairQuery_assigneeAccountIds = 0;
    if (assigneeAccountIds)
    {
        keyQuery_assigneeAccountIds = strdup("assigneeAccountIds");
        valueQuery_assigneeAccountIds = strdup((assigneeAccountIds));
        keyPairQuery_assigneeAccountIds = keyValuePair_create(keyQuery_assigneeAccountIds, valueQuery_assigneeAccountIds);
        list_addElement(localVarQueryParameters,keyPairQuery_assigneeAccountIds);
    }

    // query parameters
    char *keyQuery_retailerLocationIds = NULL;
    char * valueQuery_retailerLocationIds = NULL;
    keyValuePair_t *keyPairQuery_retailerLocationIds = 0;
    if (retailerLocationIds)
    {
        keyQuery_retailerLocationIds = strdup("retailerLocationIds");
        valueQuery_retailerLocationIds = strdup((retailerLocationIds));
        keyPairQuery_retailerLocationIds = keyValuePair_create(keyQuery_retailerLocationIds, valueQuery_retailerLocationIds);
        list_addElement(localVarQueryParameters,keyPairQuery_retailerLocationIds);
    }

    // query parameters
    char *keyQuery_currentStatusType = NULL;
    sirqul_iot_platform_assignmentSearch_currentStatusType_e valueQuery_currentStatusType ;
    keyValuePair_t *keyPairQuery_currentStatusType = 0;
    if (currentStatusType)
    {
        keyQuery_currentStatusType = strdup("currentStatusType");
        valueQuery_currentStatusType = (currentStatusType);
        keyPairQuery_currentStatusType = keyValuePair_create(keyQuery_currentStatusType, strdup(assignmentSearch_CURRENTSTATUSTYPE_ToString(
        valueQuery_currentStatusType)));
        list_addElement(localVarQueryParameters,keyPairQuery_currentStatusType);
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
    sirqul_iot_platform_assignmentSearch_sortField_e valueQuery_sortField ;
    keyValuePair_t *keyPairQuery_sortField = 0;
    if (sortField)
    {
        keyQuery_sortField = strdup("sortField");
        valueQuery_sortField = (sortField);
        keyPairQuery_sortField = keyValuePair_create(keyQuery_sortField, strdup(assignmentSearch_SORTFIELD_ToString(
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
        cJSON *AssignmentAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(AssignmentAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, AssignmentAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( AssignmentAPIlocalVarJSON);
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
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_creatorAccountId){
        free(keyQuery_creatorAccountId);
        keyQuery_creatorAccountId = NULL;
    }
    if(keyPairQuery_creatorAccountId){
        keyValuePair_free(keyPairQuery_creatorAccountId);
        keyPairQuery_creatorAccountId = NULL;
    }
    if(keyQuery_assigneeAccountIds){
        free(keyQuery_assigneeAccountIds);
        keyQuery_assigneeAccountIds = NULL;
    }
    if(valueQuery_assigneeAccountIds){
        free(valueQuery_assigneeAccountIds);
        valueQuery_assigneeAccountIds = NULL;
    }
    if(keyPairQuery_assigneeAccountIds){
        keyValuePair_free(keyPairQuery_assigneeAccountIds);
        keyPairQuery_assigneeAccountIds = NULL;
    }
    if(keyQuery_retailerLocationIds){
        free(keyQuery_retailerLocationIds);
        keyQuery_retailerLocationIds = NULL;
    }
    if(valueQuery_retailerLocationIds){
        free(valueQuery_retailerLocationIds);
        valueQuery_retailerLocationIds = NULL;
    }
    if(keyPairQuery_retailerLocationIds){
        keyValuePair_free(keyPairQuery_retailerLocationIds);
        keyPairQuery_retailerLocationIds = NULL;
    }
    if(keyQuery_currentStatusType){
        free(keyQuery_currentStatusType);
        keyQuery_currentStatusType = NULL;
    }
    if(keyPairQuery_currentStatusType){
        keyValuePair_free(keyPairQuery_currentStatusType);
        keyPairQuery_currentStatusType = NULL;
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

// Create Assignment Status
//
// Create an assignment status.
//
assignment_status_response_t*
AssignmentAPI_assignmentStatusCreate(apiClient_t *apiClient, long accountId, long assignmentId, long scheduledNotificationId, sirqul_iot_platform_assignmentStatusCreate_toDo_e toDo, sirqul_iot_platform_assignmentStatusCreate_connection_e connection, sirqul_iot_platform_assignmentStatusCreate_method_e method, sirqul_iot_platform_assignmentStatusCreate_status_e status, sirqul_iot_platform_assignmentStatusCreate_closure_e closure, char *message, long followUp, int *active)
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
    char *localVarPath = strdup("/assignment/status/create");





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
    char *keyQuery_assignmentId = NULL;
    char * valueQuery_assignmentId ;
    keyValuePair_t *keyPairQuery_assignmentId = 0;
    {
        keyQuery_assignmentId = strdup("assignmentId");
        valueQuery_assignmentId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_assignmentId, MAX_NUMBER_LENGTH_LONG, "%d", assignmentId);
        keyPairQuery_assignmentId = keyValuePair_create(keyQuery_assignmentId, valueQuery_assignmentId);
        list_addElement(localVarQueryParameters,keyPairQuery_assignmentId);
    }

    // query parameters
    char *keyQuery_scheduledNotificationId = NULL;
    char * valueQuery_scheduledNotificationId ;
    keyValuePair_t *keyPairQuery_scheduledNotificationId = 0;
    {
        keyQuery_scheduledNotificationId = strdup("scheduledNotificationId");
        valueQuery_scheduledNotificationId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_scheduledNotificationId, MAX_NUMBER_LENGTH_LONG, "%d", scheduledNotificationId);
        keyPairQuery_scheduledNotificationId = keyValuePair_create(keyQuery_scheduledNotificationId, valueQuery_scheduledNotificationId);
        list_addElement(localVarQueryParameters,keyPairQuery_scheduledNotificationId);
    }

    // query parameters
    char *keyQuery_toDo = NULL;
    sirqul_iot_platform_assignmentStatusCreate_toDo_e valueQuery_toDo ;
    keyValuePair_t *keyPairQuery_toDo = 0;
    if (toDo)
    {
        keyQuery_toDo = strdup("toDo");
        valueQuery_toDo = (toDo);
        keyPairQuery_toDo = keyValuePair_create(keyQuery_toDo, strdup(assignmentStatusCreate_TODO_ToString(
        valueQuery_toDo)));
        list_addElement(localVarQueryParameters,keyPairQuery_toDo);
    }

    // query parameters
    char *keyQuery_connection = NULL;
    sirqul_iot_platform_assignmentStatusCreate_connection_e valueQuery_connection ;
    keyValuePair_t *keyPairQuery_connection = 0;
    if (connection)
    {
        keyQuery_connection = strdup("connection");
        valueQuery_connection = (connection);
        keyPairQuery_connection = keyValuePair_create(keyQuery_connection, strdup(assignmentStatusCreate_CONNECTION_ToString(
        valueQuery_connection)));
        list_addElement(localVarQueryParameters,keyPairQuery_connection);
    }

    // query parameters
    char *keyQuery_method = NULL;
    sirqul_iot_platform_assignmentStatusCreate_method_e valueQuery_method ;
    keyValuePair_t *keyPairQuery_method = 0;
    if (method)
    {
        keyQuery_method = strdup("method");
        valueQuery_method = (method);
        keyPairQuery_method = keyValuePair_create(keyQuery_method, strdup(assignmentStatusCreate_METHOD_ToString(
        valueQuery_method)));
        list_addElement(localVarQueryParameters,keyPairQuery_method);
    }

    // query parameters
    char *keyQuery_status = NULL;
    sirqul_iot_platform_assignmentStatusCreate_status_e valueQuery_status ;
    keyValuePair_t *keyPairQuery_status = 0;
    if (status)
    {
        keyQuery_status = strdup("status");
        valueQuery_status = (status);
        keyPairQuery_status = keyValuePair_create(keyQuery_status, strdup(assignmentStatusCreate_STATUS_ToString(
        valueQuery_status)));
        list_addElement(localVarQueryParameters,keyPairQuery_status);
    }

    // query parameters
    char *keyQuery_closure = NULL;
    sirqul_iot_platform_assignmentStatusCreate_closure_e valueQuery_closure ;
    keyValuePair_t *keyPairQuery_closure = 0;
    if (closure)
    {
        keyQuery_closure = strdup("closure");
        valueQuery_closure = (closure);
        keyPairQuery_closure = keyValuePair_create(keyQuery_closure, strdup(assignmentStatusCreate_CLOSURE_ToString(
        valueQuery_closure)));
        list_addElement(localVarQueryParameters,keyPairQuery_closure);
    }

    // query parameters
    char *keyQuery_message = NULL;
    char * valueQuery_message = NULL;
    keyValuePair_t *keyPairQuery_message = 0;
    if (message)
    {
        keyQuery_message = strdup("message");
        valueQuery_message = strdup((message));
        keyPairQuery_message = keyValuePair_create(keyQuery_message, valueQuery_message);
        list_addElement(localVarQueryParameters,keyPairQuery_message);
    }

    // query parameters
    char *keyQuery_followUp = NULL;
    char * valueQuery_followUp ;
    keyValuePair_t *keyPairQuery_followUp = 0;
    {
        keyQuery_followUp = strdup("followUp");
        valueQuery_followUp = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_followUp, MAX_NUMBER_LENGTH_LONG, "%d", followUp);
        keyPairQuery_followUp = keyValuePair_create(keyQuery_followUp, valueQuery_followUp);
        list_addElement(localVarQueryParameters,keyPairQuery_followUp);
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
    assignment_status_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AssignmentAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = assignment_status_response_parseFromJSON(AssignmentAPIlocalVarJSON);
        cJSON_Delete(AssignmentAPIlocalVarJSON);
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
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_assignmentId){
        free(keyQuery_assignmentId);
        keyQuery_assignmentId = NULL;
    }
    if(keyPairQuery_assignmentId){
        keyValuePair_free(keyPairQuery_assignmentId);
        keyPairQuery_assignmentId = NULL;
    }
    if(keyQuery_scheduledNotificationId){
        free(keyQuery_scheduledNotificationId);
        keyQuery_scheduledNotificationId = NULL;
    }
    if(keyPairQuery_scheduledNotificationId){
        keyValuePair_free(keyPairQuery_scheduledNotificationId);
        keyPairQuery_scheduledNotificationId = NULL;
    }
    if(keyQuery_toDo){
        free(keyQuery_toDo);
        keyQuery_toDo = NULL;
    }
    if(keyPairQuery_toDo){
        keyValuePair_free(keyPairQuery_toDo);
        keyPairQuery_toDo = NULL;
    }
    if(keyQuery_connection){
        free(keyQuery_connection);
        keyQuery_connection = NULL;
    }
    if(keyPairQuery_connection){
        keyValuePair_free(keyPairQuery_connection);
        keyPairQuery_connection = NULL;
    }
    if(keyQuery_method){
        free(keyQuery_method);
        keyQuery_method = NULL;
    }
    if(keyPairQuery_method){
        keyValuePair_free(keyPairQuery_method);
        keyPairQuery_method = NULL;
    }
    if(keyQuery_status){
        free(keyQuery_status);
        keyQuery_status = NULL;
    }
    if(keyPairQuery_status){
        keyValuePair_free(keyPairQuery_status);
        keyPairQuery_status = NULL;
    }
    if(keyQuery_closure){
        free(keyQuery_closure);
        keyQuery_closure = NULL;
    }
    if(keyPairQuery_closure){
        keyValuePair_free(keyPairQuery_closure);
        keyPairQuery_closure = NULL;
    }
    if(keyQuery_message){
        free(keyQuery_message);
        keyQuery_message = NULL;
    }
    if(valueQuery_message){
        free(valueQuery_message);
        valueQuery_message = NULL;
    }
    if(keyPairQuery_message){
        keyValuePair_free(keyPairQuery_message);
        keyPairQuery_message = NULL;
    }
    if(keyQuery_followUp){
        free(keyQuery_followUp);
        keyQuery_followUp = NULL;
    }
    if(keyPairQuery_followUp){
        keyValuePair_free(keyPairQuery_followUp);
        keyPairQuery_followUp = NULL;
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

// Deletes Assignment Status
//
// Deletes an assignment status.
//
sirqul_response_t*
AssignmentAPI_assignmentStatusDelete(apiClient_t *apiClient, long accountId, long assignmentStatusId)
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
    char *localVarPath = strdup("/assignment/status/delete");





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
    char *keyQuery_assignmentStatusId = NULL;
    char * valueQuery_assignmentStatusId ;
    keyValuePair_t *keyPairQuery_assignmentStatusId = 0;
    {
        keyQuery_assignmentStatusId = strdup("assignmentStatusId");
        valueQuery_assignmentStatusId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_assignmentStatusId, MAX_NUMBER_LENGTH_LONG, "%d", assignmentStatusId);
        keyPairQuery_assignmentStatusId = keyValuePair_create(keyQuery_assignmentStatusId, valueQuery_assignmentStatusId);
        list_addElement(localVarQueryParameters,keyPairQuery_assignmentStatusId);
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
        cJSON *AssignmentAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(AssignmentAPIlocalVarJSON);
        cJSON_Delete(AssignmentAPIlocalVarJSON);
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
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_assignmentStatusId){
        free(keyQuery_assignmentStatusId);
        keyQuery_assignmentStatusId = NULL;
    }
    if(keyPairQuery_assignmentStatusId){
        keyValuePair_free(keyPairQuery_assignmentStatusId);
        keyPairQuery_assignmentStatusId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Assignment Status
//
// Get an assignment status.
//
assignment_status_response_t*
AssignmentAPI_assignmentStatusGet(apiClient_t *apiClient, long accountId, long assignmentStatusId)
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
    char *localVarPath = strdup("/assignment/status/get");





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
    char *keyQuery_assignmentStatusId = NULL;
    char * valueQuery_assignmentStatusId ;
    keyValuePair_t *keyPairQuery_assignmentStatusId = 0;
    {
        keyQuery_assignmentStatusId = strdup("assignmentStatusId");
        valueQuery_assignmentStatusId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_assignmentStatusId, MAX_NUMBER_LENGTH_LONG, "%d", assignmentStatusId);
        keyPairQuery_assignmentStatusId = keyValuePair_create(keyQuery_assignmentStatusId, valueQuery_assignmentStatusId);
        list_addElement(localVarQueryParameters,keyPairQuery_assignmentStatusId);
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
    assignment_status_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AssignmentAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = assignment_status_response_parseFromJSON(AssignmentAPIlocalVarJSON);
        cJSON_Delete(AssignmentAPIlocalVarJSON);
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
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_assignmentStatusId){
        free(keyQuery_assignmentStatusId);
        keyQuery_assignmentStatusId = NULL;
    }
    if(keyPairQuery_assignmentStatusId){
        keyValuePair_free(keyPairQuery_assignmentStatusId);
        keyPairQuery_assignmentStatusId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Assignment Statuses
//
// Search on assignment statuses.
//
list_t*
AssignmentAPI_assignmentStatusSearch(apiClient_t *apiClient, long accountId, sirqul_iot_platform_assignmentStatusSearch_sortField_e sortField, int *descending, int *activeOnly, int *start, int *limit, long assignmentId, long creatorAccountId, long assigneeAccountId, long retailerLocationId, sirqul_iot_platform_assignmentStatusSearch_statusType_e statusType, char *keyword)
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
    char *localVarPath = strdup("/assignment/status/search");





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
    char *keyQuery_assignmentId = NULL;
    char * valueQuery_assignmentId ;
    keyValuePair_t *keyPairQuery_assignmentId = 0;
    {
        keyQuery_assignmentId = strdup("assignmentId");
        valueQuery_assignmentId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_assignmentId, MAX_NUMBER_LENGTH_LONG, "%d", assignmentId);
        keyPairQuery_assignmentId = keyValuePair_create(keyQuery_assignmentId, valueQuery_assignmentId);
        list_addElement(localVarQueryParameters,keyPairQuery_assignmentId);
    }

    // query parameters
    char *keyQuery_creatorAccountId = NULL;
    char * valueQuery_creatorAccountId ;
    keyValuePair_t *keyPairQuery_creatorAccountId = 0;
    {
        keyQuery_creatorAccountId = strdup("creatorAccountId");
        valueQuery_creatorAccountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_creatorAccountId, MAX_NUMBER_LENGTH_LONG, "%d", creatorAccountId);
        keyPairQuery_creatorAccountId = keyValuePair_create(keyQuery_creatorAccountId, valueQuery_creatorAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_creatorAccountId);
    }

    // query parameters
    char *keyQuery_assigneeAccountId = NULL;
    char * valueQuery_assigneeAccountId ;
    keyValuePair_t *keyPairQuery_assigneeAccountId = 0;
    {
        keyQuery_assigneeAccountId = strdup("assigneeAccountId");
        valueQuery_assigneeAccountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_assigneeAccountId, MAX_NUMBER_LENGTH_LONG, "%d", assigneeAccountId);
        keyPairQuery_assigneeAccountId = keyValuePair_create(keyQuery_assigneeAccountId, valueQuery_assigneeAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_assigneeAccountId);
    }

    // query parameters
    char *keyQuery_retailerLocationId = NULL;
    char * valueQuery_retailerLocationId ;
    keyValuePair_t *keyPairQuery_retailerLocationId = 0;
    {
        keyQuery_retailerLocationId = strdup("retailerLocationId");
        valueQuery_retailerLocationId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_retailerLocationId, MAX_NUMBER_LENGTH_LONG, "%d", retailerLocationId);
        keyPairQuery_retailerLocationId = keyValuePair_create(keyQuery_retailerLocationId, valueQuery_retailerLocationId);
        list_addElement(localVarQueryParameters,keyPairQuery_retailerLocationId);
    }

    // query parameters
    char *keyQuery_statusType = NULL;
    sirqul_iot_platform_assignmentStatusSearch_statusType_e valueQuery_statusType ;
    keyValuePair_t *keyPairQuery_statusType = 0;
    if (statusType)
    {
        keyQuery_statusType = strdup("statusType");
        valueQuery_statusType = (statusType);
        keyPairQuery_statusType = keyValuePair_create(keyQuery_statusType, strdup(assignmentStatusSearch_STATUSTYPE_ToString(
        valueQuery_statusType)));
        list_addElement(localVarQueryParameters,keyPairQuery_statusType);
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
    sirqul_iot_platform_assignmentStatusSearch_sortField_e valueQuery_sortField ;
    keyValuePair_t *keyPairQuery_sortField = 0;
    if (sortField)
    {
        keyQuery_sortField = strdup("sortField");
        valueQuery_sortField = (sortField);
        keyPairQuery_sortField = keyValuePair_create(keyQuery_sortField, strdup(assignmentStatusSearch_SORTFIELD_ToString(
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
        cJSON *AssignmentAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(AssignmentAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, AssignmentAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( AssignmentAPIlocalVarJSON);
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
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_assignmentId){
        free(keyQuery_assignmentId);
        keyQuery_assignmentId = NULL;
    }
    if(keyPairQuery_assignmentId){
        keyValuePair_free(keyPairQuery_assignmentId);
        keyPairQuery_assignmentId = NULL;
    }
    if(keyQuery_creatorAccountId){
        free(keyQuery_creatorAccountId);
        keyQuery_creatorAccountId = NULL;
    }
    if(keyPairQuery_creatorAccountId){
        keyValuePair_free(keyPairQuery_creatorAccountId);
        keyPairQuery_creatorAccountId = NULL;
    }
    if(keyQuery_assigneeAccountId){
        free(keyQuery_assigneeAccountId);
        keyQuery_assigneeAccountId = NULL;
    }
    if(keyPairQuery_assigneeAccountId){
        keyValuePair_free(keyPairQuery_assigneeAccountId);
        keyPairQuery_assigneeAccountId = NULL;
    }
    if(keyQuery_retailerLocationId){
        free(keyQuery_retailerLocationId);
        keyQuery_retailerLocationId = NULL;
    }
    if(keyPairQuery_retailerLocationId){
        keyValuePair_free(keyPairQuery_retailerLocationId);
        keyPairQuery_retailerLocationId = NULL;
    }
    if(keyQuery_statusType){
        free(keyQuery_statusType);
        keyQuery_statusType = NULL;
    }
    if(keyPairQuery_statusType){
        keyValuePair_free(keyPairQuery_statusType);
        keyPairQuery_statusType = NULL;
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

// Update Assignment Status
//
// Updates an assignment status.
//
assignment_status_response_t*
AssignmentAPI_assignmentStatusUpdate(apiClient_t *apiClient, long accountId, long assignmentStatusId, long scheduledNotificationId, sirqul_iot_platform_assignmentStatusUpdate_toDo_e toDo, sirqul_iot_platform_assignmentStatusUpdate_connection_e connection, sirqul_iot_platform_assignmentStatusUpdate_method_e method, sirqul_iot_platform_assignmentStatusUpdate_status_e status, sirqul_iot_platform_assignmentStatusUpdate_closure_e closure, char *message, long followUp, int *active)
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
    char *localVarPath = strdup("/assignment/status/update");





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
    char *keyQuery_assignmentStatusId = NULL;
    char * valueQuery_assignmentStatusId ;
    keyValuePair_t *keyPairQuery_assignmentStatusId = 0;
    {
        keyQuery_assignmentStatusId = strdup("assignmentStatusId");
        valueQuery_assignmentStatusId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_assignmentStatusId, MAX_NUMBER_LENGTH_LONG, "%d", assignmentStatusId);
        keyPairQuery_assignmentStatusId = keyValuePair_create(keyQuery_assignmentStatusId, valueQuery_assignmentStatusId);
        list_addElement(localVarQueryParameters,keyPairQuery_assignmentStatusId);
    }

    // query parameters
    char *keyQuery_scheduledNotificationId = NULL;
    char * valueQuery_scheduledNotificationId ;
    keyValuePair_t *keyPairQuery_scheduledNotificationId = 0;
    {
        keyQuery_scheduledNotificationId = strdup("scheduledNotificationId");
        valueQuery_scheduledNotificationId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_scheduledNotificationId, MAX_NUMBER_LENGTH_LONG, "%d", scheduledNotificationId);
        keyPairQuery_scheduledNotificationId = keyValuePair_create(keyQuery_scheduledNotificationId, valueQuery_scheduledNotificationId);
        list_addElement(localVarQueryParameters,keyPairQuery_scheduledNotificationId);
    }

    // query parameters
    char *keyQuery_toDo = NULL;
    sirqul_iot_platform_assignmentStatusUpdate_toDo_e valueQuery_toDo ;
    keyValuePair_t *keyPairQuery_toDo = 0;
    if (toDo)
    {
        keyQuery_toDo = strdup("toDo");
        valueQuery_toDo = (toDo);
        keyPairQuery_toDo = keyValuePair_create(keyQuery_toDo, strdup(assignmentStatusUpdate_TODO_ToString(
        valueQuery_toDo)));
        list_addElement(localVarQueryParameters,keyPairQuery_toDo);
    }

    // query parameters
    char *keyQuery_connection = NULL;
    sirqul_iot_platform_assignmentStatusUpdate_connection_e valueQuery_connection ;
    keyValuePair_t *keyPairQuery_connection = 0;
    if (connection)
    {
        keyQuery_connection = strdup("connection");
        valueQuery_connection = (connection);
        keyPairQuery_connection = keyValuePair_create(keyQuery_connection, strdup(assignmentStatusUpdate_CONNECTION_ToString(
        valueQuery_connection)));
        list_addElement(localVarQueryParameters,keyPairQuery_connection);
    }

    // query parameters
    char *keyQuery_method = NULL;
    sirqul_iot_platform_assignmentStatusUpdate_method_e valueQuery_method ;
    keyValuePair_t *keyPairQuery_method = 0;
    if (method)
    {
        keyQuery_method = strdup("method");
        valueQuery_method = (method);
        keyPairQuery_method = keyValuePair_create(keyQuery_method, strdup(assignmentStatusUpdate_METHOD_ToString(
        valueQuery_method)));
        list_addElement(localVarQueryParameters,keyPairQuery_method);
    }

    // query parameters
    char *keyQuery_status = NULL;
    sirqul_iot_platform_assignmentStatusUpdate_status_e valueQuery_status ;
    keyValuePair_t *keyPairQuery_status = 0;
    if (status)
    {
        keyQuery_status = strdup("status");
        valueQuery_status = (status);
        keyPairQuery_status = keyValuePair_create(keyQuery_status, strdup(assignmentStatusUpdate_STATUS_ToString(
        valueQuery_status)));
        list_addElement(localVarQueryParameters,keyPairQuery_status);
    }

    // query parameters
    char *keyQuery_closure = NULL;
    sirqul_iot_platform_assignmentStatusUpdate_closure_e valueQuery_closure ;
    keyValuePair_t *keyPairQuery_closure = 0;
    if (closure)
    {
        keyQuery_closure = strdup("closure");
        valueQuery_closure = (closure);
        keyPairQuery_closure = keyValuePair_create(keyQuery_closure, strdup(assignmentStatusUpdate_CLOSURE_ToString(
        valueQuery_closure)));
        list_addElement(localVarQueryParameters,keyPairQuery_closure);
    }

    // query parameters
    char *keyQuery_message = NULL;
    char * valueQuery_message = NULL;
    keyValuePair_t *keyPairQuery_message = 0;
    if (message)
    {
        keyQuery_message = strdup("message");
        valueQuery_message = strdup((message));
        keyPairQuery_message = keyValuePair_create(keyQuery_message, valueQuery_message);
        list_addElement(localVarQueryParameters,keyPairQuery_message);
    }

    // query parameters
    char *keyQuery_followUp = NULL;
    char * valueQuery_followUp ;
    keyValuePair_t *keyPairQuery_followUp = 0;
    {
        keyQuery_followUp = strdup("followUp");
        valueQuery_followUp = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_followUp, MAX_NUMBER_LENGTH_LONG, "%d", followUp);
        keyPairQuery_followUp = keyValuePair_create(keyQuery_followUp, valueQuery_followUp);
        list_addElement(localVarQueryParameters,keyPairQuery_followUp);
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
    assignment_status_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AssignmentAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = assignment_status_response_parseFromJSON(AssignmentAPIlocalVarJSON);
        cJSON_Delete(AssignmentAPIlocalVarJSON);
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
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_assignmentStatusId){
        free(keyQuery_assignmentStatusId);
        keyQuery_assignmentStatusId = NULL;
    }
    if(keyPairQuery_assignmentStatusId){
        keyValuePair_free(keyPairQuery_assignmentStatusId);
        keyPairQuery_assignmentStatusId = NULL;
    }
    if(keyQuery_scheduledNotificationId){
        free(keyQuery_scheduledNotificationId);
        keyQuery_scheduledNotificationId = NULL;
    }
    if(keyPairQuery_scheduledNotificationId){
        keyValuePair_free(keyPairQuery_scheduledNotificationId);
        keyPairQuery_scheduledNotificationId = NULL;
    }
    if(keyQuery_toDo){
        free(keyQuery_toDo);
        keyQuery_toDo = NULL;
    }
    if(keyPairQuery_toDo){
        keyValuePair_free(keyPairQuery_toDo);
        keyPairQuery_toDo = NULL;
    }
    if(keyQuery_connection){
        free(keyQuery_connection);
        keyQuery_connection = NULL;
    }
    if(keyPairQuery_connection){
        keyValuePair_free(keyPairQuery_connection);
        keyPairQuery_connection = NULL;
    }
    if(keyQuery_method){
        free(keyQuery_method);
        keyQuery_method = NULL;
    }
    if(keyPairQuery_method){
        keyValuePair_free(keyPairQuery_method);
        keyPairQuery_method = NULL;
    }
    if(keyQuery_status){
        free(keyQuery_status);
        keyQuery_status = NULL;
    }
    if(keyPairQuery_status){
        keyValuePair_free(keyPairQuery_status);
        keyPairQuery_status = NULL;
    }
    if(keyQuery_closure){
        free(keyQuery_closure);
        keyQuery_closure = NULL;
    }
    if(keyPairQuery_closure){
        keyValuePair_free(keyPairQuery_closure);
        keyPairQuery_closure = NULL;
    }
    if(keyQuery_message){
        free(keyQuery_message);
        keyQuery_message = NULL;
    }
    if(valueQuery_message){
        free(valueQuery_message);
        valueQuery_message = NULL;
    }
    if(keyPairQuery_message){
        keyValuePair_free(keyPairQuery_message);
        keyPairQuery_message = NULL;
    }
    if(keyQuery_followUp){
        free(keyQuery_followUp);
        keyQuery_followUp = NULL;
    }
    if(keyPairQuery_followUp){
        keyValuePair_free(keyPairQuery_followUp);
        keyPairQuery_followUp = NULL;
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

// Update Assignment
//
// Updates an assignment.
//
assignment_response_t*
AssignmentAPI_assignmentUpdate(apiClient_t *apiClient, long accountId, long assignmentId, char *name, char *description, long assigneeAccountId, long retailerLocationId, char *tags, int *active)
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
    char *localVarPath = strdup("/assignment/update");





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
    char *keyQuery_assignmentId = NULL;
    char * valueQuery_assignmentId ;
    keyValuePair_t *keyPairQuery_assignmentId = 0;
    {
        keyQuery_assignmentId = strdup("assignmentId");
        valueQuery_assignmentId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_assignmentId, MAX_NUMBER_LENGTH_LONG, "%d", assignmentId);
        keyPairQuery_assignmentId = keyValuePair_create(keyQuery_assignmentId, valueQuery_assignmentId);
        list_addElement(localVarQueryParameters,keyPairQuery_assignmentId);
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
    char *keyQuery_assigneeAccountId = NULL;
    char * valueQuery_assigneeAccountId ;
    keyValuePair_t *keyPairQuery_assigneeAccountId = 0;
    {
        keyQuery_assigneeAccountId = strdup("assigneeAccountId");
        valueQuery_assigneeAccountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_assigneeAccountId, MAX_NUMBER_LENGTH_LONG, "%d", assigneeAccountId);
        keyPairQuery_assigneeAccountId = keyValuePair_create(keyQuery_assigneeAccountId, valueQuery_assigneeAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_assigneeAccountId);
    }

    // query parameters
    char *keyQuery_retailerLocationId = NULL;
    char * valueQuery_retailerLocationId ;
    keyValuePair_t *keyPairQuery_retailerLocationId = 0;
    {
        keyQuery_retailerLocationId = strdup("retailerLocationId");
        valueQuery_retailerLocationId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_retailerLocationId, MAX_NUMBER_LENGTH_LONG, "%d", retailerLocationId);
        keyPairQuery_retailerLocationId = keyValuePair_create(keyQuery_retailerLocationId, valueQuery_retailerLocationId);
        list_addElement(localVarQueryParameters,keyPairQuery_retailerLocationId);
    }

    // query parameters
    char *keyQuery_tags = NULL;
    char * valueQuery_tags = NULL;
    keyValuePair_t *keyPairQuery_tags = 0;
    if (tags)
    {
        keyQuery_tags = strdup("tags");
        valueQuery_tags = strdup((tags));
        keyPairQuery_tags = keyValuePair_create(keyQuery_tags, valueQuery_tags);
        list_addElement(localVarQueryParameters,keyPairQuery_tags);
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
    assignment_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AssignmentAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = assignment_response_parseFromJSON(AssignmentAPIlocalVarJSON);
        cJSON_Delete(AssignmentAPIlocalVarJSON);
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
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_assignmentId){
        free(keyQuery_assignmentId);
        keyQuery_assignmentId = NULL;
    }
    if(keyPairQuery_assignmentId){
        keyValuePair_free(keyPairQuery_assignmentId);
        keyPairQuery_assignmentId = NULL;
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
    if(keyQuery_assigneeAccountId){
        free(keyQuery_assigneeAccountId);
        keyQuery_assigneeAccountId = NULL;
    }
    if(keyPairQuery_assigneeAccountId){
        keyValuePair_free(keyPairQuery_assigneeAccountId);
        keyPairQuery_assigneeAccountId = NULL;
    }
    if(keyQuery_retailerLocationId){
        free(keyQuery_retailerLocationId);
        keyQuery_retailerLocationId = NULL;
    }
    if(keyPairQuery_retailerLocationId){
        keyValuePair_free(keyPairQuery_retailerLocationId);
        keyPairQuery_retailerLocationId = NULL;
    }
    if(keyQuery_tags){
        free(keyQuery_tags);
        keyQuery_tags = NULL;
    }
    if(valueQuery_tags){
        free(valueQuery_tags);
        valueQuery_tags = NULL;
    }
    if(keyPairQuery_tags){
        keyValuePair_free(keyPairQuery_tags);
        keyPairQuery_tags = NULL;
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

