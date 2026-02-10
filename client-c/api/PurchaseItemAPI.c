#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "PurchaseItemAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21

// Functions for enum PURCHASETYPE for PurchaseItemAPI_createPurchaseItem

static char* createPurchaseItem_PURCHASETYPE_ToString(sirqul_iot_platform_createPurchaseItem_purchaseType_e PURCHASETYPE){
    char *PURCHASETYPEArray[] =  { "NULL", "SIRQUL", "IOS", "GOOGLE", "AMAZON", "MAC", "WP8", "FREE" };
    return PURCHASETYPEArray[PURCHASETYPE];
}

static sirqul_iot_platform_createPurchaseItem_purchaseType_e createPurchaseItem_PURCHASETYPE_FromString(char* PURCHASETYPE){
    int stringToReturn = 0;
    char *PURCHASETYPEArray[] =  { "NULL", "SIRQUL", "IOS", "GOOGLE", "AMAZON", "MAC", "WP8", "FREE" };
    size_t sizeofArray = sizeof(PURCHASETYPEArray) / sizeof(PURCHASETYPEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(PURCHASETYPE, PURCHASETYPEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function createPurchaseItem_PURCHASETYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *createPurchaseItem_PURCHASETYPE_convertToJSON(sirqul_iot_platform_createPurchaseItem_purchaseType_e PURCHASETYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "purchaseType", createPurchaseItem_PURCHASETYPE_ToString(PURCHASETYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function createPurchaseItem_PURCHASETYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_createPurchaseItem_purchaseType_e createPurchaseItem_PURCHASETYPE_parseFromJSON(cJSON* PURCHASETYPEJSON) {
    sirqul_iot_platform_createPurchaseItem_purchaseType_e PURCHASETYPEVariable = 0;
    cJSON *PURCHASETYPEVar = cJSON_GetObjectItemCaseSensitive(PURCHASETYPEJSON, "purchaseType");
    if(!cJSON_IsString(PURCHASETYPEVar) || (PURCHASETYPEVar->valuestring == NULL))
    {
        goto end;
    }
    PURCHASETYPEVariable = createPurchaseItem_PURCHASETYPE_FromString(PURCHASETYPEVar->valuestring);
    return PURCHASETYPEVariable;
end:
    return 0;
}
*/

// Functions for enum SERVICEACTION for PurchaseItemAPI_createPurchaseItem

static char* createPurchaseItem_SERVICEACTION_ToString(sirqul_iot_platform_createPurchaseItem_serviceAction_e SERVICEACTION){
    char *SERVICEACTIONArray[] =  { "NULL", "DAY_PREMIUM", "WEEK_PREMIUM", "MONTH_PREMIUM", "YEAR_PREMIUM", "LIFETIME_PREMIUM", "ADD_TICKET", "ADD_GIFT", "ADD_POINTS" };
    return SERVICEACTIONArray[SERVICEACTION];
}

static sirqul_iot_platform_createPurchaseItem_serviceAction_e createPurchaseItem_SERVICEACTION_FromString(char* SERVICEACTION){
    int stringToReturn = 0;
    char *SERVICEACTIONArray[] =  { "NULL", "DAY_PREMIUM", "WEEK_PREMIUM", "MONTH_PREMIUM", "YEAR_PREMIUM", "LIFETIME_PREMIUM", "ADD_TICKET", "ADD_GIFT", "ADD_POINTS" };
    size_t sizeofArray = sizeof(SERVICEACTIONArray) / sizeof(SERVICEACTIONArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(SERVICEACTION, SERVICEACTIONArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function createPurchaseItem_SERVICEACTION_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *createPurchaseItem_SERVICEACTION_convertToJSON(sirqul_iot_platform_createPurchaseItem_serviceAction_e SERVICEACTION) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "serviceAction", createPurchaseItem_SERVICEACTION_ToString(SERVICEACTION)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function createPurchaseItem_SERVICEACTION_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_createPurchaseItem_serviceAction_e createPurchaseItem_SERVICEACTION_parseFromJSON(cJSON* SERVICEACTIONJSON) {
    sirqul_iot_platform_createPurchaseItem_serviceAction_e SERVICEACTIONVariable = 0;
    cJSON *SERVICEACTIONVar = cJSON_GetObjectItemCaseSensitive(SERVICEACTIONJSON, "serviceAction");
    if(!cJSON_IsString(SERVICEACTIONVar) || (SERVICEACTIONVar->valuestring == NULL))
    {
        goto end;
    }
    SERVICEACTIONVariable = createPurchaseItem_SERVICEACTION_FromString(SERVICEACTIONVar->valuestring);
    return SERVICEACTIONVariable;
end:
    return 0;
}
*/

// Functions for enum SORTFIELD for PurchaseItemAPI_searchPurchaseItems

static char* searchPurchaseItems_SORTFIELD_ToString(sirqul_iot_platform_searchPurchaseItems_sortField_e SORTFIELD){
    char *SORTFIELDArray[] =  { "NULL", "ID", "CREATED", "UPDATED", "DELETED", "SEARCH_TAGS", "ACTIVE", "NAME", "DESCRIPTION", "TICKETS", "PRICE", "PURCHASE_TYPE", "PURCHASE_CODE", "PURCHASE_LIMIT", "SERIVCE_ACTION", "GIFTABLE", "ASSETABLE", "APPLICATION_ID", "APPLICATION_NAME" };
    return SORTFIELDArray[SORTFIELD];
}

static sirqul_iot_platform_searchPurchaseItems_sortField_e searchPurchaseItems_SORTFIELD_FromString(char* SORTFIELD){
    int stringToReturn = 0;
    char *SORTFIELDArray[] =  { "NULL", "ID", "CREATED", "UPDATED", "DELETED", "SEARCH_TAGS", "ACTIVE", "NAME", "DESCRIPTION", "TICKETS", "PRICE", "PURCHASE_TYPE", "PURCHASE_CODE", "PURCHASE_LIMIT", "SERIVCE_ACTION", "GIFTABLE", "ASSETABLE", "APPLICATION_ID", "APPLICATION_NAME" };
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
// Function searchPurchaseItems_SORTFIELD_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *searchPurchaseItems_SORTFIELD_convertToJSON(sirqul_iot_platform_searchPurchaseItems_sortField_e SORTFIELD) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "sortField", searchPurchaseItems_SORTFIELD_ToString(SORTFIELD)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function searchPurchaseItems_SORTFIELD_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_searchPurchaseItems_sortField_e searchPurchaseItems_SORTFIELD_parseFromJSON(cJSON* SORTFIELDJSON) {
    sirqul_iot_platform_searchPurchaseItems_sortField_e SORTFIELDVariable = 0;
    cJSON *SORTFIELDVar = cJSON_GetObjectItemCaseSensitive(SORTFIELDJSON, "sortField");
    if(!cJSON_IsString(SORTFIELDVar) || (SORTFIELDVar->valuestring == NULL))
    {
        goto end;
    }
    SORTFIELDVariable = searchPurchaseItems_SORTFIELD_FromString(SORTFIELDVar->valuestring);
    return SORTFIELDVariable;
end:
    return 0;
}
*/

// Functions for enum PURCHASETYPE for PurchaseItemAPI_updatePurchaseItem

static char* updatePurchaseItem_PURCHASETYPE_ToString(sirqul_iot_platform_updatePurchaseItem_purchaseType_e PURCHASETYPE){
    char *PURCHASETYPEArray[] =  { "NULL", "SIRQUL", "IOS", "GOOGLE", "AMAZON", "MAC", "WP8", "FREE" };
    return PURCHASETYPEArray[PURCHASETYPE];
}

static sirqul_iot_platform_updatePurchaseItem_purchaseType_e updatePurchaseItem_PURCHASETYPE_FromString(char* PURCHASETYPE){
    int stringToReturn = 0;
    char *PURCHASETYPEArray[] =  { "NULL", "SIRQUL", "IOS", "GOOGLE", "AMAZON", "MAC", "WP8", "FREE" };
    size_t sizeofArray = sizeof(PURCHASETYPEArray) / sizeof(PURCHASETYPEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(PURCHASETYPE, PURCHASETYPEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function updatePurchaseItem_PURCHASETYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *updatePurchaseItem_PURCHASETYPE_convertToJSON(sirqul_iot_platform_updatePurchaseItem_purchaseType_e PURCHASETYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "purchaseType", updatePurchaseItem_PURCHASETYPE_ToString(PURCHASETYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function updatePurchaseItem_PURCHASETYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_updatePurchaseItem_purchaseType_e updatePurchaseItem_PURCHASETYPE_parseFromJSON(cJSON* PURCHASETYPEJSON) {
    sirqul_iot_platform_updatePurchaseItem_purchaseType_e PURCHASETYPEVariable = 0;
    cJSON *PURCHASETYPEVar = cJSON_GetObjectItemCaseSensitive(PURCHASETYPEJSON, "purchaseType");
    if(!cJSON_IsString(PURCHASETYPEVar) || (PURCHASETYPEVar->valuestring == NULL))
    {
        goto end;
    }
    PURCHASETYPEVariable = updatePurchaseItem_PURCHASETYPE_FromString(PURCHASETYPEVar->valuestring);
    return PURCHASETYPEVariable;
end:
    return 0;
}
*/

// Functions for enum SERVICEACTION for PurchaseItemAPI_updatePurchaseItem

static char* updatePurchaseItem_SERVICEACTION_ToString(sirqul_iot_platform_updatePurchaseItem_serviceAction_e SERVICEACTION){
    char *SERVICEACTIONArray[] =  { "NULL", "DAY_PREMIUM", "WEEK_PREMIUM", "MONTH_PREMIUM", "YEAR_PREMIUM", "LIFETIME_PREMIUM", "ADD_TICKET", "ADD_GIFT", "ADD_POINTS" };
    return SERVICEACTIONArray[SERVICEACTION];
}

static sirqul_iot_platform_updatePurchaseItem_serviceAction_e updatePurchaseItem_SERVICEACTION_FromString(char* SERVICEACTION){
    int stringToReturn = 0;
    char *SERVICEACTIONArray[] =  { "NULL", "DAY_PREMIUM", "WEEK_PREMIUM", "MONTH_PREMIUM", "YEAR_PREMIUM", "LIFETIME_PREMIUM", "ADD_TICKET", "ADD_GIFT", "ADD_POINTS" };
    size_t sizeofArray = sizeof(SERVICEACTIONArray) / sizeof(SERVICEACTIONArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(SERVICEACTION, SERVICEACTIONArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function updatePurchaseItem_SERVICEACTION_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *updatePurchaseItem_SERVICEACTION_convertToJSON(sirqul_iot_platform_updatePurchaseItem_serviceAction_e SERVICEACTION) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "serviceAction", updatePurchaseItem_SERVICEACTION_ToString(SERVICEACTION)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function updatePurchaseItem_SERVICEACTION_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_updatePurchaseItem_serviceAction_e updatePurchaseItem_SERVICEACTION_parseFromJSON(cJSON* SERVICEACTIONJSON) {
    sirqul_iot_platform_updatePurchaseItem_serviceAction_e SERVICEACTIONVariable = 0;
    cJSON *SERVICEACTIONVar = cJSON_GetObjectItemCaseSensitive(SERVICEACTIONJSON, "serviceAction");
    if(!cJSON_IsString(SERVICEACTIONVar) || (SERVICEACTIONVar->valuestring == NULL))
    {
        goto end;
    }
    SERVICEACTIONVariable = updatePurchaseItem_SERVICEACTION_FromString(SERVICEACTIONVar->valuestring);
    return SERVICEACTIONVariable;
end:
    return 0;
}
*/


// Create Purchase
//
// Creates a purchase item for in app purchases
//
purchase_item_full_response_t*
PurchaseItemAPI_createPurchaseItem(apiClient_t *apiClient, double version, char *appKey, char *name, sirqul_iot_platform_createPurchaseItem_purchaseType_e purchaseType, char *deviceId, long accountId, char *description, int *tickets, float price, char *purchaseCode, char *secretKey, int *purchaseLimit, sirqul_iot_platform_createPurchaseItem_serviceAction_e serviceAction, long coverAssetId, long promoAssetId, int *giftable, int *assetable, int *allocateTickets, char *ticketType, long points, long offerLocationId)
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
    char *localVarPath = strdup("/api/{version}/purchase/create");



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
    char *keyQuery_tickets = NULL;
    char * valueQuery_tickets = NULL;
    keyValuePair_t *keyPairQuery_tickets = 0;
    if (tickets)
    {
        keyQuery_tickets = strdup("tickets");
        valueQuery_tickets = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_tickets, MAX_NUMBER_LENGTH, "%d", *tickets);
        keyPairQuery_tickets = keyValuePair_create(keyQuery_tickets, valueQuery_tickets);
        list_addElement(localVarQueryParameters,keyPairQuery_tickets);
    }

    // query parameters
    char *keyQuery_price = NULL;
    char * valueQuery_price = NULL;
    keyValuePair_t *keyPairQuery_price = 0;
    {
        keyQuery_price = strdup("price");
        int s = snprintf(NULL, 0, "%.7e", price);
        if (s >= 0)
        {
            valueQuery_price = calloc(1,s+1);
            snprintf(valueQuery_price, s+1, "%.7e", price);
        }
        keyPairQuery_price = keyValuePair_create(keyQuery_price, valueQuery_price);
        list_addElement(localVarQueryParameters,keyPairQuery_price);
    }

    // query parameters
    char *keyQuery_purchaseType = NULL;
    sirqul_iot_platform_createPurchaseItem_purchaseType_e valueQuery_purchaseType ;
    keyValuePair_t *keyPairQuery_purchaseType = 0;
    if (purchaseType)
    {
        keyQuery_purchaseType = strdup("purchaseType");
        valueQuery_purchaseType = (purchaseType);
        keyPairQuery_purchaseType = keyValuePair_create(keyQuery_purchaseType, strdup(createPurchaseItem_PURCHASETYPE_ToString(
        valueQuery_purchaseType)));
        list_addElement(localVarQueryParameters,keyPairQuery_purchaseType);
    }

    // query parameters
    char *keyQuery_purchaseCode = NULL;
    char * valueQuery_purchaseCode = NULL;
    keyValuePair_t *keyPairQuery_purchaseCode = 0;
    if (purchaseCode)
    {
        keyQuery_purchaseCode = strdup("purchaseCode");
        valueQuery_purchaseCode = strdup((purchaseCode));
        keyPairQuery_purchaseCode = keyValuePair_create(keyQuery_purchaseCode, valueQuery_purchaseCode);
        list_addElement(localVarQueryParameters,keyPairQuery_purchaseCode);
    }

    // query parameters
    char *keyQuery_secretKey = NULL;
    char * valueQuery_secretKey = NULL;
    keyValuePair_t *keyPairQuery_secretKey = 0;
    if (secretKey)
    {
        keyQuery_secretKey = strdup("secretKey");
        valueQuery_secretKey = strdup((secretKey));
        keyPairQuery_secretKey = keyValuePair_create(keyQuery_secretKey, valueQuery_secretKey);
        list_addElement(localVarQueryParameters,keyPairQuery_secretKey);
    }

    // query parameters
    char *keyQuery_purchaseLimit = NULL;
    char * valueQuery_purchaseLimit = NULL;
    keyValuePair_t *keyPairQuery_purchaseLimit = 0;
    if (purchaseLimit)
    {
        keyQuery_purchaseLimit = strdup("purchaseLimit");
        valueQuery_purchaseLimit = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_purchaseLimit, MAX_NUMBER_LENGTH, "%d", *purchaseLimit);
        keyPairQuery_purchaseLimit = keyValuePair_create(keyQuery_purchaseLimit, valueQuery_purchaseLimit);
        list_addElement(localVarQueryParameters,keyPairQuery_purchaseLimit);
    }

    // query parameters
    char *keyQuery_serviceAction = NULL;
    sirqul_iot_platform_createPurchaseItem_serviceAction_e valueQuery_serviceAction ;
    keyValuePair_t *keyPairQuery_serviceAction = 0;
    if (serviceAction)
    {
        keyQuery_serviceAction = strdup("serviceAction");
        valueQuery_serviceAction = (serviceAction);
        keyPairQuery_serviceAction = keyValuePair_create(keyQuery_serviceAction, strdup(createPurchaseItem_SERVICEACTION_ToString(
        valueQuery_serviceAction)));
        list_addElement(localVarQueryParameters,keyPairQuery_serviceAction);
    }

    // query parameters
    char *keyQuery_coverAssetId = NULL;
    char * valueQuery_coverAssetId ;
    keyValuePair_t *keyPairQuery_coverAssetId = 0;
    {
        keyQuery_coverAssetId = strdup("coverAssetId");
        valueQuery_coverAssetId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_coverAssetId, MAX_NUMBER_LENGTH_LONG, "%d", coverAssetId);
        keyPairQuery_coverAssetId = keyValuePair_create(keyQuery_coverAssetId, valueQuery_coverAssetId);
        list_addElement(localVarQueryParameters,keyPairQuery_coverAssetId);
    }

    // query parameters
    char *keyQuery_promoAssetId = NULL;
    char * valueQuery_promoAssetId ;
    keyValuePair_t *keyPairQuery_promoAssetId = 0;
    {
        keyQuery_promoAssetId = strdup("promoAssetId");
        valueQuery_promoAssetId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_promoAssetId, MAX_NUMBER_LENGTH_LONG, "%d", promoAssetId);
        keyPairQuery_promoAssetId = keyValuePair_create(keyQuery_promoAssetId, valueQuery_promoAssetId);
        list_addElement(localVarQueryParameters,keyPairQuery_promoAssetId);
    }

    // query parameters
    char *keyQuery_giftable = NULL;
    char * valueQuery_giftable = NULL;
    keyValuePair_t *keyPairQuery_giftable = 0;
    if (giftable)
    {
        keyQuery_giftable = strdup("giftable");
        valueQuery_giftable = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_giftable, MAX_NUMBER_LENGTH, "%d", *giftable);
        keyPairQuery_giftable = keyValuePair_create(keyQuery_giftable, valueQuery_giftable);
        list_addElement(localVarQueryParameters,keyPairQuery_giftable);
    }

    // query parameters
    char *keyQuery_assetable = NULL;
    char * valueQuery_assetable = NULL;
    keyValuePair_t *keyPairQuery_assetable = 0;
    if (assetable)
    {
        keyQuery_assetable = strdup("assetable");
        valueQuery_assetable = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_assetable, MAX_NUMBER_LENGTH, "%d", *assetable);
        keyPairQuery_assetable = keyValuePair_create(keyQuery_assetable, valueQuery_assetable);
        list_addElement(localVarQueryParameters,keyPairQuery_assetable);
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

    // query parameters
    char *keyQuery_offerLocationId = NULL;
    char * valueQuery_offerLocationId ;
    keyValuePair_t *keyPairQuery_offerLocationId = 0;
    {
        keyQuery_offerLocationId = strdup("offerLocationId");
        valueQuery_offerLocationId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_offerLocationId, MAX_NUMBER_LENGTH_LONG, "%d", offerLocationId);
        keyPairQuery_offerLocationId = keyValuePair_create(keyQuery_offerLocationId, valueQuery_offerLocationId);
        list_addElement(localVarQueryParameters,keyPairQuery_offerLocationId);
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
    purchase_item_full_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *PurchaseItemAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = purchase_item_full_response_parseFromJSON(PurchaseItemAPIlocalVarJSON);
        cJSON_Delete(PurchaseItemAPIlocalVarJSON);
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
    if(keyQuery_tickets){
        free(keyQuery_tickets);
        keyQuery_tickets = NULL;
    }
    if(valueQuery_tickets){
        free(valueQuery_tickets);
        valueQuery_tickets = NULL;
    }
    if(keyPairQuery_tickets){
        keyValuePair_free(keyPairQuery_tickets);
        keyPairQuery_tickets = NULL;
    }
    if(keyQuery_price){
        free(keyQuery_price);
        keyQuery_price = NULL;
    }
    if(keyPairQuery_price){
        keyValuePair_free(keyPairQuery_price);
        keyPairQuery_price = NULL;
    }
    if(keyQuery_purchaseType){
        free(keyQuery_purchaseType);
        keyQuery_purchaseType = NULL;
    }
    if(keyPairQuery_purchaseType){
        keyValuePair_free(keyPairQuery_purchaseType);
        keyPairQuery_purchaseType = NULL;
    }
    if(keyQuery_purchaseCode){
        free(keyQuery_purchaseCode);
        keyQuery_purchaseCode = NULL;
    }
    if(valueQuery_purchaseCode){
        free(valueQuery_purchaseCode);
        valueQuery_purchaseCode = NULL;
    }
    if(keyPairQuery_purchaseCode){
        keyValuePair_free(keyPairQuery_purchaseCode);
        keyPairQuery_purchaseCode = NULL;
    }
    if(keyQuery_secretKey){
        free(keyQuery_secretKey);
        keyQuery_secretKey = NULL;
    }
    if(valueQuery_secretKey){
        free(valueQuery_secretKey);
        valueQuery_secretKey = NULL;
    }
    if(keyPairQuery_secretKey){
        keyValuePair_free(keyPairQuery_secretKey);
        keyPairQuery_secretKey = NULL;
    }
    if(keyQuery_purchaseLimit){
        free(keyQuery_purchaseLimit);
        keyQuery_purchaseLimit = NULL;
    }
    if(valueQuery_purchaseLimit){
        free(valueQuery_purchaseLimit);
        valueQuery_purchaseLimit = NULL;
    }
    if(keyPairQuery_purchaseLimit){
        keyValuePair_free(keyPairQuery_purchaseLimit);
        keyPairQuery_purchaseLimit = NULL;
    }
    if(keyQuery_serviceAction){
        free(keyQuery_serviceAction);
        keyQuery_serviceAction = NULL;
    }
    if(keyPairQuery_serviceAction){
        keyValuePair_free(keyPairQuery_serviceAction);
        keyPairQuery_serviceAction = NULL;
    }
    if(keyQuery_coverAssetId){
        free(keyQuery_coverAssetId);
        keyQuery_coverAssetId = NULL;
    }
    if(keyPairQuery_coverAssetId){
        keyValuePair_free(keyPairQuery_coverAssetId);
        keyPairQuery_coverAssetId = NULL;
    }
    if(keyQuery_promoAssetId){
        free(keyQuery_promoAssetId);
        keyQuery_promoAssetId = NULL;
    }
    if(keyPairQuery_promoAssetId){
        keyValuePair_free(keyPairQuery_promoAssetId);
        keyPairQuery_promoAssetId = NULL;
    }
    if(keyQuery_giftable){
        free(keyQuery_giftable);
        keyQuery_giftable = NULL;
    }
    if(valueQuery_giftable){
        free(valueQuery_giftable);
        valueQuery_giftable = NULL;
    }
    if(keyPairQuery_giftable){
        keyValuePair_free(keyPairQuery_giftable);
        keyPairQuery_giftable = NULL;
    }
    if(keyQuery_assetable){
        free(keyQuery_assetable);
        keyQuery_assetable = NULL;
    }
    if(valueQuery_assetable){
        free(valueQuery_assetable);
        valueQuery_assetable = NULL;
    }
    if(keyPairQuery_assetable){
        keyValuePair_free(keyPairQuery_assetable);
        keyPairQuery_assetable = NULL;
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
    if(keyQuery_offerLocationId){
        free(keyQuery_offerLocationId);
        keyQuery_offerLocationId = NULL;
    }
    if(keyPairQuery_offerLocationId){
        keyValuePair_free(keyPairQuery_offerLocationId);
        keyPairQuery_offerLocationId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Delete Purchase
//
// Marks the purchase item as deleted
//
sirqul_response_t*
PurchaseItemAPI_deletePurchaseItem(apiClient_t *apiClient, double version, long purchaseItemId, char *deviceId, long accountId)
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
    char *localVarPath = strdup("/api/{version}/purchase/delete");



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
    char *keyQuery_purchaseItemId = NULL;
    char * valueQuery_purchaseItemId ;
    keyValuePair_t *keyPairQuery_purchaseItemId = 0;
    {
        keyQuery_purchaseItemId = strdup("purchaseItemId");
        valueQuery_purchaseItemId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_purchaseItemId, MAX_NUMBER_LENGTH_LONG, "%d", purchaseItemId);
        keyPairQuery_purchaseItemId = keyValuePair_create(keyQuery_purchaseItemId, valueQuery_purchaseItemId);
        list_addElement(localVarQueryParameters,keyPairQuery_purchaseItemId);
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
        cJSON *PurchaseItemAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(PurchaseItemAPIlocalVarJSON);
        cJSON_Delete(PurchaseItemAPIlocalVarJSON);
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
    if(keyQuery_purchaseItemId){
        free(keyQuery_purchaseItemId);
        keyQuery_purchaseItemId = NULL;
    }
    if(keyPairQuery_purchaseItemId){
        keyValuePair_free(keyPairQuery_purchaseItemId);
        keyPairQuery_purchaseItemId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Purchase
//
// Get detailed information about a purchase item
//
purchase_item_full_response_t*
PurchaseItemAPI_getPurchaseItem(apiClient_t *apiClient, double version, long purchaseItemId, char *deviceId, long accountId)
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
    char *localVarPath = strdup("/api/{version}/purchase/get");



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
    char *keyQuery_purchaseItemId = NULL;
    char * valueQuery_purchaseItemId ;
    keyValuePair_t *keyPairQuery_purchaseItemId = 0;
    {
        keyQuery_purchaseItemId = strdup("purchaseItemId");
        valueQuery_purchaseItemId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_purchaseItemId, MAX_NUMBER_LENGTH_LONG, "%d", purchaseItemId);
        keyPairQuery_purchaseItemId = keyValuePair_create(keyQuery_purchaseItemId, valueQuery_purchaseItemId);
        list_addElement(localVarQueryParameters,keyPairQuery_purchaseItemId);
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
    purchase_item_full_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *PurchaseItemAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = purchase_item_full_response_parseFromJSON(PurchaseItemAPIlocalVarJSON);
        cJSON_Delete(PurchaseItemAPIlocalVarJSON);
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
    if(keyQuery_purchaseItemId){
        free(keyQuery_purchaseItemId);
        keyQuery_purchaseItemId = NULL;
    }
    if(keyPairQuery_purchaseItemId){
        keyValuePair_free(keyPairQuery_purchaseItemId);
        keyPairQuery_purchaseItemId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Purchases
//
// Search for purchasable items from the system
//
list_t*
PurchaseItemAPI_searchPurchaseItems(apiClient_t *apiClient, double version, char *deviceId, long accountId, char *appKey, int *filterByBillable, char *purchaseType, char *serviceAction, char *keyword, sirqul_iot_platform_searchPurchaseItems_sortField_e sortField, int *descending, int *start, int *limit, int *activeOnly)
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
    char *localVarPath = strdup("/api/{version}/purchase/search");



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
    char *keyQuery_filterByBillable = NULL;
    char * valueQuery_filterByBillable = NULL;
    keyValuePair_t *keyPairQuery_filterByBillable = 0;
    if (filterByBillable)
    {
        keyQuery_filterByBillable = strdup("filterByBillable");
        valueQuery_filterByBillable = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_filterByBillable, MAX_NUMBER_LENGTH, "%d", *filterByBillable);
        keyPairQuery_filterByBillable = keyValuePair_create(keyQuery_filterByBillable, valueQuery_filterByBillable);
        list_addElement(localVarQueryParameters,keyPairQuery_filterByBillable);
    }

    // query parameters
    char *keyQuery_purchaseType = NULL;
    char * valueQuery_purchaseType = NULL;
    keyValuePair_t *keyPairQuery_purchaseType = 0;
    if (purchaseType)
    {
        keyQuery_purchaseType = strdup("purchaseType");
        valueQuery_purchaseType = strdup((purchaseType));
        keyPairQuery_purchaseType = keyValuePair_create(keyQuery_purchaseType, valueQuery_purchaseType);
        list_addElement(localVarQueryParameters,keyPairQuery_purchaseType);
    }

    // query parameters
    char *keyQuery_serviceAction = NULL;
    char * valueQuery_serviceAction = NULL;
    keyValuePair_t *keyPairQuery_serviceAction = 0;
    if (serviceAction)
    {
        keyQuery_serviceAction = strdup("serviceAction");
        valueQuery_serviceAction = strdup((serviceAction));
        keyPairQuery_serviceAction = keyValuePair_create(keyQuery_serviceAction, valueQuery_serviceAction);
        list_addElement(localVarQueryParameters,keyPairQuery_serviceAction);
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
    sirqul_iot_platform_searchPurchaseItems_sortField_e valueQuery_sortField ;
    keyValuePair_t *keyPairQuery_sortField = 0;
    if (sortField)
    {
        keyQuery_sortField = strdup("sortField");
        valueQuery_sortField = (sortField);
        keyPairQuery_sortField = keyValuePair_create(keyQuery_sortField, strdup(searchPurchaseItems_SORTFIELD_ToString(
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
        cJSON *PurchaseItemAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(PurchaseItemAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, PurchaseItemAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( PurchaseItemAPIlocalVarJSON);
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
    if(keyQuery_filterByBillable){
        free(keyQuery_filterByBillable);
        keyQuery_filterByBillable = NULL;
    }
    if(valueQuery_filterByBillable){
        free(valueQuery_filterByBillable);
        valueQuery_filterByBillable = NULL;
    }
    if(keyPairQuery_filterByBillable){
        keyValuePair_free(keyPairQuery_filterByBillable);
        keyPairQuery_filterByBillable = NULL;
    }
    if(keyQuery_purchaseType){
        free(keyQuery_purchaseType);
        keyQuery_purchaseType = NULL;
    }
    if(valueQuery_purchaseType){
        free(valueQuery_purchaseType);
        valueQuery_purchaseType = NULL;
    }
    if(keyPairQuery_purchaseType){
        keyValuePair_free(keyPairQuery_purchaseType);
        keyPairQuery_purchaseType = NULL;
    }
    if(keyQuery_serviceAction){
        free(keyQuery_serviceAction);
        keyQuery_serviceAction = NULL;
    }
    if(valueQuery_serviceAction){
        free(valueQuery_serviceAction);
        valueQuery_serviceAction = NULL;
    }
    if(keyPairQuery_serviceAction){
        keyValuePair_free(keyPairQuery_serviceAction);
        keyPairQuery_serviceAction = NULL;
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

// Update Purchase
//
// Updates a purchase item for in app purchases
//
purchase_item_full_response_t*
PurchaseItemAPI_updatePurchaseItem(apiClient_t *apiClient, double version, long purchaseItemId, char *deviceId, long accountId, char *name, char *description, int *tickets, float price, sirqul_iot_platform_updatePurchaseItem_purchaseType_e purchaseType, char *purchaseCode, char *secretKey, int *purchaseLimit, sirqul_iot_platform_updatePurchaseItem_serviceAction_e serviceAction, long coverAssetId, long promoAssetId, int *giftable, int *assetable, int *active, int *allocateTickets, char *ticketType, long points, long offerLocationId)
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
    char *localVarPath = strdup("/api/{version}/purchase/update");



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
    char *keyQuery_purchaseItemId = NULL;
    char * valueQuery_purchaseItemId ;
    keyValuePair_t *keyPairQuery_purchaseItemId = 0;
    {
        keyQuery_purchaseItemId = strdup("purchaseItemId");
        valueQuery_purchaseItemId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_purchaseItemId, MAX_NUMBER_LENGTH_LONG, "%d", purchaseItemId);
        keyPairQuery_purchaseItemId = keyValuePair_create(keyQuery_purchaseItemId, valueQuery_purchaseItemId);
        list_addElement(localVarQueryParameters,keyPairQuery_purchaseItemId);
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
    char *keyQuery_tickets = NULL;
    char * valueQuery_tickets = NULL;
    keyValuePair_t *keyPairQuery_tickets = 0;
    if (tickets)
    {
        keyQuery_tickets = strdup("tickets");
        valueQuery_tickets = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_tickets, MAX_NUMBER_LENGTH, "%d", *tickets);
        keyPairQuery_tickets = keyValuePair_create(keyQuery_tickets, valueQuery_tickets);
        list_addElement(localVarQueryParameters,keyPairQuery_tickets);
    }

    // query parameters
    char *keyQuery_price = NULL;
    char * valueQuery_price = NULL;
    keyValuePair_t *keyPairQuery_price = 0;
    {
        keyQuery_price = strdup("price");
        int s = snprintf(NULL, 0, "%.7e", price);
        if (s >= 0)
        {
            valueQuery_price = calloc(1,s+1);
            snprintf(valueQuery_price, s+1, "%.7e", price);
        }
        keyPairQuery_price = keyValuePair_create(keyQuery_price, valueQuery_price);
        list_addElement(localVarQueryParameters,keyPairQuery_price);
    }

    // query parameters
    char *keyQuery_purchaseType = NULL;
    sirqul_iot_platform_updatePurchaseItem_purchaseType_e valueQuery_purchaseType ;
    keyValuePair_t *keyPairQuery_purchaseType = 0;
    if (purchaseType)
    {
        keyQuery_purchaseType = strdup("purchaseType");
        valueQuery_purchaseType = (purchaseType);
        keyPairQuery_purchaseType = keyValuePair_create(keyQuery_purchaseType, strdup(updatePurchaseItem_PURCHASETYPE_ToString(
        valueQuery_purchaseType)));
        list_addElement(localVarQueryParameters,keyPairQuery_purchaseType);
    }

    // query parameters
    char *keyQuery_purchaseCode = NULL;
    char * valueQuery_purchaseCode = NULL;
    keyValuePair_t *keyPairQuery_purchaseCode = 0;
    if (purchaseCode)
    {
        keyQuery_purchaseCode = strdup("purchaseCode");
        valueQuery_purchaseCode = strdup((purchaseCode));
        keyPairQuery_purchaseCode = keyValuePair_create(keyQuery_purchaseCode, valueQuery_purchaseCode);
        list_addElement(localVarQueryParameters,keyPairQuery_purchaseCode);
    }

    // query parameters
    char *keyQuery_secretKey = NULL;
    char * valueQuery_secretKey = NULL;
    keyValuePair_t *keyPairQuery_secretKey = 0;
    if (secretKey)
    {
        keyQuery_secretKey = strdup("secretKey");
        valueQuery_secretKey = strdup((secretKey));
        keyPairQuery_secretKey = keyValuePair_create(keyQuery_secretKey, valueQuery_secretKey);
        list_addElement(localVarQueryParameters,keyPairQuery_secretKey);
    }

    // query parameters
    char *keyQuery_purchaseLimit = NULL;
    char * valueQuery_purchaseLimit = NULL;
    keyValuePair_t *keyPairQuery_purchaseLimit = 0;
    if (purchaseLimit)
    {
        keyQuery_purchaseLimit = strdup("purchaseLimit");
        valueQuery_purchaseLimit = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_purchaseLimit, MAX_NUMBER_LENGTH, "%d", *purchaseLimit);
        keyPairQuery_purchaseLimit = keyValuePair_create(keyQuery_purchaseLimit, valueQuery_purchaseLimit);
        list_addElement(localVarQueryParameters,keyPairQuery_purchaseLimit);
    }

    // query parameters
    char *keyQuery_serviceAction = NULL;
    sirqul_iot_platform_updatePurchaseItem_serviceAction_e valueQuery_serviceAction ;
    keyValuePair_t *keyPairQuery_serviceAction = 0;
    if (serviceAction)
    {
        keyQuery_serviceAction = strdup("serviceAction");
        valueQuery_serviceAction = (serviceAction);
        keyPairQuery_serviceAction = keyValuePair_create(keyQuery_serviceAction, strdup(updatePurchaseItem_SERVICEACTION_ToString(
        valueQuery_serviceAction)));
        list_addElement(localVarQueryParameters,keyPairQuery_serviceAction);
    }

    // query parameters
    char *keyQuery_coverAssetId = NULL;
    char * valueQuery_coverAssetId ;
    keyValuePair_t *keyPairQuery_coverAssetId = 0;
    {
        keyQuery_coverAssetId = strdup("coverAssetId");
        valueQuery_coverAssetId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_coverAssetId, MAX_NUMBER_LENGTH_LONG, "%d", coverAssetId);
        keyPairQuery_coverAssetId = keyValuePair_create(keyQuery_coverAssetId, valueQuery_coverAssetId);
        list_addElement(localVarQueryParameters,keyPairQuery_coverAssetId);
    }

    // query parameters
    char *keyQuery_promoAssetId = NULL;
    char * valueQuery_promoAssetId ;
    keyValuePair_t *keyPairQuery_promoAssetId = 0;
    {
        keyQuery_promoAssetId = strdup("promoAssetId");
        valueQuery_promoAssetId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_promoAssetId, MAX_NUMBER_LENGTH_LONG, "%d", promoAssetId);
        keyPairQuery_promoAssetId = keyValuePair_create(keyQuery_promoAssetId, valueQuery_promoAssetId);
        list_addElement(localVarQueryParameters,keyPairQuery_promoAssetId);
    }

    // query parameters
    char *keyQuery_giftable = NULL;
    char * valueQuery_giftable = NULL;
    keyValuePair_t *keyPairQuery_giftable = 0;
    if (giftable)
    {
        keyQuery_giftable = strdup("giftable");
        valueQuery_giftable = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_giftable, MAX_NUMBER_LENGTH, "%d", *giftable);
        keyPairQuery_giftable = keyValuePair_create(keyQuery_giftable, valueQuery_giftable);
        list_addElement(localVarQueryParameters,keyPairQuery_giftable);
    }

    // query parameters
    char *keyQuery_assetable = NULL;
    char * valueQuery_assetable = NULL;
    keyValuePair_t *keyPairQuery_assetable = 0;
    if (assetable)
    {
        keyQuery_assetable = strdup("assetable");
        valueQuery_assetable = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_assetable, MAX_NUMBER_LENGTH, "%d", *assetable);
        keyPairQuery_assetable = keyValuePair_create(keyQuery_assetable, valueQuery_assetable);
        list_addElement(localVarQueryParameters,keyPairQuery_assetable);
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

    // query parameters
    char *keyQuery_offerLocationId = NULL;
    char * valueQuery_offerLocationId ;
    keyValuePair_t *keyPairQuery_offerLocationId = 0;
    {
        keyQuery_offerLocationId = strdup("offerLocationId");
        valueQuery_offerLocationId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_offerLocationId, MAX_NUMBER_LENGTH_LONG, "%d", offerLocationId);
        keyPairQuery_offerLocationId = keyValuePair_create(keyQuery_offerLocationId, valueQuery_offerLocationId);
        list_addElement(localVarQueryParameters,keyPairQuery_offerLocationId);
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
    purchase_item_full_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *PurchaseItemAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = purchase_item_full_response_parseFromJSON(PurchaseItemAPIlocalVarJSON);
        cJSON_Delete(PurchaseItemAPIlocalVarJSON);
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
    if(keyQuery_purchaseItemId){
        free(keyQuery_purchaseItemId);
        keyQuery_purchaseItemId = NULL;
    }
    if(keyPairQuery_purchaseItemId){
        keyValuePair_free(keyPairQuery_purchaseItemId);
        keyPairQuery_purchaseItemId = NULL;
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
    if(keyQuery_tickets){
        free(keyQuery_tickets);
        keyQuery_tickets = NULL;
    }
    if(valueQuery_tickets){
        free(valueQuery_tickets);
        valueQuery_tickets = NULL;
    }
    if(keyPairQuery_tickets){
        keyValuePair_free(keyPairQuery_tickets);
        keyPairQuery_tickets = NULL;
    }
    if(keyQuery_price){
        free(keyQuery_price);
        keyQuery_price = NULL;
    }
    if(keyPairQuery_price){
        keyValuePair_free(keyPairQuery_price);
        keyPairQuery_price = NULL;
    }
    if(keyQuery_purchaseType){
        free(keyQuery_purchaseType);
        keyQuery_purchaseType = NULL;
    }
    if(keyPairQuery_purchaseType){
        keyValuePair_free(keyPairQuery_purchaseType);
        keyPairQuery_purchaseType = NULL;
    }
    if(keyQuery_purchaseCode){
        free(keyQuery_purchaseCode);
        keyQuery_purchaseCode = NULL;
    }
    if(valueQuery_purchaseCode){
        free(valueQuery_purchaseCode);
        valueQuery_purchaseCode = NULL;
    }
    if(keyPairQuery_purchaseCode){
        keyValuePair_free(keyPairQuery_purchaseCode);
        keyPairQuery_purchaseCode = NULL;
    }
    if(keyQuery_secretKey){
        free(keyQuery_secretKey);
        keyQuery_secretKey = NULL;
    }
    if(valueQuery_secretKey){
        free(valueQuery_secretKey);
        valueQuery_secretKey = NULL;
    }
    if(keyPairQuery_secretKey){
        keyValuePair_free(keyPairQuery_secretKey);
        keyPairQuery_secretKey = NULL;
    }
    if(keyQuery_purchaseLimit){
        free(keyQuery_purchaseLimit);
        keyQuery_purchaseLimit = NULL;
    }
    if(valueQuery_purchaseLimit){
        free(valueQuery_purchaseLimit);
        valueQuery_purchaseLimit = NULL;
    }
    if(keyPairQuery_purchaseLimit){
        keyValuePair_free(keyPairQuery_purchaseLimit);
        keyPairQuery_purchaseLimit = NULL;
    }
    if(keyQuery_serviceAction){
        free(keyQuery_serviceAction);
        keyQuery_serviceAction = NULL;
    }
    if(keyPairQuery_serviceAction){
        keyValuePair_free(keyPairQuery_serviceAction);
        keyPairQuery_serviceAction = NULL;
    }
    if(keyQuery_coverAssetId){
        free(keyQuery_coverAssetId);
        keyQuery_coverAssetId = NULL;
    }
    if(keyPairQuery_coverAssetId){
        keyValuePair_free(keyPairQuery_coverAssetId);
        keyPairQuery_coverAssetId = NULL;
    }
    if(keyQuery_promoAssetId){
        free(keyQuery_promoAssetId);
        keyQuery_promoAssetId = NULL;
    }
    if(keyPairQuery_promoAssetId){
        keyValuePair_free(keyPairQuery_promoAssetId);
        keyPairQuery_promoAssetId = NULL;
    }
    if(keyQuery_giftable){
        free(keyQuery_giftable);
        keyQuery_giftable = NULL;
    }
    if(valueQuery_giftable){
        free(valueQuery_giftable);
        valueQuery_giftable = NULL;
    }
    if(keyPairQuery_giftable){
        keyValuePair_free(keyPairQuery_giftable);
        keyPairQuery_giftable = NULL;
    }
    if(keyQuery_assetable){
        free(keyQuery_assetable);
        keyQuery_assetable = NULL;
    }
    if(valueQuery_assetable){
        free(valueQuery_assetable);
        valueQuery_assetable = NULL;
    }
    if(keyPairQuery_assetable){
        keyValuePair_free(keyPairQuery_assetable);
        keyPairQuery_assetable = NULL;
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
    if(keyQuery_offerLocationId){
        free(keyQuery_offerLocationId);
        keyQuery_offerLocationId = NULL;
    }
    if(keyPairQuery_offerLocationId){
        keyValuePair_free(keyPairQuery_offerLocationId);
        keyPairQuery_offerLocationId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

