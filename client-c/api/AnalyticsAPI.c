#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "AnalyticsAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21

// Functions for enum GROUPBYROOT for AnalyticsAPI_aggregatedFilteredUsage

static char* aggregatedFilteredUsage_GROUPBYROOT_ToString(sirqul_iot_platform_aggregatedFilteredUsage_groupByRoot_e GROUPBYROOT){
    char *GROUPBYROOTArray[] =  { "NULL", "TAG_COUNT", "TAG", "TOKEN", "MODEL", "DEVICE_TYPE", "DEVICE", "DEVICE_OS", "DEVICE_ID", "IP_ADDRESS", "STATE", "CITY", "ZIP", "COUNTRY", "CREATED", "UPDATED", "LAST_UPDATED", "CLIENT_TIME", "ACTIVE", "CUSTOM_ID", "CUSTOM_TYPE", "CUSTOM_VALUE", "CUSTOM_VALUE2", "CUSTOM_LONG", "CUSTOM_LONG2", "CUSTOM_MESSAGE", "CUSTOM_MESSAGE2", "ACCOUNT_ID", "ACCOUNT_USERNAME", "ACCOUNT_DISPLAY", "ACCOUNT_CREATED", "ACCOUNT_GENDER", "ACCOUNT_AGE_GROUP", "APPLICATION_ID", "APPLICATION_KEY", "APPLICATION_NAME" };
    return GROUPBYROOTArray[GROUPBYROOT];
}

static sirqul_iot_platform_aggregatedFilteredUsage_groupByRoot_e aggregatedFilteredUsage_GROUPBYROOT_FromString(char* GROUPBYROOT){
    int stringToReturn = 0;
    char *GROUPBYROOTArray[] =  { "NULL", "TAG_COUNT", "TAG", "TOKEN", "MODEL", "DEVICE_TYPE", "DEVICE", "DEVICE_OS", "DEVICE_ID", "IP_ADDRESS", "STATE", "CITY", "ZIP", "COUNTRY", "CREATED", "UPDATED", "LAST_UPDATED", "CLIENT_TIME", "ACTIVE", "CUSTOM_ID", "CUSTOM_TYPE", "CUSTOM_VALUE", "CUSTOM_VALUE2", "CUSTOM_LONG", "CUSTOM_LONG2", "CUSTOM_MESSAGE", "CUSTOM_MESSAGE2", "ACCOUNT_ID", "ACCOUNT_USERNAME", "ACCOUNT_DISPLAY", "ACCOUNT_CREATED", "ACCOUNT_GENDER", "ACCOUNT_AGE_GROUP", "APPLICATION_ID", "APPLICATION_KEY", "APPLICATION_NAME" };
    size_t sizeofArray = sizeof(GROUPBYROOTArray) / sizeof(GROUPBYROOTArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(GROUPBYROOT, GROUPBYROOTArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function aggregatedFilteredUsage_GROUPBYROOT_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *aggregatedFilteredUsage_GROUPBYROOT_convertToJSON(sirqul_iot_platform_aggregatedFilteredUsage_groupByRoot_e GROUPBYROOT) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "groupByRoot", aggregatedFilteredUsage_GROUPBYROOT_ToString(GROUPBYROOT)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function aggregatedFilteredUsage_GROUPBYROOT_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_aggregatedFilteredUsage_groupByRoot_e aggregatedFilteredUsage_GROUPBYROOT_parseFromJSON(cJSON* GROUPBYROOTJSON) {
    sirqul_iot_platform_aggregatedFilteredUsage_groupByRoot_e GROUPBYROOTVariable = 0;
    cJSON *GROUPBYROOTVar = cJSON_GetObjectItemCaseSensitive(GROUPBYROOTJSON, "groupByRoot");
    if(!cJSON_IsString(GROUPBYROOTVar) || (GROUPBYROOTVar->valuestring == NULL))
    {
        goto end;
    }
    GROUPBYROOTVariable = aggregatedFilteredUsage_GROUPBYROOT_FromString(GROUPBYROOTVar->valuestring);
    return GROUPBYROOTVariable;
end:
    return 0;
}
*/

// Functions for enum GROUPBY for AnalyticsAPI_aggregatedFilteredUsage

static char* aggregatedFilteredUsage_GROUPBY_ToString(sirqul_iot_platform_aggregatedFilteredUsage_groupBy_e GROUPBY){
    char *GROUPBYArray[] =  { "NULL", "TAG_COUNT", "TAG", "TOKEN", "MODEL", "DEVICE_TYPE", "DEVICE", "DEVICE_OS", "DEVICE_ID", "IP_ADDRESS", "STATE", "CITY", "ZIP", "COUNTRY", "CREATED", "UPDATED", "LAST_UPDATED", "CLIENT_TIME", "ACTIVE", "CUSTOM_ID", "CUSTOM_TYPE", "CUSTOM_VALUE", "CUSTOM_VALUE2", "CUSTOM_LONG", "CUSTOM_LONG2", "CUSTOM_MESSAGE", "CUSTOM_MESSAGE2", "ACCOUNT_ID", "ACCOUNT_USERNAME", "ACCOUNT_DISPLAY", "ACCOUNT_CREATED", "ACCOUNT_GENDER", "ACCOUNT_AGE_GROUP", "APPLICATION_ID", "APPLICATION_KEY", "APPLICATION_NAME" };
    return GROUPBYArray[GROUPBY];
}

static sirqul_iot_platform_aggregatedFilteredUsage_groupBy_e aggregatedFilteredUsage_GROUPBY_FromString(char* GROUPBY){
    int stringToReturn = 0;
    char *GROUPBYArray[] =  { "NULL", "TAG_COUNT", "TAG", "TOKEN", "MODEL", "DEVICE_TYPE", "DEVICE", "DEVICE_OS", "DEVICE_ID", "IP_ADDRESS", "STATE", "CITY", "ZIP", "COUNTRY", "CREATED", "UPDATED", "LAST_UPDATED", "CLIENT_TIME", "ACTIVE", "CUSTOM_ID", "CUSTOM_TYPE", "CUSTOM_VALUE", "CUSTOM_VALUE2", "CUSTOM_LONG", "CUSTOM_LONG2", "CUSTOM_MESSAGE", "CUSTOM_MESSAGE2", "ACCOUNT_ID", "ACCOUNT_USERNAME", "ACCOUNT_DISPLAY", "ACCOUNT_CREATED", "ACCOUNT_GENDER", "ACCOUNT_AGE_GROUP", "APPLICATION_ID", "APPLICATION_KEY", "APPLICATION_NAME" };
    size_t sizeofArray = sizeof(GROUPBYArray) / sizeof(GROUPBYArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(GROUPBY, GROUPBYArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function aggregatedFilteredUsage_GROUPBY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *aggregatedFilteredUsage_GROUPBY_convertToJSON(sirqul_iot_platform_aggregatedFilteredUsage_groupBy_e GROUPBY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "groupBy", aggregatedFilteredUsage_GROUPBY_ToString(GROUPBY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function aggregatedFilteredUsage_GROUPBY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_aggregatedFilteredUsage_groupBy_e aggregatedFilteredUsage_GROUPBY_parseFromJSON(cJSON* GROUPBYJSON) {
    sirqul_iot_platform_aggregatedFilteredUsage_groupBy_e GROUPBYVariable = 0;
    cJSON *GROUPBYVar = cJSON_GetObjectItemCaseSensitive(GROUPBYJSON, "groupBy");
    if(!cJSON_IsString(GROUPBYVar) || (GROUPBYVar->valuestring == NULL))
    {
        goto end;
    }
    GROUPBYVariable = aggregatedFilteredUsage_GROUPBY_FromString(GROUPBYVar->valuestring);
    return GROUPBYVariable;
end:
    return 0;
}
*/

// Functions for enum DISTINCTCOUNT for AnalyticsAPI_aggregatedFilteredUsage

static char* aggregatedFilteredUsage_DISTINCTCOUNT_ToString(sirqul_iot_platform_aggregatedFilteredUsage_distinctCount_e DISTINCTCOUNT){
    char *DISTINCTCOUNTArray[] =  { "NULL", "TAG_COUNT", "TAG", "TOKEN", "MODEL", "DEVICE_TYPE", "DEVICE", "DEVICE_OS", "DEVICE_ID", "IP_ADDRESS", "STATE", "CITY", "ZIP", "COUNTRY", "CREATED", "UPDATED", "LAST_UPDATED", "CLIENT_TIME", "ACTIVE", "CUSTOM_ID", "CUSTOM_TYPE", "CUSTOM_VALUE", "CUSTOM_VALUE2", "CUSTOM_LONG", "CUSTOM_LONG2", "CUSTOM_MESSAGE", "CUSTOM_MESSAGE2", "ACCOUNT_ID", "ACCOUNT_USERNAME", "ACCOUNT_DISPLAY", "ACCOUNT_CREATED", "ACCOUNT_GENDER", "ACCOUNT_AGE_GROUP", "APPLICATION_ID", "APPLICATION_KEY", "APPLICATION_NAME" };
    return DISTINCTCOUNTArray[DISTINCTCOUNT];
}

static sirqul_iot_platform_aggregatedFilteredUsage_distinctCount_e aggregatedFilteredUsage_DISTINCTCOUNT_FromString(char* DISTINCTCOUNT){
    int stringToReturn = 0;
    char *DISTINCTCOUNTArray[] =  { "NULL", "TAG_COUNT", "TAG", "TOKEN", "MODEL", "DEVICE_TYPE", "DEVICE", "DEVICE_OS", "DEVICE_ID", "IP_ADDRESS", "STATE", "CITY", "ZIP", "COUNTRY", "CREATED", "UPDATED", "LAST_UPDATED", "CLIENT_TIME", "ACTIVE", "CUSTOM_ID", "CUSTOM_TYPE", "CUSTOM_VALUE", "CUSTOM_VALUE2", "CUSTOM_LONG", "CUSTOM_LONG2", "CUSTOM_MESSAGE", "CUSTOM_MESSAGE2", "ACCOUNT_ID", "ACCOUNT_USERNAME", "ACCOUNT_DISPLAY", "ACCOUNT_CREATED", "ACCOUNT_GENDER", "ACCOUNT_AGE_GROUP", "APPLICATION_ID", "APPLICATION_KEY", "APPLICATION_NAME" };
    size_t sizeofArray = sizeof(DISTINCTCOUNTArray) / sizeof(DISTINCTCOUNTArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(DISTINCTCOUNT, DISTINCTCOUNTArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function aggregatedFilteredUsage_DISTINCTCOUNT_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *aggregatedFilteredUsage_DISTINCTCOUNT_convertToJSON(sirqul_iot_platform_aggregatedFilteredUsage_distinctCount_e DISTINCTCOUNT) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "distinctCount", aggregatedFilteredUsage_DISTINCTCOUNT_ToString(DISTINCTCOUNT)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function aggregatedFilteredUsage_DISTINCTCOUNT_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_aggregatedFilteredUsage_distinctCount_e aggregatedFilteredUsage_DISTINCTCOUNT_parseFromJSON(cJSON* DISTINCTCOUNTJSON) {
    sirqul_iot_platform_aggregatedFilteredUsage_distinctCount_e DISTINCTCOUNTVariable = 0;
    cJSON *DISTINCTCOUNTVar = cJSON_GetObjectItemCaseSensitive(DISTINCTCOUNTJSON, "distinctCount");
    if(!cJSON_IsString(DISTINCTCOUNTVar) || (DISTINCTCOUNTVar->valuestring == NULL))
    {
        goto end;
    }
    DISTINCTCOUNTVariable = aggregatedFilteredUsage_DISTINCTCOUNT_FromString(DISTINCTCOUNTVar->valuestring);
    return DISTINCTCOUNTVariable;
end:
    return 0;
}
*/

// Functions for enum SORTFIELD for AnalyticsAPI_aggregatedFilteredUsage

static char* aggregatedFilteredUsage_SORTFIELD_ToString(sirqul_iot_platform_aggregatedFilteredUsage_sortField_e SORTFIELD){
    char *SORTFIELDArray[] =  { "NULL", "TAG_COUNT", "TAG", "TOKEN", "MODEL", "DEVICE_TYPE", "DEVICE", "DEVICE_OS", "DEVICE_ID", "IP_ADDRESS", "STATE", "CITY", "ZIP", "COUNTRY", "CREATED", "UPDATED", "LAST_UPDATED", "CLIENT_TIME", "ACTIVE", "CUSTOM_ID", "CUSTOM_TYPE", "CUSTOM_VALUE", "CUSTOM_VALUE2", "CUSTOM_LONG", "CUSTOM_LONG2", "CUSTOM_MESSAGE", "CUSTOM_MESSAGE2", "ACCOUNT_ID", "ACCOUNT_USERNAME", "ACCOUNT_DISPLAY", "ACCOUNT_CREATED", "ACCOUNT_GENDER", "ACCOUNT_AGE_GROUP", "APPLICATION_ID", "APPLICATION_KEY", "APPLICATION_NAME" };
    return SORTFIELDArray[SORTFIELD];
}

static sirqul_iot_platform_aggregatedFilteredUsage_sortField_e aggregatedFilteredUsage_SORTFIELD_FromString(char* SORTFIELD){
    int stringToReturn = 0;
    char *SORTFIELDArray[] =  { "NULL", "TAG_COUNT", "TAG", "TOKEN", "MODEL", "DEVICE_TYPE", "DEVICE", "DEVICE_OS", "DEVICE_ID", "IP_ADDRESS", "STATE", "CITY", "ZIP", "COUNTRY", "CREATED", "UPDATED", "LAST_UPDATED", "CLIENT_TIME", "ACTIVE", "CUSTOM_ID", "CUSTOM_TYPE", "CUSTOM_VALUE", "CUSTOM_VALUE2", "CUSTOM_LONG", "CUSTOM_LONG2", "CUSTOM_MESSAGE", "CUSTOM_MESSAGE2", "ACCOUNT_ID", "ACCOUNT_USERNAME", "ACCOUNT_DISPLAY", "ACCOUNT_CREATED", "ACCOUNT_GENDER", "ACCOUNT_AGE_GROUP", "APPLICATION_ID", "APPLICATION_KEY", "APPLICATION_NAME" };
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
// Function aggregatedFilteredUsage_SORTFIELD_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *aggregatedFilteredUsage_SORTFIELD_convertToJSON(sirqul_iot_platform_aggregatedFilteredUsage_sortField_e SORTFIELD) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "sortField", aggregatedFilteredUsage_SORTFIELD_ToString(SORTFIELD)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function aggregatedFilteredUsage_SORTFIELD_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_aggregatedFilteredUsage_sortField_e aggregatedFilteredUsage_SORTFIELD_parseFromJSON(cJSON* SORTFIELDJSON) {
    sirqul_iot_platform_aggregatedFilteredUsage_sortField_e SORTFIELDVariable = 0;
    cJSON *SORTFIELDVar = cJSON_GetObjectItemCaseSensitive(SORTFIELDJSON, "sortField");
    if(!cJSON_IsString(SORTFIELDVar) || (SORTFIELDVar->valuestring == NULL))
    {
        goto end;
    }
    SORTFIELDVariable = aggregatedFilteredUsage_SORTFIELD_FromString(SORTFIELDVar->valuestring);
    return SORTFIELDVariable;
end:
    return 0;
}
*/

// Functions for enum RESPONSEFORMAT for AnalyticsAPI_aggregatedFilteredUsage

static char* aggregatedFilteredUsage_RESPONSEFORMAT_ToString(sirqul_iot_platform_aggregatedFilteredUsage_responseFormat_e RESPONSEFORMAT){
    char *RESPONSEFORMATArray[] =  { "NULL", "HTML", "XML", "JSON", "CSV" };
    return RESPONSEFORMATArray[RESPONSEFORMAT];
}

static sirqul_iot_platform_aggregatedFilteredUsage_responseFormat_e aggregatedFilteredUsage_RESPONSEFORMAT_FromString(char* RESPONSEFORMAT){
    int stringToReturn = 0;
    char *RESPONSEFORMATArray[] =  { "NULL", "HTML", "XML", "JSON", "CSV" };
    size_t sizeofArray = sizeof(RESPONSEFORMATArray) / sizeof(RESPONSEFORMATArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(RESPONSEFORMAT, RESPONSEFORMATArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function aggregatedFilteredUsage_RESPONSEFORMAT_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *aggregatedFilteredUsage_RESPONSEFORMAT_convertToJSON(sirqul_iot_platform_aggregatedFilteredUsage_responseFormat_e RESPONSEFORMAT) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "responseFormat", aggregatedFilteredUsage_RESPONSEFORMAT_ToString(RESPONSEFORMAT)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function aggregatedFilteredUsage_RESPONSEFORMAT_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_aggregatedFilteredUsage_responseFormat_e aggregatedFilteredUsage_RESPONSEFORMAT_parseFromJSON(cJSON* RESPONSEFORMATJSON) {
    sirqul_iot_platform_aggregatedFilteredUsage_responseFormat_e RESPONSEFORMATVariable = 0;
    cJSON *RESPONSEFORMATVar = cJSON_GetObjectItemCaseSensitive(RESPONSEFORMATJSON, "responseFormat");
    if(!cJSON_IsString(RESPONSEFORMATVar) || (RESPONSEFORMATVar->valuestring == NULL))
    {
        goto end;
    }
    RESPONSEFORMATVariable = aggregatedFilteredUsage_RESPONSEFORMAT_FromString(RESPONSEFORMATVar->valuestring);
    return RESPONSEFORMATVariable;
end:
    return 0;
}
*/

// Functions for enum GROUPBY for AnalyticsAPI_filteredUsage

static char* filteredUsage_GROUPBY_ToString(sirqul_iot_platform_filteredUsage_groupBy_e GROUPBY){
    char *GROUPBYArray[] =  { "NULL", "TAG_COUNT", "TAG", "TOKEN", "MODEL", "DEVICE_TYPE", "DEVICE", "DEVICE_OS", "DEVICE_ID", "IP_ADDRESS", "STATE", "CITY", "ZIP", "COUNTRY", "CREATED", "UPDATED", "LAST_UPDATED", "CLIENT_TIME", "ACTIVE", "CUSTOM_ID", "CUSTOM_TYPE", "CUSTOM_VALUE", "CUSTOM_VALUE2", "CUSTOM_LONG", "CUSTOM_LONG2", "CUSTOM_MESSAGE", "CUSTOM_MESSAGE2", "ACCOUNT_ID", "ACCOUNT_USERNAME", "ACCOUNT_DISPLAY", "ACCOUNT_CREATED", "ACCOUNT_GENDER", "ACCOUNT_AGE_GROUP", "APPLICATION_ID", "APPLICATION_KEY", "APPLICATION_NAME" };
    return GROUPBYArray[GROUPBY];
}

static sirqul_iot_platform_filteredUsage_groupBy_e filteredUsage_GROUPBY_FromString(char* GROUPBY){
    int stringToReturn = 0;
    char *GROUPBYArray[] =  { "NULL", "TAG_COUNT", "TAG", "TOKEN", "MODEL", "DEVICE_TYPE", "DEVICE", "DEVICE_OS", "DEVICE_ID", "IP_ADDRESS", "STATE", "CITY", "ZIP", "COUNTRY", "CREATED", "UPDATED", "LAST_UPDATED", "CLIENT_TIME", "ACTIVE", "CUSTOM_ID", "CUSTOM_TYPE", "CUSTOM_VALUE", "CUSTOM_VALUE2", "CUSTOM_LONG", "CUSTOM_LONG2", "CUSTOM_MESSAGE", "CUSTOM_MESSAGE2", "ACCOUNT_ID", "ACCOUNT_USERNAME", "ACCOUNT_DISPLAY", "ACCOUNT_CREATED", "ACCOUNT_GENDER", "ACCOUNT_AGE_GROUP", "APPLICATION_ID", "APPLICATION_KEY", "APPLICATION_NAME" };
    size_t sizeofArray = sizeof(GROUPBYArray) / sizeof(GROUPBYArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(GROUPBY, GROUPBYArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function filteredUsage_GROUPBY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *filteredUsage_GROUPBY_convertToJSON(sirqul_iot_platform_filteredUsage_groupBy_e GROUPBY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "groupBy", filteredUsage_GROUPBY_ToString(GROUPBY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function filteredUsage_GROUPBY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_filteredUsage_groupBy_e filteredUsage_GROUPBY_parseFromJSON(cJSON* GROUPBYJSON) {
    sirqul_iot_platform_filteredUsage_groupBy_e GROUPBYVariable = 0;
    cJSON *GROUPBYVar = cJSON_GetObjectItemCaseSensitive(GROUPBYJSON, "groupBy");
    if(!cJSON_IsString(GROUPBYVar) || (GROUPBYVar->valuestring == NULL))
    {
        goto end;
    }
    GROUPBYVariable = filteredUsage_GROUPBY_FromString(GROUPBYVar->valuestring);
    return GROUPBYVariable;
end:
    return 0;
}
*/

// Functions for enum DISTINCTCOUNT for AnalyticsAPI_filteredUsage

static char* filteredUsage_DISTINCTCOUNT_ToString(sirqul_iot_platform_filteredUsage_distinctCount_e DISTINCTCOUNT){
    char *DISTINCTCOUNTArray[] =  { "NULL", "TAG_COUNT", "TAG", "TOKEN", "MODEL", "DEVICE_TYPE", "DEVICE", "DEVICE_OS", "DEVICE_ID", "IP_ADDRESS", "STATE", "CITY", "ZIP", "COUNTRY", "CREATED", "UPDATED", "LAST_UPDATED", "CLIENT_TIME", "ACTIVE", "CUSTOM_ID", "CUSTOM_TYPE", "CUSTOM_VALUE", "CUSTOM_VALUE2", "CUSTOM_LONG", "CUSTOM_LONG2", "CUSTOM_MESSAGE", "CUSTOM_MESSAGE2", "ACCOUNT_ID", "ACCOUNT_USERNAME", "ACCOUNT_DISPLAY", "ACCOUNT_CREATED", "ACCOUNT_GENDER", "ACCOUNT_AGE_GROUP", "APPLICATION_ID", "APPLICATION_KEY", "APPLICATION_NAME" };
    return DISTINCTCOUNTArray[DISTINCTCOUNT];
}

static sirqul_iot_platform_filteredUsage_distinctCount_e filteredUsage_DISTINCTCOUNT_FromString(char* DISTINCTCOUNT){
    int stringToReturn = 0;
    char *DISTINCTCOUNTArray[] =  { "NULL", "TAG_COUNT", "TAG", "TOKEN", "MODEL", "DEVICE_TYPE", "DEVICE", "DEVICE_OS", "DEVICE_ID", "IP_ADDRESS", "STATE", "CITY", "ZIP", "COUNTRY", "CREATED", "UPDATED", "LAST_UPDATED", "CLIENT_TIME", "ACTIVE", "CUSTOM_ID", "CUSTOM_TYPE", "CUSTOM_VALUE", "CUSTOM_VALUE2", "CUSTOM_LONG", "CUSTOM_LONG2", "CUSTOM_MESSAGE", "CUSTOM_MESSAGE2", "ACCOUNT_ID", "ACCOUNT_USERNAME", "ACCOUNT_DISPLAY", "ACCOUNT_CREATED", "ACCOUNT_GENDER", "ACCOUNT_AGE_GROUP", "APPLICATION_ID", "APPLICATION_KEY", "APPLICATION_NAME" };
    size_t sizeofArray = sizeof(DISTINCTCOUNTArray) / sizeof(DISTINCTCOUNTArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(DISTINCTCOUNT, DISTINCTCOUNTArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function filteredUsage_DISTINCTCOUNT_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *filteredUsage_DISTINCTCOUNT_convertToJSON(sirqul_iot_platform_filteredUsage_distinctCount_e DISTINCTCOUNT) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "distinctCount", filteredUsage_DISTINCTCOUNT_ToString(DISTINCTCOUNT)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function filteredUsage_DISTINCTCOUNT_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_filteredUsage_distinctCount_e filteredUsage_DISTINCTCOUNT_parseFromJSON(cJSON* DISTINCTCOUNTJSON) {
    sirqul_iot_platform_filteredUsage_distinctCount_e DISTINCTCOUNTVariable = 0;
    cJSON *DISTINCTCOUNTVar = cJSON_GetObjectItemCaseSensitive(DISTINCTCOUNTJSON, "distinctCount");
    if(!cJSON_IsString(DISTINCTCOUNTVar) || (DISTINCTCOUNTVar->valuestring == NULL))
    {
        goto end;
    }
    DISTINCTCOUNTVariable = filteredUsage_DISTINCTCOUNT_FromString(DISTINCTCOUNTVar->valuestring);
    return DISTINCTCOUNTVariable;
end:
    return 0;
}
*/

// Functions for enum SUMCOLUMN for AnalyticsAPI_filteredUsage

static char* filteredUsage_SUMCOLUMN_ToString(sirqul_iot_platform_filteredUsage_sumColumn_e SUMCOLUMN){
    char *SUMCOLUMNArray[] =  { "NULL", "TAG_COUNT", "TAG", "TOKEN", "MODEL", "DEVICE_TYPE", "DEVICE", "DEVICE_OS", "DEVICE_ID", "IP_ADDRESS", "STATE", "CITY", "ZIP", "COUNTRY", "CREATED", "UPDATED", "LAST_UPDATED", "CLIENT_TIME", "ACTIVE", "CUSTOM_ID", "CUSTOM_TYPE", "CUSTOM_VALUE", "CUSTOM_VALUE2", "CUSTOM_LONG", "CUSTOM_LONG2", "CUSTOM_MESSAGE", "CUSTOM_MESSAGE2", "ACCOUNT_ID", "ACCOUNT_USERNAME", "ACCOUNT_DISPLAY", "ACCOUNT_CREATED", "ACCOUNT_GENDER", "ACCOUNT_AGE_GROUP", "APPLICATION_ID", "APPLICATION_KEY", "APPLICATION_NAME" };
    return SUMCOLUMNArray[SUMCOLUMN];
}

static sirqul_iot_platform_filteredUsage_sumColumn_e filteredUsage_SUMCOLUMN_FromString(char* SUMCOLUMN){
    int stringToReturn = 0;
    char *SUMCOLUMNArray[] =  { "NULL", "TAG_COUNT", "TAG", "TOKEN", "MODEL", "DEVICE_TYPE", "DEVICE", "DEVICE_OS", "DEVICE_ID", "IP_ADDRESS", "STATE", "CITY", "ZIP", "COUNTRY", "CREATED", "UPDATED", "LAST_UPDATED", "CLIENT_TIME", "ACTIVE", "CUSTOM_ID", "CUSTOM_TYPE", "CUSTOM_VALUE", "CUSTOM_VALUE2", "CUSTOM_LONG", "CUSTOM_LONG2", "CUSTOM_MESSAGE", "CUSTOM_MESSAGE2", "ACCOUNT_ID", "ACCOUNT_USERNAME", "ACCOUNT_DISPLAY", "ACCOUNT_CREATED", "ACCOUNT_GENDER", "ACCOUNT_AGE_GROUP", "APPLICATION_ID", "APPLICATION_KEY", "APPLICATION_NAME" };
    size_t sizeofArray = sizeof(SUMCOLUMNArray) / sizeof(SUMCOLUMNArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(SUMCOLUMN, SUMCOLUMNArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function filteredUsage_SUMCOLUMN_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *filteredUsage_SUMCOLUMN_convertToJSON(sirqul_iot_platform_filteredUsage_sumColumn_e SUMCOLUMN) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "sumColumn", filteredUsage_SUMCOLUMN_ToString(SUMCOLUMN)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function filteredUsage_SUMCOLUMN_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_filteredUsage_sumColumn_e filteredUsage_SUMCOLUMN_parseFromJSON(cJSON* SUMCOLUMNJSON) {
    sirqul_iot_platform_filteredUsage_sumColumn_e SUMCOLUMNVariable = 0;
    cJSON *SUMCOLUMNVar = cJSON_GetObjectItemCaseSensitive(SUMCOLUMNJSON, "sumColumn");
    if(!cJSON_IsString(SUMCOLUMNVar) || (SUMCOLUMNVar->valuestring == NULL))
    {
        goto end;
    }
    SUMCOLUMNVariable = filteredUsage_SUMCOLUMN_FromString(SUMCOLUMNVar->valuestring);
    return SUMCOLUMNVariable;
end:
    return 0;
}
*/

// Functions for enum SORTFIELD for AnalyticsAPI_filteredUsage

static char* filteredUsage_SORTFIELD_ToString(sirqul_iot_platform_filteredUsage_sortField_e SORTFIELD){
    char *SORTFIELDArray[] =  { "NULL", "TAG_COUNT", "TAG", "TOKEN", "MODEL", "DEVICE_TYPE", "DEVICE", "DEVICE_OS", "DEVICE_ID", "IP_ADDRESS", "STATE", "CITY", "ZIP", "COUNTRY", "CREATED", "UPDATED", "LAST_UPDATED", "CLIENT_TIME", "ACTIVE", "CUSTOM_ID", "CUSTOM_TYPE", "CUSTOM_VALUE", "CUSTOM_VALUE2", "CUSTOM_LONG", "CUSTOM_LONG2", "CUSTOM_MESSAGE", "CUSTOM_MESSAGE2", "ACCOUNT_ID", "ACCOUNT_USERNAME", "ACCOUNT_DISPLAY", "ACCOUNT_CREATED", "ACCOUNT_GENDER", "ACCOUNT_AGE_GROUP", "APPLICATION_ID", "APPLICATION_KEY", "APPLICATION_NAME" };
    return SORTFIELDArray[SORTFIELD];
}

static sirqul_iot_platform_filteredUsage_sortField_e filteredUsage_SORTFIELD_FromString(char* SORTFIELD){
    int stringToReturn = 0;
    char *SORTFIELDArray[] =  { "NULL", "TAG_COUNT", "TAG", "TOKEN", "MODEL", "DEVICE_TYPE", "DEVICE", "DEVICE_OS", "DEVICE_ID", "IP_ADDRESS", "STATE", "CITY", "ZIP", "COUNTRY", "CREATED", "UPDATED", "LAST_UPDATED", "CLIENT_TIME", "ACTIVE", "CUSTOM_ID", "CUSTOM_TYPE", "CUSTOM_VALUE", "CUSTOM_VALUE2", "CUSTOM_LONG", "CUSTOM_LONG2", "CUSTOM_MESSAGE", "CUSTOM_MESSAGE2", "ACCOUNT_ID", "ACCOUNT_USERNAME", "ACCOUNT_DISPLAY", "ACCOUNT_CREATED", "ACCOUNT_GENDER", "ACCOUNT_AGE_GROUP", "APPLICATION_ID", "APPLICATION_KEY", "APPLICATION_NAME" };
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
// Function filteredUsage_SORTFIELD_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *filteredUsage_SORTFIELD_convertToJSON(sirqul_iot_platform_filteredUsage_sortField_e SORTFIELD) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "sortField", filteredUsage_SORTFIELD_ToString(SORTFIELD)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function filteredUsage_SORTFIELD_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_filteredUsage_sortField_e filteredUsage_SORTFIELD_parseFromJSON(cJSON* SORTFIELDJSON) {
    sirqul_iot_platform_filteredUsage_sortField_e SORTFIELDVariable = 0;
    cJSON *SORTFIELDVar = cJSON_GetObjectItemCaseSensitive(SORTFIELDJSON, "sortField");
    if(!cJSON_IsString(SORTFIELDVar) || (SORTFIELDVar->valuestring == NULL))
    {
        goto end;
    }
    SORTFIELDVariable = filteredUsage_SORTFIELD_FromString(SORTFIELDVar->valuestring);
    return SORTFIELDVariable;
end:
    return 0;
}
*/

// Functions for enum RESPONSEFORMAT for AnalyticsAPI_filteredUsage

static char* filteredUsage_RESPONSEFORMAT_ToString(sirqul_iot_platform_filteredUsage_responseFormat_e RESPONSEFORMAT){
    char *RESPONSEFORMATArray[] =  { "NULL", "HTML", "XML", "JSON", "CSV" };
    return RESPONSEFORMATArray[RESPONSEFORMAT];
}

static sirqul_iot_platform_filteredUsage_responseFormat_e filteredUsage_RESPONSEFORMAT_FromString(char* RESPONSEFORMAT){
    int stringToReturn = 0;
    char *RESPONSEFORMATArray[] =  { "NULL", "HTML", "XML", "JSON", "CSV" };
    size_t sizeofArray = sizeof(RESPONSEFORMATArray) / sizeof(RESPONSEFORMATArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(RESPONSEFORMAT, RESPONSEFORMATArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function filteredUsage_RESPONSEFORMAT_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *filteredUsage_RESPONSEFORMAT_convertToJSON(sirqul_iot_platform_filteredUsage_responseFormat_e RESPONSEFORMAT) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "responseFormat", filteredUsage_RESPONSEFORMAT_ToString(RESPONSEFORMAT)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function filteredUsage_RESPONSEFORMAT_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_filteredUsage_responseFormat_e filteredUsage_RESPONSEFORMAT_parseFromJSON(cJSON* RESPONSEFORMATJSON) {
    sirqul_iot_platform_filteredUsage_responseFormat_e RESPONSEFORMATVariable = 0;
    cJSON *RESPONSEFORMATVar = cJSON_GetObjectItemCaseSensitive(RESPONSEFORMATJSON, "responseFormat");
    if(!cJSON_IsString(RESPONSEFORMATVar) || (RESPONSEFORMATVar->valuestring == NULL))
    {
        goto end;
    }
    RESPONSEFORMATVariable = filteredUsage_RESPONSEFORMAT_FromString(RESPONSEFORMATVar->valuestring);
    return RESPONSEFORMATVariable;
end:
    return 0;
}
*/


// Get User Activity
//
// Get an activity feed by user.
//
list_t*
AnalyticsAPI_activities(apiClient_t *apiClient, int *start, int *limit, long accountId)
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
    char *localVarPath = strdup("/analytics/useractivity");





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
        cJSON *AnalyticsAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(AnalyticsAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, AnalyticsAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( AnalyticsAPIlocalVarJSON);
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
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Aggregated Filtered Usage
//
// Query analytics to get data used for nested graphs and charts
//
chart_data_t*
AnalyticsAPI_aggregatedFilteredUsage(apiClient_t *apiClient, char *deviceId, long accountId, long applicationId, char *appKey, long startDate, long endDate, char *deviceType, char *device, char *deviceOS, char *gender, char *ageGroup, char *country, char *state, char *city, char *zip, char *model, char *tag, long userAccountId, char *userAccountDisplay, char *userAccountUsername, sirqul_iot_platform_aggregatedFilteredUsage_groupByRoot_e groupByRoot, sirqul_iot_platform_aggregatedFilteredUsage_groupBy_e groupBy, sirqul_iot_platform_aggregatedFilteredUsage_distinctCount_e distinctCount, sirqul_iot_platform_aggregatedFilteredUsage_sortField_e sortField, int *descending, int *hideUnknown, sirqul_iot_platform_aggregatedFilteredUsage_responseFormat_e responseFormat, int *_l, int *limit, double latitude, double longitude)
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
    char *localVarPath = strdup("/analytics/aggregatedFilteredUsage");





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
    char *keyQuery_deviceType = NULL;
    char * valueQuery_deviceType = NULL;
    keyValuePair_t *keyPairQuery_deviceType = 0;
    if (deviceType)
    {
        keyQuery_deviceType = strdup("deviceType");
        valueQuery_deviceType = strdup((deviceType));
        keyPairQuery_deviceType = keyValuePair_create(keyQuery_deviceType, valueQuery_deviceType);
        list_addElement(localVarQueryParameters,keyPairQuery_deviceType);
    }

    // query parameters
    char *keyQuery_device = NULL;
    char * valueQuery_device = NULL;
    keyValuePair_t *keyPairQuery_device = 0;
    if (device)
    {
        keyQuery_device = strdup("device");
        valueQuery_device = strdup((device));
        keyPairQuery_device = keyValuePair_create(keyQuery_device, valueQuery_device);
        list_addElement(localVarQueryParameters,keyPairQuery_device);
    }

    // query parameters
    char *keyQuery_deviceOS = NULL;
    char * valueQuery_deviceOS = NULL;
    keyValuePair_t *keyPairQuery_deviceOS = 0;
    if (deviceOS)
    {
        keyQuery_deviceOS = strdup("deviceOS");
        valueQuery_deviceOS = strdup((deviceOS));
        keyPairQuery_deviceOS = keyValuePair_create(keyQuery_deviceOS, valueQuery_deviceOS);
        list_addElement(localVarQueryParameters,keyPairQuery_deviceOS);
    }

    // query parameters
    char *keyQuery_gender = NULL;
    char * valueQuery_gender = NULL;
    keyValuePair_t *keyPairQuery_gender = 0;
    if (gender)
    {
        keyQuery_gender = strdup("gender");
        valueQuery_gender = strdup((gender));
        keyPairQuery_gender = keyValuePair_create(keyQuery_gender, valueQuery_gender);
        list_addElement(localVarQueryParameters,keyPairQuery_gender);
    }

    // query parameters
    char *keyQuery_ageGroup = NULL;
    char * valueQuery_ageGroup = NULL;
    keyValuePair_t *keyPairQuery_ageGroup = 0;
    if (ageGroup)
    {
        keyQuery_ageGroup = strdup("ageGroup");
        valueQuery_ageGroup = strdup((ageGroup));
        keyPairQuery_ageGroup = keyValuePair_create(keyQuery_ageGroup, valueQuery_ageGroup);
        list_addElement(localVarQueryParameters,keyPairQuery_ageGroup);
    }

    // query parameters
    char *keyQuery_country = NULL;
    char * valueQuery_country = NULL;
    keyValuePair_t *keyPairQuery_country = 0;
    if (country)
    {
        keyQuery_country = strdup("country");
        valueQuery_country = strdup((country));
        keyPairQuery_country = keyValuePair_create(keyQuery_country, valueQuery_country);
        list_addElement(localVarQueryParameters,keyPairQuery_country);
    }

    // query parameters
    char *keyQuery_state = NULL;
    char * valueQuery_state = NULL;
    keyValuePair_t *keyPairQuery_state = 0;
    if (state)
    {
        keyQuery_state = strdup("state");
        valueQuery_state = strdup((state));
        keyPairQuery_state = keyValuePair_create(keyQuery_state, valueQuery_state);
        list_addElement(localVarQueryParameters,keyPairQuery_state);
    }

    // query parameters
    char *keyQuery_city = NULL;
    char * valueQuery_city = NULL;
    keyValuePair_t *keyPairQuery_city = 0;
    if (city)
    {
        keyQuery_city = strdup("city");
        valueQuery_city = strdup((city));
        keyPairQuery_city = keyValuePair_create(keyQuery_city, valueQuery_city);
        list_addElement(localVarQueryParameters,keyPairQuery_city);
    }

    // query parameters
    char *keyQuery_zip = NULL;
    char * valueQuery_zip = NULL;
    keyValuePair_t *keyPairQuery_zip = 0;
    if (zip)
    {
        keyQuery_zip = strdup("zip");
        valueQuery_zip = strdup((zip));
        keyPairQuery_zip = keyValuePair_create(keyQuery_zip, valueQuery_zip);
        list_addElement(localVarQueryParameters,keyPairQuery_zip);
    }

    // query parameters
    char *keyQuery_model = NULL;
    char * valueQuery_model = NULL;
    keyValuePair_t *keyPairQuery_model = 0;
    if (model)
    {
        keyQuery_model = strdup("model");
        valueQuery_model = strdup((model));
        keyPairQuery_model = keyValuePair_create(keyQuery_model, valueQuery_model);
        list_addElement(localVarQueryParameters,keyPairQuery_model);
    }

    // query parameters
    char *keyQuery_tag = NULL;
    char * valueQuery_tag = NULL;
    keyValuePair_t *keyPairQuery_tag = 0;
    if (tag)
    {
        keyQuery_tag = strdup("tag");
        valueQuery_tag = strdup((tag));
        keyPairQuery_tag = keyValuePair_create(keyQuery_tag, valueQuery_tag);
        list_addElement(localVarQueryParameters,keyPairQuery_tag);
    }

    // query parameters
    char *keyQuery_userAccountId = NULL;
    char * valueQuery_userAccountId ;
    keyValuePair_t *keyPairQuery_userAccountId = 0;
    {
        keyQuery_userAccountId = strdup("userAccountId");
        valueQuery_userAccountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_userAccountId, MAX_NUMBER_LENGTH_LONG, "%d", userAccountId);
        keyPairQuery_userAccountId = keyValuePair_create(keyQuery_userAccountId, valueQuery_userAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_userAccountId);
    }

    // query parameters
    char *keyQuery_userAccountDisplay = NULL;
    char * valueQuery_userAccountDisplay = NULL;
    keyValuePair_t *keyPairQuery_userAccountDisplay = 0;
    if (userAccountDisplay)
    {
        keyQuery_userAccountDisplay = strdup("userAccountDisplay");
        valueQuery_userAccountDisplay = strdup((userAccountDisplay));
        keyPairQuery_userAccountDisplay = keyValuePair_create(keyQuery_userAccountDisplay, valueQuery_userAccountDisplay);
        list_addElement(localVarQueryParameters,keyPairQuery_userAccountDisplay);
    }

    // query parameters
    char *keyQuery_userAccountUsername = NULL;
    char * valueQuery_userAccountUsername = NULL;
    keyValuePair_t *keyPairQuery_userAccountUsername = 0;
    if (userAccountUsername)
    {
        keyQuery_userAccountUsername = strdup("userAccountUsername");
        valueQuery_userAccountUsername = strdup((userAccountUsername));
        keyPairQuery_userAccountUsername = keyValuePair_create(keyQuery_userAccountUsername, valueQuery_userAccountUsername);
        list_addElement(localVarQueryParameters,keyPairQuery_userAccountUsername);
    }

    // query parameters
    char *keyQuery_groupByRoot = NULL;
    sirqul_iot_platform_aggregatedFilteredUsage_groupByRoot_e valueQuery_groupByRoot ;
    keyValuePair_t *keyPairQuery_groupByRoot = 0;
    if (groupByRoot)
    {
        keyQuery_groupByRoot = strdup("groupByRoot");
        valueQuery_groupByRoot = (groupByRoot);
        keyPairQuery_groupByRoot = keyValuePair_create(keyQuery_groupByRoot, strdup(aggregatedFilteredUsage_GROUPBYROOT_ToString(
        valueQuery_groupByRoot)));
        list_addElement(localVarQueryParameters,keyPairQuery_groupByRoot);
    }

    // query parameters
    char *keyQuery_groupBy = NULL;
    sirqul_iot_platform_aggregatedFilteredUsage_groupBy_e valueQuery_groupBy ;
    keyValuePair_t *keyPairQuery_groupBy = 0;
    if (groupBy)
    {
        keyQuery_groupBy = strdup("groupBy");
        valueQuery_groupBy = (groupBy);
        keyPairQuery_groupBy = keyValuePair_create(keyQuery_groupBy, strdup(aggregatedFilteredUsage_GROUPBY_ToString(
        valueQuery_groupBy)));
        list_addElement(localVarQueryParameters,keyPairQuery_groupBy);
    }

    // query parameters
    char *keyQuery_distinctCount = NULL;
    sirqul_iot_platform_aggregatedFilteredUsage_distinctCount_e valueQuery_distinctCount ;
    keyValuePair_t *keyPairQuery_distinctCount = 0;
    if (distinctCount)
    {
        keyQuery_distinctCount = strdup("distinctCount");
        valueQuery_distinctCount = (distinctCount);
        keyPairQuery_distinctCount = keyValuePair_create(keyQuery_distinctCount, strdup(aggregatedFilteredUsage_DISTINCTCOUNT_ToString(
        valueQuery_distinctCount)));
        list_addElement(localVarQueryParameters,keyPairQuery_distinctCount);
    }

    // query parameters
    char *keyQuery_sortField = NULL;
    sirqul_iot_platform_aggregatedFilteredUsage_sortField_e valueQuery_sortField ;
    keyValuePair_t *keyPairQuery_sortField = 0;
    if (sortField)
    {
        keyQuery_sortField = strdup("sortField");
        valueQuery_sortField = (sortField);
        keyPairQuery_sortField = keyValuePair_create(keyQuery_sortField, strdup(aggregatedFilteredUsage_SORTFIELD_ToString(
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
    char *keyQuery_hideUnknown = NULL;
    char * valueQuery_hideUnknown = NULL;
    keyValuePair_t *keyPairQuery_hideUnknown = 0;
    if (hideUnknown)
    {
        keyQuery_hideUnknown = strdup("hideUnknown");
        valueQuery_hideUnknown = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_hideUnknown, MAX_NUMBER_LENGTH, "%d", *hideUnknown);
        keyPairQuery_hideUnknown = keyValuePair_create(keyQuery_hideUnknown, valueQuery_hideUnknown);
        list_addElement(localVarQueryParameters,keyPairQuery_hideUnknown);
    }

    // query parameters
    char *keyQuery_responseFormat = NULL;
    sirqul_iot_platform_aggregatedFilteredUsage_responseFormat_e valueQuery_responseFormat ;
    keyValuePair_t *keyPairQuery_responseFormat = 0;
    if (responseFormat)
    {
        keyQuery_responseFormat = strdup("responseFormat");
        valueQuery_responseFormat = (responseFormat);
        keyPairQuery_responseFormat = keyValuePair_create(keyQuery_responseFormat, strdup(aggregatedFilteredUsage_RESPONSEFORMAT_ToString(
        valueQuery_responseFormat)));
        list_addElement(localVarQueryParameters,keyPairQuery_responseFormat);
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
    chart_data_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AnalyticsAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = chart_data_parseFromJSON(AnalyticsAPIlocalVarJSON);
        cJSON_Delete(AnalyticsAPIlocalVarJSON);
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
    if(keyQuery_applicationId){
        free(keyQuery_applicationId);
        keyQuery_applicationId = NULL;
    }
    if(keyPairQuery_applicationId){
        keyValuePair_free(keyPairQuery_applicationId);
        keyPairQuery_applicationId = NULL;
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
    if(keyQuery_deviceType){
        free(keyQuery_deviceType);
        keyQuery_deviceType = NULL;
    }
    if(valueQuery_deviceType){
        free(valueQuery_deviceType);
        valueQuery_deviceType = NULL;
    }
    if(keyPairQuery_deviceType){
        keyValuePair_free(keyPairQuery_deviceType);
        keyPairQuery_deviceType = NULL;
    }
    if(keyQuery_device){
        free(keyQuery_device);
        keyQuery_device = NULL;
    }
    if(valueQuery_device){
        free(valueQuery_device);
        valueQuery_device = NULL;
    }
    if(keyPairQuery_device){
        keyValuePair_free(keyPairQuery_device);
        keyPairQuery_device = NULL;
    }
    if(keyQuery_deviceOS){
        free(keyQuery_deviceOS);
        keyQuery_deviceOS = NULL;
    }
    if(valueQuery_deviceOS){
        free(valueQuery_deviceOS);
        valueQuery_deviceOS = NULL;
    }
    if(keyPairQuery_deviceOS){
        keyValuePair_free(keyPairQuery_deviceOS);
        keyPairQuery_deviceOS = NULL;
    }
    if(keyQuery_gender){
        free(keyQuery_gender);
        keyQuery_gender = NULL;
    }
    if(valueQuery_gender){
        free(valueQuery_gender);
        valueQuery_gender = NULL;
    }
    if(keyPairQuery_gender){
        keyValuePair_free(keyPairQuery_gender);
        keyPairQuery_gender = NULL;
    }
    if(keyQuery_ageGroup){
        free(keyQuery_ageGroup);
        keyQuery_ageGroup = NULL;
    }
    if(valueQuery_ageGroup){
        free(valueQuery_ageGroup);
        valueQuery_ageGroup = NULL;
    }
    if(keyPairQuery_ageGroup){
        keyValuePair_free(keyPairQuery_ageGroup);
        keyPairQuery_ageGroup = NULL;
    }
    if(keyQuery_country){
        free(keyQuery_country);
        keyQuery_country = NULL;
    }
    if(valueQuery_country){
        free(valueQuery_country);
        valueQuery_country = NULL;
    }
    if(keyPairQuery_country){
        keyValuePair_free(keyPairQuery_country);
        keyPairQuery_country = NULL;
    }
    if(keyQuery_state){
        free(keyQuery_state);
        keyQuery_state = NULL;
    }
    if(valueQuery_state){
        free(valueQuery_state);
        valueQuery_state = NULL;
    }
    if(keyPairQuery_state){
        keyValuePair_free(keyPairQuery_state);
        keyPairQuery_state = NULL;
    }
    if(keyQuery_city){
        free(keyQuery_city);
        keyQuery_city = NULL;
    }
    if(valueQuery_city){
        free(valueQuery_city);
        valueQuery_city = NULL;
    }
    if(keyPairQuery_city){
        keyValuePair_free(keyPairQuery_city);
        keyPairQuery_city = NULL;
    }
    if(keyQuery_zip){
        free(keyQuery_zip);
        keyQuery_zip = NULL;
    }
    if(valueQuery_zip){
        free(valueQuery_zip);
        valueQuery_zip = NULL;
    }
    if(keyPairQuery_zip){
        keyValuePair_free(keyPairQuery_zip);
        keyPairQuery_zip = NULL;
    }
    if(keyQuery_model){
        free(keyQuery_model);
        keyQuery_model = NULL;
    }
    if(valueQuery_model){
        free(valueQuery_model);
        valueQuery_model = NULL;
    }
    if(keyPairQuery_model){
        keyValuePair_free(keyPairQuery_model);
        keyPairQuery_model = NULL;
    }
    if(keyQuery_tag){
        free(keyQuery_tag);
        keyQuery_tag = NULL;
    }
    if(valueQuery_tag){
        free(valueQuery_tag);
        valueQuery_tag = NULL;
    }
    if(keyPairQuery_tag){
        keyValuePair_free(keyPairQuery_tag);
        keyPairQuery_tag = NULL;
    }
    if(keyQuery_userAccountId){
        free(keyQuery_userAccountId);
        keyQuery_userAccountId = NULL;
    }
    if(keyPairQuery_userAccountId){
        keyValuePair_free(keyPairQuery_userAccountId);
        keyPairQuery_userAccountId = NULL;
    }
    if(keyQuery_userAccountDisplay){
        free(keyQuery_userAccountDisplay);
        keyQuery_userAccountDisplay = NULL;
    }
    if(valueQuery_userAccountDisplay){
        free(valueQuery_userAccountDisplay);
        valueQuery_userAccountDisplay = NULL;
    }
    if(keyPairQuery_userAccountDisplay){
        keyValuePair_free(keyPairQuery_userAccountDisplay);
        keyPairQuery_userAccountDisplay = NULL;
    }
    if(keyQuery_userAccountUsername){
        free(keyQuery_userAccountUsername);
        keyQuery_userAccountUsername = NULL;
    }
    if(valueQuery_userAccountUsername){
        free(valueQuery_userAccountUsername);
        valueQuery_userAccountUsername = NULL;
    }
    if(keyPairQuery_userAccountUsername){
        keyValuePair_free(keyPairQuery_userAccountUsername);
        keyPairQuery_userAccountUsername = NULL;
    }
    if(keyQuery_groupByRoot){
        free(keyQuery_groupByRoot);
        keyQuery_groupByRoot = NULL;
    }
    if(keyPairQuery_groupByRoot){
        keyValuePair_free(keyPairQuery_groupByRoot);
        keyPairQuery_groupByRoot = NULL;
    }
    if(keyQuery_groupBy){
        free(keyQuery_groupBy);
        keyQuery_groupBy = NULL;
    }
    if(keyPairQuery_groupBy){
        keyValuePair_free(keyPairQuery_groupBy);
        keyPairQuery_groupBy = NULL;
    }
    if(keyQuery_distinctCount){
        free(keyQuery_distinctCount);
        keyQuery_distinctCount = NULL;
    }
    if(keyPairQuery_distinctCount){
        keyValuePair_free(keyPairQuery_distinctCount);
        keyPairQuery_distinctCount = NULL;
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
    if(keyQuery_hideUnknown){
        free(keyQuery_hideUnknown);
        keyQuery_hideUnknown = NULL;
    }
    if(valueQuery_hideUnknown){
        free(valueQuery_hideUnknown);
        valueQuery_hideUnknown = NULL;
    }
    if(keyPairQuery_hideUnknown){
        keyValuePair_free(keyPairQuery_hideUnknown);
        keyPairQuery_hideUnknown = NULL;
    }
    if(keyQuery_responseFormat){
        free(keyQuery_responseFormat);
        keyQuery_responseFormat = NULL;
    }
    if(keyPairQuery_responseFormat){
        keyValuePair_free(keyPairQuery_responseFormat);
        keyPairQuery_responseFormat = NULL;
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Filtered Usage
//
// Query analytics to get data used for graphs and charts
//
chart_data_t*
AnalyticsAPI_filteredUsage(apiClient_t *apiClient, char *deviceId, long accountId, long applicationId, char *appKey, long startDate, long endDate, char *deviceType, char *device, char *deviceOS, char *gender, char *ageGroup, char *country, char *state, char *city, char *zip, char *model, char *tag, long userAccountId, char *userAccountDisplay, char *userAccountUsername, long customId, char *customType, double customValue, double customValue2, long customLong, long customLong2, char *customMessage, char *customMessage2, sirqul_iot_platform_filteredUsage_groupBy_e groupBy, sirqul_iot_platform_filteredUsage_distinctCount_e distinctCount, sirqul_iot_platform_filteredUsage_sumColumn_e sumColumn, sirqul_iot_platform_filteredUsage_sortField_e sortField, int *descending, int *hideUnknown, sirqul_iot_platform_filteredUsage_responseFormat_e responseFormat, int *_l, int *limit, double latitude, double longitude)
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
    char *localVarPath = strdup("/analytics/filteredUsage");





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
    char *keyQuery_deviceType = NULL;
    char * valueQuery_deviceType = NULL;
    keyValuePair_t *keyPairQuery_deviceType = 0;
    if (deviceType)
    {
        keyQuery_deviceType = strdup("deviceType");
        valueQuery_deviceType = strdup((deviceType));
        keyPairQuery_deviceType = keyValuePair_create(keyQuery_deviceType, valueQuery_deviceType);
        list_addElement(localVarQueryParameters,keyPairQuery_deviceType);
    }

    // query parameters
    char *keyQuery_device = NULL;
    char * valueQuery_device = NULL;
    keyValuePair_t *keyPairQuery_device = 0;
    if (device)
    {
        keyQuery_device = strdup("device");
        valueQuery_device = strdup((device));
        keyPairQuery_device = keyValuePair_create(keyQuery_device, valueQuery_device);
        list_addElement(localVarQueryParameters,keyPairQuery_device);
    }

    // query parameters
    char *keyQuery_deviceOS = NULL;
    char * valueQuery_deviceOS = NULL;
    keyValuePair_t *keyPairQuery_deviceOS = 0;
    if (deviceOS)
    {
        keyQuery_deviceOS = strdup("deviceOS");
        valueQuery_deviceOS = strdup((deviceOS));
        keyPairQuery_deviceOS = keyValuePair_create(keyQuery_deviceOS, valueQuery_deviceOS);
        list_addElement(localVarQueryParameters,keyPairQuery_deviceOS);
    }

    // query parameters
    char *keyQuery_gender = NULL;
    char * valueQuery_gender = NULL;
    keyValuePair_t *keyPairQuery_gender = 0;
    if (gender)
    {
        keyQuery_gender = strdup("gender");
        valueQuery_gender = strdup((gender));
        keyPairQuery_gender = keyValuePair_create(keyQuery_gender, valueQuery_gender);
        list_addElement(localVarQueryParameters,keyPairQuery_gender);
    }

    // query parameters
    char *keyQuery_ageGroup = NULL;
    char * valueQuery_ageGroup = NULL;
    keyValuePair_t *keyPairQuery_ageGroup = 0;
    if (ageGroup)
    {
        keyQuery_ageGroup = strdup("ageGroup");
        valueQuery_ageGroup = strdup((ageGroup));
        keyPairQuery_ageGroup = keyValuePair_create(keyQuery_ageGroup, valueQuery_ageGroup);
        list_addElement(localVarQueryParameters,keyPairQuery_ageGroup);
    }

    // query parameters
    char *keyQuery_country = NULL;
    char * valueQuery_country = NULL;
    keyValuePair_t *keyPairQuery_country = 0;
    if (country)
    {
        keyQuery_country = strdup("country");
        valueQuery_country = strdup((country));
        keyPairQuery_country = keyValuePair_create(keyQuery_country, valueQuery_country);
        list_addElement(localVarQueryParameters,keyPairQuery_country);
    }

    // query parameters
    char *keyQuery_state = NULL;
    char * valueQuery_state = NULL;
    keyValuePair_t *keyPairQuery_state = 0;
    if (state)
    {
        keyQuery_state = strdup("state");
        valueQuery_state = strdup((state));
        keyPairQuery_state = keyValuePair_create(keyQuery_state, valueQuery_state);
        list_addElement(localVarQueryParameters,keyPairQuery_state);
    }

    // query parameters
    char *keyQuery_city = NULL;
    char * valueQuery_city = NULL;
    keyValuePair_t *keyPairQuery_city = 0;
    if (city)
    {
        keyQuery_city = strdup("city");
        valueQuery_city = strdup((city));
        keyPairQuery_city = keyValuePair_create(keyQuery_city, valueQuery_city);
        list_addElement(localVarQueryParameters,keyPairQuery_city);
    }

    // query parameters
    char *keyQuery_zip = NULL;
    char * valueQuery_zip = NULL;
    keyValuePair_t *keyPairQuery_zip = 0;
    if (zip)
    {
        keyQuery_zip = strdup("zip");
        valueQuery_zip = strdup((zip));
        keyPairQuery_zip = keyValuePair_create(keyQuery_zip, valueQuery_zip);
        list_addElement(localVarQueryParameters,keyPairQuery_zip);
    }

    // query parameters
    char *keyQuery_model = NULL;
    char * valueQuery_model = NULL;
    keyValuePair_t *keyPairQuery_model = 0;
    if (model)
    {
        keyQuery_model = strdup("model");
        valueQuery_model = strdup((model));
        keyPairQuery_model = keyValuePair_create(keyQuery_model, valueQuery_model);
        list_addElement(localVarQueryParameters,keyPairQuery_model);
    }

    // query parameters
    char *keyQuery_tag = NULL;
    char * valueQuery_tag = NULL;
    keyValuePair_t *keyPairQuery_tag = 0;
    if (tag)
    {
        keyQuery_tag = strdup("tag");
        valueQuery_tag = strdup((tag));
        keyPairQuery_tag = keyValuePair_create(keyQuery_tag, valueQuery_tag);
        list_addElement(localVarQueryParameters,keyPairQuery_tag);
    }

    // query parameters
    char *keyQuery_userAccountId = NULL;
    char * valueQuery_userAccountId ;
    keyValuePair_t *keyPairQuery_userAccountId = 0;
    {
        keyQuery_userAccountId = strdup("userAccountId");
        valueQuery_userAccountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_userAccountId, MAX_NUMBER_LENGTH_LONG, "%d", userAccountId);
        keyPairQuery_userAccountId = keyValuePair_create(keyQuery_userAccountId, valueQuery_userAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_userAccountId);
    }

    // query parameters
    char *keyQuery_userAccountDisplay = NULL;
    char * valueQuery_userAccountDisplay = NULL;
    keyValuePair_t *keyPairQuery_userAccountDisplay = 0;
    if (userAccountDisplay)
    {
        keyQuery_userAccountDisplay = strdup("userAccountDisplay");
        valueQuery_userAccountDisplay = strdup((userAccountDisplay));
        keyPairQuery_userAccountDisplay = keyValuePair_create(keyQuery_userAccountDisplay, valueQuery_userAccountDisplay);
        list_addElement(localVarQueryParameters,keyPairQuery_userAccountDisplay);
    }

    // query parameters
    char *keyQuery_userAccountUsername = NULL;
    char * valueQuery_userAccountUsername = NULL;
    keyValuePair_t *keyPairQuery_userAccountUsername = 0;
    if (userAccountUsername)
    {
        keyQuery_userAccountUsername = strdup("userAccountUsername");
        valueQuery_userAccountUsername = strdup((userAccountUsername));
        keyPairQuery_userAccountUsername = keyValuePair_create(keyQuery_userAccountUsername, valueQuery_userAccountUsername);
        list_addElement(localVarQueryParameters,keyPairQuery_userAccountUsername);
    }

    // query parameters
    char *keyQuery_customId = NULL;
    char * valueQuery_customId ;
    keyValuePair_t *keyPairQuery_customId = 0;
    {
        keyQuery_customId = strdup("customId");
        valueQuery_customId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_customId, MAX_NUMBER_LENGTH_LONG, "%d", customId);
        keyPairQuery_customId = keyValuePair_create(keyQuery_customId, valueQuery_customId);
        list_addElement(localVarQueryParameters,keyPairQuery_customId);
    }

    // query parameters
    char *keyQuery_customType = NULL;
    char * valueQuery_customType = NULL;
    keyValuePair_t *keyPairQuery_customType = 0;
    if (customType)
    {
        keyQuery_customType = strdup("customType");
        valueQuery_customType = strdup((customType));
        keyPairQuery_customType = keyValuePair_create(keyQuery_customType, valueQuery_customType);
        list_addElement(localVarQueryParameters,keyPairQuery_customType);
    }

    // query parameters
    char *keyQuery_customValue = NULL;
    char * valueQuery_customValue = NULL;
    keyValuePair_t *keyPairQuery_customValue = 0;
    {
        keyQuery_customValue = strdup("customValue");
        int s = snprintf(NULL, 0, "%.16e", customValue);
        if (s >= 0)
        {
            valueQuery_customValue = calloc(1,s+1);
            snprintf(valueQuery_customValue, s+1, "%.16e", customValue);
        }
        keyPairQuery_customValue = keyValuePair_create(keyQuery_customValue, valueQuery_customValue);
        list_addElement(localVarQueryParameters,keyPairQuery_customValue);
    }

    // query parameters
    char *keyQuery_customValue2 = NULL;
    char * valueQuery_customValue2 = NULL;
    keyValuePair_t *keyPairQuery_customValue2 = 0;
    {
        keyQuery_customValue2 = strdup("customValue2");
        int s = snprintf(NULL, 0, "%.16e", customValue2);
        if (s >= 0)
        {
            valueQuery_customValue2 = calloc(1,s+1);
            snprintf(valueQuery_customValue2, s+1, "%.16e", customValue2);
        }
        keyPairQuery_customValue2 = keyValuePair_create(keyQuery_customValue2, valueQuery_customValue2);
        list_addElement(localVarQueryParameters,keyPairQuery_customValue2);
    }

    // query parameters
    char *keyQuery_customLong = NULL;
    char * valueQuery_customLong ;
    keyValuePair_t *keyPairQuery_customLong = 0;
    {
        keyQuery_customLong = strdup("customLong");
        valueQuery_customLong = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_customLong, MAX_NUMBER_LENGTH_LONG, "%d", customLong);
        keyPairQuery_customLong = keyValuePair_create(keyQuery_customLong, valueQuery_customLong);
        list_addElement(localVarQueryParameters,keyPairQuery_customLong);
    }

    // query parameters
    char *keyQuery_customLong2 = NULL;
    char * valueQuery_customLong2 ;
    keyValuePair_t *keyPairQuery_customLong2 = 0;
    {
        keyQuery_customLong2 = strdup("customLong2");
        valueQuery_customLong2 = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_customLong2, MAX_NUMBER_LENGTH_LONG, "%d", customLong2);
        keyPairQuery_customLong2 = keyValuePair_create(keyQuery_customLong2, valueQuery_customLong2);
        list_addElement(localVarQueryParameters,keyPairQuery_customLong2);
    }

    // query parameters
    char *keyQuery_customMessage = NULL;
    char * valueQuery_customMessage = NULL;
    keyValuePair_t *keyPairQuery_customMessage = 0;
    if (customMessage)
    {
        keyQuery_customMessage = strdup("customMessage");
        valueQuery_customMessage = strdup((customMessage));
        keyPairQuery_customMessage = keyValuePair_create(keyQuery_customMessage, valueQuery_customMessage);
        list_addElement(localVarQueryParameters,keyPairQuery_customMessage);
    }

    // query parameters
    char *keyQuery_customMessage2 = NULL;
    char * valueQuery_customMessage2 = NULL;
    keyValuePair_t *keyPairQuery_customMessage2 = 0;
    if (customMessage2)
    {
        keyQuery_customMessage2 = strdup("customMessage2");
        valueQuery_customMessage2 = strdup((customMessage2));
        keyPairQuery_customMessage2 = keyValuePair_create(keyQuery_customMessage2, valueQuery_customMessage2);
        list_addElement(localVarQueryParameters,keyPairQuery_customMessage2);
    }

    // query parameters
    char *keyQuery_groupBy = NULL;
    sirqul_iot_platform_filteredUsage_groupBy_e valueQuery_groupBy ;
    keyValuePair_t *keyPairQuery_groupBy = 0;
    if (groupBy)
    {
        keyQuery_groupBy = strdup("groupBy");
        valueQuery_groupBy = (groupBy);
        keyPairQuery_groupBy = keyValuePair_create(keyQuery_groupBy, strdup(filteredUsage_GROUPBY_ToString(
        valueQuery_groupBy)));
        list_addElement(localVarQueryParameters,keyPairQuery_groupBy);
    }

    // query parameters
    char *keyQuery_distinctCount = NULL;
    sirqul_iot_platform_filteredUsage_distinctCount_e valueQuery_distinctCount ;
    keyValuePair_t *keyPairQuery_distinctCount = 0;
    if (distinctCount)
    {
        keyQuery_distinctCount = strdup("distinctCount");
        valueQuery_distinctCount = (distinctCount);
        keyPairQuery_distinctCount = keyValuePair_create(keyQuery_distinctCount, strdup(filteredUsage_DISTINCTCOUNT_ToString(
        valueQuery_distinctCount)));
        list_addElement(localVarQueryParameters,keyPairQuery_distinctCount);
    }

    // query parameters
    char *keyQuery_sumColumn = NULL;
    sirqul_iot_platform_filteredUsage_sumColumn_e valueQuery_sumColumn ;
    keyValuePair_t *keyPairQuery_sumColumn = 0;
    if (sumColumn)
    {
        keyQuery_sumColumn = strdup("sumColumn");
        valueQuery_sumColumn = (sumColumn);
        keyPairQuery_sumColumn = keyValuePair_create(keyQuery_sumColumn, strdup(filteredUsage_SUMCOLUMN_ToString(
        valueQuery_sumColumn)));
        list_addElement(localVarQueryParameters,keyPairQuery_sumColumn);
    }

    // query parameters
    char *keyQuery_sortField = NULL;
    sirqul_iot_platform_filteredUsage_sortField_e valueQuery_sortField ;
    keyValuePair_t *keyPairQuery_sortField = 0;
    if (sortField)
    {
        keyQuery_sortField = strdup("sortField");
        valueQuery_sortField = (sortField);
        keyPairQuery_sortField = keyValuePair_create(keyQuery_sortField, strdup(filteredUsage_SORTFIELD_ToString(
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
    char *keyQuery_hideUnknown = NULL;
    char * valueQuery_hideUnknown = NULL;
    keyValuePair_t *keyPairQuery_hideUnknown = 0;
    if (hideUnknown)
    {
        keyQuery_hideUnknown = strdup("hideUnknown");
        valueQuery_hideUnknown = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_hideUnknown, MAX_NUMBER_LENGTH, "%d", *hideUnknown);
        keyPairQuery_hideUnknown = keyValuePair_create(keyQuery_hideUnknown, valueQuery_hideUnknown);
        list_addElement(localVarQueryParameters,keyPairQuery_hideUnknown);
    }

    // query parameters
    char *keyQuery_responseFormat = NULL;
    sirqul_iot_platform_filteredUsage_responseFormat_e valueQuery_responseFormat ;
    keyValuePair_t *keyPairQuery_responseFormat = 0;
    if (responseFormat)
    {
        keyQuery_responseFormat = strdup("responseFormat");
        valueQuery_responseFormat = (responseFormat);
        keyPairQuery_responseFormat = keyValuePair_create(keyQuery_responseFormat, strdup(filteredUsage_RESPONSEFORMAT_ToString(
        valueQuery_responseFormat)));
        list_addElement(localVarQueryParameters,keyPairQuery_responseFormat);
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
    chart_data_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AnalyticsAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = chart_data_parseFromJSON(AnalyticsAPIlocalVarJSON);
        cJSON_Delete(AnalyticsAPIlocalVarJSON);
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
    if(keyQuery_applicationId){
        free(keyQuery_applicationId);
        keyQuery_applicationId = NULL;
    }
    if(keyPairQuery_applicationId){
        keyValuePair_free(keyPairQuery_applicationId);
        keyPairQuery_applicationId = NULL;
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
    if(keyQuery_deviceType){
        free(keyQuery_deviceType);
        keyQuery_deviceType = NULL;
    }
    if(valueQuery_deviceType){
        free(valueQuery_deviceType);
        valueQuery_deviceType = NULL;
    }
    if(keyPairQuery_deviceType){
        keyValuePair_free(keyPairQuery_deviceType);
        keyPairQuery_deviceType = NULL;
    }
    if(keyQuery_device){
        free(keyQuery_device);
        keyQuery_device = NULL;
    }
    if(valueQuery_device){
        free(valueQuery_device);
        valueQuery_device = NULL;
    }
    if(keyPairQuery_device){
        keyValuePair_free(keyPairQuery_device);
        keyPairQuery_device = NULL;
    }
    if(keyQuery_deviceOS){
        free(keyQuery_deviceOS);
        keyQuery_deviceOS = NULL;
    }
    if(valueQuery_deviceOS){
        free(valueQuery_deviceOS);
        valueQuery_deviceOS = NULL;
    }
    if(keyPairQuery_deviceOS){
        keyValuePair_free(keyPairQuery_deviceOS);
        keyPairQuery_deviceOS = NULL;
    }
    if(keyQuery_gender){
        free(keyQuery_gender);
        keyQuery_gender = NULL;
    }
    if(valueQuery_gender){
        free(valueQuery_gender);
        valueQuery_gender = NULL;
    }
    if(keyPairQuery_gender){
        keyValuePair_free(keyPairQuery_gender);
        keyPairQuery_gender = NULL;
    }
    if(keyQuery_ageGroup){
        free(keyQuery_ageGroup);
        keyQuery_ageGroup = NULL;
    }
    if(valueQuery_ageGroup){
        free(valueQuery_ageGroup);
        valueQuery_ageGroup = NULL;
    }
    if(keyPairQuery_ageGroup){
        keyValuePair_free(keyPairQuery_ageGroup);
        keyPairQuery_ageGroup = NULL;
    }
    if(keyQuery_country){
        free(keyQuery_country);
        keyQuery_country = NULL;
    }
    if(valueQuery_country){
        free(valueQuery_country);
        valueQuery_country = NULL;
    }
    if(keyPairQuery_country){
        keyValuePair_free(keyPairQuery_country);
        keyPairQuery_country = NULL;
    }
    if(keyQuery_state){
        free(keyQuery_state);
        keyQuery_state = NULL;
    }
    if(valueQuery_state){
        free(valueQuery_state);
        valueQuery_state = NULL;
    }
    if(keyPairQuery_state){
        keyValuePair_free(keyPairQuery_state);
        keyPairQuery_state = NULL;
    }
    if(keyQuery_city){
        free(keyQuery_city);
        keyQuery_city = NULL;
    }
    if(valueQuery_city){
        free(valueQuery_city);
        valueQuery_city = NULL;
    }
    if(keyPairQuery_city){
        keyValuePair_free(keyPairQuery_city);
        keyPairQuery_city = NULL;
    }
    if(keyQuery_zip){
        free(keyQuery_zip);
        keyQuery_zip = NULL;
    }
    if(valueQuery_zip){
        free(valueQuery_zip);
        valueQuery_zip = NULL;
    }
    if(keyPairQuery_zip){
        keyValuePair_free(keyPairQuery_zip);
        keyPairQuery_zip = NULL;
    }
    if(keyQuery_model){
        free(keyQuery_model);
        keyQuery_model = NULL;
    }
    if(valueQuery_model){
        free(valueQuery_model);
        valueQuery_model = NULL;
    }
    if(keyPairQuery_model){
        keyValuePair_free(keyPairQuery_model);
        keyPairQuery_model = NULL;
    }
    if(keyQuery_tag){
        free(keyQuery_tag);
        keyQuery_tag = NULL;
    }
    if(valueQuery_tag){
        free(valueQuery_tag);
        valueQuery_tag = NULL;
    }
    if(keyPairQuery_tag){
        keyValuePair_free(keyPairQuery_tag);
        keyPairQuery_tag = NULL;
    }
    if(keyQuery_userAccountId){
        free(keyQuery_userAccountId);
        keyQuery_userAccountId = NULL;
    }
    if(keyPairQuery_userAccountId){
        keyValuePair_free(keyPairQuery_userAccountId);
        keyPairQuery_userAccountId = NULL;
    }
    if(keyQuery_userAccountDisplay){
        free(keyQuery_userAccountDisplay);
        keyQuery_userAccountDisplay = NULL;
    }
    if(valueQuery_userAccountDisplay){
        free(valueQuery_userAccountDisplay);
        valueQuery_userAccountDisplay = NULL;
    }
    if(keyPairQuery_userAccountDisplay){
        keyValuePair_free(keyPairQuery_userAccountDisplay);
        keyPairQuery_userAccountDisplay = NULL;
    }
    if(keyQuery_userAccountUsername){
        free(keyQuery_userAccountUsername);
        keyQuery_userAccountUsername = NULL;
    }
    if(valueQuery_userAccountUsername){
        free(valueQuery_userAccountUsername);
        valueQuery_userAccountUsername = NULL;
    }
    if(keyPairQuery_userAccountUsername){
        keyValuePair_free(keyPairQuery_userAccountUsername);
        keyPairQuery_userAccountUsername = NULL;
    }
    if(keyQuery_customId){
        free(keyQuery_customId);
        keyQuery_customId = NULL;
    }
    if(keyPairQuery_customId){
        keyValuePair_free(keyPairQuery_customId);
        keyPairQuery_customId = NULL;
    }
    if(keyQuery_customType){
        free(keyQuery_customType);
        keyQuery_customType = NULL;
    }
    if(valueQuery_customType){
        free(valueQuery_customType);
        valueQuery_customType = NULL;
    }
    if(keyPairQuery_customType){
        keyValuePair_free(keyPairQuery_customType);
        keyPairQuery_customType = NULL;
    }
    if(keyQuery_customValue){
        free(keyQuery_customValue);
        keyQuery_customValue = NULL;
    }
    if(keyPairQuery_customValue){
        keyValuePair_free(keyPairQuery_customValue);
        keyPairQuery_customValue = NULL;
    }
    if(keyQuery_customValue2){
        free(keyQuery_customValue2);
        keyQuery_customValue2 = NULL;
    }
    if(keyPairQuery_customValue2){
        keyValuePair_free(keyPairQuery_customValue2);
        keyPairQuery_customValue2 = NULL;
    }
    if(keyQuery_customLong){
        free(keyQuery_customLong);
        keyQuery_customLong = NULL;
    }
    if(keyPairQuery_customLong){
        keyValuePair_free(keyPairQuery_customLong);
        keyPairQuery_customLong = NULL;
    }
    if(keyQuery_customLong2){
        free(keyQuery_customLong2);
        keyQuery_customLong2 = NULL;
    }
    if(keyPairQuery_customLong2){
        keyValuePair_free(keyPairQuery_customLong2);
        keyPairQuery_customLong2 = NULL;
    }
    if(keyQuery_customMessage){
        free(keyQuery_customMessage);
        keyQuery_customMessage = NULL;
    }
    if(valueQuery_customMessage){
        free(valueQuery_customMessage);
        valueQuery_customMessage = NULL;
    }
    if(keyPairQuery_customMessage){
        keyValuePair_free(keyPairQuery_customMessage);
        keyPairQuery_customMessage = NULL;
    }
    if(keyQuery_customMessage2){
        free(keyQuery_customMessage2);
        keyQuery_customMessage2 = NULL;
    }
    if(valueQuery_customMessage2){
        free(valueQuery_customMessage2);
        valueQuery_customMessage2 = NULL;
    }
    if(keyPairQuery_customMessage2){
        keyValuePair_free(keyPairQuery_customMessage2);
        keyPairQuery_customMessage2 = NULL;
    }
    if(keyQuery_groupBy){
        free(keyQuery_groupBy);
        keyQuery_groupBy = NULL;
    }
    if(keyPairQuery_groupBy){
        keyValuePair_free(keyPairQuery_groupBy);
        keyPairQuery_groupBy = NULL;
    }
    if(keyQuery_distinctCount){
        free(keyQuery_distinctCount);
        keyQuery_distinctCount = NULL;
    }
    if(keyPairQuery_distinctCount){
        keyValuePair_free(keyPairQuery_distinctCount);
        keyPairQuery_distinctCount = NULL;
    }
    if(keyQuery_sumColumn){
        free(keyQuery_sumColumn);
        keyQuery_sumColumn = NULL;
    }
    if(keyPairQuery_sumColumn){
        keyValuePair_free(keyPairQuery_sumColumn);
        keyPairQuery_sumColumn = NULL;
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
    if(keyQuery_hideUnknown){
        free(keyQuery_hideUnknown);
        keyQuery_hideUnknown = NULL;
    }
    if(valueQuery_hideUnknown){
        free(valueQuery_hideUnknown);
        valueQuery_hideUnknown = NULL;
    }
    if(keyPairQuery_hideUnknown){
        keyValuePair_free(keyPairQuery_hideUnknown);
        keyPairQuery_hideUnknown = NULL;
    }
    if(keyQuery_responseFormat){
        free(keyQuery_responseFormat);
        keyQuery_responseFormat = NULL;
    }
    if(keyPairQuery_responseFormat){
        keyValuePair_free(keyPairQuery_responseFormat);
        keyPairQuery_responseFormat = NULL;
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Create Usage Record
//
// Record an analytic record for a known state within the application.
//
sirqul_response_t*
AnalyticsAPI_usage(apiClient_t *apiClient, char *tag, char *deviceId, long accountId, long applicationId, char *appKey, char *appVersion, char *device, char *deviceType, char *deviceOS, char *model, double latitude, double longitude, long customId, char *customType, long achievementIncrement, char *city, char *state, char *country, char *zip, char *locationDescription, long clientTime, char *errorMessage, char *ip, char *userAgent, int *backgroundEvent, char *customMessage, char *customMessage2, double customValue, double customValue2, long customLong, long customLong2)
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
    char *localVarPath = strdup("/analytics/usage");





    // query parameters
    char *keyQuery_tag = NULL;
    char * valueQuery_tag = NULL;
    keyValuePair_t *keyPairQuery_tag = 0;
    if (tag)
    {
        keyQuery_tag = strdup("tag");
        valueQuery_tag = strdup((tag));
        keyPairQuery_tag = keyValuePair_create(keyQuery_tag, valueQuery_tag);
        list_addElement(localVarQueryParameters,keyPairQuery_tag);
    }

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
    char *keyQuery_appVersion = NULL;
    char * valueQuery_appVersion = NULL;
    keyValuePair_t *keyPairQuery_appVersion = 0;
    if (appVersion)
    {
        keyQuery_appVersion = strdup("appVersion");
        valueQuery_appVersion = strdup((appVersion));
        keyPairQuery_appVersion = keyValuePair_create(keyQuery_appVersion, valueQuery_appVersion);
        list_addElement(localVarQueryParameters,keyPairQuery_appVersion);
    }

    // query parameters
    char *keyQuery_device = NULL;
    char * valueQuery_device = NULL;
    keyValuePair_t *keyPairQuery_device = 0;
    if (device)
    {
        keyQuery_device = strdup("device");
        valueQuery_device = strdup((device));
        keyPairQuery_device = keyValuePair_create(keyQuery_device, valueQuery_device);
        list_addElement(localVarQueryParameters,keyPairQuery_device);
    }

    // query parameters
    char *keyQuery_deviceType = NULL;
    char * valueQuery_deviceType = NULL;
    keyValuePair_t *keyPairQuery_deviceType = 0;
    if (deviceType)
    {
        keyQuery_deviceType = strdup("deviceType");
        valueQuery_deviceType = strdup((deviceType));
        keyPairQuery_deviceType = keyValuePair_create(keyQuery_deviceType, valueQuery_deviceType);
        list_addElement(localVarQueryParameters,keyPairQuery_deviceType);
    }

    // query parameters
    char *keyQuery_deviceOS = NULL;
    char * valueQuery_deviceOS = NULL;
    keyValuePair_t *keyPairQuery_deviceOS = 0;
    if (deviceOS)
    {
        keyQuery_deviceOS = strdup("deviceOS");
        valueQuery_deviceOS = strdup((deviceOS));
        keyPairQuery_deviceOS = keyValuePair_create(keyQuery_deviceOS, valueQuery_deviceOS);
        list_addElement(localVarQueryParameters,keyPairQuery_deviceOS);
    }

    // query parameters
    char *keyQuery_model = NULL;
    char * valueQuery_model = NULL;
    keyValuePair_t *keyPairQuery_model = 0;
    if (model)
    {
        keyQuery_model = strdup("model");
        valueQuery_model = strdup((model));
        keyPairQuery_model = keyValuePair_create(keyQuery_model, valueQuery_model);
        list_addElement(localVarQueryParameters,keyPairQuery_model);
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
    char *keyQuery_customId = NULL;
    char * valueQuery_customId ;
    keyValuePair_t *keyPairQuery_customId = 0;
    {
        keyQuery_customId = strdup("customId");
        valueQuery_customId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_customId, MAX_NUMBER_LENGTH_LONG, "%d", customId);
        keyPairQuery_customId = keyValuePair_create(keyQuery_customId, valueQuery_customId);
        list_addElement(localVarQueryParameters,keyPairQuery_customId);
    }

    // query parameters
    char *keyQuery_customType = NULL;
    char * valueQuery_customType = NULL;
    keyValuePair_t *keyPairQuery_customType = 0;
    if (customType)
    {
        keyQuery_customType = strdup("customType");
        valueQuery_customType = strdup((customType));
        keyPairQuery_customType = keyValuePair_create(keyQuery_customType, valueQuery_customType);
        list_addElement(localVarQueryParameters,keyPairQuery_customType);
    }

    // query parameters
    char *keyQuery_achievementIncrement = NULL;
    char * valueQuery_achievementIncrement ;
    keyValuePair_t *keyPairQuery_achievementIncrement = 0;
    {
        keyQuery_achievementIncrement = strdup("achievementIncrement");
        valueQuery_achievementIncrement = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_achievementIncrement, MAX_NUMBER_LENGTH_LONG, "%d", achievementIncrement);
        keyPairQuery_achievementIncrement = keyValuePair_create(keyQuery_achievementIncrement, valueQuery_achievementIncrement);
        list_addElement(localVarQueryParameters,keyPairQuery_achievementIncrement);
    }

    // query parameters
    char *keyQuery_city = NULL;
    char * valueQuery_city = NULL;
    keyValuePair_t *keyPairQuery_city = 0;
    if (city)
    {
        keyQuery_city = strdup("city");
        valueQuery_city = strdup((city));
        keyPairQuery_city = keyValuePair_create(keyQuery_city, valueQuery_city);
        list_addElement(localVarQueryParameters,keyPairQuery_city);
    }

    // query parameters
    char *keyQuery_state = NULL;
    char * valueQuery_state = NULL;
    keyValuePair_t *keyPairQuery_state = 0;
    if (state)
    {
        keyQuery_state = strdup("state");
        valueQuery_state = strdup((state));
        keyPairQuery_state = keyValuePair_create(keyQuery_state, valueQuery_state);
        list_addElement(localVarQueryParameters,keyPairQuery_state);
    }

    // query parameters
    char *keyQuery_country = NULL;
    char * valueQuery_country = NULL;
    keyValuePair_t *keyPairQuery_country = 0;
    if (country)
    {
        keyQuery_country = strdup("country");
        valueQuery_country = strdup((country));
        keyPairQuery_country = keyValuePair_create(keyQuery_country, valueQuery_country);
        list_addElement(localVarQueryParameters,keyPairQuery_country);
    }

    // query parameters
    char *keyQuery_zip = NULL;
    char * valueQuery_zip = NULL;
    keyValuePair_t *keyPairQuery_zip = 0;
    if (zip)
    {
        keyQuery_zip = strdup("zip");
        valueQuery_zip = strdup((zip));
        keyPairQuery_zip = keyValuePair_create(keyQuery_zip, valueQuery_zip);
        list_addElement(localVarQueryParameters,keyPairQuery_zip);
    }

    // query parameters
    char *keyQuery_locationDescription = NULL;
    char * valueQuery_locationDescription = NULL;
    keyValuePair_t *keyPairQuery_locationDescription = 0;
    if (locationDescription)
    {
        keyQuery_locationDescription = strdup("locationDescription");
        valueQuery_locationDescription = strdup((locationDescription));
        keyPairQuery_locationDescription = keyValuePair_create(keyQuery_locationDescription, valueQuery_locationDescription);
        list_addElement(localVarQueryParameters,keyPairQuery_locationDescription);
    }

    // query parameters
    char *keyQuery_clientTime = NULL;
    char * valueQuery_clientTime ;
    keyValuePair_t *keyPairQuery_clientTime = 0;
    {
        keyQuery_clientTime = strdup("clientTime");
        valueQuery_clientTime = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_clientTime, MAX_NUMBER_LENGTH_LONG, "%d", clientTime);
        keyPairQuery_clientTime = keyValuePair_create(keyQuery_clientTime, valueQuery_clientTime);
        list_addElement(localVarQueryParameters,keyPairQuery_clientTime);
    }

    // query parameters
    char *keyQuery_errorMessage = NULL;
    char * valueQuery_errorMessage = NULL;
    keyValuePair_t *keyPairQuery_errorMessage = 0;
    if (errorMessage)
    {
        keyQuery_errorMessage = strdup("errorMessage");
        valueQuery_errorMessage = strdup((errorMessage));
        keyPairQuery_errorMessage = keyValuePair_create(keyQuery_errorMessage, valueQuery_errorMessage);
        list_addElement(localVarQueryParameters,keyPairQuery_errorMessage);
    }

    // query parameters
    char *keyQuery_ip = NULL;
    char * valueQuery_ip = NULL;
    keyValuePair_t *keyPairQuery_ip = 0;
    if (ip)
    {
        keyQuery_ip = strdup("ip");
        valueQuery_ip = strdup((ip));
        keyPairQuery_ip = keyValuePair_create(keyQuery_ip, valueQuery_ip);
        list_addElement(localVarQueryParameters,keyPairQuery_ip);
    }

    // query parameters
    char *keyQuery_userAgent = NULL;
    char * valueQuery_userAgent = NULL;
    keyValuePair_t *keyPairQuery_userAgent = 0;
    if (userAgent)
    {
        keyQuery_userAgent = strdup("userAgent");
        valueQuery_userAgent = strdup((userAgent));
        keyPairQuery_userAgent = keyValuePair_create(keyQuery_userAgent, valueQuery_userAgent);
        list_addElement(localVarQueryParameters,keyPairQuery_userAgent);
    }

    // query parameters
    char *keyQuery_backgroundEvent = NULL;
    char * valueQuery_backgroundEvent = NULL;
    keyValuePair_t *keyPairQuery_backgroundEvent = 0;
    if (backgroundEvent)
    {
        keyQuery_backgroundEvent = strdup("backgroundEvent");
        valueQuery_backgroundEvent = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_backgroundEvent, MAX_NUMBER_LENGTH, "%d", *backgroundEvent);
        keyPairQuery_backgroundEvent = keyValuePair_create(keyQuery_backgroundEvent, valueQuery_backgroundEvent);
        list_addElement(localVarQueryParameters,keyPairQuery_backgroundEvent);
    }

    // query parameters
    char *keyQuery_customMessage = NULL;
    char * valueQuery_customMessage = NULL;
    keyValuePair_t *keyPairQuery_customMessage = 0;
    if (customMessage)
    {
        keyQuery_customMessage = strdup("customMessage");
        valueQuery_customMessage = strdup((customMessage));
        keyPairQuery_customMessage = keyValuePair_create(keyQuery_customMessage, valueQuery_customMessage);
        list_addElement(localVarQueryParameters,keyPairQuery_customMessage);
    }

    // query parameters
    char *keyQuery_customMessage2 = NULL;
    char * valueQuery_customMessage2 = NULL;
    keyValuePair_t *keyPairQuery_customMessage2 = 0;
    if (customMessage2)
    {
        keyQuery_customMessage2 = strdup("customMessage2");
        valueQuery_customMessage2 = strdup((customMessage2));
        keyPairQuery_customMessage2 = keyValuePair_create(keyQuery_customMessage2, valueQuery_customMessage2);
        list_addElement(localVarQueryParameters,keyPairQuery_customMessage2);
    }

    // query parameters
    char *keyQuery_customValue = NULL;
    char * valueQuery_customValue = NULL;
    keyValuePair_t *keyPairQuery_customValue = 0;
    {
        keyQuery_customValue = strdup("customValue");
        int s = snprintf(NULL, 0, "%.16e", customValue);
        if (s >= 0)
        {
            valueQuery_customValue = calloc(1,s+1);
            snprintf(valueQuery_customValue, s+1, "%.16e", customValue);
        }
        keyPairQuery_customValue = keyValuePair_create(keyQuery_customValue, valueQuery_customValue);
        list_addElement(localVarQueryParameters,keyPairQuery_customValue);
    }

    // query parameters
    char *keyQuery_customValue2 = NULL;
    char * valueQuery_customValue2 = NULL;
    keyValuePair_t *keyPairQuery_customValue2 = 0;
    {
        keyQuery_customValue2 = strdup("customValue2");
        int s = snprintf(NULL, 0, "%.16e", customValue2);
        if (s >= 0)
        {
            valueQuery_customValue2 = calloc(1,s+1);
            snprintf(valueQuery_customValue2, s+1, "%.16e", customValue2);
        }
        keyPairQuery_customValue2 = keyValuePair_create(keyQuery_customValue2, valueQuery_customValue2);
        list_addElement(localVarQueryParameters,keyPairQuery_customValue2);
    }

    // query parameters
    char *keyQuery_customLong = NULL;
    char * valueQuery_customLong ;
    keyValuePair_t *keyPairQuery_customLong = 0;
    {
        keyQuery_customLong = strdup("customLong");
        valueQuery_customLong = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_customLong, MAX_NUMBER_LENGTH_LONG, "%d", customLong);
        keyPairQuery_customLong = keyValuePair_create(keyQuery_customLong, valueQuery_customLong);
        list_addElement(localVarQueryParameters,keyPairQuery_customLong);
    }

    // query parameters
    char *keyQuery_customLong2 = NULL;
    char * valueQuery_customLong2 ;
    keyValuePair_t *keyPairQuery_customLong2 = 0;
    {
        keyQuery_customLong2 = strdup("customLong2");
        valueQuery_customLong2 = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_customLong2, MAX_NUMBER_LENGTH_LONG, "%d", customLong2);
        keyPairQuery_customLong2 = keyValuePair_create(keyQuery_customLong2, valueQuery_customLong2);
        list_addElement(localVarQueryParameters,keyPairQuery_customLong2);
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
        cJSON *AnalyticsAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(AnalyticsAPIlocalVarJSON);
        cJSON_Delete(AnalyticsAPIlocalVarJSON);
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
    if(keyQuery_tag){
        free(keyQuery_tag);
        keyQuery_tag = NULL;
    }
    if(valueQuery_tag){
        free(valueQuery_tag);
        valueQuery_tag = NULL;
    }
    if(keyPairQuery_tag){
        keyValuePair_free(keyPairQuery_tag);
        keyPairQuery_tag = NULL;
    }
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
    if(keyQuery_applicationId){
        free(keyQuery_applicationId);
        keyQuery_applicationId = NULL;
    }
    if(keyPairQuery_applicationId){
        keyValuePair_free(keyPairQuery_applicationId);
        keyPairQuery_applicationId = NULL;
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
    if(keyQuery_appVersion){
        free(keyQuery_appVersion);
        keyQuery_appVersion = NULL;
    }
    if(valueQuery_appVersion){
        free(valueQuery_appVersion);
        valueQuery_appVersion = NULL;
    }
    if(keyPairQuery_appVersion){
        keyValuePair_free(keyPairQuery_appVersion);
        keyPairQuery_appVersion = NULL;
    }
    if(keyQuery_device){
        free(keyQuery_device);
        keyQuery_device = NULL;
    }
    if(valueQuery_device){
        free(valueQuery_device);
        valueQuery_device = NULL;
    }
    if(keyPairQuery_device){
        keyValuePair_free(keyPairQuery_device);
        keyPairQuery_device = NULL;
    }
    if(keyQuery_deviceType){
        free(keyQuery_deviceType);
        keyQuery_deviceType = NULL;
    }
    if(valueQuery_deviceType){
        free(valueQuery_deviceType);
        valueQuery_deviceType = NULL;
    }
    if(keyPairQuery_deviceType){
        keyValuePair_free(keyPairQuery_deviceType);
        keyPairQuery_deviceType = NULL;
    }
    if(keyQuery_deviceOS){
        free(keyQuery_deviceOS);
        keyQuery_deviceOS = NULL;
    }
    if(valueQuery_deviceOS){
        free(valueQuery_deviceOS);
        valueQuery_deviceOS = NULL;
    }
    if(keyPairQuery_deviceOS){
        keyValuePair_free(keyPairQuery_deviceOS);
        keyPairQuery_deviceOS = NULL;
    }
    if(keyQuery_model){
        free(keyQuery_model);
        keyQuery_model = NULL;
    }
    if(valueQuery_model){
        free(valueQuery_model);
        valueQuery_model = NULL;
    }
    if(keyPairQuery_model){
        keyValuePair_free(keyPairQuery_model);
        keyPairQuery_model = NULL;
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
    if(keyQuery_customId){
        free(keyQuery_customId);
        keyQuery_customId = NULL;
    }
    if(keyPairQuery_customId){
        keyValuePair_free(keyPairQuery_customId);
        keyPairQuery_customId = NULL;
    }
    if(keyQuery_customType){
        free(keyQuery_customType);
        keyQuery_customType = NULL;
    }
    if(valueQuery_customType){
        free(valueQuery_customType);
        valueQuery_customType = NULL;
    }
    if(keyPairQuery_customType){
        keyValuePair_free(keyPairQuery_customType);
        keyPairQuery_customType = NULL;
    }
    if(keyQuery_achievementIncrement){
        free(keyQuery_achievementIncrement);
        keyQuery_achievementIncrement = NULL;
    }
    if(keyPairQuery_achievementIncrement){
        keyValuePair_free(keyPairQuery_achievementIncrement);
        keyPairQuery_achievementIncrement = NULL;
    }
    if(keyQuery_city){
        free(keyQuery_city);
        keyQuery_city = NULL;
    }
    if(valueQuery_city){
        free(valueQuery_city);
        valueQuery_city = NULL;
    }
    if(keyPairQuery_city){
        keyValuePair_free(keyPairQuery_city);
        keyPairQuery_city = NULL;
    }
    if(keyQuery_state){
        free(keyQuery_state);
        keyQuery_state = NULL;
    }
    if(valueQuery_state){
        free(valueQuery_state);
        valueQuery_state = NULL;
    }
    if(keyPairQuery_state){
        keyValuePair_free(keyPairQuery_state);
        keyPairQuery_state = NULL;
    }
    if(keyQuery_country){
        free(keyQuery_country);
        keyQuery_country = NULL;
    }
    if(valueQuery_country){
        free(valueQuery_country);
        valueQuery_country = NULL;
    }
    if(keyPairQuery_country){
        keyValuePair_free(keyPairQuery_country);
        keyPairQuery_country = NULL;
    }
    if(keyQuery_zip){
        free(keyQuery_zip);
        keyQuery_zip = NULL;
    }
    if(valueQuery_zip){
        free(valueQuery_zip);
        valueQuery_zip = NULL;
    }
    if(keyPairQuery_zip){
        keyValuePair_free(keyPairQuery_zip);
        keyPairQuery_zip = NULL;
    }
    if(keyQuery_locationDescription){
        free(keyQuery_locationDescription);
        keyQuery_locationDescription = NULL;
    }
    if(valueQuery_locationDescription){
        free(valueQuery_locationDescription);
        valueQuery_locationDescription = NULL;
    }
    if(keyPairQuery_locationDescription){
        keyValuePair_free(keyPairQuery_locationDescription);
        keyPairQuery_locationDescription = NULL;
    }
    if(keyQuery_clientTime){
        free(keyQuery_clientTime);
        keyQuery_clientTime = NULL;
    }
    if(keyPairQuery_clientTime){
        keyValuePair_free(keyPairQuery_clientTime);
        keyPairQuery_clientTime = NULL;
    }
    if(keyQuery_errorMessage){
        free(keyQuery_errorMessage);
        keyQuery_errorMessage = NULL;
    }
    if(valueQuery_errorMessage){
        free(valueQuery_errorMessage);
        valueQuery_errorMessage = NULL;
    }
    if(keyPairQuery_errorMessage){
        keyValuePair_free(keyPairQuery_errorMessage);
        keyPairQuery_errorMessage = NULL;
    }
    if(keyQuery_ip){
        free(keyQuery_ip);
        keyQuery_ip = NULL;
    }
    if(valueQuery_ip){
        free(valueQuery_ip);
        valueQuery_ip = NULL;
    }
    if(keyPairQuery_ip){
        keyValuePair_free(keyPairQuery_ip);
        keyPairQuery_ip = NULL;
    }
    if(keyQuery_userAgent){
        free(keyQuery_userAgent);
        keyQuery_userAgent = NULL;
    }
    if(valueQuery_userAgent){
        free(valueQuery_userAgent);
        valueQuery_userAgent = NULL;
    }
    if(keyPairQuery_userAgent){
        keyValuePair_free(keyPairQuery_userAgent);
        keyPairQuery_userAgent = NULL;
    }
    if(keyQuery_backgroundEvent){
        free(keyQuery_backgroundEvent);
        keyQuery_backgroundEvent = NULL;
    }
    if(valueQuery_backgroundEvent){
        free(valueQuery_backgroundEvent);
        valueQuery_backgroundEvent = NULL;
    }
    if(keyPairQuery_backgroundEvent){
        keyValuePair_free(keyPairQuery_backgroundEvent);
        keyPairQuery_backgroundEvent = NULL;
    }
    if(keyQuery_customMessage){
        free(keyQuery_customMessage);
        keyQuery_customMessage = NULL;
    }
    if(valueQuery_customMessage){
        free(valueQuery_customMessage);
        valueQuery_customMessage = NULL;
    }
    if(keyPairQuery_customMessage){
        keyValuePair_free(keyPairQuery_customMessage);
        keyPairQuery_customMessage = NULL;
    }
    if(keyQuery_customMessage2){
        free(keyQuery_customMessage2);
        keyQuery_customMessage2 = NULL;
    }
    if(valueQuery_customMessage2){
        free(valueQuery_customMessage2);
        valueQuery_customMessage2 = NULL;
    }
    if(keyPairQuery_customMessage2){
        keyValuePair_free(keyPairQuery_customMessage2);
        keyPairQuery_customMessage2 = NULL;
    }
    if(keyQuery_customValue){
        free(keyQuery_customValue);
        keyQuery_customValue = NULL;
    }
    if(keyPairQuery_customValue){
        keyValuePair_free(keyPairQuery_customValue);
        keyPairQuery_customValue = NULL;
    }
    if(keyQuery_customValue2){
        free(keyQuery_customValue2);
        keyQuery_customValue2 = NULL;
    }
    if(keyPairQuery_customValue2){
        keyValuePair_free(keyPairQuery_customValue2);
        keyPairQuery_customValue2 = NULL;
    }
    if(keyQuery_customLong){
        free(keyQuery_customLong);
        keyQuery_customLong = NULL;
    }
    if(keyPairQuery_customLong){
        keyValuePair_free(keyPairQuery_customLong);
        keyPairQuery_customLong = NULL;
    }
    if(keyQuery_customLong2){
        free(keyQuery_customLong2);
        keyQuery_customLong2 = NULL;
    }
    if(keyPairQuery_customLong2){
        keyValuePair_free(keyPairQuery_customLong2);
        keyPairQuery_customLong2 = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Create Multiple Usage Records
//
// Sends multiple analytics. Can be used to send in the user's stored usage when they did not have internet access. Should not include more than 100 items per batch.
//
sirqul_response_t*
AnalyticsAPI_usageBatch(apiClient_t *apiClient, char *appKey, char *device, char *data, char *deviceId, long accountId, char *appVersion, char *deviceType, char *deviceOS, char *model, int *updateRanking, int *returnSummaryResponse)
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
    char *localVarPath = strdup("/analytics/usage/batch");





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
    char *keyQuery_appVersion = NULL;
    char * valueQuery_appVersion = NULL;
    keyValuePair_t *keyPairQuery_appVersion = 0;
    if (appVersion)
    {
        keyQuery_appVersion = strdup("appVersion");
        valueQuery_appVersion = strdup((appVersion));
        keyPairQuery_appVersion = keyValuePair_create(keyQuery_appVersion, valueQuery_appVersion);
        list_addElement(localVarQueryParameters,keyPairQuery_appVersion);
    }

    // query parameters
    char *keyQuery_device = NULL;
    char * valueQuery_device = NULL;
    keyValuePair_t *keyPairQuery_device = 0;
    if (device)
    {
        keyQuery_device = strdup("device");
        valueQuery_device = strdup((device));
        keyPairQuery_device = keyValuePair_create(keyQuery_device, valueQuery_device);
        list_addElement(localVarQueryParameters,keyPairQuery_device);
    }

    // query parameters
    char *keyQuery_deviceType = NULL;
    char * valueQuery_deviceType = NULL;
    keyValuePair_t *keyPairQuery_deviceType = 0;
    if (deviceType)
    {
        keyQuery_deviceType = strdup("deviceType");
        valueQuery_deviceType = strdup((deviceType));
        keyPairQuery_deviceType = keyValuePair_create(keyQuery_deviceType, valueQuery_deviceType);
        list_addElement(localVarQueryParameters,keyPairQuery_deviceType);
    }

    // query parameters
    char *keyQuery_deviceOS = NULL;
    char * valueQuery_deviceOS = NULL;
    keyValuePair_t *keyPairQuery_deviceOS = 0;
    if (deviceOS)
    {
        keyQuery_deviceOS = strdup("deviceOS");
        valueQuery_deviceOS = strdup((deviceOS));
        keyPairQuery_deviceOS = keyValuePair_create(keyQuery_deviceOS, valueQuery_deviceOS);
        list_addElement(localVarQueryParameters,keyPairQuery_deviceOS);
    }

    // query parameters
    char *keyQuery_model = NULL;
    char * valueQuery_model = NULL;
    keyValuePair_t *keyPairQuery_model = 0;
    if (model)
    {
        keyQuery_model = strdup("model");
        valueQuery_model = strdup((model));
        keyPairQuery_model = keyValuePair_create(keyQuery_model, valueQuery_model);
        list_addElement(localVarQueryParameters,keyPairQuery_model);
    }

    // query parameters
    char *keyQuery_data = NULL;
    char * valueQuery_data = NULL;
    keyValuePair_t *keyPairQuery_data = 0;
    if (data)
    {
        keyQuery_data = strdup("data");
        valueQuery_data = strdup((data));
        keyPairQuery_data = keyValuePair_create(keyQuery_data, valueQuery_data);
        list_addElement(localVarQueryParameters,keyPairQuery_data);
    }

    // query parameters
    char *keyQuery_updateRanking = NULL;
    char * valueQuery_updateRanking = NULL;
    keyValuePair_t *keyPairQuery_updateRanking = 0;
    if (updateRanking)
    {
        keyQuery_updateRanking = strdup("updateRanking");
        valueQuery_updateRanking = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_updateRanking, MAX_NUMBER_LENGTH, "%d", *updateRanking);
        keyPairQuery_updateRanking = keyValuePair_create(keyQuery_updateRanking, valueQuery_updateRanking);
        list_addElement(localVarQueryParameters,keyPairQuery_updateRanking);
    }

    // query parameters
    char *keyQuery_returnSummaryResponse = NULL;
    char * valueQuery_returnSummaryResponse = NULL;
    keyValuePair_t *keyPairQuery_returnSummaryResponse = 0;
    if (returnSummaryResponse)
    {
        keyQuery_returnSummaryResponse = strdup("returnSummaryResponse");
        valueQuery_returnSummaryResponse = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnSummaryResponse, MAX_NUMBER_LENGTH, "%d", *returnSummaryResponse);
        keyPairQuery_returnSummaryResponse = keyValuePair_create(keyQuery_returnSummaryResponse, valueQuery_returnSummaryResponse);
        list_addElement(localVarQueryParameters,keyPairQuery_returnSummaryResponse);
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
        cJSON *AnalyticsAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(AnalyticsAPIlocalVarJSON);
        cJSON_Delete(AnalyticsAPIlocalVarJSON);
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
    if(keyQuery_appVersion){
        free(keyQuery_appVersion);
        keyQuery_appVersion = NULL;
    }
    if(valueQuery_appVersion){
        free(valueQuery_appVersion);
        valueQuery_appVersion = NULL;
    }
    if(keyPairQuery_appVersion){
        keyValuePair_free(keyPairQuery_appVersion);
        keyPairQuery_appVersion = NULL;
    }
    if(keyQuery_device){
        free(keyQuery_device);
        keyQuery_device = NULL;
    }
    if(valueQuery_device){
        free(valueQuery_device);
        valueQuery_device = NULL;
    }
    if(keyPairQuery_device){
        keyValuePair_free(keyPairQuery_device);
        keyPairQuery_device = NULL;
    }
    if(keyQuery_deviceType){
        free(keyQuery_deviceType);
        keyQuery_deviceType = NULL;
    }
    if(valueQuery_deviceType){
        free(valueQuery_deviceType);
        valueQuery_deviceType = NULL;
    }
    if(keyPairQuery_deviceType){
        keyValuePair_free(keyPairQuery_deviceType);
        keyPairQuery_deviceType = NULL;
    }
    if(keyQuery_deviceOS){
        free(keyQuery_deviceOS);
        keyQuery_deviceOS = NULL;
    }
    if(valueQuery_deviceOS){
        free(valueQuery_deviceOS);
        valueQuery_deviceOS = NULL;
    }
    if(keyPairQuery_deviceOS){
        keyValuePair_free(keyPairQuery_deviceOS);
        keyPairQuery_deviceOS = NULL;
    }
    if(keyQuery_model){
        free(keyQuery_model);
        keyQuery_model = NULL;
    }
    if(valueQuery_model){
        free(valueQuery_model);
        valueQuery_model = NULL;
    }
    if(keyPairQuery_model){
        keyValuePair_free(keyPairQuery_model);
        keyPairQuery_model = NULL;
    }
    if(keyQuery_data){
        free(keyQuery_data);
        keyQuery_data = NULL;
    }
    if(valueQuery_data){
        free(valueQuery_data);
        valueQuery_data = NULL;
    }
    if(keyPairQuery_data){
        keyValuePair_free(keyPairQuery_data);
        keyPairQuery_data = NULL;
    }
    if(keyQuery_updateRanking){
        free(keyQuery_updateRanking);
        keyQuery_updateRanking = NULL;
    }
    if(valueQuery_updateRanking){
        free(valueQuery_updateRanking);
        valueQuery_updateRanking = NULL;
    }
    if(keyPairQuery_updateRanking){
        keyValuePair_free(keyPairQuery_updateRanking);
        keyPairQuery_updateRanking = NULL;
    }
    if(keyQuery_returnSummaryResponse){
        free(keyQuery_returnSummaryResponse);
        keyQuery_returnSummaryResponse = NULL;
    }
    if(valueQuery_returnSummaryResponse){
        free(valueQuery_returnSummaryResponse);
        valueQuery_returnSummaryResponse = NULL;
    }
    if(keyPairQuery_returnSummaryResponse){
        keyValuePair_free(keyPairQuery_returnSummaryResponse);
        keyPairQuery_returnSummaryResponse = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

