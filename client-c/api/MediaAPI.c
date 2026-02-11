#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "MediaAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21

// Functions for enum BARCODETYPE for MediaAPI_createMedia

static char* createMedia_BARCODETYPE_ToString(sirqul_iot_platform_createMedia_barcodeType_e BARCODETYPE){
    char *BARCODETYPEArray[] =  { "NULL", "NONE", "UPC", "CODE_128", "QR", "CUSTOM_MEDIA" };
    return BARCODETYPEArray[BARCODETYPE];
}

static sirqul_iot_platform_createMedia_barcodeType_e createMedia_BARCODETYPE_FromString(char* BARCODETYPE){
    int stringToReturn = 0;
    char *BARCODETYPEArray[] =  { "NULL", "NONE", "UPC", "CODE_128", "QR", "CUSTOM_MEDIA" };
    size_t sizeofArray = sizeof(BARCODETYPEArray) / sizeof(BARCODETYPEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(BARCODETYPE, BARCODETYPEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function createMedia_BARCODETYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *createMedia_BARCODETYPE_convertToJSON(sirqul_iot_platform_createMedia_barcodeType_e BARCODETYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "barcodeType", createMedia_BARCODETYPE_ToString(BARCODETYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function createMedia_BARCODETYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_createMedia_barcodeType_e createMedia_BARCODETYPE_parseFromJSON(cJSON* BARCODETYPEJSON) {
    sirqul_iot_platform_createMedia_barcodeType_e BARCODETYPEVariable = 0;
    cJSON *BARCODETYPEVar = cJSON_GetObjectItemCaseSensitive(BARCODETYPEJSON, "barcodeType");
    if(!cJSON_IsString(BARCODETYPEVar) || (BARCODETYPEVar->valuestring == NULL))
    {
        goto end;
    }
    BARCODETYPEVariable = createMedia_BARCODETYPE_FromString(BARCODETYPEVar->valuestring);
    return BARCODETYPEVariable;
end:
    return 0;
}
*/

// Functions for enum SPECIALOFFERTYPE for MediaAPI_createMedia

static char* createMedia_SPECIALOFFERTYPE_ToString(sirqul_iot_platform_createMedia_specialOfferType_e SPECIALOFFERTYPE){
    char *SPECIALOFFERTYPEArray[] =  { "NULL", "ALL", "RESERVABLE", "REGULAR_OFFER", "ACT_NOW", "GET_THERE_NOW", "SQOOT", "TICKETS", "YIPIT" };
    return SPECIALOFFERTYPEArray[SPECIALOFFERTYPE];
}

static sirqul_iot_platform_createMedia_specialOfferType_e createMedia_SPECIALOFFERTYPE_FromString(char* SPECIALOFFERTYPE){
    int stringToReturn = 0;
    char *SPECIALOFFERTYPEArray[] =  { "NULL", "ALL", "RESERVABLE", "REGULAR_OFFER", "ACT_NOW", "GET_THERE_NOW", "SQOOT", "TICKETS", "YIPIT" };
    size_t sizeofArray = sizeof(SPECIALOFFERTYPEArray) / sizeof(SPECIALOFFERTYPEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(SPECIALOFFERTYPE, SPECIALOFFERTYPEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function createMedia_SPECIALOFFERTYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *createMedia_SPECIALOFFERTYPE_convertToJSON(sirqul_iot_platform_createMedia_specialOfferType_e SPECIALOFFERTYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "specialOfferType", createMedia_SPECIALOFFERTYPE_ToString(SPECIALOFFERTYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function createMedia_SPECIALOFFERTYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_createMedia_specialOfferType_e createMedia_SPECIALOFFERTYPE_parseFromJSON(cJSON* SPECIALOFFERTYPEJSON) {
    sirqul_iot_platform_createMedia_specialOfferType_e SPECIALOFFERTYPEVariable = 0;
    cJSON *SPECIALOFFERTYPEVar = cJSON_GetObjectItemCaseSensitive(SPECIALOFFERTYPEJSON, "specialOfferType");
    if(!cJSON_IsString(SPECIALOFFERTYPEVar) || (SPECIALOFFERTYPEVar->valuestring == NULL))
    {
        goto end;
    }
    SPECIALOFFERTYPEVariable = createMedia_SPECIALOFFERTYPE_FromString(SPECIALOFFERTYPEVar->valuestring);
    return SPECIALOFFERTYPEVariable;
end:
    return 0;
}
*/

// Functions for enum OFFERVISIBILITY for MediaAPI_createMedia

static char* createMedia_OFFERVISIBILITY_ToString(sirqul_iot_platform_createMedia_offerVisibility_e OFFERVISIBILITY){
    char *OFFERVISIBILITYArray[] =  { "NULL", "PUBLIC", "LISTABLE", "REWARDABLE", "TRIGGERABLE", "PRIVATE" };
    return OFFERVISIBILITYArray[OFFERVISIBILITY];
}

static sirqul_iot_platform_createMedia_offerVisibility_e createMedia_OFFERVISIBILITY_FromString(char* OFFERVISIBILITY){
    int stringToReturn = 0;
    char *OFFERVISIBILITYArray[] =  { "NULL", "PUBLIC", "LISTABLE", "REWARDABLE", "TRIGGERABLE", "PRIVATE" };
    size_t sizeofArray = sizeof(OFFERVISIBILITYArray) / sizeof(OFFERVISIBILITYArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(OFFERVISIBILITY, OFFERVISIBILITYArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function createMedia_OFFERVISIBILITY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *createMedia_OFFERVISIBILITY_convertToJSON(sirqul_iot_platform_createMedia_offerVisibility_e OFFERVISIBILITY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "offerVisibility", createMedia_OFFERVISIBILITY_ToString(OFFERVISIBILITY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function createMedia_OFFERVISIBILITY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_createMedia_offerVisibility_e createMedia_OFFERVISIBILITY_parseFromJSON(cJSON* OFFERVISIBILITYJSON) {
    sirqul_iot_platform_createMedia_offerVisibility_e OFFERVISIBILITYVariable = 0;
    cJSON *OFFERVISIBILITYVar = cJSON_GetObjectItemCaseSensitive(OFFERVISIBILITYJSON, "offerVisibility");
    if(!cJSON_IsString(OFFERVISIBILITYVar) || (OFFERVISIBILITYVar->valuestring == NULL))
    {
        goto end;
    }
    OFFERVISIBILITYVariable = createMedia_OFFERVISIBILITY_FromString(OFFERVISIBILITYVar->valuestring);
    return OFFERVISIBILITYVariable;
end:
    return 0;
}
*/

// Functions for enum CONDITIONTYPE for MediaAPI_createMedia

static char* createMedia_CONDITIONTYPE_ToString(sirqul_iot_platform_createMedia_conditionType_e CONDITIONTYPE){
    char *CONDITIONTYPEArray[] =  { "NULL", "NEW", "USED", "REFURBISHED", "OTHER" };
    return CONDITIONTYPEArray[CONDITIONTYPE];
}

static sirqul_iot_platform_createMedia_conditionType_e createMedia_CONDITIONTYPE_FromString(char* CONDITIONTYPE){
    int stringToReturn = 0;
    char *CONDITIONTYPEArray[] =  { "NULL", "NEW", "USED", "REFURBISHED", "OTHER" };
    size_t sizeofArray = sizeof(CONDITIONTYPEArray) / sizeof(CONDITIONTYPEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(CONDITIONTYPE, CONDITIONTYPEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function createMedia_CONDITIONTYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *createMedia_CONDITIONTYPE_convertToJSON(sirqul_iot_platform_createMedia_conditionType_e CONDITIONTYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "conditionType", createMedia_CONDITIONTYPE_ToString(CONDITIONTYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function createMedia_CONDITIONTYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_createMedia_conditionType_e createMedia_CONDITIONTYPE_parseFromJSON(cJSON* CONDITIONTYPEJSON) {
    sirqul_iot_platform_createMedia_conditionType_e CONDITIONTYPEVariable = 0;
    cJSON *CONDITIONTYPEVar = cJSON_GetObjectItemCaseSensitive(CONDITIONTYPEJSON, "conditionType");
    if(!cJSON_IsString(CONDITIONTYPEVar) || (CONDITIONTYPEVar->valuestring == NULL))
    {
        goto end;
    }
    CONDITIONTYPEVariable = createMedia_CONDITIONTYPE_FromString(CONDITIONTYPEVar->valuestring);
    return CONDITIONTYPEVariable;
end:
    return 0;
}
*/

// Functions for enum MEDIATYPE for MediaAPI_createMedia

static char* createMedia_MEDIATYPE_ToString(sirqul_iot_platform_createMedia_mediaType_e MEDIATYPE){
    char *MEDIATYPEArray[] =  { "NULL", "APK", "APPLICATION", "IMAGE", "AUDIO", "VIDEO", "MULTIPART", "BAR_CODE", "TEXT", "OTHER" };
    return MEDIATYPEArray[MEDIATYPE];
}

static sirqul_iot_platform_createMedia_mediaType_e createMedia_MEDIATYPE_FromString(char* MEDIATYPE){
    int stringToReturn = 0;
    char *MEDIATYPEArray[] =  { "NULL", "APK", "APPLICATION", "IMAGE", "AUDIO", "VIDEO", "MULTIPART", "BAR_CODE", "TEXT", "OTHER" };
    size_t sizeofArray = sizeof(MEDIATYPEArray) / sizeof(MEDIATYPEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(MEDIATYPE, MEDIATYPEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function createMedia_MEDIATYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *createMedia_MEDIATYPE_convertToJSON(sirqul_iot_platform_createMedia_mediaType_e MEDIATYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "mediaType", createMedia_MEDIATYPE_ToString(MEDIATYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function createMedia_MEDIATYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_createMedia_mediaType_e createMedia_MEDIATYPE_parseFromJSON(cJSON* MEDIATYPEJSON) {
    sirqul_iot_platform_createMedia_mediaType_e MEDIATYPEVariable = 0;
    cJSON *MEDIATYPEVar = cJSON_GetObjectItemCaseSensitive(MEDIATYPEJSON, "mediaType");
    if(!cJSON_IsString(MEDIATYPEVar) || (MEDIATYPEVar->valuestring == NULL))
    {
        goto end;
    }
    MEDIATYPEVariable = createMedia_MEDIATYPE_FromString(MEDIATYPEVar->valuestring);
    return MEDIATYPEVariable;
end:
    return 0;
}
*/

// Functions for enum SORTFIELD for MediaAPI_searchMedia

static char* searchMedia_SORTFIELD_ToString(sirqul_iot_platform_searchMedia_sortField_e SORTFIELD){
    char *SORTFIELDArray[] =  { "NULL", "ID", "CREATED", "UPDATED", "DELETED", "SEARCH_TAGS", "ACTIVE", "ACTIVATED", "EXPIRES", "REDEEMABLE_START", "REDEEMABLE_END", "TITLE", "SUBTITLE", "DETAILS", "OFFER_TYPE", "SPECIAL_OFFER_TYPE", "OFFER_VISIBILITY", "ESTIMATED_VALUE", "VOUCHER_PRICE", "VOUCHER_DISCOUNT_PRICE", "FULL_PRICE", "DICOUNT_PRICE", "TICKETS_REWARD", "AVAILABILITY_DATE", "RELEASE_DATE", "RETAILER_ID", "RETAILER_NAME", "RETAILER_LOCATION_ID", "RETAILER_LOCATION_NAME", "BILLABLE_ENTITY_ID", "BILLABLE_ENTITY_NAME", "RESPONSIBLE_DISPLAY" };
    return SORTFIELDArray[SORTFIELD];
}

static sirqul_iot_platform_searchMedia_sortField_e searchMedia_SORTFIELD_FromString(char* SORTFIELD){
    int stringToReturn = 0;
    char *SORTFIELDArray[] =  { "NULL", "ID", "CREATED", "UPDATED", "DELETED", "SEARCH_TAGS", "ACTIVE", "ACTIVATED", "EXPIRES", "REDEEMABLE_START", "REDEEMABLE_END", "TITLE", "SUBTITLE", "DETAILS", "OFFER_TYPE", "SPECIAL_OFFER_TYPE", "OFFER_VISIBILITY", "ESTIMATED_VALUE", "VOUCHER_PRICE", "VOUCHER_DISCOUNT_PRICE", "FULL_PRICE", "DICOUNT_PRICE", "TICKETS_REWARD", "AVAILABILITY_DATE", "RELEASE_DATE", "RETAILER_ID", "RETAILER_NAME", "RETAILER_LOCATION_ID", "RETAILER_LOCATION_NAME", "BILLABLE_ENTITY_ID", "BILLABLE_ENTITY_NAME", "RESPONSIBLE_DISPLAY" };
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
// Function searchMedia_SORTFIELD_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *searchMedia_SORTFIELD_convertToJSON(sirqul_iot_platform_searchMedia_sortField_e SORTFIELD) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "sortField", searchMedia_SORTFIELD_ToString(SORTFIELD)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function searchMedia_SORTFIELD_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_searchMedia_sortField_e searchMedia_SORTFIELD_parseFromJSON(cJSON* SORTFIELDJSON) {
    sirqul_iot_platform_searchMedia_sortField_e SORTFIELDVariable = 0;
    cJSON *SORTFIELDVar = cJSON_GetObjectItemCaseSensitive(SORTFIELDJSON, "sortField");
    if(!cJSON_IsString(SORTFIELDVar) || (SORTFIELDVar->valuestring == NULL))
    {
        goto end;
    }
    SORTFIELDVariable = searchMedia_SORTFIELD_FromString(SORTFIELDVar->valuestring);
    return SORTFIELDVariable;
end:
    return 0;
}
*/

// Functions for enum BARCODETYPE for MediaAPI_updateMedia

static char* updateMedia_BARCODETYPE_ToString(sirqul_iot_platform_updateMedia_barcodeType_e BARCODETYPE){
    char *BARCODETYPEArray[] =  { "NULL", "NONE", "UPC", "CODE_128", "QR", "CUSTOM_MEDIA" };
    return BARCODETYPEArray[BARCODETYPE];
}

static sirqul_iot_platform_updateMedia_barcodeType_e updateMedia_BARCODETYPE_FromString(char* BARCODETYPE){
    int stringToReturn = 0;
    char *BARCODETYPEArray[] =  { "NULL", "NONE", "UPC", "CODE_128", "QR", "CUSTOM_MEDIA" };
    size_t sizeofArray = sizeof(BARCODETYPEArray) / sizeof(BARCODETYPEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(BARCODETYPE, BARCODETYPEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function updateMedia_BARCODETYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *updateMedia_BARCODETYPE_convertToJSON(sirqul_iot_platform_updateMedia_barcodeType_e BARCODETYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "barcodeType", updateMedia_BARCODETYPE_ToString(BARCODETYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function updateMedia_BARCODETYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_updateMedia_barcodeType_e updateMedia_BARCODETYPE_parseFromJSON(cJSON* BARCODETYPEJSON) {
    sirqul_iot_platform_updateMedia_barcodeType_e BARCODETYPEVariable = 0;
    cJSON *BARCODETYPEVar = cJSON_GetObjectItemCaseSensitive(BARCODETYPEJSON, "barcodeType");
    if(!cJSON_IsString(BARCODETYPEVar) || (BARCODETYPEVar->valuestring == NULL))
    {
        goto end;
    }
    BARCODETYPEVariable = updateMedia_BARCODETYPE_FromString(BARCODETYPEVar->valuestring);
    return BARCODETYPEVariable;
end:
    return 0;
}
*/

// Functions for enum SPECIALOFFERTYPE for MediaAPI_updateMedia

static char* updateMedia_SPECIALOFFERTYPE_ToString(sirqul_iot_platform_updateMedia_specialOfferType_e SPECIALOFFERTYPE){
    char *SPECIALOFFERTYPEArray[] =  { "NULL", "ALL", "RESERVABLE", "REGULAR_OFFER", "ACT_NOW", "GET_THERE_NOW", "SQOOT", "TICKETS", "YIPIT" };
    return SPECIALOFFERTYPEArray[SPECIALOFFERTYPE];
}

static sirqul_iot_platform_updateMedia_specialOfferType_e updateMedia_SPECIALOFFERTYPE_FromString(char* SPECIALOFFERTYPE){
    int stringToReturn = 0;
    char *SPECIALOFFERTYPEArray[] =  { "NULL", "ALL", "RESERVABLE", "REGULAR_OFFER", "ACT_NOW", "GET_THERE_NOW", "SQOOT", "TICKETS", "YIPIT" };
    size_t sizeofArray = sizeof(SPECIALOFFERTYPEArray) / sizeof(SPECIALOFFERTYPEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(SPECIALOFFERTYPE, SPECIALOFFERTYPEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function updateMedia_SPECIALOFFERTYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *updateMedia_SPECIALOFFERTYPE_convertToJSON(sirqul_iot_platform_updateMedia_specialOfferType_e SPECIALOFFERTYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "specialOfferType", updateMedia_SPECIALOFFERTYPE_ToString(SPECIALOFFERTYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function updateMedia_SPECIALOFFERTYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_updateMedia_specialOfferType_e updateMedia_SPECIALOFFERTYPE_parseFromJSON(cJSON* SPECIALOFFERTYPEJSON) {
    sirqul_iot_platform_updateMedia_specialOfferType_e SPECIALOFFERTYPEVariable = 0;
    cJSON *SPECIALOFFERTYPEVar = cJSON_GetObjectItemCaseSensitive(SPECIALOFFERTYPEJSON, "specialOfferType");
    if(!cJSON_IsString(SPECIALOFFERTYPEVar) || (SPECIALOFFERTYPEVar->valuestring == NULL))
    {
        goto end;
    }
    SPECIALOFFERTYPEVariable = updateMedia_SPECIALOFFERTYPE_FromString(SPECIALOFFERTYPEVar->valuestring);
    return SPECIALOFFERTYPEVariable;
end:
    return 0;
}
*/

// Functions for enum OFFERVISIBILITY for MediaAPI_updateMedia

static char* updateMedia_OFFERVISIBILITY_ToString(sirqul_iot_platform_updateMedia_offerVisibility_e OFFERVISIBILITY){
    char *OFFERVISIBILITYArray[] =  { "NULL", "PUBLIC", "LISTABLE", "REWARDABLE", "TRIGGERABLE", "PRIVATE" };
    return OFFERVISIBILITYArray[OFFERVISIBILITY];
}

static sirqul_iot_platform_updateMedia_offerVisibility_e updateMedia_OFFERVISIBILITY_FromString(char* OFFERVISIBILITY){
    int stringToReturn = 0;
    char *OFFERVISIBILITYArray[] =  { "NULL", "PUBLIC", "LISTABLE", "REWARDABLE", "TRIGGERABLE", "PRIVATE" };
    size_t sizeofArray = sizeof(OFFERVISIBILITYArray) / sizeof(OFFERVISIBILITYArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(OFFERVISIBILITY, OFFERVISIBILITYArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function updateMedia_OFFERVISIBILITY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *updateMedia_OFFERVISIBILITY_convertToJSON(sirqul_iot_platform_updateMedia_offerVisibility_e OFFERVISIBILITY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "offerVisibility", updateMedia_OFFERVISIBILITY_ToString(OFFERVISIBILITY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function updateMedia_OFFERVISIBILITY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_updateMedia_offerVisibility_e updateMedia_OFFERVISIBILITY_parseFromJSON(cJSON* OFFERVISIBILITYJSON) {
    sirqul_iot_platform_updateMedia_offerVisibility_e OFFERVISIBILITYVariable = 0;
    cJSON *OFFERVISIBILITYVar = cJSON_GetObjectItemCaseSensitive(OFFERVISIBILITYJSON, "offerVisibility");
    if(!cJSON_IsString(OFFERVISIBILITYVar) || (OFFERVISIBILITYVar->valuestring == NULL))
    {
        goto end;
    }
    OFFERVISIBILITYVariable = updateMedia_OFFERVISIBILITY_FromString(OFFERVISIBILITYVar->valuestring);
    return OFFERVISIBILITYVariable;
end:
    return 0;
}
*/

// Functions for enum CONDITIONTYPE for MediaAPI_updateMedia

static char* updateMedia_CONDITIONTYPE_ToString(sirqul_iot_platform_updateMedia_conditionType_e CONDITIONTYPE){
    char *CONDITIONTYPEArray[] =  { "NULL", "NEW", "USED", "REFURBISHED", "OTHER" };
    return CONDITIONTYPEArray[CONDITIONTYPE];
}

static sirqul_iot_platform_updateMedia_conditionType_e updateMedia_CONDITIONTYPE_FromString(char* CONDITIONTYPE){
    int stringToReturn = 0;
    char *CONDITIONTYPEArray[] =  { "NULL", "NEW", "USED", "REFURBISHED", "OTHER" };
    size_t sizeofArray = sizeof(CONDITIONTYPEArray) / sizeof(CONDITIONTYPEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(CONDITIONTYPE, CONDITIONTYPEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function updateMedia_CONDITIONTYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *updateMedia_CONDITIONTYPE_convertToJSON(sirqul_iot_platform_updateMedia_conditionType_e CONDITIONTYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "conditionType", updateMedia_CONDITIONTYPE_ToString(CONDITIONTYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function updateMedia_CONDITIONTYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_updateMedia_conditionType_e updateMedia_CONDITIONTYPE_parseFromJSON(cJSON* CONDITIONTYPEJSON) {
    sirqul_iot_platform_updateMedia_conditionType_e CONDITIONTYPEVariable = 0;
    cJSON *CONDITIONTYPEVar = cJSON_GetObjectItemCaseSensitive(CONDITIONTYPEJSON, "conditionType");
    if(!cJSON_IsString(CONDITIONTYPEVar) || (CONDITIONTYPEVar->valuestring == NULL))
    {
        goto end;
    }
    CONDITIONTYPEVariable = updateMedia_CONDITIONTYPE_FromString(CONDITIONTYPEVar->valuestring);
    return CONDITIONTYPEVariable;
end:
    return 0;
}
*/

// Functions for enum MEDIATYPE for MediaAPI_updateMedia

static char* updateMedia_MEDIATYPE_ToString(sirqul_iot_platform_updateMedia_mediaType_e MEDIATYPE){
    char *MEDIATYPEArray[] =  { "NULL", "APK", "APPLICATION", "IMAGE", "AUDIO", "VIDEO", "MULTIPART", "BAR_CODE", "TEXT", "OTHER" };
    return MEDIATYPEArray[MEDIATYPE];
}

static sirqul_iot_platform_updateMedia_mediaType_e updateMedia_MEDIATYPE_FromString(char* MEDIATYPE){
    int stringToReturn = 0;
    char *MEDIATYPEArray[] =  { "NULL", "APK", "APPLICATION", "IMAGE", "AUDIO", "VIDEO", "MULTIPART", "BAR_CODE", "TEXT", "OTHER" };
    size_t sizeofArray = sizeof(MEDIATYPEArray) / sizeof(MEDIATYPEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(MEDIATYPE, MEDIATYPEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function updateMedia_MEDIATYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *updateMedia_MEDIATYPE_convertToJSON(sirqul_iot_platform_updateMedia_mediaType_e MEDIATYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "mediaType", updateMedia_MEDIATYPE_ToString(MEDIATYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function updateMedia_MEDIATYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_updateMedia_mediaType_e updateMedia_MEDIATYPE_parseFromJSON(cJSON* MEDIATYPEJSON) {
    sirqul_iot_platform_updateMedia_mediaType_e MEDIATYPEVariable = 0;
    cJSON *MEDIATYPEVar = cJSON_GetObjectItemCaseSensitive(MEDIATYPEJSON, "mediaType");
    if(!cJSON_IsString(MEDIATYPEVar) || (MEDIATYPEVar->valuestring == NULL))
    {
        goto end;
    }
    MEDIATYPEVariable = updateMedia_MEDIATYPE_FromString(MEDIATYPEVar->valuestring);
    return MEDIATYPEVariable;
end:
    return 0;
}
*/


// Create Media
//
// Create a media offering.
//
media_offer_response_t*
MediaAPI_createMedia(apiClient_t *apiClient, long accountId, char *title, sirqul_iot_platform_createMedia_barcodeType_e barcodeType, int *noExpiration, int *availableLimit, int *availableLimitPerUser, int *addedLimit, int *viewLimit, int *maxPrints, long ticketPrice, double fullPrice, double discountPrice, sirqul_iot_platform_createMedia_specialOfferType_e specialOfferType, sirqul_iot_platform_createMedia_offerVisibility_e offerVisibility, int *active, char *retailerLocationIds, char *subTitle, char *details, char *subDetails, char *finePrint, char *barcodeEntry, char *externalRedeemOptions, char *externalUrl, char *ticketsRewardType, long ticketsReward, long activated, long expires, char *ticketPriceType, int *showRemaining, int *showRedeemed, int *replaced, int *featured, char *categoryIds, char *filterIds, long barcodeAssetId, long imageAssetId, long imageAssetId1, long imageAssetId2, long imageAssetId3, long imageAssetId4, long imageAssetId5, char *publisher, long redeemableStart, long redeemableEnd, sirqul_iot_platform_createMedia_conditionType_e conditionType, char *isbn, char *asin, char *catalogNumbers, char *parentalRating, long availabilityDate, sirqul_iot_platform_createMedia_mediaType_e mediaType, int *duration, char *author, long releaseDate, char *collectionIds, char *availability, char *availabilitySummary)
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
    char *localVarPath = strdup("/media/create");





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
    char *keyQuery_subTitle = NULL;
    char * valueQuery_subTitle = NULL;
    keyValuePair_t *keyPairQuery_subTitle = 0;
    if (subTitle)
    {
        keyQuery_subTitle = strdup("subTitle");
        valueQuery_subTitle = strdup((subTitle));
        keyPairQuery_subTitle = keyValuePair_create(keyQuery_subTitle, valueQuery_subTitle);
        list_addElement(localVarQueryParameters,keyPairQuery_subTitle);
    }

    // query parameters
    char *keyQuery_details = NULL;
    char * valueQuery_details = NULL;
    keyValuePair_t *keyPairQuery_details = 0;
    if (details)
    {
        keyQuery_details = strdup("details");
        valueQuery_details = strdup((details));
        keyPairQuery_details = keyValuePair_create(keyQuery_details, valueQuery_details);
        list_addElement(localVarQueryParameters,keyPairQuery_details);
    }

    // query parameters
    char *keyQuery_subDetails = NULL;
    char * valueQuery_subDetails = NULL;
    keyValuePair_t *keyPairQuery_subDetails = 0;
    if (subDetails)
    {
        keyQuery_subDetails = strdup("subDetails");
        valueQuery_subDetails = strdup((subDetails));
        keyPairQuery_subDetails = keyValuePair_create(keyQuery_subDetails, valueQuery_subDetails);
        list_addElement(localVarQueryParameters,keyPairQuery_subDetails);
    }

    // query parameters
    char *keyQuery_finePrint = NULL;
    char * valueQuery_finePrint = NULL;
    keyValuePair_t *keyPairQuery_finePrint = 0;
    if (finePrint)
    {
        keyQuery_finePrint = strdup("finePrint");
        valueQuery_finePrint = strdup((finePrint));
        keyPairQuery_finePrint = keyValuePair_create(keyQuery_finePrint, valueQuery_finePrint);
        list_addElement(localVarQueryParameters,keyPairQuery_finePrint);
    }

    // query parameters
    char *keyQuery_barcodeType = NULL;
    sirqul_iot_platform_createMedia_barcodeType_e valueQuery_barcodeType ;
    keyValuePair_t *keyPairQuery_barcodeType = 0;
    if (barcodeType)
    {
        keyQuery_barcodeType = strdup("barcodeType");
        valueQuery_barcodeType = (barcodeType);
        keyPairQuery_barcodeType = keyValuePair_create(keyQuery_barcodeType, strdup(createMedia_BARCODETYPE_ToString(
        valueQuery_barcodeType)));
        list_addElement(localVarQueryParameters,keyPairQuery_barcodeType);
    }

    // query parameters
    char *keyQuery_barcodeEntry = NULL;
    char * valueQuery_barcodeEntry = NULL;
    keyValuePair_t *keyPairQuery_barcodeEntry = 0;
    if (barcodeEntry)
    {
        keyQuery_barcodeEntry = strdup("barcodeEntry");
        valueQuery_barcodeEntry = strdup((barcodeEntry));
        keyPairQuery_barcodeEntry = keyValuePair_create(keyQuery_barcodeEntry, valueQuery_barcodeEntry);
        list_addElement(localVarQueryParameters,keyPairQuery_barcodeEntry);
    }

    // query parameters
    char *keyQuery_externalRedeemOptions = NULL;
    char * valueQuery_externalRedeemOptions = NULL;
    keyValuePair_t *keyPairQuery_externalRedeemOptions = 0;
    if (externalRedeemOptions)
    {
        keyQuery_externalRedeemOptions = strdup("externalRedeemOptions");
        valueQuery_externalRedeemOptions = strdup((externalRedeemOptions));
        keyPairQuery_externalRedeemOptions = keyValuePair_create(keyQuery_externalRedeemOptions, valueQuery_externalRedeemOptions);
        list_addElement(localVarQueryParameters,keyPairQuery_externalRedeemOptions);
    }

    // query parameters
    char *keyQuery_externalUrl = NULL;
    char * valueQuery_externalUrl = NULL;
    keyValuePair_t *keyPairQuery_externalUrl = 0;
    if (externalUrl)
    {
        keyQuery_externalUrl = strdup("externalUrl");
        valueQuery_externalUrl = strdup((externalUrl));
        keyPairQuery_externalUrl = keyValuePair_create(keyQuery_externalUrl, valueQuery_externalUrl);
        list_addElement(localVarQueryParameters,keyPairQuery_externalUrl);
    }

    // query parameters
    char *keyQuery_ticketsRewardType = NULL;
    char * valueQuery_ticketsRewardType = NULL;
    keyValuePair_t *keyPairQuery_ticketsRewardType = 0;
    if (ticketsRewardType)
    {
        keyQuery_ticketsRewardType = strdup("ticketsRewardType");
        valueQuery_ticketsRewardType = strdup((ticketsRewardType));
        keyPairQuery_ticketsRewardType = keyValuePair_create(keyQuery_ticketsRewardType, valueQuery_ticketsRewardType);
        list_addElement(localVarQueryParameters,keyPairQuery_ticketsRewardType);
    }

    // query parameters
    char *keyQuery_ticketsReward = NULL;
    char * valueQuery_ticketsReward ;
    keyValuePair_t *keyPairQuery_ticketsReward = 0;
    {
        keyQuery_ticketsReward = strdup("ticketsReward");
        valueQuery_ticketsReward = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_ticketsReward, MAX_NUMBER_LENGTH_LONG, "%d", ticketsReward);
        keyPairQuery_ticketsReward = keyValuePair_create(keyQuery_ticketsReward, valueQuery_ticketsReward);
        list_addElement(localVarQueryParameters,keyPairQuery_ticketsReward);
    }

    // query parameters
    char *keyQuery_activated = NULL;
    char * valueQuery_activated ;
    keyValuePair_t *keyPairQuery_activated = 0;
    {
        keyQuery_activated = strdup("activated");
        valueQuery_activated = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_activated, MAX_NUMBER_LENGTH_LONG, "%d", activated);
        keyPairQuery_activated = keyValuePair_create(keyQuery_activated, valueQuery_activated);
        list_addElement(localVarQueryParameters,keyPairQuery_activated);
    }

    // query parameters
    char *keyQuery_expires = NULL;
    char * valueQuery_expires ;
    keyValuePair_t *keyPairQuery_expires = 0;
    {
        keyQuery_expires = strdup("expires");
        valueQuery_expires = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_expires, MAX_NUMBER_LENGTH_LONG, "%d", expires);
        keyPairQuery_expires = keyValuePair_create(keyQuery_expires, valueQuery_expires);
        list_addElement(localVarQueryParameters,keyPairQuery_expires);
    }

    // query parameters
    char *keyQuery_noExpiration = NULL;
    char * valueQuery_noExpiration = NULL;
    keyValuePair_t *keyPairQuery_noExpiration = 0;
    if (noExpiration)
    {
        keyQuery_noExpiration = strdup("noExpiration");
        valueQuery_noExpiration = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_noExpiration, MAX_NUMBER_LENGTH, "%d", *noExpiration);
        keyPairQuery_noExpiration = keyValuePair_create(keyQuery_noExpiration, valueQuery_noExpiration);
        list_addElement(localVarQueryParameters,keyPairQuery_noExpiration);
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
    char *keyQuery_availableLimitPerUser = NULL;
    char * valueQuery_availableLimitPerUser = NULL;
    keyValuePair_t *keyPairQuery_availableLimitPerUser = 0;
    if (availableLimitPerUser)
    {
        keyQuery_availableLimitPerUser = strdup("availableLimitPerUser");
        valueQuery_availableLimitPerUser = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_availableLimitPerUser, MAX_NUMBER_LENGTH, "%d", *availableLimitPerUser);
        keyPairQuery_availableLimitPerUser = keyValuePair_create(keyQuery_availableLimitPerUser, valueQuery_availableLimitPerUser);
        list_addElement(localVarQueryParameters,keyPairQuery_availableLimitPerUser);
    }

    // query parameters
    char *keyQuery_addedLimit = NULL;
    char * valueQuery_addedLimit = NULL;
    keyValuePair_t *keyPairQuery_addedLimit = 0;
    if (addedLimit)
    {
        keyQuery_addedLimit = strdup("addedLimit");
        valueQuery_addedLimit = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_addedLimit, MAX_NUMBER_LENGTH, "%d", *addedLimit);
        keyPairQuery_addedLimit = keyValuePair_create(keyQuery_addedLimit, valueQuery_addedLimit);
        list_addElement(localVarQueryParameters,keyPairQuery_addedLimit);
    }

    // query parameters
    char *keyQuery_viewLimit = NULL;
    char * valueQuery_viewLimit = NULL;
    keyValuePair_t *keyPairQuery_viewLimit = 0;
    if (viewLimit)
    {
        keyQuery_viewLimit = strdup("viewLimit");
        valueQuery_viewLimit = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_viewLimit, MAX_NUMBER_LENGTH, "%d", *viewLimit);
        keyPairQuery_viewLimit = keyValuePair_create(keyQuery_viewLimit, valueQuery_viewLimit);
        list_addElement(localVarQueryParameters,keyPairQuery_viewLimit);
    }

    // query parameters
    char *keyQuery_maxPrints = NULL;
    char * valueQuery_maxPrints = NULL;
    keyValuePair_t *keyPairQuery_maxPrints = 0;
    if (maxPrints)
    {
        keyQuery_maxPrints = strdup("maxPrints");
        valueQuery_maxPrints = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_maxPrints, MAX_NUMBER_LENGTH, "%d", *maxPrints);
        keyPairQuery_maxPrints = keyValuePair_create(keyQuery_maxPrints, valueQuery_maxPrints);
        list_addElement(localVarQueryParameters,keyPairQuery_maxPrints);
    }

    // query parameters
    char *keyQuery_ticketPriceType = NULL;
    char * valueQuery_ticketPriceType = NULL;
    keyValuePair_t *keyPairQuery_ticketPriceType = 0;
    if (ticketPriceType)
    {
        keyQuery_ticketPriceType = strdup("ticketPriceType");
        valueQuery_ticketPriceType = strdup((ticketPriceType));
        keyPairQuery_ticketPriceType = keyValuePair_create(keyQuery_ticketPriceType, valueQuery_ticketPriceType);
        list_addElement(localVarQueryParameters,keyPairQuery_ticketPriceType);
    }

    // query parameters
    char *keyQuery_ticketPrice = NULL;
    char * valueQuery_ticketPrice ;
    keyValuePair_t *keyPairQuery_ticketPrice = 0;
    {
        keyQuery_ticketPrice = strdup("ticketPrice");
        valueQuery_ticketPrice = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_ticketPrice, MAX_NUMBER_LENGTH_LONG, "%d", ticketPrice);
        keyPairQuery_ticketPrice = keyValuePair_create(keyQuery_ticketPrice, valueQuery_ticketPrice);
        list_addElement(localVarQueryParameters,keyPairQuery_ticketPrice);
    }

    // query parameters
    char *keyQuery_fullPrice = NULL;
    char * valueQuery_fullPrice = NULL;
    keyValuePair_t *keyPairQuery_fullPrice = 0;
    {
        keyQuery_fullPrice = strdup("fullPrice");
        int s = snprintf(NULL, 0, "%.16e", fullPrice);
        if (s >= 0)
        {
            valueQuery_fullPrice = calloc(1,s+1);
            snprintf(valueQuery_fullPrice, s+1, "%.16e", fullPrice);
        }
        keyPairQuery_fullPrice = keyValuePair_create(keyQuery_fullPrice, valueQuery_fullPrice);
        list_addElement(localVarQueryParameters,keyPairQuery_fullPrice);
    }

    // query parameters
    char *keyQuery_discountPrice = NULL;
    char * valueQuery_discountPrice = NULL;
    keyValuePair_t *keyPairQuery_discountPrice = 0;
    {
        keyQuery_discountPrice = strdup("discountPrice");
        int s = snprintf(NULL, 0, "%.16e", discountPrice);
        if (s >= 0)
        {
            valueQuery_discountPrice = calloc(1,s+1);
            snprintf(valueQuery_discountPrice, s+1, "%.16e", discountPrice);
        }
        keyPairQuery_discountPrice = keyValuePair_create(keyQuery_discountPrice, valueQuery_discountPrice);
        list_addElement(localVarQueryParameters,keyPairQuery_discountPrice);
    }

    // query parameters
    char *keyQuery_showRemaining = NULL;
    char * valueQuery_showRemaining = NULL;
    keyValuePair_t *keyPairQuery_showRemaining = 0;
    if (showRemaining)
    {
        keyQuery_showRemaining = strdup("showRemaining");
        valueQuery_showRemaining = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_showRemaining, MAX_NUMBER_LENGTH, "%d", *showRemaining);
        keyPairQuery_showRemaining = keyValuePair_create(keyQuery_showRemaining, valueQuery_showRemaining);
        list_addElement(localVarQueryParameters,keyPairQuery_showRemaining);
    }

    // query parameters
    char *keyQuery_showRedeemed = NULL;
    char * valueQuery_showRedeemed = NULL;
    keyValuePair_t *keyPairQuery_showRedeemed = 0;
    if (showRedeemed)
    {
        keyQuery_showRedeemed = strdup("showRedeemed");
        valueQuery_showRedeemed = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_showRedeemed, MAX_NUMBER_LENGTH, "%d", *showRedeemed);
        keyPairQuery_showRedeemed = keyValuePair_create(keyQuery_showRedeemed, valueQuery_showRedeemed);
        list_addElement(localVarQueryParameters,keyPairQuery_showRedeemed);
    }

    // query parameters
    char *keyQuery_replaced = NULL;
    char * valueQuery_replaced = NULL;
    keyValuePair_t *keyPairQuery_replaced = 0;
    if (replaced)
    {
        keyQuery_replaced = strdup("replaced");
        valueQuery_replaced = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_replaced, MAX_NUMBER_LENGTH, "%d", *replaced);
        keyPairQuery_replaced = keyValuePair_create(keyQuery_replaced, valueQuery_replaced);
        list_addElement(localVarQueryParameters,keyPairQuery_replaced);
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
    char *keyQuery_specialOfferType = NULL;
    sirqul_iot_platform_createMedia_specialOfferType_e valueQuery_specialOfferType ;
    keyValuePair_t *keyPairQuery_specialOfferType = 0;
    if (specialOfferType)
    {
        keyQuery_specialOfferType = strdup("specialOfferType");
        valueQuery_specialOfferType = (specialOfferType);
        keyPairQuery_specialOfferType = keyValuePair_create(keyQuery_specialOfferType, strdup(createMedia_SPECIALOFFERTYPE_ToString(
        valueQuery_specialOfferType)));
        list_addElement(localVarQueryParameters,keyPairQuery_specialOfferType);
    }

    // query parameters
    char *keyQuery_offerVisibility = NULL;
    sirqul_iot_platform_createMedia_offerVisibility_e valueQuery_offerVisibility ;
    keyValuePair_t *keyPairQuery_offerVisibility = 0;
    if (offerVisibility)
    {
        keyQuery_offerVisibility = strdup("offerVisibility");
        valueQuery_offerVisibility = (offerVisibility);
        keyPairQuery_offerVisibility = keyValuePair_create(keyQuery_offerVisibility, strdup(createMedia_OFFERVISIBILITY_ToString(
        valueQuery_offerVisibility)));
        list_addElement(localVarQueryParameters,keyPairQuery_offerVisibility);
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
    char *keyQuery_filterIds = NULL;
    char * valueQuery_filterIds = NULL;
    keyValuePair_t *keyPairQuery_filterIds = 0;
    if (filterIds)
    {
        keyQuery_filterIds = strdup("filterIds");
        valueQuery_filterIds = strdup((filterIds));
        keyPairQuery_filterIds = keyValuePair_create(keyQuery_filterIds, valueQuery_filterIds);
        list_addElement(localVarQueryParameters,keyPairQuery_filterIds);
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
    char *keyQuery_barcodeAssetId = NULL;
    char * valueQuery_barcodeAssetId ;
    keyValuePair_t *keyPairQuery_barcodeAssetId = 0;
    {
        keyQuery_barcodeAssetId = strdup("barcodeAssetId");
        valueQuery_barcodeAssetId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_barcodeAssetId, MAX_NUMBER_LENGTH_LONG, "%d", barcodeAssetId);
        keyPairQuery_barcodeAssetId = keyValuePair_create(keyQuery_barcodeAssetId, valueQuery_barcodeAssetId);
        list_addElement(localVarQueryParameters,keyPairQuery_barcodeAssetId);
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
    char *keyQuery_imageAssetId1 = NULL;
    char * valueQuery_imageAssetId1 ;
    keyValuePair_t *keyPairQuery_imageAssetId1 = 0;
    {
        keyQuery_imageAssetId1 = strdup("imageAssetId1");
        valueQuery_imageAssetId1 = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_imageAssetId1, MAX_NUMBER_LENGTH_LONG, "%d", imageAssetId1);
        keyPairQuery_imageAssetId1 = keyValuePair_create(keyQuery_imageAssetId1, valueQuery_imageAssetId1);
        list_addElement(localVarQueryParameters,keyPairQuery_imageAssetId1);
    }

    // query parameters
    char *keyQuery_imageAssetId2 = NULL;
    char * valueQuery_imageAssetId2 ;
    keyValuePair_t *keyPairQuery_imageAssetId2 = 0;
    {
        keyQuery_imageAssetId2 = strdup("imageAssetId2");
        valueQuery_imageAssetId2 = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_imageAssetId2, MAX_NUMBER_LENGTH_LONG, "%d", imageAssetId2);
        keyPairQuery_imageAssetId2 = keyValuePair_create(keyQuery_imageAssetId2, valueQuery_imageAssetId2);
        list_addElement(localVarQueryParameters,keyPairQuery_imageAssetId2);
    }

    // query parameters
    char *keyQuery_imageAssetId3 = NULL;
    char * valueQuery_imageAssetId3 ;
    keyValuePair_t *keyPairQuery_imageAssetId3 = 0;
    {
        keyQuery_imageAssetId3 = strdup("imageAssetId3");
        valueQuery_imageAssetId3 = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_imageAssetId3, MAX_NUMBER_LENGTH_LONG, "%d", imageAssetId3);
        keyPairQuery_imageAssetId3 = keyValuePair_create(keyQuery_imageAssetId3, valueQuery_imageAssetId3);
        list_addElement(localVarQueryParameters,keyPairQuery_imageAssetId3);
    }

    // query parameters
    char *keyQuery_imageAssetId4 = NULL;
    char * valueQuery_imageAssetId4 ;
    keyValuePair_t *keyPairQuery_imageAssetId4 = 0;
    {
        keyQuery_imageAssetId4 = strdup("imageAssetId4");
        valueQuery_imageAssetId4 = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_imageAssetId4, MAX_NUMBER_LENGTH_LONG, "%d", imageAssetId4);
        keyPairQuery_imageAssetId4 = keyValuePair_create(keyQuery_imageAssetId4, valueQuery_imageAssetId4);
        list_addElement(localVarQueryParameters,keyPairQuery_imageAssetId4);
    }

    // query parameters
    char *keyQuery_imageAssetId5 = NULL;
    char * valueQuery_imageAssetId5 ;
    keyValuePair_t *keyPairQuery_imageAssetId5 = 0;
    {
        keyQuery_imageAssetId5 = strdup("imageAssetId5");
        valueQuery_imageAssetId5 = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_imageAssetId5, MAX_NUMBER_LENGTH_LONG, "%d", imageAssetId5);
        keyPairQuery_imageAssetId5 = keyValuePair_create(keyQuery_imageAssetId5, valueQuery_imageAssetId5);
        list_addElement(localVarQueryParameters,keyPairQuery_imageAssetId5);
    }

    // query parameters
    char *keyQuery_publisher = NULL;
    char * valueQuery_publisher = NULL;
    keyValuePair_t *keyPairQuery_publisher = 0;
    if (publisher)
    {
        keyQuery_publisher = strdup("publisher");
        valueQuery_publisher = strdup((publisher));
        keyPairQuery_publisher = keyValuePair_create(keyQuery_publisher, valueQuery_publisher);
        list_addElement(localVarQueryParameters,keyPairQuery_publisher);
    }

    // query parameters
    char *keyQuery_redeemableStart = NULL;
    char * valueQuery_redeemableStart ;
    keyValuePair_t *keyPairQuery_redeemableStart = 0;
    {
        keyQuery_redeemableStart = strdup("redeemableStart");
        valueQuery_redeemableStart = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_redeemableStart, MAX_NUMBER_LENGTH_LONG, "%d", redeemableStart);
        keyPairQuery_redeemableStart = keyValuePair_create(keyQuery_redeemableStart, valueQuery_redeemableStart);
        list_addElement(localVarQueryParameters,keyPairQuery_redeemableStart);
    }

    // query parameters
    char *keyQuery_redeemableEnd = NULL;
    char * valueQuery_redeemableEnd ;
    keyValuePair_t *keyPairQuery_redeemableEnd = 0;
    {
        keyQuery_redeemableEnd = strdup("redeemableEnd");
        valueQuery_redeemableEnd = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_redeemableEnd, MAX_NUMBER_LENGTH_LONG, "%d", redeemableEnd);
        keyPairQuery_redeemableEnd = keyValuePair_create(keyQuery_redeemableEnd, valueQuery_redeemableEnd);
        list_addElement(localVarQueryParameters,keyPairQuery_redeemableEnd);
    }

    // query parameters
    char *keyQuery_conditionType = NULL;
    sirqul_iot_platform_createMedia_conditionType_e valueQuery_conditionType ;
    keyValuePair_t *keyPairQuery_conditionType = 0;
    if (conditionType)
    {
        keyQuery_conditionType = strdup("conditionType");
        valueQuery_conditionType = (conditionType);
        keyPairQuery_conditionType = keyValuePair_create(keyQuery_conditionType, strdup(createMedia_CONDITIONTYPE_ToString(
        valueQuery_conditionType)));
        list_addElement(localVarQueryParameters,keyPairQuery_conditionType);
    }

    // query parameters
    char *keyQuery_isbn = NULL;
    char * valueQuery_isbn = NULL;
    keyValuePair_t *keyPairQuery_isbn = 0;
    if (isbn)
    {
        keyQuery_isbn = strdup("isbn");
        valueQuery_isbn = strdup((isbn));
        keyPairQuery_isbn = keyValuePair_create(keyQuery_isbn, valueQuery_isbn);
        list_addElement(localVarQueryParameters,keyPairQuery_isbn);
    }

    // query parameters
    char *keyQuery_asin = NULL;
    char * valueQuery_asin = NULL;
    keyValuePair_t *keyPairQuery_asin = 0;
    if (asin)
    {
        keyQuery_asin = strdup("asin");
        valueQuery_asin = strdup((asin));
        keyPairQuery_asin = keyValuePair_create(keyQuery_asin, valueQuery_asin);
        list_addElement(localVarQueryParameters,keyPairQuery_asin);
    }

    // query parameters
    char *keyQuery_catalogNumbers = NULL;
    char * valueQuery_catalogNumbers = NULL;
    keyValuePair_t *keyPairQuery_catalogNumbers = 0;
    if (catalogNumbers)
    {
        keyQuery_catalogNumbers = strdup("catalogNumbers");
        valueQuery_catalogNumbers = strdup((catalogNumbers));
        keyPairQuery_catalogNumbers = keyValuePair_create(keyQuery_catalogNumbers, valueQuery_catalogNumbers);
        list_addElement(localVarQueryParameters,keyPairQuery_catalogNumbers);
    }

    // query parameters
    char *keyQuery_parentalRating = NULL;
    char * valueQuery_parentalRating = NULL;
    keyValuePair_t *keyPairQuery_parentalRating = 0;
    if (parentalRating)
    {
        keyQuery_parentalRating = strdup("parentalRating");
        valueQuery_parentalRating = strdup((parentalRating));
        keyPairQuery_parentalRating = keyValuePair_create(keyQuery_parentalRating, valueQuery_parentalRating);
        list_addElement(localVarQueryParameters,keyPairQuery_parentalRating);
    }

    // query parameters
    char *keyQuery_availabilityDate = NULL;
    char * valueQuery_availabilityDate ;
    keyValuePair_t *keyPairQuery_availabilityDate = 0;
    {
        keyQuery_availabilityDate = strdup("availabilityDate");
        valueQuery_availabilityDate = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_availabilityDate, MAX_NUMBER_LENGTH_LONG, "%d", availabilityDate);
        keyPairQuery_availabilityDate = keyValuePair_create(keyQuery_availabilityDate, valueQuery_availabilityDate);
        list_addElement(localVarQueryParameters,keyPairQuery_availabilityDate);
    }

    // query parameters
    char *keyQuery_mediaType = NULL;
    sirqul_iot_platform_createMedia_mediaType_e valueQuery_mediaType ;
    keyValuePair_t *keyPairQuery_mediaType = 0;
    if (mediaType)
    {
        keyQuery_mediaType = strdup("mediaType");
        valueQuery_mediaType = (mediaType);
        keyPairQuery_mediaType = keyValuePair_create(keyQuery_mediaType, strdup(createMedia_MEDIATYPE_ToString(
        valueQuery_mediaType)));
        list_addElement(localVarQueryParameters,keyPairQuery_mediaType);
    }

    // query parameters
    char *keyQuery_duration = NULL;
    char * valueQuery_duration = NULL;
    keyValuePair_t *keyPairQuery_duration = 0;
    if (duration)
    {
        keyQuery_duration = strdup("duration");
        valueQuery_duration = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_duration, MAX_NUMBER_LENGTH, "%d", *duration);
        keyPairQuery_duration = keyValuePair_create(keyQuery_duration, valueQuery_duration);
        list_addElement(localVarQueryParameters,keyPairQuery_duration);
    }

    // query parameters
    char *keyQuery_author = NULL;
    char * valueQuery_author = NULL;
    keyValuePair_t *keyPairQuery_author = 0;
    if (author)
    {
        keyQuery_author = strdup("author");
        valueQuery_author = strdup((author));
        keyPairQuery_author = keyValuePair_create(keyQuery_author, valueQuery_author);
        list_addElement(localVarQueryParameters,keyPairQuery_author);
    }

    // query parameters
    char *keyQuery_releaseDate = NULL;
    char * valueQuery_releaseDate ;
    keyValuePair_t *keyPairQuery_releaseDate = 0;
    {
        keyQuery_releaseDate = strdup("releaseDate");
        valueQuery_releaseDate = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_releaseDate, MAX_NUMBER_LENGTH_LONG, "%d", releaseDate);
        keyPairQuery_releaseDate = keyValuePair_create(keyQuery_releaseDate, valueQuery_releaseDate);
        list_addElement(localVarQueryParameters,keyPairQuery_releaseDate);
    }

    // query parameters
    char *keyQuery_collectionIds = NULL;
    char * valueQuery_collectionIds = NULL;
    keyValuePair_t *keyPairQuery_collectionIds = 0;
    if (collectionIds)
    {
        keyQuery_collectionIds = strdup("collectionIds");
        valueQuery_collectionIds = strdup((collectionIds));
        keyPairQuery_collectionIds = keyValuePair_create(keyQuery_collectionIds, valueQuery_collectionIds);
        list_addElement(localVarQueryParameters,keyPairQuery_collectionIds);
    }

    // query parameters
    char *keyQuery_availability = NULL;
    char * valueQuery_availability = NULL;
    keyValuePair_t *keyPairQuery_availability = 0;
    if (availability)
    {
        keyQuery_availability = strdup("availability");
        valueQuery_availability = strdup((availability));
        keyPairQuery_availability = keyValuePair_create(keyQuery_availability, valueQuery_availability);
        list_addElement(localVarQueryParameters,keyPairQuery_availability);
    }

    // query parameters
    char *keyQuery_availabilitySummary = NULL;
    char * valueQuery_availabilitySummary = NULL;
    keyValuePair_t *keyPairQuery_availabilitySummary = 0;
    if (availabilitySummary)
    {
        keyQuery_availabilitySummary = strdup("availabilitySummary");
        valueQuery_availabilitySummary = strdup((availabilitySummary));
        keyPairQuery_availabilitySummary = keyValuePair_create(keyQuery_availabilitySummary, valueQuery_availabilitySummary);
        list_addElement(localVarQueryParameters,keyPairQuery_availabilitySummary);
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
    media_offer_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *MediaAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = media_offer_response_parseFromJSON(MediaAPIlocalVarJSON);
        cJSON_Delete(MediaAPIlocalVarJSON);
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
    if(keyQuery_subTitle){
        free(keyQuery_subTitle);
        keyQuery_subTitle = NULL;
    }
    if(valueQuery_subTitle){
        free(valueQuery_subTitle);
        valueQuery_subTitle = NULL;
    }
    if(keyPairQuery_subTitle){
        keyValuePair_free(keyPairQuery_subTitle);
        keyPairQuery_subTitle = NULL;
    }
    if(keyQuery_details){
        free(keyQuery_details);
        keyQuery_details = NULL;
    }
    if(valueQuery_details){
        free(valueQuery_details);
        valueQuery_details = NULL;
    }
    if(keyPairQuery_details){
        keyValuePair_free(keyPairQuery_details);
        keyPairQuery_details = NULL;
    }
    if(keyQuery_subDetails){
        free(keyQuery_subDetails);
        keyQuery_subDetails = NULL;
    }
    if(valueQuery_subDetails){
        free(valueQuery_subDetails);
        valueQuery_subDetails = NULL;
    }
    if(keyPairQuery_subDetails){
        keyValuePair_free(keyPairQuery_subDetails);
        keyPairQuery_subDetails = NULL;
    }
    if(keyQuery_finePrint){
        free(keyQuery_finePrint);
        keyQuery_finePrint = NULL;
    }
    if(valueQuery_finePrint){
        free(valueQuery_finePrint);
        valueQuery_finePrint = NULL;
    }
    if(keyPairQuery_finePrint){
        keyValuePair_free(keyPairQuery_finePrint);
        keyPairQuery_finePrint = NULL;
    }
    if(keyQuery_barcodeType){
        free(keyQuery_barcodeType);
        keyQuery_barcodeType = NULL;
    }
    if(keyPairQuery_barcodeType){
        keyValuePair_free(keyPairQuery_barcodeType);
        keyPairQuery_barcodeType = NULL;
    }
    if(keyQuery_barcodeEntry){
        free(keyQuery_barcodeEntry);
        keyQuery_barcodeEntry = NULL;
    }
    if(valueQuery_barcodeEntry){
        free(valueQuery_barcodeEntry);
        valueQuery_barcodeEntry = NULL;
    }
    if(keyPairQuery_barcodeEntry){
        keyValuePair_free(keyPairQuery_barcodeEntry);
        keyPairQuery_barcodeEntry = NULL;
    }
    if(keyQuery_externalRedeemOptions){
        free(keyQuery_externalRedeemOptions);
        keyQuery_externalRedeemOptions = NULL;
    }
    if(valueQuery_externalRedeemOptions){
        free(valueQuery_externalRedeemOptions);
        valueQuery_externalRedeemOptions = NULL;
    }
    if(keyPairQuery_externalRedeemOptions){
        keyValuePair_free(keyPairQuery_externalRedeemOptions);
        keyPairQuery_externalRedeemOptions = NULL;
    }
    if(keyQuery_externalUrl){
        free(keyQuery_externalUrl);
        keyQuery_externalUrl = NULL;
    }
    if(valueQuery_externalUrl){
        free(valueQuery_externalUrl);
        valueQuery_externalUrl = NULL;
    }
    if(keyPairQuery_externalUrl){
        keyValuePair_free(keyPairQuery_externalUrl);
        keyPairQuery_externalUrl = NULL;
    }
    if(keyQuery_ticketsRewardType){
        free(keyQuery_ticketsRewardType);
        keyQuery_ticketsRewardType = NULL;
    }
    if(valueQuery_ticketsRewardType){
        free(valueQuery_ticketsRewardType);
        valueQuery_ticketsRewardType = NULL;
    }
    if(keyPairQuery_ticketsRewardType){
        keyValuePair_free(keyPairQuery_ticketsRewardType);
        keyPairQuery_ticketsRewardType = NULL;
    }
    if(keyQuery_ticketsReward){
        free(keyQuery_ticketsReward);
        keyQuery_ticketsReward = NULL;
    }
    if(keyPairQuery_ticketsReward){
        keyValuePair_free(keyPairQuery_ticketsReward);
        keyPairQuery_ticketsReward = NULL;
    }
    if(keyQuery_activated){
        free(keyQuery_activated);
        keyQuery_activated = NULL;
    }
    if(keyPairQuery_activated){
        keyValuePair_free(keyPairQuery_activated);
        keyPairQuery_activated = NULL;
    }
    if(keyQuery_expires){
        free(keyQuery_expires);
        keyQuery_expires = NULL;
    }
    if(keyPairQuery_expires){
        keyValuePair_free(keyPairQuery_expires);
        keyPairQuery_expires = NULL;
    }
    if(keyQuery_noExpiration){
        free(keyQuery_noExpiration);
        keyQuery_noExpiration = NULL;
    }
    if(valueQuery_noExpiration){
        free(valueQuery_noExpiration);
        valueQuery_noExpiration = NULL;
    }
    if(keyPairQuery_noExpiration){
        keyValuePair_free(keyPairQuery_noExpiration);
        keyPairQuery_noExpiration = NULL;
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
    if(keyQuery_availableLimitPerUser){
        free(keyQuery_availableLimitPerUser);
        keyQuery_availableLimitPerUser = NULL;
    }
    if(valueQuery_availableLimitPerUser){
        free(valueQuery_availableLimitPerUser);
        valueQuery_availableLimitPerUser = NULL;
    }
    if(keyPairQuery_availableLimitPerUser){
        keyValuePair_free(keyPairQuery_availableLimitPerUser);
        keyPairQuery_availableLimitPerUser = NULL;
    }
    if(keyQuery_addedLimit){
        free(keyQuery_addedLimit);
        keyQuery_addedLimit = NULL;
    }
    if(valueQuery_addedLimit){
        free(valueQuery_addedLimit);
        valueQuery_addedLimit = NULL;
    }
    if(keyPairQuery_addedLimit){
        keyValuePair_free(keyPairQuery_addedLimit);
        keyPairQuery_addedLimit = NULL;
    }
    if(keyQuery_viewLimit){
        free(keyQuery_viewLimit);
        keyQuery_viewLimit = NULL;
    }
    if(valueQuery_viewLimit){
        free(valueQuery_viewLimit);
        valueQuery_viewLimit = NULL;
    }
    if(keyPairQuery_viewLimit){
        keyValuePair_free(keyPairQuery_viewLimit);
        keyPairQuery_viewLimit = NULL;
    }
    if(keyQuery_maxPrints){
        free(keyQuery_maxPrints);
        keyQuery_maxPrints = NULL;
    }
    if(valueQuery_maxPrints){
        free(valueQuery_maxPrints);
        valueQuery_maxPrints = NULL;
    }
    if(keyPairQuery_maxPrints){
        keyValuePair_free(keyPairQuery_maxPrints);
        keyPairQuery_maxPrints = NULL;
    }
    if(keyQuery_ticketPriceType){
        free(keyQuery_ticketPriceType);
        keyQuery_ticketPriceType = NULL;
    }
    if(valueQuery_ticketPriceType){
        free(valueQuery_ticketPriceType);
        valueQuery_ticketPriceType = NULL;
    }
    if(keyPairQuery_ticketPriceType){
        keyValuePair_free(keyPairQuery_ticketPriceType);
        keyPairQuery_ticketPriceType = NULL;
    }
    if(keyQuery_ticketPrice){
        free(keyQuery_ticketPrice);
        keyQuery_ticketPrice = NULL;
    }
    if(keyPairQuery_ticketPrice){
        keyValuePair_free(keyPairQuery_ticketPrice);
        keyPairQuery_ticketPrice = NULL;
    }
    if(keyQuery_fullPrice){
        free(keyQuery_fullPrice);
        keyQuery_fullPrice = NULL;
    }
    if(keyPairQuery_fullPrice){
        keyValuePair_free(keyPairQuery_fullPrice);
        keyPairQuery_fullPrice = NULL;
    }
    if(keyQuery_discountPrice){
        free(keyQuery_discountPrice);
        keyQuery_discountPrice = NULL;
    }
    if(keyPairQuery_discountPrice){
        keyValuePair_free(keyPairQuery_discountPrice);
        keyPairQuery_discountPrice = NULL;
    }
    if(keyQuery_showRemaining){
        free(keyQuery_showRemaining);
        keyQuery_showRemaining = NULL;
    }
    if(valueQuery_showRemaining){
        free(valueQuery_showRemaining);
        valueQuery_showRemaining = NULL;
    }
    if(keyPairQuery_showRemaining){
        keyValuePair_free(keyPairQuery_showRemaining);
        keyPairQuery_showRemaining = NULL;
    }
    if(keyQuery_showRedeemed){
        free(keyQuery_showRedeemed);
        keyQuery_showRedeemed = NULL;
    }
    if(valueQuery_showRedeemed){
        free(valueQuery_showRedeemed);
        valueQuery_showRedeemed = NULL;
    }
    if(keyPairQuery_showRedeemed){
        keyValuePair_free(keyPairQuery_showRedeemed);
        keyPairQuery_showRedeemed = NULL;
    }
    if(keyQuery_replaced){
        free(keyQuery_replaced);
        keyQuery_replaced = NULL;
    }
    if(valueQuery_replaced){
        free(valueQuery_replaced);
        valueQuery_replaced = NULL;
    }
    if(keyPairQuery_replaced){
        keyValuePair_free(keyPairQuery_replaced);
        keyPairQuery_replaced = NULL;
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
    if(keyQuery_specialOfferType){
        free(keyQuery_specialOfferType);
        keyQuery_specialOfferType = NULL;
    }
    if(keyPairQuery_specialOfferType){
        keyValuePair_free(keyPairQuery_specialOfferType);
        keyPairQuery_specialOfferType = NULL;
    }
    if(keyQuery_offerVisibility){
        free(keyQuery_offerVisibility);
        keyQuery_offerVisibility = NULL;
    }
    if(keyPairQuery_offerVisibility){
        keyValuePair_free(keyPairQuery_offerVisibility);
        keyPairQuery_offerVisibility = NULL;
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
    if(keyQuery_filterIds){
        free(keyQuery_filterIds);
        keyQuery_filterIds = NULL;
    }
    if(valueQuery_filterIds){
        free(valueQuery_filterIds);
        valueQuery_filterIds = NULL;
    }
    if(keyPairQuery_filterIds){
        keyValuePair_free(keyPairQuery_filterIds);
        keyPairQuery_filterIds = NULL;
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
    if(keyQuery_barcodeAssetId){
        free(keyQuery_barcodeAssetId);
        keyQuery_barcodeAssetId = NULL;
    }
    if(keyPairQuery_barcodeAssetId){
        keyValuePair_free(keyPairQuery_barcodeAssetId);
        keyPairQuery_barcodeAssetId = NULL;
    }
    if(keyQuery_imageAssetId){
        free(keyQuery_imageAssetId);
        keyQuery_imageAssetId = NULL;
    }
    if(keyPairQuery_imageAssetId){
        keyValuePair_free(keyPairQuery_imageAssetId);
        keyPairQuery_imageAssetId = NULL;
    }
    if(keyQuery_imageAssetId1){
        free(keyQuery_imageAssetId1);
        keyQuery_imageAssetId1 = NULL;
    }
    if(keyPairQuery_imageAssetId1){
        keyValuePair_free(keyPairQuery_imageAssetId1);
        keyPairQuery_imageAssetId1 = NULL;
    }
    if(keyQuery_imageAssetId2){
        free(keyQuery_imageAssetId2);
        keyQuery_imageAssetId2 = NULL;
    }
    if(keyPairQuery_imageAssetId2){
        keyValuePair_free(keyPairQuery_imageAssetId2);
        keyPairQuery_imageAssetId2 = NULL;
    }
    if(keyQuery_imageAssetId3){
        free(keyQuery_imageAssetId3);
        keyQuery_imageAssetId3 = NULL;
    }
    if(keyPairQuery_imageAssetId3){
        keyValuePair_free(keyPairQuery_imageAssetId3);
        keyPairQuery_imageAssetId3 = NULL;
    }
    if(keyQuery_imageAssetId4){
        free(keyQuery_imageAssetId4);
        keyQuery_imageAssetId4 = NULL;
    }
    if(keyPairQuery_imageAssetId4){
        keyValuePair_free(keyPairQuery_imageAssetId4);
        keyPairQuery_imageAssetId4 = NULL;
    }
    if(keyQuery_imageAssetId5){
        free(keyQuery_imageAssetId5);
        keyQuery_imageAssetId5 = NULL;
    }
    if(keyPairQuery_imageAssetId5){
        keyValuePair_free(keyPairQuery_imageAssetId5);
        keyPairQuery_imageAssetId5 = NULL;
    }
    if(keyQuery_publisher){
        free(keyQuery_publisher);
        keyQuery_publisher = NULL;
    }
    if(valueQuery_publisher){
        free(valueQuery_publisher);
        valueQuery_publisher = NULL;
    }
    if(keyPairQuery_publisher){
        keyValuePair_free(keyPairQuery_publisher);
        keyPairQuery_publisher = NULL;
    }
    if(keyQuery_redeemableStart){
        free(keyQuery_redeemableStart);
        keyQuery_redeemableStart = NULL;
    }
    if(keyPairQuery_redeemableStart){
        keyValuePair_free(keyPairQuery_redeemableStart);
        keyPairQuery_redeemableStart = NULL;
    }
    if(keyQuery_redeemableEnd){
        free(keyQuery_redeemableEnd);
        keyQuery_redeemableEnd = NULL;
    }
    if(keyPairQuery_redeemableEnd){
        keyValuePair_free(keyPairQuery_redeemableEnd);
        keyPairQuery_redeemableEnd = NULL;
    }
    if(keyQuery_conditionType){
        free(keyQuery_conditionType);
        keyQuery_conditionType = NULL;
    }
    if(keyPairQuery_conditionType){
        keyValuePair_free(keyPairQuery_conditionType);
        keyPairQuery_conditionType = NULL;
    }
    if(keyQuery_isbn){
        free(keyQuery_isbn);
        keyQuery_isbn = NULL;
    }
    if(valueQuery_isbn){
        free(valueQuery_isbn);
        valueQuery_isbn = NULL;
    }
    if(keyPairQuery_isbn){
        keyValuePair_free(keyPairQuery_isbn);
        keyPairQuery_isbn = NULL;
    }
    if(keyQuery_asin){
        free(keyQuery_asin);
        keyQuery_asin = NULL;
    }
    if(valueQuery_asin){
        free(valueQuery_asin);
        valueQuery_asin = NULL;
    }
    if(keyPairQuery_asin){
        keyValuePair_free(keyPairQuery_asin);
        keyPairQuery_asin = NULL;
    }
    if(keyQuery_catalogNumbers){
        free(keyQuery_catalogNumbers);
        keyQuery_catalogNumbers = NULL;
    }
    if(valueQuery_catalogNumbers){
        free(valueQuery_catalogNumbers);
        valueQuery_catalogNumbers = NULL;
    }
    if(keyPairQuery_catalogNumbers){
        keyValuePair_free(keyPairQuery_catalogNumbers);
        keyPairQuery_catalogNumbers = NULL;
    }
    if(keyQuery_parentalRating){
        free(keyQuery_parentalRating);
        keyQuery_parentalRating = NULL;
    }
    if(valueQuery_parentalRating){
        free(valueQuery_parentalRating);
        valueQuery_parentalRating = NULL;
    }
    if(keyPairQuery_parentalRating){
        keyValuePair_free(keyPairQuery_parentalRating);
        keyPairQuery_parentalRating = NULL;
    }
    if(keyQuery_availabilityDate){
        free(keyQuery_availabilityDate);
        keyQuery_availabilityDate = NULL;
    }
    if(keyPairQuery_availabilityDate){
        keyValuePair_free(keyPairQuery_availabilityDate);
        keyPairQuery_availabilityDate = NULL;
    }
    if(keyQuery_mediaType){
        free(keyQuery_mediaType);
        keyQuery_mediaType = NULL;
    }
    if(keyPairQuery_mediaType){
        keyValuePair_free(keyPairQuery_mediaType);
        keyPairQuery_mediaType = NULL;
    }
    if(keyQuery_duration){
        free(keyQuery_duration);
        keyQuery_duration = NULL;
    }
    if(valueQuery_duration){
        free(valueQuery_duration);
        valueQuery_duration = NULL;
    }
    if(keyPairQuery_duration){
        keyValuePair_free(keyPairQuery_duration);
        keyPairQuery_duration = NULL;
    }
    if(keyQuery_author){
        free(keyQuery_author);
        keyQuery_author = NULL;
    }
    if(valueQuery_author){
        free(valueQuery_author);
        valueQuery_author = NULL;
    }
    if(keyPairQuery_author){
        keyValuePair_free(keyPairQuery_author);
        keyPairQuery_author = NULL;
    }
    if(keyQuery_releaseDate){
        free(keyQuery_releaseDate);
        keyQuery_releaseDate = NULL;
    }
    if(keyPairQuery_releaseDate){
        keyValuePair_free(keyPairQuery_releaseDate);
        keyPairQuery_releaseDate = NULL;
    }
    if(keyQuery_collectionIds){
        free(keyQuery_collectionIds);
        keyQuery_collectionIds = NULL;
    }
    if(valueQuery_collectionIds){
        free(valueQuery_collectionIds);
        valueQuery_collectionIds = NULL;
    }
    if(keyPairQuery_collectionIds){
        keyValuePair_free(keyPairQuery_collectionIds);
        keyPairQuery_collectionIds = NULL;
    }
    if(keyQuery_availability){
        free(keyQuery_availability);
        keyQuery_availability = NULL;
    }
    if(valueQuery_availability){
        free(valueQuery_availability);
        valueQuery_availability = NULL;
    }
    if(keyPairQuery_availability){
        keyValuePair_free(keyPairQuery_availability);
        keyPairQuery_availability = NULL;
    }
    if(keyQuery_availabilitySummary){
        free(keyQuery_availabilitySummary);
        keyQuery_availabilitySummary = NULL;
    }
    if(valueQuery_availabilitySummary){
        free(valueQuery_availabilitySummary);
        valueQuery_availabilitySummary = NULL;
    }
    if(keyPairQuery_availabilitySummary){
        keyValuePair_free(keyPairQuery_availabilitySummary);
        keyPairQuery_availabilitySummary = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Delete Media
//
// Delete a media offering that the user has permissions to.
//
sirqul_response_t*
MediaAPI_deleteMedia(apiClient_t *apiClient, long accountId, long mediaId)
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
    char *localVarPath = strdup("/media/delete");





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
    char *keyQuery_mediaId = NULL;
    char * valueQuery_mediaId ;
    keyValuePair_t *keyPairQuery_mediaId = 0;
    {
        keyQuery_mediaId = strdup("mediaId");
        valueQuery_mediaId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_mediaId, MAX_NUMBER_LENGTH_LONG, "%d", mediaId);
        keyPairQuery_mediaId = keyValuePair_create(keyQuery_mediaId, valueQuery_mediaId);
        list_addElement(localVarQueryParameters,keyPairQuery_mediaId);
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
        cJSON *MediaAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(MediaAPIlocalVarJSON);
        cJSON_Delete(MediaAPIlocalVarJSON);
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
    if(keyQuery_mediaId){
        free(keyQuery_mediaId);
        keyQuery_mediaId = NULL;
    }
    if(keyPairQuery_mediaId){
        keyValuePair_free(keyPairQuery_mediaId);
        keyPairQuery_mediaId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Media Get
//
// Get a media offering.
//
media_offer_response_t*
MediaAPI_getMedia(apiClient_t *apiClient, long accountId, long mediaId)
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
    char *localVarPath = strdup("/media/get");





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
    char *keyQuery_mediaId = NULL;
    char * valueQuery_mediaId ;
    keyValuePair_t *keyPairQuery_mediaId = 0;
    {
        keyQuery_mediaId = strdup("mediaId");
        valueQuery_mediaId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_mediaId, MAX_NUMBER_LENGTH_LONG, "%d", mediaId);
        keyPairQuery_mediaId = keyValuePair_create(keyQuery_mediaId, valueQuery_mediaId);
        list_addElement(localVarQueryParameters,keyPairQuery_mediaId);
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
    media_offer_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *MediaAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = media_offer_response_parseFromJSON(MediaAPIlocalVarJSON);
        cJSON_Delete(MediaAPIlocalVarJSON);
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
    if(keyQuery_mediaId){
        free(keyQuery_mediaId);
        keyQuery_mediaId = NULL;
    }
    if(keyPairQuery_mediaId){
        keyValuePair_free(keyPairQuery_mediaId);
        keyPairQuery_mediaId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Media
//
// Searches on events that the account has access to.
//
list_t*
MediaAPI_searchMedia(apiClient_t *apiClient, long accountId, int *activeOnly, sirqul_iot_platform_searchMedia_sortField_e sortField, int *descending, char *keyword, char *categoryIds, char *filterIds, int *start, int *limit)
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
    char *localVarPath = strdup("/media/search");





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
    char *keyQuery_filterIds = NULL;
    char * valueQuery_filterIds = NULL;
    keyValuePair_t *keyPairQuery_filterIds = 0;
    if (filterIds)
    {
        keyQuery_filterIds = strdup("filterIds");
        valueQuery_filterIds = strdup((filterIds));
        keyPairQuery_filterIds = keyValuePair_create(keyQuery_filterIds, valueQuery_filterIds);
        list_addElement(localVarQueryParameters,keyPairQuery_filterIds);
    }

    // query parameters
    char *keyQuery_sortField = NULL;
    sirqul_iot_platform_searchMedia_sortField_e valueQuery_sortField ;
    keyValuePair_t *keyPairQuery_sortField = 0;
    if (sortField)
    {
        keyQuery_sortField = strdup("sortField");
        valueQuery_sortField = (sortField);
        keyPairQuery_sortField = keyValuePair_create(keyQuery_sortField, strdup(searchMedia_SORTFIELD_ToString(
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
    list_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *MediaAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(MediaAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, MediaAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( MediaAPIlocalVarJSON);
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
    if(keyQuery_filterIds){
        free(keyQuery_filterIds);
        keyQuery_filterIds = NULL;
    }
    if(valueQuery_filterIds){
        free(valueQuery_filterIds);
        valueQuery_filterIds = NULL;
    }
    if(keyPairQuery_filterIds){
        keyValuePair_free(keyPairQuery_filterIds);
        keyPairQuery_filterIds = NULL;
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

// Update Media
//
// Update a media offering.
//
media_offer_response_t*
MediaAPI_updateMedia(apiClient_t *apiClient, long accountId, long mediaId, char *retailerLocationIds, char *offerLocations, char *title, char *subTitle, char *details, char *subDetails, char *finePrint, sirqul_iot_platform_updateMedia_barcodeType_e barcodeType, char *barcodeEntry, char *externalRedeemOptions, char *externalUrl, char *ticketsRewardType, long ticketsReward, long activated, long expires, int *noExpiration, int *availableLimit, int *availableLimitPerUser, int *addedLimit, int *viewLimit, int *maxPrints, char *ticketPriceType, long ticketPrice, double fullPrice, double discountPrice, int *showRemaining, int *showRedeemed, int *replaced, int *featured, sirqul_iot_platform_updateMedia_specialOfferType_e specialOfferType, sirqul_iot_platform_updateMedia_offerVisibility_e offerVisibility, char *categoryIds, char *filterIds, int *active, long barcodeAssetId, long imageAssetId, long imageAssetId1, long imageAssetId2, long imageAssetId3, long imageAssetId4, long imageAssetId5, char *publisher, long redeemableStart, long redeemableEnd, sirqul_iot_platform_updateMedia_conditionType_e conditionType, char *isbn, char *asin, char *catalogNumbers, long availabilityDate, char *parentalRating, sirqul_iot_platform_updateMedia_mediaType_e mediaType, int *duration, char *author, long releaseDate, char *collectionIds, char *availability, char *availabilitySummary)
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
    char *localVarPath = strdup("/media/update");





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
    char *keyQuery_mediaId = NULL;
    char * valueQuery_mediaId ;
    keyValuePair_t *keyPairQuery_mediaId = 0;
    {
        keyQuery_mediaId = strdup("mediaId");
        valueQuery_mediaId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_mediaId, MAX_NUMBER_LENGTH_LONG, "%d", mediaId);
        keyPairQuery_mediaId = keyValuePair_create(keyQuery_mediaId, valueQuery_mediaId);
        list_addElement(localVarQueryParameters,keyPairQuery_mediaId);
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
    char *keyQuery_offerLocations = NULL;
    char * valueQuery_offerLocations = NULL;
    keyValuePair_t *keyPairQuery_offerLocations = 0;
    if (offerLocations)
    {
        keyQuery_offerLocations = strdup("offerLocations");
        valueQuery_offerLocations = strdup((offerLocations));
        keyPairQuery_offerLocations = keyValuePair_create(keyQuery_offerLocations, valueQuery_offerLocations);
        list_addElement(localVarQueryParameters,keyPairQuery_offerLocations);
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
    char *keyQuery_subTitle = NULL;
    char * valueQuery_subTitle = NULL;
    keyValuePair_t *keyPairQuery_subTitle = 0;
    if (subTitle)
    {
        keyQuery_subTitle = strdup("subTitle");
        valueQuery_subTitle = strdup((subTitle));
        keyPairQuery_subTitle = keyValuePair_create(keyQuery_subTitle, valueQuery_subTitle);
        list_addElement(localVarQueryParameters,keyPairQuery_subTitle);
    }

    // query parameters
    char *keyQuery_details = NULL;
    char * valueQuery_details = NULL;
    keyValuePair_t *keyPairQuery_details = 0;
    if (details)
    {
        keyQuery_details = strdup("details");
        valueQuery_details = strdup((details));
        keyPairQuery_details = keyValuePair_create(keyQuery_details, valueQuery_details);
        list_addElement(localVarQueryParameters,keyPairQuery_details);
    }

    // query parameters
    char *keyQuery_subDetails = NULL;
    char * valueQuery_subDetails = NULL;
    keyValuePair_t *keyPairQuery_subDetails = 0;
    if (subDetails)
    {
        keyQuery_subDetails = strdup("subDetails");
        valueQuery_subDetails = strdup((subDetails));
        keyPairQuery_subDetails = keyValuePair_create(keyQuery_subDetails, valueQuery_subDetails);
        list_addElement(localVarQueryParameters,keyPairQuery_subDetails);
    }

    // query parameters
    char *keyQuery_finePrint = NULL;
    char * valueQuery_finePrint = NULL;
    keyValuePair_t *keyPairQuery_finePrint = 0;
    if (finePrint)
    {
        keyQuery_finePrint = strdup("finePrint");
        valueQuery_finePrint = strdup((finePrint));
        keyPairQuery_finePrint = keyValuePair_create(keyQuery_finePrint, valueQuery_finePrint);
        list_addElement(localVarQueryParameters,keyPairQuery_finePrint);
    }

    // query parameters
    char *keyQuery_barcodeType = NULL;
    sirqul_iot_platform_updateMedia_barcodeType_e valueQuery_barcodeType ;
    keyValuePair_t *keyPairQuery_barcodeType = 0;
    if (barcodeType)
    {
        keyQuery_barcodeType = strdup("barcodeType");
        valueQuery_barcodeType = (barcodeType);
        keyPairQuery_barcodeType = keyValuePair_create(keyQuery_barcodeType, strdup(updateMedia_BARCODETYPE_ToString(
        valueQuery_barcodeType)));
        list_addElement(localVarQueryParameters,keyPairQuery_barcodeType);
    }

    // query parameters
    char *keyQuery_barcodeEntry = NULL;
    char * valueQuery_barcodeEntry = NULL;
    keyValuePair_t *keyPairQuery_barcodeEntry = 0;
    if (barcodeEntry)
    {
        keyQuery_barcodeEntry = strdup("barcodeEntry");
        valueQuery_barcodeEntry = strdup((barcodeEntry));
        keyPairQuery_barcodeEntry = keyValuePair_create(keyQuery_barcodeEntry, valueQuery_barcodeEntry);
        list_addElement(localVarQueryParameters,keyPairQuery_barcodeEntry);
    }

    // query parameters
    char *keyQuery_externalRedeemOptions = NULL;
    char * valueQuery_externalRedeemOptions = NULL;
    keyValuePair_t *keyPairQuery_externalRedeemOptions = 0;
    if (externalRedeemOptions)
    {
        keyQuery_externalRedeemOptions = strdup("externalRedeemOptions");
        valueQuery_externalRedeemOptions = strdup((externalRedeemOptions));
        keyPairQuery_externalRedeemOptions = keyValuePair_create(keyQuery_externalRedeemOptions, valueQuery_externalRedeemOptions);
        list_addElement(localVarQueryParameters,keyPairQuery_externalRedeemOptions);
    }

    // query parameters
    char *keyQuery_externalUrl = NULL;
    char * valueQuery_externalUrl = NULL;
    keyValuePair_t *keyPairQuery_externalUrl = 0;
    if (externalUrl)
    {
        keyQuery_externalUrl = strdup("externalUrl");
        valueQuery_externalUrl = strdup((externalUrl));
        keyPairQuery_externalUrl = keyValuePair_create(keyQuery_externalUrl, valueQuery_externalUrl);
        list_addElement(localVarQueryParameters,keyPairQuery_externalUrl);
    }

    // query parameters
    char *keyQuery_ticketsRewardType = NULL;
    char * valueQuery_ticketsRewardType = NULL;
    keyValuePair_t *keyPairQuery_ticketsRewardType = 0;
    if (ticketsRewardType)
    {
        keyQuery_ticketsRewardType = strdup("ticketsRewardType");
        valueQuery_ticketsRewardType = strdup((ticketsRewardType));
        keyPairQuery_ticketsRewardType = keyValuePair_create(keyQuery_ticketsRewardType, valueQuery_ticketsRewardType);
        list_addElement(localVarQueryParameters,keyPairQuery_ticketsRewardType);
    }

    // query parameters
    char *keyQuery_ticketsReward = NULL;
    char * valueQuery_ticketsReward ;
    keyValuePair_t *keyPairQuery_ticketsReward = 0;
    {
        keyQuery_ticketsReward = strdup("ticketsReward");
        valueQuery_ticketsReward = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_ticketsReward, MAX_NUMBER_LENGTH_LONG, "%d", ticketsReward);
        keyPairQuery_ticketsReward = keyValuePair_create(keyQuery_ticketsReward, valueQuery_ticketsReward);
        list_addElement(localVarQueryParameters,keyPairQuery_ticketsReward);
    }

    // query parameters
    char *keyQuery_activated = NULL;
    char * valueQuery_activated ;
    keyValuePair_t *keyPairQuery_activated = 0;
    {
        keyQuery_activated = strdup("activated");
        valueQuery_activated = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_activated, MAX_NUMBER_LENGTH_LONG, "%d", activated);
        keyPairQuery_activated = keyValuePair_create(keyQuery_activated, valueQuery_activated);
        list_addElement(localVarQueryParameters,keyPairQuery_activated);
    }

    // query parameters
    char *keyQuery_expires = NULL;
    char * valueQuery_expires ;
    keyValuePair_t *keyPairQuery_expires = 0;
    {
        keyQuery_expires = strdup("expires");
        valueQuery_expires = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_expires, MAX_NUMBER_LENGTH_LONG, "%d", expires);
        keyPairQuery_expires = keyValuePair_create(keyQuery_expires, valueQuery_expires);
        list_addElement(localVarQueryParameters,keyPairQuery_expires);
    }

    // query parameters
    char *keyQuery_noExpiration = NULL;
    char * valueQuery_noExpiration = NULL;
    keyValuePair_t *keyPairQuery_noExpiration = 0;
    if (noExpiration)
    {
        keyQuery_noExpiration = strdup("noExpiration");
        valueQuery_noExpiration = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_noExpiration, MAX_NUMBER_LENGTH, "%d", *noExpiration);
        keyPairQuery_noExpiration = keyValuePair_create(keyQuery_noExpiration, valueQuery_noExpiration);
        list_addElement(localVarQueryParameters,keyPairQuery_noExpiration);
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
    char *keyQuery_availableLimitPerUser = NULL;
    char * valueQuery_availableLimitPerUser = NULL;
    keyValuePair_t *keyPairQuery_availableLimitPerUser = 0;
    if (availableLimitPerUser)
    {
        keyQuery_availableLimitPerUser = strdup("availableLimitPerUser");
        valueQuery_availableLimitPerUser = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_availableLimitPerUser, MAX_NUMBER_LENGTH, "%d", *availableLimitPerUser);
        keyPairQuery_availableLimitPerUser = keyValuePair_create(keyQuery_availableLimitPerUser, valueQuery_availableLimitPerUser);
        list_addElement(localVarQueryParameters,keyPairQuery_availableLimitPerUser);
    }

    // query parameters
    char *keyQuery_addedLimit = NULL;
    char * valueQuery_addedLimit = NULL;
    keyValuePair_t *keyPairQuery_addedLimit = 0;
    if (addedLimit)
    {
        keyQuery_addedLimit = strdup("addedLimit");
        valueQuery_addedLimit = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_addedLimit, MAX_NUMBER_LENGTH, "%d", *addedLimit);
        keyPairQuery_addedLimit = keyValuePair_create(keyQuery_addedLimit, valueQuery_addedLimit);
        list_addElement(localVarQueryParameters,keyPairQuery_addedLimit);
    }

    // query parameters
    char *keyQuery_viewLimit = NULL;
    char * valueQuery_viewLimit = NULL;
    keyValuePair_t *keyPairQuery_viewLimit = 0;
    if (viewLimit)
    {
        keyQuery_viewLimit = strdup("viewLimit");
        valueQuery_viewLimit = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_viewLimit, MAX_NUMBER_LENGTH, "%d", *viewLimit);
        keyPairQuery_viewLimit = keyValuePair_create(keyQuery_viewLimit, valueQuery_viewLimit);
        list_addElement(localVarQueryParameters,keyPairQuery_viewLimit);
    }

    // query parameters
    char *keyQuery_maxPrints = NULL;
    char * valueQuery_maxPrints = NULL;
    keyValuePair_t *keyPairQuery_maxPrints = 0;
    if (maxPrints)
    {
        keyQuery_maxPrints = strdup("maxPrints");
        valueQuery_maxPrints = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_maxPrints, MAX_NUMBER_LENGTH, "%d", *maxPrints);
        keyPairQuery_maxPrints = keyValuePair_create(keyQuery_maxPrints, valueQuery_maxPrints);
        list_addElement(localVarQueryParameters,keyPairQuery_maxPrints);
    }

    // query parameters
    char *keyQuery_ticketPriceType = NULL;
    char * valueQuery_ticketPriceType = NULL;
    keyValuePair_t *keyPairQuery_ticketPriceType = 0;
    if (ticketPriceType)
    {
        keyQuery_ticketPriceType = strdup("ticketPriceType");
        valueQuery_ticketPriceType = strdup((ticketPriceType));
        keyPairQuery_ticketPriceType = keyValuePair_create(keyQuery_ticketPriceType, valueQuery_ticketPriceType);
        list_addElement(localVarQueryParameters,keyPairQuery_ticketPriceType);
    }

    // query parameters
    char *keyQuery_ticketPrice = NULL;
    char * valueQuery_ticketPrice ;
    keyValuePair_t *keyPairQuery_ticketPrice = 0;
    {
        keyQuery_ticketPrice = strdup("ticketPrice");
        valueQuery_ticketPrice = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_ticketPrice, MAX_NUMBER_LENGTH_LONG, "%d", ticketPrice);
        keyPairQuery_ticketPrice = keyValuePair_create(keyQuery_ticketPrice, valueQuery_ticketPrice);
        list_addElement(localVarQueryParameters,keyPairQuery_ticketPrice);
    }

    // query parameters
    char *keyQuery_fullPrice = NULL;
    char * valueQuery_fullPrice = NULL;
    keyValuePair_t *keyPairQuery_fullPrice = 0;
    {
        keyQuery_fullPrice = strdup("fullPrice");
        int s = snprintf(NULL, 0, "%.16e", fullPrice);
        if (s >= 0)
        {
            valueQuery_fullPrice = calloc(1,s+1);
            snprintf(valueQuery_fullPrice, s+1, "%.16e", fullPrice);
        }
        keyPairQuery_fullPrice = keyValuePair_create(keyQuery_fullPrice, valueQuery_fullPrice);
        list_addElement(localVarQueryParameters,keyPairQuery_fullPrice);
    }

    // query parameters
    char *keyQuery_discountPrice = NULL;
    char * valueQuery_discountPrice = NULL;
    keyValuePair_t *keyPairQuery_discountPrice = 0;
    {
        keyQuery_discountPrice = strdup("discountPrice");
        int s = snprintf(NULL, 0, "%.16e", discountPrice);
        if (s >= 0)
        {
            valueQuery_discountPrice = calloc(1,s+1);
            snprintf(valueQuery_discountPrice, s+1, "%.16e", discountPrice);
        }
        keyPairQuery_discountPrice = keyValuePair_create(keyQuery_discountPrice, valueQuery_discountPrice);
        list_addElement(localVarQueryParameters,keyPairQuery_discountPrice);
    }

    // query parameters
    char *keyQuery_showRemaining = NULL;
    char * valueQuery_showRemaining = NULL;
    keyValuePair_t *keyPairQuery_showRemaining = 0;
    if (showRemaining)
    {
        keyQuery_showRemaining = strdup("showRemaining");
        valueQuery_showRemaining = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_showRemaining, MAX_NUMBER_LENGTH, "%d", *showRemaining);
        keyPairQuery_showRemaining = keyValuePair_create(keyQuery_showRemaining, valueQuery_showRemaining);
        list_addElement(localVarQueryParameters,keyPairQuery_showRemaining);
    }

    // query parameters
    char *keyQuery_showRedeemed = NULL;
    char * valueQuery_showRedeemed = NULL;
    keyValuePair_t *keyPairQuery_showRedeemed = 0;
    if (showRedeemed)
    {
        keyQuery_showRedeemed = strdup("showRedeemed");
        valueQuery_showRedeemed = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_showRedeemed, MAX_NUMBER_LENGTH, "%d", *showRedeemed);
        keyPairQuery_showRedeemed = keyValuePair_create(keyQuery_showRedeemed, valueQuery_showRedeemed);
        list_addElement(localVarQueryParameters,keyPairQuery_showRedeemed);
    }

    // query parameters
    char *keyQuery_replaced = NULL;
    char * valueQuery_replaced = NULL;
    keyValuePair_t *keyPairQuery_replaced = 0;
    if (replaced)
    {
        keyQuery_replaced = strdup("replaced");
        valueQuery_replaced = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_replaced, MAX_NUMBER_LENGTH, "%d", *replaced);
        keyPairQuery_replaced = keyValuePair_create(keyQuery_replaced, valueQuery_replaced);
        list_addElement(localVarQueryParameters,keyPairQuery_replaced);
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
    char *keyQuery_specialOfferType = NULL;
    sirqul_iot_platform_updateMedia_specialOfferType_e valueQuery_specialOfferType ;
    keyValuePair_t *keyPairQuery_specialOfferType = 0;
    if (specialOfferType)
    {
        keyQuery_specialOfferType = strdup("specialOfferType");
        valueQuery_specialOfferType = (specialOfferType);
        keyPairQuery_specialOfferType = keyValuePair_create(keyQuery_specialOfferType, strdup(updateMedia_SPECIALOFFERTYPE_ToString(
        valueQuery_specialOfferType)));
        list_addElement(localVarQueryParameters,keyPairQuery_specialOfferType);
    }

    // query parameters
    char *keyQuery_offerVisibility = NULL;
    sirqul_iot_platform_updateMedia_offerVisibility_e valueQuery_offerVisibility ;
    keyValuePair_t *keyPairQuery_offerVisibility = 0;
    if (offerVisibility)
    {
        keyQuery_offerVisibility = strdup("offerVisibility");
        valueQuery_offerVisibility = (offerVisibility);
        keyPairQuery_offerVisibility = keyValuePair_create(keyQuery_offerVisibility, strdup(updateMedia_OFFERVISIBILITY_ToString(
        valueQuery_offerVisibility)));
        list_addElement(localVarQueryParameters,keyPairQuery_offerVisibility);
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
    char *keyQuery_filterIds = NULL;
    char * valueQuery_filterIds = NULL;
    keyValuePair_t *keyPairQuery_filterIds = 0;
    if (filterIds)
    {
        keyQuery_filterIds = strdup("filterIds");
        valueQuery_filterIds = strdup((filterIds));
        keyPairQuery_filterIds = keyValuePair_create(keyQuery_filterIds, valueQuery_filterIds);
        list_addElement(localVarQueryParameters,keyPairQuery_filterIds);
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
    char *keyQuery_barcodeAssetId = NULL;
    char * valueQuery_barcodeAssetId ;
    keyValuePair_t *keyPairQuery_barcodeAssetId = 0;
    {
        keyQuery_barcodeAssetId = strdup("barcodeAssetId");
        valueQuery_barcodeAssetId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_barcodeAssetId, MAX_NUMBER_LENGTH_LONG, "%d", barcodeAssetId);
        keyPairQuery_barcodeAssetId = keyValuePair_create(keyQuery_barcodeAssetId, valueQuery_barcodeAssetId);
        list_addElement(localVarQueryParameters,keyPairQuery_barcodeAssetId);
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
    char *keyQuery_imageAssetId1 = NULL;
    char * valueQuery_imageAssetId1 ;
    keyValuePair_t *keyPairQuery_imageAssetId1 = 0;
    {
        keyQuery_imageAssetId1 = strdup("imageAssetId1");
        valueQuery_imageAssetId1 = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_imageAssetId1, MAX_NUMBER_LENGTH_LONG, "%d", imageAssetId1);
        keyPairQuery_imageAssetId1 = keyValuePair_create(keyQuery_imageAssetId1, valueQuery_imageAssetId1);
        list_addElement(localVarQueryParameters,keyPairQuery_imageAssetId1);
    }

    // query parameters
    char *keyQuery_imageAssetId2 = NULL;
    char * valueQuery_imageAssetId2 ;
    keyValuePair_t *keyPairQuery_imageAssetId2 = 0;
    {
        keyQuery_imageAssetId2 = strdup("imageAssetId2");
        valueQuery_imageAssetId2 = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_imageAssetId2, MAX_NUMBER_LENGTH_LONG, "%d", imageAssetId2);
        keyPairQuery_imageAssetId2 = keyValuePair_create(keyQuery_imageAssetId2, valueQuery_imageAssetId2);
        list_addElement(localVarQueryParameters,keyPairQuery_imageAssetId2);
    }

    // query parameters
    char *keyQuery_imageAssetId3 = NULL;
    char * valueQuery_imageAssetId3 ;
    keyValuePair_t *keyPairQuery_imageAssetId3 = 0;
    {
        keyQuery_imageAssetId3 = strdup("imageAssetId3");
        valueQuery_imageAssetId3 = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_imageAssetId3, MAX_NUMBER_LENGTH_LONG, "%d", imageAssetId3);
        keyPairQuery_imageAssetId3 = keyValuePair_create(keyQuery_imageAssetId3, valueQuery_imageAssetId3);
        list_addElement(localVarQueryParameters,keyPairQuery_imageAssetId3);
    }

    // query parameters
    char *keyQuery_imageAssetId4 = NULL;
    char * valueQuery_imageAssetId4 ;
    keyValuePair_t *keyPairQuery_imageAssetId4 = 0;
    {
        keyQuery_imageAssetId4 = strdup("imageAssetId4");
        valueQuery_imageAssetId4 = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_imageAssetId4, MAX_NUMBER_LENGTH_LONG, "%d", imageAssetId4);
        keyPairQuery_imageAssetId4 = keyValuePair_create(keyQuery_imageAssetId4, valueQuery_imageAssetId4);
        list_addElement(localVarQueryParameters,keyPairQuery_imageAssetId4);
    }

    // query parameters
    char *keyQuery_imageAssetId5 = NULL;
    char * valueQuery_imageAssetId5 ;
    keyValuePair_t *keyPairQuery_imageAssetId5 = 0;
    {
        keyQuery_imageAssetId5 = strdup("imageAssetId5");
        valueQuery_imageAssetId5 = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_imageAssetId5, MAX_NUMBER_LENGTH_LONG, "%d", imageAssetId5);
        keyPairQuery_imageAssetId5 = keyValuePair_create(keyQuery_imageAssetId5, valueQuery_imageAssetId5);
        list_addElement(localVarQueryParameters,keyPairQuery_imageAssetId5);
    }

    // query parameters
    char *keyQuery_publisher = NULL;
    char * valueQuery_publisher = NULL;
    keyValuePair_t *keyPairQuery_publisher = 0;
    if (publisher)
    {
        keyQuery_publisher = strdup("publisher");
        valueQuery_publisher = strdup((publisher));
        keyPairQuery_publisher = keyValuePair_create(keyQuery_publisher, valueQuery_publisher);
        list_addElement(localVarQueryParameters,keyPairQuery_publisher);
    }

    // query parameters
    char *keyQuery_redeemableStart = NULL;
    char * valueQuery_redeemableStart ;
    keyValuePair_t *keyPairQuery_redeemableStart = 0;
    {
        keyQuery_redeemableStart = strdup("redeemableStart");
        valueQuery_redeemableStart = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_redeemableStart, MAX_NUMBER_LENGTH_LONG, "%d", redeemableStart);
        keyPairQuery_redeemableStart = keyValuePair_create(keyQuery_redeemableStart, valueQuery_redeemableStart);
        list_addElement(localVarQueryParameters,keyPairQuery_redeemableStart);
    }

    // query parameters
    char *keyQuery_redeemableEnd = NULL;
    char * valueQuery_redeemableEnd ;
    keyValuePair_t *keyPairQuery_redeemableEnd = 0;
    {
        keyQuery_redeemableEnd = strdup("redeemableEnd");
        valueQuery_redeemableEnd = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_redeemableEnd, MAX_NUMBER_LENGTH_LONG, "%d", redeemableEnd);
        keyPairQuery_redeemableEnd = keyValuePair_create(keyQuery_redeemableEnd, valueQuery_redeemableEnd);
        list_addElement(localVarQueryParameters,keyPairQuery_redeemableEnd);
    }

    // query parameters
    char *keyQuery_conditionType = NULL;
    sirqul_iot_platform_updateMedia_conditionType_e valueQuery_conditionType ;
    keyValuePair_t *keyPairQuery_conditionType = 0;
    if (conditionType)
    {
        keyQuery_conditionType = strdup("conditionType");
        valueQuery_conditionType = (conditionType);
        keyPairQuery_conditionType = keyValuePair_create(keyQuery_conditionType, strdup(updateMedia_CONDITIONTYPE_ToString(
        valueQuery_conditionType)));
        list_addElement(localVarQueryParameters,keyPairQuery_conditionType);
    }

    // query parameters
    char *keyQuery_isbn = NULL;
    char * valueQuery_isbn = NULL;
    keyValuePair_t *keyPairQuery_isbn = 0;
    if (isbn)
    {
        keyQuery_isbn = strdup("isbn");
        valueQuery_isbn = strdup((isbn));
        keyPairQuery_isbn = keyValuePair_create(keyQuery_isbn, valueQuery_isbn);
        list_addElement(localVarQueryParameters,keyPairQuery_isbn);
    }

    // query parameters
    char *keyQuery_asin = NULL;
    char * valueQuery_asin = NULL;
    keyValuePair_t *keyPairQuery_asin = 0;
    if (asin)
    {
        keyQuery_asin = strdup("asin");
        valueQuery_asin = strdup((asin));
        keyPairQuery_asin = keyValuePair_create(keyQuery_asin, valueQuery_asin);
        list_addElement(localVarQueryParameters,keyPairQuery_asin);
    }

    // query parameters
    char *keyQuery_catalogNumbers = NULL;
    char * valueQuery_catalogNumbers = NULL;
    keyValuePair_t *keyPairQuery_catalogNumbers = 0;
    if (catalogNumbers)
    {
        keyQuery_catalogNumbers = strdup("catalogNumbers");
        valueQuery_catalogNumbers = strdup((catalogNumbers));
        keyPairQuery_catalogNumbers = keyValuePair_create(keyQuery_catalogNumbers, valueQuery_catalogNumbers);
        list_addElement(localVarQueryParameters,keyPairQuery_catalogNumbers);
    }

    // query parameters
    char *keyQuery_availabilityDate = NULL;
    char * valueQuery_availabilityDate ;
    keyValuePair_t *keyPairQuery_availabilityDate = 0;
    {
        keyQuery_availabilityDate = strdup("availabilityDate");
        valueQuery_availabilityDate = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_availabilityDate, MAX_NUMBER_LENGTH_LONG, "%d", availabilityDate);
        keyPairQuery_availabilityDate = keyValuePair_create(keyQuery_availabilityDate, valueQuery_availabilityDate);
        list_addElement(localVarQueryParameters,keyPairQuery_availabilityDate);
    }

    // query parameters
    char *keyQuery_parentalRating = NULL;
    char * valueQuery_parentalRating = NULL;
    keyValuePair_t *keyPairQuery_parentalRating = 0;
    if (parentalRating)
    {
        keyQuery_parentalRating = strdup("parentalRating");
        valueQuery_parentalRating = strdup((parentalRating));
        keyPairQuery_parentalRating = keyValuePair_create(keyQuery_parentalRating, valueQuery_parentalRating);
        list_addElement(localVarQueryParameters,keyPairQuery_parentalRating);
    }

    // query parameters
    char *keyQuery_mediaType = NULL;
    sirqul_iot_platform_updateMedia_mediaType_e valueQuery_mediaType ;
    keyValuePair_t *keyPairQuery_mediaType = 0;
    if (mediaType)
    {
        keyQuery_mediaType = strdup("mediaType");
        valueQuery_mediaType = (mediaType);
        keyPairQuery_mediaType = keyValuePair_create(keyQuery_mediaType, strdup(updateMedia_MEDIATYPE_ToString(
        valueQuery_mediaType)));
        list_addElement(localVarQueryParameters,keyPairQuery_mediaType);
    }

    // query parameters
    char *keyQuery_duration = NULL;
    char * valueQuery_duration = NULL;
    keyValuePair_t *keyPairQuery_duration = 0;
    if (duration)
    {
        keyQuery_duration = strdup("duration");
        valueQuery_duration = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_duration, MAX_NUMBER_LENGTH, "%d", *duration);
        keyPairQuery_duration = keyValuePair_create(keyQuery_duration, valueQuery_duration);
        list_addElement(localVarQueryParameters,keyPairQuery_duration);
    }

    // query parameters
    char *keyQuery_author = NULL;
    char * valueQuery_author = NULL;
    keyValuePair_t *keyPairQuery_author = 0;
    if (author)
    {
        keyQuery_author = strdup("author");
        valueQuery_author = strdup((author));
        keyPairQuery_author = keyValuePair_create(keyQuery_author, valueQuery_author);
        list_addElement(localVarQueryParameters,keyPairQuery_author);
    }

    // query parameters
    char *keyQuery_releaseDate = NULL;
    char * valueQuery_releaseDate ;
    keyValuePair_t *keyPairQuery_releaseDate = 0;
    {
        keyQuery_releaseDate = strdup("releaseDate");
        valueQuery_releaseDate = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_releaseDate, MAX_NUMBER_LENGTH_LONG, "%d", releaseDate);
        keyPairQuery_releaseDate = keyValuePair_create(keyQuery_releaseDate, valueQuery_releaseDate);
        list_addElement(localVarQueryParameters,keyPairQuery_releaseDate);
    }

    // query parameters
    char *keyQuery_collectionIds = NULL;
    char * valueQuery_collectionIds = NULL;
    keyValuePair_t *keyPairQuery_collectionIds = 0;
    if (collectionIds)
    {
        keyQuery_collectionIds = strdup("collectionIds");
        valueQuery_collectionIds = strdup((collectionIds));
        keyPairQuery_collectionIds = keyValuePair_create(keyQuery_collectionIds, valueQuery_collectionIds);
        list_addElement(localVarQueryParameters,keyPairQuery_collectionIds);
    }

    // query parameters
    char *keyQuery_availability = NULL;
    char * valueQuery_availability = NULL;
    keyValuePair_t *keyPairQuery_availability = 0;
    if (availability)
    {
        keyQuery_availability = strdup("availability");
        valueQuery_availability = strdup((availability));
        keyPairQuery_availability = keyValuePair_create(keyQuery_availability, valueQuery_availability);
        list_addElement(localVarQueryParameters,keyPairQuery_availability);
    }

    // query parameters
    char *keyQuery_availabilitySummary = NULL;
    char * valueQuery_availabilitySummary = NULL;
    keyValuePair_t *keyPairQuery_availabilitySummary = 0;
    if (availabilitySummary)
    {
        keyQuery_availabilitySummary = strdup("availabilitySummary");
        valueQuery_availabilitySummary = strdup((availabilitySummary));
        keyPairQuery_availabilitySummary = keyValuePair_create(keyQuery_availabilitySummary, valueQuery_availabilitySummary);
        list_addElement(localVarQueryParameters,keyPairQuery_availabilitySummary);
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
    media_offer_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *MediaAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = media_offer_response_parseFromJSON(MediaAPIlocalVarJSON);
        cJSON_Delete(MediaAPIlocalVarJSON);
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
    if(keyQuery_mediaId){
        free(keyQuery_mediaId);
        keyQuery_mediaId = NULL;
    }
    if(keyPairQuery_mediaId){
        keyValuePair_free(keyPairQuery_mediaId);
        keyPairQuery_mediaId = NULL;
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
    if(keyQuery_offerLocations){
        free(keyQuery_offerLocations);
        keyQuery_offerLocations = NULL;
    }
    if(valueQuery_offerLocations){
        free(valueQuery_offerLocations);
        valueQuery_offerLocations = NULL;
    }
    if(keyPairQuery_offerLocations){
        keyValuePair_free(keyPairQuery_offerLocations);
        keyPairQuery_offerLocations = NULL;
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
    if(keyQuery_subTitle){
        free(keyQuery_subTitle);
        keyQuery_subTitle = NULL;
    }
    if(valueQuery_subTitle){
        free(valueQuery_subTitle);
        valueQuery_subTitle = NULL;
    }
    if(keyPairQuery_subTitle){
        keyValuePair_free(keyPairQuery_subTitle);
        keyPairQuery_subTitle = NULL;
    }
    if(keyQuery_details){
        free(keyQuery_details);
        keyQuery_details = NULL;
    }
    if(valueQuery_details){
        free(valueQuery_details);
        valueQuery_details = NULL;
    }
    if(keyPairQuery_details){
        keyValuePair_free(keyPairQuery_details);
        keyPairQuery_details = NULL;
    }
    if(keyQuery_subDetails){
        free(keyQuery_subDetails);
        keyQuery_subDetails = NULL;
    }
    if(valueQuery_subDetails){
        free(valueQuery_subDetails);
        valueQuery_subDetails = NULL;
    }
    if(keyPairQuery_subDetails){
        keyValuePair_free(keyPairQuery_subDetails);
        keyPairQuery_subDetails = NULL;
    }
    if(keyQuery_finePrint){
        free(keyQuery_finePrint);
        keyQuery_finePrint = NULL;
    }
    if(valueQuery_finePrint){
        free(valueQuery_finePrint);
        valueQuery_finePrint = NULL;
    }
    if(keyPairQuery_finePrint){
        keyValuePair_free(keyPairQuery_finePrint);
        keyPairQuery_finePrint = NULL;
    }
    if(keyQuery_barcodeType){
        free(keyQuery_barcodeType);
        keyQuery_barcodeType = NULL;
    }
    if(keyPairQuery_barcodeType){
        keyValuePair_free(keyPairQuery_barcodeType);
        keyPairQuery_barcodeType = NULL;
    }
    if(keyQuery_barcodeEntry){
        free(keyQuery_barcodeEntry);
        keyQuery_barcodeEntry = NULL;
    }
    if(valueQuery_barcodeEntry){
        free(valueQuery_barcodeEntry);
        valueQuery_barcodeEntry = NULL;
    }
    if(keyPairQuery_barcodeEntry){
        keyValuePair_free(keyPairQuery_barcodeEntry);
        keyPairQuery_barcodeEntry = NULL;
    }
    if(keyQuery_externalRedeemOptions){
        free(keyQuery_externalRedeemOptions);
        keyQuery_externalRedeemOptions = NULL;
    }
    if(valueQuery_externalRedeemOptions){
        free(valueQuery_externalRedeemOptions);
        valueQuery_externalRedeemOptions = NULL;
    }
    if(keyPairQuery_externalRedeemOptions){
        keyValuePair_free(keyPairQuery_externalRedeemOptions);
        keyPairQuery_externalRedeemOptions = NULL;
    }
    if(keyQuery_externalUrl){
        free(keyQuery_externalUrl);
        keyQuery_externalUrl = NULL;
    }
    if(valueQuery_externalUrl){
        free(valueQuery_externalUrl);
        valueQuery_externalUrl = NULL;
    }
    if(keyPairQuery_externalUrl){
        keyValuePair_free(keyPairQuery_externalUrl);
        keyPairQuery_externalUrl = NULL;
    }
    if(keyQuery_ticketsRewardType){
        free(keyQuery_ticketsRewardType);
        keyQuery_ticketsRewardType = NULL;
    }
    if(valueQuery_ticketsRewardType){
        free(valueQuery_ticketsRewardType);
        valueQuery_ticketsRewardType = NULL;
    }
    if(keyPairQuery_ticketsRewardType){
        keyValuePair_free(keyPairQuery_ticketsRewardType);
        keyPairQuery_ticketsRewardType = NULL;
    }
    if(keyQuery_ticketsReward){
        free(keyQuery_ticketsReward);
        keyQuery_ticketsReward = NULL;
    }
    if(keyPairQuery_ticketsReward){
        keyValuePair_free(keyPairQuery_ticketsReward);
        keyPairQuery_ticketsReward = NULL;
    }
    if(keyQuery_activated){
        free(keyQuery_activated);
        keyQuery_activated = NULL;
    }
    if(keyPairQuery_activated){
        keyValuePair_free(keyPairQuery_activated);
        keyPairQuery_activated = NULL;
    }
    if(keyQuery_expires){
        free(keyQuery_expires);
        keyQuery_expires = NULL;
    }
    if(keyPairQuery_expires){
        keyValuePair_free(keyPairQuery_expires);
        keyPairQuery_expires = NULL;
    }
    if(keyQuery_noExpiration){
        free(keyQuery_noExpiration);
        keyQuery_noExpiration = NULL;
    }
    if(valueQuery_noExpiration){
        free(valueQuery_noExpiration);
        valueQuery_noExpiration = NULL;
    }
    if(keyPairQuery_noExpiration){
        keyValuePair_free(keyPairQuery_noExpiration);
        keyPairQuery_noExpiration = NULL;
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
    if(keyQuery_availableLimitPerUser){
        free(keyQuery_availableLimitPerUser);
        keyQuery_availableLimitPerUser = NULL;
    }
    if(valueQuery_availableLimitPerUser){
        free(valueQuery_availableLimitPerUser);
        valueQuery_availableLimitPerUser = NULL;
    }
    if(keyPairQuery_availableLimitPerUser){
        keyValuePair_free(keyPairQuery_availableLimitPerUser);
        keyPairQuery_availableLimitPerUser = NULL;
    }
    if(keyQuery_addedLimit){
        free(keyQuery_addedLimit);
        keyQuery_addedLimit = NULL;
    }
    if(valueQuery_addedLimit){
        free(valueQuery_addedLimit);
        valueQuery_addedLimit = NULL;
    }
    if(keyPairQuery_addedLimit){
        keyValuePair_free(keyPairQuery_addedLimit);
        keyPairQuery_addedLimit = NULL;
    }
    if(keyQuery_viewLimit){
        free(keyQuery_viewLimit);
        keyQuery_viewLimit = NULL;
    }
    if(valueQuery_viewLimit){
        free(valueQuery_viewLimit);
        valueQuery_viewLimit = NULL;
    }
    if(keyPairQuery_viewLimit){
        keyValuePair_free(keyPairQuery_viewLimit);
        keyPairQuery_viewLimit = NULL;
    }
    if(keyQuery_maxPrints){
        free(keyQuery_maxPrints);
        keyQuery_maxPrints = NULL;
    }
    if(valueQuery_maxPrints){
        free(valueQuery_maxPrints);
        valueQuery_maxPrints = NULL;
    }
    if(keyPairQuery_maxPrints){
        keyValuePair_free(keyPairQuery_maxPrints);
        keyPairQuery_maxPrints = NULL;
    }
    if(keyQuery_ticketPriceType){
        free(keyQuery_ticketPriceType);
        keyQuery_ticketPriceType = NULL;
    }
    if(valueQuery_ticketPriceType){
        free(valueQuery_ticketPriceType);
        valueQuery_ticketPriceType = NULL;
    }
    if(keyPairQuery_ticketPriceType){
        keyValuePair_free(keyPairQuery_ticketPriceType);
        keyPairQuery_ticketPriceType = NULL;
    }
    if(keyQuery_ticketPrice){
        free(keyQuery_ticketPrice);
        keyQuery_ticketPrice = NULL;
    }
    if(keyPairQuery_ticketPrice){
        keyValuePair_free(keyPairQuery_ticketPrice);
        keyPairQuery_ticketPrice = NULL;
    }
    if(keyQuery_fullPrice){
        free(keyQuery_fullPrice);
        keyQuery_fullPrice = NULL;
    }
    if(keyPairQuery_fullPrice){
        keyValuePair_free(keyPairQuery_fullPrice);
        keyPairQuery_fullPrice = NULL;
    }
    if(keyQuery_discountPrice){
        free(keyQuery_discountPrice);
        keyQuery_discountPrice = NULL;
    }
    if(keyPairQuery_discountPrice){
        keyValuePair_free(keyPairQuery_discountPrice);
        keyPairQuery_discountPrice = NULL;
    }
    if(keyQuery_showRemaining){
        free(keyQuery_showRemaining);
        keyQuery_showRemaining = NULL;
    }
    if(valueQuery_showRemaining){
        free(valueQuery_showRemaining);
        valueQuery_showRemaining = NULL;
    }
    if(keyPairQuery_showRemaining){
        keyValuePair_free(keyPairQuery_showRemaining);
        keyPairQuery_showRemaining = NULL;
    }
    if(keyQuery_showRedeemed){
        free(keyQuery_showRedeemed);
        keyQuery_showRedeemed = NULL;
    }
    if(valueQuery_showRedeemed){
        free(valueQuery_showRedeemed);
        valueQuery_showRedeemed = NULL;
    }
    if(keyPairQuery_showRedeemed){
        keyValuePair_free(keyPairQuery_showRedeemed);
        keyPairQuery_showRedeemed = NULL;
    }
    if(keyQuery_replaced){
        free(keyQuery_replaced);
        keyQuery_replaced = NULL;
    }
    if(valueQuery_replaced){
        free(valueQuery_replaced);
        valueQuery_replaced = NULL;
    }
    if(keyPairQuery_replaced){
        keyValuePair_free(keyPairQuery_replaced);
        keyPairQuery_replaced = NULL;
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
    if(keyQuery_specialOfferType){
        free(keyQuery_specialOfferType);
        keyQuery_specialOfferType = NULL;
    }
    if(keyPairQuery_specialOfferType){
        keyValuePair_free(keyPairQuery_specialOfferType);
        keyPairQuery_specialOfferType = NULL;
    }
    if(keyQuery_offerVisibility){
        free(keyQuery_offerVisibility);
        keyQuery_offerVisibility = NULL;
    }
    if(keyPairQuery_offerVisibility){
        keyValuePair_free(keyPairQuery_offerVisibility);
        keyPairQuery_offerVisibility = NULL;
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
    if(keyQuery_filterIds){
        free(keyQuery_filterIds);
        keyQuery_filterIds = NULL;
    }
    if(valueQuery_filterIds){
        free(valueQuery_filterIds);
        valueQuery_filterIds = NULL;
    }
    if(keyPairQuery_filterIds){
        keyValuePair_free(keyPairQuery_filterIds);
        keyPairQuery_filterIds = NULL;
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
    if(keyQuery_barcodeAssetId){
        free(keyQuery_barcodeAssetId);
        keyQuery_barcodeAssetId = NULL;
    }
    if(keyPairQuery_barcodeAssetId){
        keyValuePair_free(keyPairQuery_barcodeAssetId);
        keyPairQuery_barcodeAssetId = NULL;
    }
    if(keyQuery_imageAssetId){
        free(keyQuery_imageAssetId);
        keyQuery_imageAssetId = NULL;
    }
    if(keyPairQuery_imageAssetId){
        keyValuePair_free(keyPairQuery_imageAssetId);
        keyPairQuery_imageAssetId = NULL;
    }
    if(keyQuery_imageAssetId1){
        free(keyQuery_imageAssetId1);
        keyQuery_imageAssetId1 = NULL;
    }
    if(keyPairQuery_imageAssetId1){
        keyValuePair_free(keyPairQuery_imageAssetId1);
        keyPairQuery_imageAssetId1 = NULL;
    }
    if(keyQuery_imageAssetId2){
        free(keyQuery_imageAssetId2);
        keyQuery_imageAssetId2 = NULL;
    }
    if(keyPairQuery_imageAssetId2){
        keyValuePair_free(keyPairQuery_imageAssetId2);
        keyPairQuery_imageAssetId2 = NULL;
    }
    if(keyQuery_imageAssetId3){
        free(keyQuery_imageAssetId3);
        keyQuery_imageAssetId3 = NULL;
    }
    if(keyPairQuery_imageAssetId3){
        keyValuePair_free(keyPairQuery_imageAssetId3);
        keyPairQuery_imageAssetId3 = NULL;
    }
    if(keyQuery_imageAssetId4){
        free(keyQuery_imageAssetId4);
        keyQuery_imageAssetId4 = NULL;
    }
    if(keyPairQuery_imageAssetId4){
        keyValuePair_free(keyPairQuery_imageAssetId4);
        keyPairQuery_imageAssetId4 = NULL;
    }
    if(keyQuery_imageAssetId5){
        free(keyQuery_imageAssetId5);
        keyQuery_imageAssetId5 = NULL;
    }
    if(keyPairQuery_imageAssetId5){
        keyValuePair_free(keyPairQuery_imageAssetId5);
        keyPairQuery_imageAssetId5 = NULL;
    }
    if(keyQuery_publisher){
        free(keyQuery_publisher);
        keyQuery_publisher = NULL;
    }
    if(valueQuery_publisher){
        free(valueQuery_publisher);
        valueQuery_publisher = NULL;
    }
    if(keyPairQuery_publisher){
        keyValuePair_free(keyPairQuery_publisher);
        keyPairQuery_publisher = NULL;
    }
    if(keyQuery_redeemableStart){
        free(keyQuery_redeemableStart);
        keyQuery_redeemableStart = NULL;
    }
    if(keyPairQuery_redeemableStart){
        keyValuePair_free(keyPairQuery_redeemableStart);
        keyPairQuery_redeemableStart = NULL;
    }
    if(keyQuery_redeemableEnd){
        free(keyQuery_redeemableEnd);
        keyQuery_redeemableEnd = NULL;
    }
    if(keyPairQuery_redeemableEnd){
        keyValuePair_free(keyPairQuery_redeemableEnd);
        keyPairQuery_redeemableEnd = NULL;
    }
    if(keyQuery_conditionType){
        free(keyQuery_conditionType);
        keyQuery_conditionType = NULL;
    }
    if(keyPairQuery_conditionType){
        keyValuePair_free(keyPairQuery_conditionType);
        keyPairQuery_conditionType = NULL;
    }
    if(keyQuery_isbn){
        free(keyQuery_isbn);
        keyQuery_isbn = NULL;
    }
    if(valueQuery_isbn){
        free(valueQuery_isbn);
        valueQuery_isbn = NULL;
    }
    if(keyPairQuery_isbn){
        keyValuePair_free(keyPairQuery_isbn);
        keyPairQuery_isbn = NULL;
    }
    if(keyQuery_asin){
        free(keyQuery_asin);
        keyQuery_asin = NULL;
    }
    if(valueQuery_asin){
        free(valueQuery_asin);
        valueQuery_asin = NULL;
    }
    if(keyPairQuery_asin){
        keyValuePair_free(keyPairQuery_asin);
        keyPairQuery_asin = NULL;
    }
    if(keyQuery_catalogNumbers){
        free(keyQuery_catalogNumbers);
        keyQuery_catalogNumbers = NULL;
    }
    if(valueQuery_catalogNumbers){
        free(valueQuery_catalogNumbers);
        valueQuery_catalogNumbers = NULL;
    }
    if(keyPairQuery_catalogNumbers){
        keyValuePair_free(keyPairQuery_catalogNumbers);
        keyPairQuery_catalogNumbers = NULL;
    }
    if(keyQuery_availabilityDate){
        free(keyQuery_availabilityDate);
        keyQuery_availabilityDate = NULL;
    }
    if(keyPairQuery_availabilityDate){
        keyValuePair_free(keyPairQuery_availabilityDate);
        keyPairQuery_availabilityDate = NULL;
    }
    if(keyQuery_parentalRating){
        free(keyQuery_parentalRating);
        keyQuery_parentalRating = NULL;
    }
    if(valueQuery_parentalRating){
        free(valueQuery_parentalRating);
        valueQuery_parentalRating = NULL;
    }
    if(keyPairQuery_parentalRating){
        keyValuePair_free(keyPairQuery_parentalRating);
        keyPairQuery_parentalRating = NULL;
    }
    if(keyQuery_mediaType){
        free(keyQuery_mediaType);
        keyQuery_mediaType = NULL;
    }
    if(keyPairQuery_mediaType){
        keyValuePair_free(keyPairQuery_mediaType);
        keyPairQuery_mediaType = NULL;
    }
    if(keyQuery_duration){
        free(keyQuery_duration);
        keyQuery_duration = NULL;
    }
    if(valueQuery_duration){
        free(valueQuery_duration);
        valueQuery_duration = NULL;
    }
    if(keyPairQuery_duration){
        keyValuePair_free(keyPairQuery_duration);
        keyPairQuery_duration = NULL;
    }
    if(keyQuery_author){
        free(keyQuery_author);
        keyQuery_author = NULL;
    }
    if(valueQuery_author){
        free(valueQuery_author);
        valueQuery_author = NULL;
    }
    if(keyPairQuery_author){
        keyValuePair_free(keyPairQuery_author);
        keyPairQuery_author = NULL;
    }
    if(keyQuery_releaseDate){
        free(keyQuery_releaseDate);
        keyQuery_releaseDate = NULL;
    }
    if(keyPairQuery_releaseDate){
        keyValuePair_free(keyPairQuery_releaseDate);
        keyPairQuery_releaseDate = NULL;
    }
    if(keyQuery_collectionIds){
        free(keyQuery_collectionIds);
        keyQuery_collectionIds = NULL;
    }
    if(valueQuery_collectionIds){
        free(valueQuery_collectionIds);
        valueQuery_collectionIds = NULL;
    }
    if(keyPairQuery_collectionIds){
        keyValuePair_free(keyPairQuery_collectionIds);
        keyPairQuery_collectionIds = NULL;
    }
    if(keyQuery_availability){
        free(keyQuery_availability);
        keyQuery_availability = NULL;
    }
    if(valueQuery_availability){
        free(valueQuery_availability);
        valueQuery_availability = NULL;
    }
    if(keyPairQuery_availability){
        keyValuePair_free(keyPairQuery_availability);
        keyPairQuery_availability = NULL;
    }
    if(keyQuery_availabilitySummary){
        free(keyQuery_availabilitySummary);
        keyQuery_availabilitySummary = NULL;
    }
    if(valueQuery_availabilitySummary){
        free(valueQuery_availabilitySummary);
        valueQuery_availabilitySummary = NULL;
    }
    if(keyPairQuery_availabilitySummary){
        keyValuePair_free(keyPairQuery_availabilitySummary);
        keyPairQuery_availabilitySummary = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

