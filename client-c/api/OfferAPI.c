#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "OfferAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21

// Functions for enum BARCODETYPE for OfferAPI_createOffer

static char* createOffer_BARCODETYPE_ToString(sirqul_iot_platform_createOffer_barcodeType_e BARCODETYPE){
    char *BARCODETYPEArray[] =  { "NULL", "NONE", "UPC", "CODE_128", "QR", "CUSTOM_MEDIA" };
    return BARCODETYPEArray[BARCODETYPE];
}

static sirqul_iot_platform_createOffer_barcodeType_e createOffer_BARCODETYPE_FromString(char* BARCODETYPE){
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
// Function createOffer_BARCODETYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *createOffer_BARCODETYPE_convertToJSON(sirqul_iot_platform_createOffer_barcodeType_e BARCODETYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "barcodeType", createOffer_BARCODETYPE_ToString(BARCODETYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function createOffer_BARCODETYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_createOffer_barcodeType_e createOffer_BARCODETYPE_parseFromJSON(cJSON* BARCODETYPEJSON) {
    sirqul_iot_platform_createOffer_barcodeType_e BARCODETYPEVariable = 0;
    cJSON *BARCODETYPEVar = cJSON_GetObjectItemCaseSensitive(BARCODETYPEJSON, "barcodeType");
    if(!cJSON_IsString(BARCODETYPEVar) || (BARCODETYPEVar->valuestring == NULL))
    {
        goto end;
    }
    BARCODETYPEVariable = createOffer_BARCODETYPE_FromString(BARCODETYPEVar->valuestring);
    return BARCODETYPEVariable;
end:
    return 0;
}
*/

// Functions for enum OFFERTYPE for OfferAPI_createOffer

static char* createOffer_OFFERTYPE_ToString(sirqul_iot_platform_createOffer_offerType_e OFFERTYPE){
    char *OFFERTYPEArray[] =  { "NULL", "VOUCHER", "COUPON", "PRODUCT", "MEDIA", "EVENT", "DEVICE" };
    return OFFERTYPEArray[OFFERTYPE];
}

static sirqul_iot_platform_createOffer_offerType_e createOffer_OFFERTYPE_FromString(char* OFFERTYPE){
    int stringToReturn = 0;
    char *OFFERTYPEArray[] =  { "NULL", "VOUCHER", "COUPON", "PRODUCT", "MEDIA", "EVENT", "DEVICE" };
    size_t sizeofArray = sizeof(OFFERTYPEArray) / sizeof(OFFERTYPEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(OFFERTYPE, OFFERTYPEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function createOffer_OFFERTYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *createOffer_OFFERTYPE_convertToJSON(sirqul_iot_platform_createOffer_offerType_e OFFERTYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "offerType", createOffer_OFFERTYPE_ToString(OFFERTYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function createOffer_OFFERTYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_createOffer_offerType_e createOffer_OFFERTYPE_parseFromJSON(cJSON* OFFERTYPEJSON) {
    sirqul_iot_platform_createOffer_offerType_e OFFERTYPEVariable = 0;
    cJSON *OFFERTYPEVar = cJSON_GetObjectItemCaseSensitive(OFFERTYPEJSON, "offerType");
    if(!cJSON_IsString(OFFERTYPEVar) || (OFFERTYPEVar->valuestring == NULL))
    {
        goto end;
    }
    OFFERTYPEVariable = createOffer_OFFERTYPE_FromString(OFFERTYPEVar->valuestring);
    return OFFERTYPEVariable;
end:
    return 0;
}
*/

// Functions for enum SPECIALOFFERTYPE for OfferAPI_createOffer

static char* createOffer_SPECIALOFFERTYPE_ToString(sirqul_iot_platform_createOffer_specialOfferType_e SPECIALOFFERTYPE){
    char *SPECIALOFFERTYPEArray[] =  { "NULL", "ALL", "RESERVABLE", "REGULAR_OFFER", "ACT_NOW", "GET_THERE_NOW", "SQOOT", "TICKETS", "YIPIT" };
    return SPECIALOFFERTYPEArray[SPECIALOFFERTYPE];
}

static sirqul_iot_platform_createOffer_specialOfferType_e createOffer_SPECIALOFFERTYPE_FromString(char* SPECIALOFFERTYPE){
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
// Function createOffer_SPECIALOFFERTYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *createOffer_SPECIALOFFERTYPE_convertToJSON(sirqul_iot_platform_createOffer_specialOfferType_e SPECIALOFFERTYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "specialOfferType", createOffer_SPECIALOFFERTYPE_ToString(SPECIALOFFERTYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function createOffer_SPECIALOFFERTYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_createOffer_specialOfferType_e createOffer_SPECIALOFFERTYPE_parseFromJSON(cJSON* SPECIALOFFERTYPEJSON) {
    sirqul_iot_platform_createOffer_specialOfferType_e SPECIALOFFERTYPEVariable = 0;
    cJSON *SPECIALOFFERTYPEVar = cJSON_GetObjectItemCaseSensitive(SPECIALOFFERTYPEJSON, "specialOfferType");
    if(!cJSON_IsString(SPECIALOFFERTYPEVar) || (SPECIALOFFERTYPEVar->valuestring == NULL))
    {
        goto end;
    }
    SPECIALOFFERTYPEVariable = createOffer_SPECIALOFFERTYPE_FromString(SPECIALOFFERTYPEVar->valuestring);
    return SPECIALOFFERTYPEVariable;
end:
    return 0;
}
*/

// Functions for enum OFFERVISIBILITY for OfferAPI_createOffer

static char* createOffer_OFFERVISIBILITY_ToString(sirqul_iot_platform_createOffer_offerVisibility_e OFFERVISIBILITY){
    char *OFFERVISIBILITYArray[] =  { "NULL", "PUBLIC", "LISTABLE", "REWARDABLE", "TRIGGERABLE", "PRIVATE" };
    return OFFERVISIBILITYArray[OFFERVISIBILITY];
}

static sirqul_iot_platform_createOffer_offerVisibility_e createOffer_OFFERVISIBILITY_FromString(char* OFFERVISIBILITY){
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
// Function createOffer_OFFERVISIBILITY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *createOffer_OFFERVISIBILITY_convertToJSON(sirqul_iot_platform_createOffer_offerVisibility_e OFFERVISIBILITY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "offerVisibility", createOffer_OFFERVISIBILITY_ToString(OFFERVISIBILITY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function createOffer_OFFERVISIBILITY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_createOffer_offerVisibility_e createOffer_OFFERVISIBILITY_parseFromJSON(cJSON* OFFERVISIBILITYJSON) {
    sirqul_iot_platform_createOffer_offerVisibility_e OFFERVISIBILITYVariable = 0;
    cJSON *OFFERVISIBILITYVar = cJSON_GetObjectItemCaseSensitive(OFFERVISIBILITYJSON, "offerVisibility");
    if(!cJSON_IsString(OFFERVISIBILITYVar) || (OFFERVISIBILITYVar->valuestring == NULL))
    {
        goto end;
    }
    OFFERVISIBILITYVariable = createOffer_OFFERVISIBILITY_FromString(OFFERVISIBILITYVar->valuestring);
    return OFFERVISIBILITYVariable;
end:
    return 0;
}
*/

// Functions for enum PRODUCTTYPE for OfferAPI_createOffer

static char* createOffer_PRODUCTTYPE_ToString(sirqul_iot_platform_createOffer_productType_e PRODUCTTYPE){
    char *PRODUCTTYPEArray[] =  { "NULL", "APPAREL", "APPLIANCES", "APPS", "ARTS_CRAFTS", "AUTOMOTIVE", "BABY", "BEAUTY", "BOOKS", "CLASSICAL", "COLLECTIBLES", "DVD", "ELECTRONICS", "GIFT_CARDS", "GOURMET_FOOD", "GROCERY", "HEALTH_PERSONAL_CARE", "HOME_GARDEN", "INDUSTRIAL", "JEWELRY", "KITCHEN", "LAWN_GARDEN", "MAGAZINES", "MISCELLANEOUS", "MUSICAL_INSTRUMENTS", "OFFICE_PRODUCTS", "OTHER", "OUTDOOR_LIVING", "PC_HARDWARE", "PET_SUPPLIES", "SHOES", "SOFTWARE", "SPORTING_GOODS", "TOOLS", "TOYS", "VIDEO_GAMES", "WATCHES", "WIRELESS", "WIRELESS_ACCESSORIES" };
    return PRODUCTTYPEArray[PRODUCTTYPE];
}

static sirqul_iot_platform_createOffer_productType_e createOffer_PRODUCTTYPE_FromString(char* PRODUCTTYPE){
    int stringToReturn = 0;
    char *PRODUCTTYPEArray[] =  { "NULL", "APPAREL", "APPLIANCES", "APPS", "ARTS_CRAFTS", "AUTOMOTIVE", "BABY", "BEAUTY", "BOOKS", "CLASSICAL", "COLLECTIBLES", "DVD", "ELECTRONICS", "GIFT_CARDS", "GOURMET_FOOD", "GROCERY", "HEALTH_PERSONAL_CARE", "HOME_GARDEN", "INDUSTRIAL", "JEWELRY", "KITCHEN", "LAWN_GARDEN", "MAGAZINES", "MISCELLANEOUS", "MUSICAL_INSTRUMENTS", "OFFICE_PRODUCTS", "OTHER", "OUTDOOR_LIVING", "PC_HARDWARE", "PET_SUPPLIES", "SHOES", "SOFTWARE", "SPORTING_GOODS", "TOOLS", "TOYS", "VIDEO_GAMES", "WATCHES", "WIRELESS", "WIRELESS_ACCESSORIES" };
    size_t sizeofArray = sizeof(PRODUCTTYPEArray) / sizeof(PRODUCTTYPEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(PRODUCTTYPE, PRODUCTTYPEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function createOffer_PRODUCTTYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *createOffer_PRODUCTTYPE_convertToJSON(sirqul_iot_platform_createOffer_productType_e PRODUCTTYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "productType", createOffer_PRODUCTTYPE_ToString(PRODUCTTYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function createOffer_PRODUCTTYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_createOffer_productType_e createOffer_PRODUCTTYPE_parseFromJSON(cJSON* PRODUCTTYPEJSON) {
    sirqul_iot_platform_createOffer_productType_e PRODUCTTYPEVariable = 0;
    cJSON *PRODUCTTYPEVar = cJSON_GetObjectItemCaseSensitive(PRODUCTTYPEJSON, "productType");
    if(!cJSON_IsString(PRODUCTTYPEVar) || (PRODUCTTYPEVar->valuestring == NULL))
    {
        goto end;
    }
    PRODUCTTYPEVariable = createOffer_PRODUCTTYPE_FromString(PRODUCTTYPEVar->valuestring);
    return PRODUCTTYPEVariable;
end:
    return 0;
}
*/

// Functions for enum CONDITIONTYPE for OfferAPI_createOffer

static char* createOffer_CONDITIONTYPE_ToString(sirqul_iot_platform_createOffer_conditionType_e CONDITIONTYPE){
    char *CONDITIONTYPEArray[] =  { "NULL", "NEW", "USED", "REFURBISHED", "OTHER" };
    return CONDITIONTYPEArray[CONDITIONTYPE];
}

static sirqul_iot_platform_createOffer_conditionType_e createOffer_CONDITIONTYPE_FromString(char* CONDITIONTYPE){
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
// Function createOffer_CONDITIONTYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *createOffer_CONDITIONTYPE_convertToJSON(sirqul_iot_platform_createOffer_conditionType_e CONDITIONTYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "conditionType", createOffer_CONDITIONTYPE_ToString(CONDITIONTYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function createOffer_CONDITIONTYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_createOffer_conditionType_e createOffer_CONDITIONTYPE_parseFromJSON(cJSON* CONDITIONTYPEJSON) {
    sirqul_iot_platform_createOffer_conditionType_e CONDITIONTYPEVariable = 0;
    cJSON *CONDITIONTYPEVar = cJSON_GetObjectItemCaseSensitive(CONDITIONTYPEJSON, "conditionType");
    if(!cJSON_IsString(CONDITIONTYPEVar) || (CONDITIONTYPEVar->valuestring == NULL))
    {
        goto end;
    }
    CONDITIONTYPEVariable = createOffer_CONDITIONTYPE_FromString(CONDITIONTYPEVar->valuestring);
    return CONDITIONTYPEVariable;
end:
    return 0;
}
*/

// Functions for enum UNIT for OfferAPI_createOffer

static char* createOffer_UNIT_ToString(sirqul_iot_platform_createOffer_unit_e UNIT){
    char *UNITArray[] =  { "NULL", "MILIMETER", "CENTIMETER", "METER", "INCH", "FOOT", "YARD" };
    return UNITArray[UNIT];
}

static sirqul_iot_platform_createOffer_unit_e createOffer_UNIT_FromString(char* UNIT){
    int stringToReturn = 0;
    char *UNITArray[] =  { "NULL", "MILIMETER", "CENTIMETER", "METER", "INCH", "FOOT", "YARD" };
    size_t sizeofArray = sizeof(UNITArray) / sizeof(UNITArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(UNIT, UNITArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function createOffer_UNIT_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *createOffer_UNIT_convertToJSON(sirqul_iot_platform_createOffer_unit_e UNIT) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "unit", createOffer_UNIT_ToString(UNIT)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function createOffer_UNIT_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_createOffer_unit_e createOffer_UNIT_parseFromJSON(cJSON* UNITJSON) {
    sirqul_iot_platform_createOffer_unit_e UNITVariable = 0;
    cJSON *UNITVar = cJSON_GetObjectItemCaseSensitive(UNITJSON, "unit");
    if(!cJSON_IsString(UNITVar) || (UNITVar->valuestring == NULL))
    {
        goto end;
    }
    UNITVariable = createOffer_UNIT_FromString(UNITVar->valuestring);
    return UNITVariable;
end:
    return 0;
}
*/

// Functions for enum MEDIATYPE for OfferAPI_createOffer

static char* createOffer_MEDIATYPE_ToString(sirqul_iot_platform_createOffer_mediaType_e MEDIATYPE){
    char *MEDIATYPEArray[] =  { "NULL", "APK", "APPLICATION", "IMAGE", "AUDIO", "VIDEO", "MULTIPART", "BAR_CODE", "TEXT", "OTHER" };
    return MEDIATYPEArray[MEDIATYPE];
}

static sirqul_iot_platform_createOffer_mediaType_e createOffer_MEDIATYPE_FromString(char* MEDIATYPE){
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
// Function createOffer_MEDIATYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *createOffer_MEDIATYPE_convertToJSON(sirqul_iot_platform_createOffer_mediaType_e MEDIATYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "mediaType", createOffer_MEDIATYPE_ToString(MEDIATYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function createOffer_MEDIATYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_createOffer_mediaType_e createOffer_MEDIATYPE_parseFromJSON(cJSON* MEDIATYPEJSON) {
    sirqul_iot_platform_createOffer_mediaType_e MEDIATYPEVariable = 0;
    cJSON *MEDIATYPEVar = cJSON_GetObjectItemCaseSensitive(MEDIATYPEJSON, "mediaType");
    if(!cJSON_IsString(MEDIATYPEVar) || (MEDIATYPEVar->valuestring == NULL))
    {
        goto end;
    }
    MEDIATYPEVariable = createOffer_MEDIATYPE_FromString(MEDIATYPEVar->valuestring);
    return MEDIATYPEVariable;
end:
    return 0;
}
*/

// Functions for enum DISTANCEUNIT for OfferAPI_getOfferListCounts

static char* getOfferListCounts_DISTANCEUNIT_ToString(sirqul_iot_platform_getOfferListCounts_distanceUnit_e DISTANCEUNIT){
    char *DISTANCEUNITArray[] =  { "NULL", "MILES", "KILOMETERS" };
    return DISTANCEUNITArray[DISTANCEUNIT];
}

static sirqul_iot_platform_getOfferListCounts_distanceUnit_e getOfferListCounts_DISTANCEUNIT_FromString(char* DISTANCEUNIT){
    int stringToReturn = 0;
    char *DISTANCEUNITArray[] =  { "NULL", "MILES", "KILOMETERS" };
    size_t sizeofArray = sizeof(DISTANCEUNITArray) / sizeof(DISTANCEUNITArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(DISTANCEUNIT, DISTANCEUNITArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function getOfferListCounts_DISTANCEUNIT_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *getOfferListCounts_DISTANCEUNIT_convertToJSON(sirqul_iot_platform_getOfferListCounts_distanceUnit_e DISTANCEUNIT) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "distanceUnit", getOfferListCounts_DISTANCEUNIT_ToString(DISTANCEUNIT)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function getOfferListCounts_DISTANCEUNIT_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_getOfferListCounts_distanceUnit_e getOfferListCounts_DISTANCEUNIT_parseFromJSON(cJSON* DISTANCEUNITJSON) {
    sirqul_iot_platform_getOfferListCounts_distanceUnit_e DISTANCEUNITVariable = 0;
    cJSON *DISTANCEUNITVar = cJSON_GetObjectItemCaseSensitive(DISTANCEUNITJSON, "distanceUnit");
    if(!cJSON_IsString(DISTANCEUNITVar) || (DISTANCEUNITVar->valuestring == NULL))
    {
        goto end;
    }
    DISTANCEUNITVariable = getOfferListCounts_DISTANCEUNIT_FromString(DISTANCEUNITVar->valuestring);
    return DISTANCEUNITVariable;
end:
    return 0;
}
*/

// Functions for enum SORTFIELD for OfferAPI_getOfferLocationsForRetailers

static char* getOfferLocationsForRetailers_SORTFIELD_ToString(sirqul_iot_platform_getOfferLocationsForRetailers_sortField_e SORTFIELD){
    char *SORTFIELDArray[] =  { "NULL", "ID", "CREATED", "UPDATED", "DELETED", "SEARCH_TAGS", "ACTIVE", "OFFER_ID", "ACTIVATED", "EXPIRES", "TITLE", "SUBTITLE", "DETAILS", "OFFER_TYPE", "SPECIAL_OFFER_TYPE", "OFFER_VISIBILITY", "RETAILER_ID", "RETAILER_LOCATION_ID", "BILLABLE_ENTITY_ID", "BILLABLE_ENTITY_NAME", "RESPONSIBLE_DISPLAY" };
    return SORTFIELDArray[SORTFIELD];
}

static sirqul_iot_platform_getOfferLocationsForRetailers_sortField_e getOfferLocationsForRetailers_SORTFIELD_FromString(char* SORTFIELD){
    int stringToReturn = 0;
    char *SORTFIELDArray[] =  { "NULL", "ID", "CREATED", "UPDATED", "DELETED", "SEARCH_TAGS", "ACTIVE", "OFFER_ID", "ACTIVATED", "EXPIRES", "TITLE", "SUBTITLE", "DETAILS", "OFFER_TYPE", "SPECIAL_OFFER_TYPE", "OFFER_VISIBILITY", "RETAILER_ID", "RETAILER_LOCATION_ID", "BILLABLE_ENTITY_ID", "BILLABLE_ENTITY_NAME", "RESPONSIBLE_DISPLAY" };
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
// Function getOfferLocationsForRetailers_SORTFIELD_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *getOfferLocationsForRetailers_SORTFIELD_convertToJSON(sirqul_iot_platform_getOfferLocationsForRetailers_sortField_e SORTFIELD) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "sortField", getOfferLocationsForRetailers_SORTFIELD_ToString(SORTFIELD)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function getOfferLocationsForRetailers_SORTFIELD_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_getOfferLocationsForRetailers_sortField_e getOfferLocationsForRetailers_SORTFIELD_parseFromJSON(cJSON* SORTFIELDJSON) {
    sirqul_iot_platform_getOfferLocationsForRetailers_sortField_e SORTFIELDVariable = 0;
    cJSON *SORTFIELDVar = cJSON_GetObjectItemCaseSensitive(SORTFIELDJSON, "sortField");
    if(!cJSON_IsString(SORTFIELDVar) || (SORTFIELDVar->valuestring == NULL))
    {
        goto end;
    }
    SORTFIELDVariable = getOfferLocationsForRetailers_SORTFIELD_FromString(SORTFIELDVar->valuestring);
    return SORTFIELDVariable;
end:
    return 0;
}
*/

// Functions for enum OFFERTYPE for OfferAPI_getOfferLocationsForRetailers

static char* getOfferLocationsForRetailers_OFFERTYPE_ToString(sirqul_iot_platform_getOfferLocationsForRetailers_offerType_e OFFERTYPE){
    char *OFFERTYPEArray[] =  { "NULL", "VOUCHER", "COUPON", "PRODUCT", "MEDIA", "EVENT", "DEVICE" };
    return OFFERTYPEArray[OFFERTYPE];
}

static sirqul_iot_platform_getOfferLocationsForRetailers_offerType_e getOfferLocationsForRetailers_OFFERTYPE_FromString(char* OFFERTYPE){
    int stringToReturn = 0;
    char *OFFERTYPEArray[] =  { "NULL", "VOUCHER", "COUPON", "PRODUCT", "MEDIA", "EVENT", "DEVICE" };
    size_t sizeofArray = sizeof(OFFERTYPEArray) / sizeof(OFFERTYPEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(OFFERTYPE, OFFERTYPEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function getOfferLocationsForRetailers_OFFERTYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *getOfferLocationsForRetailers_OFFERTYPE_convertToJSON(sirqul_iot_platform_getOfferLocationsForRetailers_offerType_e OFFERTYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "offerType", getOfferLocationsForRetailers_OFFERTYPE_ToString(OFFERTYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function getOfferLocationsForRetailers_OFFERTYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_getOfferLocationsForRetailers_offerType_e getOfferLocationsForRetailers_OFFERTYPE_parseFromJSON(cJSON* OFFERTYPEJSON) {
    sirqul_iot_platform_getOfferLocationsForRetailers_offerType_e OFFERTYPEVariable = 0;
    cJSON *OFFERTYPEVar = cJSON_GetObjectItemCaseSensitive(OFFERTYPEJSON, "offerType");
    if(!cJSON_IsString(OFFERTYPEVar) || (OFFERTYPEVar->valuestring == NULL))
    {
        goto end;
    }
    OFFERTYPEVariable = getOfferLocationsForRetailers_OFFERTYPE_FromString(OFFERTYPEVar->valuestring);
    return OFFERTYPEVariable;
end:
    return 0;
}
*/

// Functions for enum SPECIALOFFERTYPE for OfferAPI_getOfferLocationsForRetailers

static char* getOfferLocationsForRetailers_SPECIALOFFERTYPE_ToString(sirqul_iot_platform_getOfferLocationsForRetailers_specialOfferType_e SPECIALOFFERTYPE){
    char *SPECIALOFFERTYPEArray[] =  { "NULL", "ALL", "RESERVABLE", "REGULAR_OFFER", "ACT_NOW", "GET_THERE_NOW", "SQOOT", "TICKETS", "YIPIT" };
    return SPECIALOFFERTYPEArray[SPECIALOFFERTYPE];
}

static sirqul_iot_platform_getOfferLocationsForRetailers_specialOfferType_e getOfferLocationsForRetailers_SPECIALOFFERTYPE_FromString(char* SPECIALOFFERTYPE){
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
// Function getOfferLocationsForRetailers_SPECIALOFFERTYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *getOfferLocationsForRetailers_SPECIALOFFERTYPE_convertToJSON(sirqul_iot_platform_getOfferLocationsForRetailers_specialOfferType_e SPECIALOFFERTYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "specialOfferType", getOfferLocationsForRetailers_SPECIALOFFERTYPE_ToString(SPECIALOFFERTYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function getOfferLocationsForRetailers_SPECIALOFFERTYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_getOfferLocationsForRetailers_specialOfferType_e getOfferLocationsForRetailers_SPECIALOFFERTYPE_parseFromJSON(cJSON* SPECIALOFFERTYPEJSON) {
    sirqul_iot_platform_getOfferLocationsForRetailers_specialOfferType_e SPECIALOFFERTYPEVariable = 0;
    cJSON *SPECIALOFFERTYPEVar = cJSON_GetObjectItemCaseSensitive(SPECIALOFFERTYPEJSON, "specialOfferType");
    if(!cJSON_IsString(SPECIALOFFERTYPEVar) || (SPECIALOFFERTYPEVar->valuestring == NULL))
    {
        goto end;
    }
    SPECIALOFFERTYPEVariable = getOfferLocationsForRetailers_SPECIALOFFERTYPE_FromString(SPECIALOFFERTYPEVar->valuestring);
    return SPECIALOFFERTYPEVariable;
end:
    return 0;
}
*/

// Functions for enum DEVICESTATUS for OfferAPI_getOfferLocationsForRetailers

static char* getOfferLocationsForRetailers_DEVICESTATUS_ToString(sirqul_iot_platform_getOfferLocationsForRetailers_deviceStatus_e DEVICESTATUS){
    char *DEVICESTATUSArray[] =  { "NULL", "RUNNING", "WARNING", "DOWN" };
    return DEVICESTATUSArray[DEVICESTATUS];
}

static sirqul_iot_platform_getOfferLocationsForRetailers_deviceStatus_e getOfferLocationsForRetailers_DEVICESTATUS_FromString(char* DEVICESTATUS){
    int stringToReturn = 0;
    char *DEVICESTATUSArray[] =  { "NULL", "RUNNING", "WARNING", "DOWN" };
    size_t sizeofArray = sizeof(DEVICESTATUSArray) / sizeof(DEVICESTATUSArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(DEVICESTATUS, DEVICESTATUSArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function getOfferLocationsForRetailers_DEVICESTATUS_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *getOfferLocationsForRetailers_DEVICESTATUS_convertToJSON(sirqul_iot_platform_getOfferLocationsForRetailers_deviceStatus_e DEVICESTATUS) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "deviceStatus", getOfferLocationsForRetailers_DEVICESTATUS_ToString(DEVICESTATUS)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function getOfferLocationsForRetailers_DEVICESTATUS_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_getOfferLocationsForRetailers_deviceStatus_e getOfferLocationsForRetailers_DEVICESTATUS_parseFromJSON(cJSON* DEVICESTATUSJSON) {
    sirqul_iot_platform_getOfferLocationsForRetailers_deviceStatus_e DEVICESTATUSVariable = 0;
    cJSON *DEVICESTATUSVar = cJSON_GetObjectItemCaseSensitive(DEVICESTATUSJSON, "deviceStatus");
    if(!cJSON_IsString(DEVICESTATUSVar) || (DEVICESTATUSVar->valuestring == NULL))
    {
        goto end;
    }
    DEVICESTATUSVariable = getOfferLocationsForRetailers_DEVICESTATUS_FromString(DEVICESTATUSVar->valuestring);
    return DEVICESTATUSVariable;
end:
    return 0;
}
*/

// Functions for enum OFFERVISIBILITY for OfferAPI_getOffersForRetailers

static char* getOffersForRetailers_OFFERVISIBILITY_ToString(sirqul_iot_platform_getOffersForRetailers_offerVisibility_e OFFERVISIBILITY){
    char *OFFERVISIBILITYArray[] =  { "NULL", "PUBLIC", "LISTABLE", "REWARDABLE", "TRIGGERABLE", "PRIVATE" };
    return OFFERVISIBILITYArray[OFFERVISIBILITY];
}

static sirqul_iot_platform_getOffersForRetailers_offerVisibility_e getOffersForRetailers_OFFERVISIBILITY_FromString(char* OFFERVISIBILITY){
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
// Function getOffersForRetailers_OFFERVISIBILITY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *getOffersForRetailers_OFFERVISIBILITY_convertToJSON(sirqul_iot_platform_getOffersForRetailers_offerVisibility_e OFFERVISIBILITY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "offerVisibility", getOffersForRetailers_OFFERVISIBILITY_ToString(OFFERVISIBILITY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function getOffersForRetailers_OFFERVISIBILITY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_getOffersForRetailers_offerVisibility_e getOffersForRetailers_OFFERVISIBILITY_parseFromJSON(cJSON* OFFERVISIBILITYJSON) {
    sirqul_iot_platform_getOffersForRetailers_offerVisibility_e OFFERVISIBILITYVariable = 0;
    cJSON *OFFERVISIBILITYVar = cJSON_GetObjectItemCaseSensitive(OFFERVISIBILITYJSON, "offerVisibility");
    if(!cJSON_IsString(OFFERVISIBILITYVar) || (OFFERVISIBILITYVar->valuestring == NULL))
    {
        goto end;
    }
    OFFERVISIBILITYVariable = getOffersForRetailers_OFFERVISIBILITY_FromString(OFFERVISIBILITYVar->valuestring);
    return OFFERVISIBILITYVariable;
end:
    return 0;
}
*/

// Functions for enum SORTFIELD for OfferAPI_getOffersForRetailers

static char* getOffersForRetailers_SORTFIELD_ToString(sirqul_iot_platform_getOffersForRetailers_sortField_e SORTFIELD){
    char *SORTFIELDArray[] =  { "NULL", "ID", "CREATED", "UPDATED", "DELETED", "SEARCH_TAGS", "ACTIVE", "ACTIVATED", "EXPIRES", "REDEEMABLE_START", "REDEEMABLE_END", "TITLE", "SUBTITLE", "DETAILS", "OFFER_TYPE", "SPECIAL_OFFER_TYPE", "OFFER_VISIBILITY", "ESTIMATED_VALUE", "VOUCHER_PRICE", "VOUCHER_DISCOUNT_PRICE", "FULL_PRICE", "DICOUNT_PRICE", "TICKETS_REWARD", "AVAILABILITY_DATE", "RELEASE_DATE", "RETAILER_ID", "RETAILER_NAME", "RETAILER_LOCATION_ID", "RETAILER_LOCATION_NAME", "BILLABLE_ENTITY_ID", "BILLABLE_ENTITY_NAME", "RESPONSIBLE_DISPLAY" };
    return SORTFIELDArray[SORTFIELD];
}

static sirqul_iot_platform_getOffersForRetailers_sortField_e getOffersForRetailers_SORTFIELD_FromString(char* SORTFIELD){
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
// Function getOffersForRetailers_SORTFIELD_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *getOffersForRetailers_SORTFIELD_convertToJSON(sirqul_iot_platform_getOffersForRetailers_sortField_e SORTFIELD) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "sortField", getOffersForRetailers_SORTFIELD_ToString(SORTFIELD)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function getOffersForRetailers_SORTFIELD_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_getOffersForRetailers_sortField_e getOffersForRetailers_SORTFIELD_parseFromJSON(cJSON* SORTFIELDJSON) {
    sirqul_iot_platform_getOffersForRetailers_sortField_e SORTFIELDVariable = 0;
    cJSON *SORTFIELDVar = cJSON_GetObjectItemCaseSensitive(SORTFIELDJSON, "sortField");
    if(!cJSON_IsString(SORTFIELDVar) || (SORTFIELDVar->valuestring == NULL))
    {
        goto end;
    }
    SORTFIELDVariable = getOffersForRetailers_SORTFIELD_FromString(SORTFIELDVar->valuestring);
    return SORTFIELDVariable;
end:
    return 0;
}
*/

// Functions for enum COUPONTYPE for OfferAPI_getOffersForRetailers

static char* getOffersForRetailers_COUPONTYPE_ToString(sirqul_iot_platform_getOffersForRetailers_couponType_e COUPONTYPE){
    char *COUPONTYPEArray[] =  { "NULL", "VOUCHER", "COUPON", "PRODUCT", "MEDIA", "EVENT", "DEVICE" };
    return COUPONTYPEArray[COUPONTYPE];
}

static sirqul_iot_platform_getOffersForRetailers_couponType_e getOffersForRetailers_COUPONTYPE_FromString(char* COUPONTYPE){
    int stringToReturn = 0;
    char *COUPONTYPEArray[] =  { "NULL", "VOUCHER", "COUPON", "PRODUCT", "MEDIA", "EVENT", "DEVICE" };
    size_t sizeofArray = sizeof(COUPONTYPEArray) / sizeof(COUPONTYPEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(COUPONTYPE, COUPONTYPEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function getOffersForRetailers_COUPONTYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *getOffersForRetailers_COUPONTYPE_convertToJSON(sirqul_iot_platform_getOffersForRetailers_couponType_e COUPONTYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "couponType", getOffersForRetailers_COUPONTYPE_ToString(COUPONTYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function getOffersForRetailers_COUPONTYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_getOffersForRetailers_couponType_e getOffersForRetailers_COUPONTYPE_parseFromJSON(cJSON* COUPONTYPEJSON) {
    sirqul_iot_platform_getOffersForRetailers_couponType_e COUPONTYPEVariable = 0;
    cJSON *COUPONTYPEVar = cJSON_GetObjectItemCaseSensitive(COUPONTYPEJSON, "couponType");
    if(!cJSON_IsString(COUPONTYPEVar) || (COUPONTYPEVar->valuestring == NULL))
    {
        goto end;
    }
    COUPONTYPEVariable = getOffersForRetailers_COUPONTYPE_FromString(COUPONTYPEVar->valuestring);
    return COUPONTYPEVariable;
end:
    return 0;
}
*/

// Functions for enum OFFERTYPE for OfferAPI_getOffersForRetailers

static char* getOffersForRetailers_OFFERTYPE_ToString(sirqul_iot_platform_getOffersForRetailers_offerType_e OFFERTYPE){
    char *OFFERTYPEArray[] =  { "NULL", "VOUCHER", "COUPON", "PRODUCT", "MEDIA", "EVENT", "DEVICE" };
    return OFFERTYPEArray[OFFERTYPE];
}

static sirqul_iot_platform_getOffersForRetailers_offerType_e getOffersForRetailers_OFFERTYPE_FromString(char* OFFERTYPE){
    int stringToReturn = 0;
    char *OFFERTYPEArray[] =  { "NULL", "VOUCHER", "COUPON", "PRODUCT", "MEDIA", "EVENT", "DEVICE" };
    size_t sizeofArray = sizeof(OFFERTYPEArray) / sizeof(OFFERTYPEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(OFFERTYPE, OFFERTYPEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function getOffersForRetailers_OFFERTYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *getOffersForRetailers_OFFERTYPE_convertToJSON(sirqul_iot_platform_getOffersForRetailers_offerType_e OFFERTYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "offerType", getOffersForRetailers_OFFERTYPE_ToString(OFFERTYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function getOffersForRetailers_OFFERTYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_getOffersForRetailers_offerType_e getOffersForRetailers_OFFERTYPE_parseFromJSON(cJSON* OFFERTYPEJSON) {
    sirqul_iot_platform_getOffersForRetailers_offerType_e OFFERTYPEVariable = 0;
    cJSON *OFFERTYPEVar = cJSON_GetObjectItemCaseSensitive(OFFERTYPEJSON, "offerType");
    if(!cJSON_IsString(OFFERTYPEVar) || (OFFERTYPEVar->valuestring == NULL))
    {
        goto end;
    }
    OFFERTYPEVariable = getOffersForRetailers_OFFERTYPE_FromString(OFFERTYPEVar->valuestring);
    return OFFERTYPEVariable;
end:
    return 0;
}
*/

// Functions for enum SPECIALOFFERTYPE for OfferAPI_getOffersForRetailers

static char* getOffersForRetailers_SPECIALOFFERTYPE_ToString(sirqul_iot_platform_getOffersForRetailers_specialOfferType_e SPECIALOFFERTYPE){
    char *SPECIALOFFERTYPEArray[] =  { "NULL", "ALL", "RESERVABLE", "REGULAR_OFFER", "ACT_NOW", "GET_THERE_NOW", "SQOOT", "TICKETS", "YIPIT" };
    return SPECIALOFFERTYPEArray[SPECIALOFFERTYPE];
}

static sirqul_iot_platform_getOffersForRetailers_specialOfferType_e getOffersForRetailers_SPECIALOFFERTYPE_FromString(char* SPECIALOFFERTYPE){
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
// Function getOffersForRetailers_SPECIALOFFERTYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *getOffersForRetailers_SPECIALOFFERTYPE_convertToJSON(sirqul_iot_platform_getOffersForRetailers_specialOfferType_e SPECIALOFFERTYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "specialOfferType", getOffersForRetailers_SPECIALOFFERTYPE_ToString(SPECIALOFFERTYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function getOffersForRetailers_SPECIALOFFERTYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_getOffersForRetailers_specialOfferType_e getOffersForRetailers_SPECIALOFFERTYPE_parseFromJSON(cJSON* SPECIALOFFERTYPEJSON) {
    sirqul_iot_platform_getOffersForRetailers_specialOfferType_e SPECIALOFFERTYPEVariable = 0;
    cJSON *SPECIALOFFERTYPEVar = cJSON_GetObjectItemCaseSensitive(SPECIALOFFERTYPEJSON, "specialOfferType");
    if(!cJSON_IsString(SPECIALOFFERTYPEVar) || (SPECIALOFFERTYPEVar->valuestring == NULL))
    {
        goto end;
    }
    SPECIALOFFERTYPEVariable = getOffersForRetailers_SPECIALOFFERTYPE_FromString(SPECIALOFFERTYPEVar->valuestring);
    return SPECIALOFFERTYPEVariable;
end:
    return 0;
}
*/

// Functions for enum DEVICESTATUS for OfferAPI_getOffersForRetailers

static char* getOffersForRetailers_DEVICESTATUS_ToString(sirqul_iot_platform_getOffersForRetailers_deviceStatus_e DEVICESTATUS){
    char *DEVICESTATUSArray[] =  { "NULL", "RUNNING", "WARNING", "DOWN" };
    return DEVICESTATUSArray[DEVICESTATUS];
}

static sirqul_iot_platform_getOffersForRetailers_deviceStatus_e getOffersForRetailers_DEVICESTATUS_FromString(char* DEVICESTATUS){
    int stringToReturn = 0;
    char *DEVICESTATUSArray[] =  { "NULL", "RUNNING", "WARNING", "DOWN" };
    size_t sizeofArray = sizeof(DEVICESTATUSArray) / sizeof(DEVICESTATUSArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(DEVICESTATUS, DEVICESTATUSArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function getOffersForRetailers_DEVICESTATUS_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *getOffersForRetailers_DEVICESTATUS_convertToJSON(sirqul_iot_platform_getOffersForRetailers_deviceStatus_e DEVICESTATUS) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "deviceStatus", getOffersForRetailers_DEVICESTATUS_ToString(DEVICESTATUS)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function getOffersForRetailers_DEVICESTATUS_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_getOffersForRetailers_deviceStatus_e getOffersForRetailers_DEVICESTATUS_parseFromJSON(cJSON* DEVICESTATUSJSON) {
    sirqul_iot_platform_getOffersForRetailers_deviceStatus_e DEVICESTATUSVariable = 0;
    cJSON *DEVICESTATUSVar = cJSON_GetObjectItemCaseSensitive(DEVICESTATUSJSON, "deviceStatus");
    if(!cJSON_IsString(DEVICESTATUSVar) || (DEVICESTATUSVar->valuestring == NULL))
    {
        goto end;
    }
    DEVICESTATUSVariable = getOffersForRetailers_DEVICESTATUS_FromString(DEVICESTATUSVar->valuestring);
    return DEVICESTATUSVariable;
end:
    return 0;
}
*/

// Functions for enum SORTFIELD for OfferAPI_searchOfferTransactionsForRetailers

static char* searchOfferTransactionsForRetailers_SORTFIELD_ToString(sirqul_iot_platform_searchOfferTransactionsForRetailers_sortField_e SORTFIELD){
    char *SORTFIELDArray[] =  { "NULL", "ID", "CREATED", "UPDATED", "DELETED", "SEARCH_TAGS", "ACTIVE", "ACTIVATED", "EXPIRES", "TITLE", "SUBTITLE", "DETAILS", "OFFER_TYPE", "SPECIAL_OFFER_TYPE", "OFFER_VISIBILITY", "REDEEMABLE_START", "REDEEMABLE_END", "CUSTOMER_ID", "CUSTOMER_DISPLAY", "RETAILER_ID", "RETAILER_NAME", "RETAILER_LOCATION_ID", "RETAILER_LOCATION_NAME", "BILLABLE_ENTITY_ID", "BILLABLE_ENTITY_NAME", "RESPONSIBLE_DISPLAY" };
    return SORTFIELDArray[SORTFIELD];
}

static sirqul_iot_platform_searchOfferTransactionsForRetailers_sortField_e searchOfferTransactionsForRetailers_SORTFIELD_FromString(char* SORTFIELD){
    int stringToReturn = 0;
    char *SORTFIELDArray[] =  { "NULL", "ID", "CREATED", "UPDATED", "DELETED", "SEARCH_TAGS", "ACTIVE", "ACTIVATED", "EXPIRES", "TITLE", "SUBTITLE", "DETAILS", "OFFER_TYPE", "SPECIAL_OFFER_TYPE", "OFFER_VISIBILITY", "REDEEMABLE_START", "REDEEMABLE_END", "CUSTOMER_ID", "CUSTOMER_DISPLAY", "RETAILER_ID", "RETAILER_NAME", "RETAILER_LOCATION_ID", "RETAILER_LOCATION_NAME", "BILLABLE_ENTITY_ID", "BILLABLE_ENTITY_NAME", "RESPONSIBLE_DISPLAY" };
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
// Function searchOfferTransactionsForRetailers_SORTFIELD_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *searchOfferTransactionsForRetailers_SORTFIELD_convertToJSON(sirqul_iot_platform_searchOfferTransactionsForRetailers_sortField_e SORTFIELD) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "sortField", searchOfferTransactionsForRetailers_SORTFIELD_ToString(SORTFIELD)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function searchOfferTransactionsForRetailers_SORTFIELD_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_searchOfferTransactionsForRetailers_sortField_e searchOfferTransactionsForRetailers_SORTFIELD_parseFromJSON(cJSON* SORTFIELDJSON) {
    sirqul_iot_platform_searchOfferTransactionsForRetailers_sortField_e SORTFIELDVariable = 0;
    cJSON *SORTFIELDVar = cJSON_GetObjectItemCaseSensitive(SORTFIELDJSON, "sortField");
    if(!cJSON_IsString(SORTFIELDVar) || (SORTFIELDVar->valuestring == NULL))
    {
        goto end;
    }
    SORTFIELDVariable = searchOfferTransactionsForRetailers_SORTFIELD_FromString(SORTFIELDVar->valuestring);
    return SORTFIELDVariable;
end:
    return 0;
}
*/

// Functions for enum COUPONTYPE for OfferAPI_searchOfferTransactionsForRetailers

static char* searchOfferTransactionsForRetailers_COUPONTYPE_ToString(sirqul_iot_platform_searchOfferTransactionsForRetailers_couponType_e COUPONTYPE){
    char *COUPONTYPEArray[] =  { "NULL", "VOUCHER", "COUPON", "PRODUCT", "MEDIA", "EVENT", "DEVICE" };
    return COUPONTYPEArray[COUPONTYPE];
}

static sirqul_iot_platform_searchOfferTransactionsForRetailers_couponType_e searchOfferTransactionsForRetailers_COUPONTYPE_FromString(char* COUPONTYPE){
    int stringToReturn = 0;
    char *COUPONTYPEArray[] =  { "NULL", "VOUCHER", "COUPON", "PRODUCT", "MEDIA", "EVENT", "DEVICE" };
    size_t sizeofArray = sizeof(COUPONTYPEArray) / sizeof(COUPONTYPEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(COUPONTYPE, COUPONTYPEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function searchOfferTransactionsForRetailers_COUPONTYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *searchOfferTransactionsForRetailers_COUPONTYPE_convertToJSON(sirqul_iot_platform_searchOfferTransactionsForRetailers_couponType_e COUPONTYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "couponType", searchOfferTransactionsForRetailers_COUPONTYPE_ToString(COUPONTYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function searchOfferTransactionsForRetailers_COUPONTYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_searchOfferTransactionsForRetailers_couponType_e searchOfferTransactionsForRetailers_COUPONTYPE_parseFromJSON(cJSON* COUPONTYPEJSON) {
    sirqul_iot_platform_searchOfferTransactionsForRetailers_couponType_e COUPONTYPEVariable = 0;
    cJSON *COUPONTYPEVar = cJSON_GetObjectItemCaseSensitive(COUPONTYPEJSON, "couponType");
    if(!cJSON_IsString(COUPONTYPEVar) || (COUPONTYPEVar->valuestring == NULL))
    {
        goto end;
    }
    COUPONTYPEVariable = searchOfferTransactionsForRetailers_COUPONTYPE_FromString(COUPONTYPEVar->valuestring);
    return COUPONTYPEVariable;
end:
    return 0;
}
*/

// Functions for enum OFFERTYPE for OfferAPI_searchOfferTransactionsForRetailers

static char* searchOfferTransactionsForRetailers_OFFERTYPE_ToString(sirqul_iot_platform_searchOfferTransactionsForRetailers_offerType_e OFFERTYPE){
    char *OFFERTYPEArray[] =  { "NULL", "VOUCHER", "COUPON", "PRODUCT", "MEDIA", "EVENT", "DEVICE" };
    return OFFERTYPEArray[OFFERTYPE];
}

static sirqul_iot_platform_searchOfferTransactionsForRetailers_offerType_e searchOfferTransactionsForRetailers_OFFERTYPE_FromString(char* OFFERTYPE){
    int stringToReturn = 0;
    char *OFFERTYPEArray[] =  { "NULL", "VOUCHER", "COUPON", "PRODUCT", "MEDIA", "EVENT", "DEVICE" };
    size_t sizeofArray = sizeof(OFFERTYPEArray) / sizeof(OFFERTYPEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(OFFERTYPE, OFFERTYPEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function searchOfferTransactionsForRetailers_OFFERTYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *searchOfferTransactionsForRetailers_OFFERTYPE_convertToJSON(sirqul_iot_platform_searchOfferTransactionsForRetailers_offerType_e OFFERTYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "offerType", searchOfferTransactionsForRetailers_OFFERTYPE_ToString(OFFERTYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function searchOfferTransactionsForRetailers_OFFERTYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_searchOfferTransactionsForRetailers_offerType_e searchOfferTransactionsForRetailers_OFFERTYPE_parseFromJSON(cJSON* OFFERTYPEJSON) {
    sirqul_iot_platform_searchOfferTransactionsForRetailers_offerType_e OFFERTYPEVariable = 0;
    cJSON *OFFERTYPEVar = cJSON_GetObjectItemCaseSensitive(OFFERTYPEJSON, "offerType");
    if(!cJSON_IsString(OFFERTYPEVar) || (OFFERTYPEVar->valuestring == NULL))
    {
        goto end;
    }
    OFFERTYPEVariable = searchOfferTransactionsForRetailers_OFFERTYPE_FromString(OFFERTYPEVar->valuestring);
    return OFFERTYPEVariable;
end:
    return 0;
}
*/

// Functions for enum SPECIALOFFERTYPE for OfferAPI_searchOfferTransactionsForRetailers

static char* searchOfferTransactionsForRetailers_SPECIALOFFERTYPE_ToString(sirqul_iot_platform_searchOfferTransactionsForRetailers_specialOfferType_e SPECIALOFFERTYPE){
    char *SPECIALOFFERTYPEArray[] =  { "NULL", "ALL", "RESERVABLE", "REGULAR_OFFER", "ACT_NOW", "GET_THERE_NOW", "SQOOT", "TICKETS", "YIPIT" };
    return SPECIALOFFERTYPEArray[SPECIALOFFERTYPE];
}

static sirqul_iot_platform_searchOfferTransactionsForRetailers_specialOfferType_e searchOfferTransactionsForRetailers_SPECIALOFFERTYPE_FromString(char* SPECIALOFFERTYPE){
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
// Function searchOfferTransactionsForRetailers_SPECIALOFFERTYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *searchOfferTransactionsForRetailers_SPECIALOFFERTYPE_convertToJSON(sirqul_iot_platform_searchOfferTransactionsForRetailers_specialOfferType_e SPECIALOFFERTYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "specialOfferType", searchOfferTransactionsForRetailers_SPECIALOFFERTYPE_ToString(SPECIALOFFERTYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function searchOfferTransactionsForRetailers_SPECIALOFFERTYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_searchOfferTransactionsForRetailers_specialOfferType_e searchOfferTransactionsForRetailers_SPECIALOFFERTYPE_parseFromJSON(cJSON* SPECIALOFFERTYPEJSON) {
    sirqul_iot_platform_searchOfferTransactionsForRetailers_specialOfferType_e SPECIALOFFERTYPEVariable = 0;
    cJSON *SPECIALOFFERTYPEVar = cJSON_GetObjectItemCaseSensitive(SPECIALOFFERTYPEJSON, "specialOfferType");
    if(!cJSON_IsString(SPECIALOFFERTYPEVar) || (SPECIALOFFERTYPEVar->valuestring == NULL))
    {
        goto end;
    }
    SPECIALOFFERTYPEVariable = searchOfferTransactionsForRetailers_SPECIALOFFERTYPE_FromString(SPECIALOFFERTYPEVar->valuestring);
    return SPECIALOFFERTYPEVariable;
end:
    return 0;
}
*/

// Functions for enum RECOMMENDATIONTYPE for OfferAPI_searchOffersForConsumer

static char* searchOffersForConsumer_RECOMMENDATIONTYPE_ToString(sirqul_iot_platform_searchOffersForConsumer_recommendationType_e RECOMMENDATIONTYPE){
    char *RECOMMENDATIONTYPEArray[] =  { "NULL", "WALLET", "CLICKS", "BLENDED" };
    return RECOMMENDATIONTYPEArray[RECOMMENDATIONTYPE];
}

static sirqul_iot_platform_searchOffersForConsumer_recommendationType_e searchOffersForConsumer_RECOMMENDATIONTYPE_FromString(char* RECOMMENDATIONTYPE){
    int stringToReturn = 0;
    char *RECOMMENDATIONTYPEArray[] =  { "NULL", "WALLET", "CLICKS", "BLENDED" };
    size_t sizeofArray = sizeof(RECOMMENDATIONTYPEArray) / sizeof(RECOMMENDATIONTYPEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(RECOMMENDATIONTYPE, RECOMMENDATIONTYPEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function searchOffersForConsumer_RECOMMENDATIONTYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *searchOffersForConsumer_RECOMMENDATIONTYPE_convertToJSON(sirqul_iot_platform_searchOffersForConsumer_recommendationType_e RECOMMENDATIONTYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "recommendationType", searchOffersForConsumer_RECOMMENDATIONTYPE_ToString(RECOMMENDATIONTYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function searchOffersForConsumer_RECOMMENDATIONTYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_searchOffersForConsumer_recommendationType_e searchOffersForConsumer_RECOMMENDATIONTYPE_parseFromJSON(cJSON* RECOMMENDATIONTYPEJSON) {
    sirqul_iot_platform_searchOffersForConsumer_recommendationType_e RECOMMENDATIONTYPEVariable = 0;
    cJSON *RECOMMENDATIONTYPEVar = cJSON_GetObjectItemCaseSensitive(RECOMMENDATIONTYPEJSON, "recommendationType");
    if(!cJSON_IsString(RECOMMENDATIONTYPEVar) || (RECOMMENDATIONTYPEVar->valuestring == NULL))
    {
        goto end;
    }
    RECOMMENDATIONTYPEVariable = searchOffersForConsumer_RECOMMENDATIONTYPE_FromString(RECOMMENDATIONTYPEVar->valuestring);
    return RECOMMENDATIONTYPEVariable;
end:
    return 0;
}
*/

// Functions for enum DISTANCEUNIT for OfferAPI_searchOffersForConsumer

static char* searchOffersForConsumer_DISTANCEUNIT_ToString(sirqul_iot_platform_searchOffersForConsumer_distanceUnit_e DISTANCEUNIT){
    char *DISTANCEUNITArray[] =  { "NULL", "MILES", "KILOMETERS" };
    return DISTANCEUNITArray[DISTANCEUNIT];
}

static sirqul_iot_platform_searchOffersForConsumer_distanceUnit_e searchOffersForConsumer_DISTANCEUNIT_FromString(char* DISTANCEUNIT){
    int stringToReturn = 0;
    char *DISTANCEUNITArray[] =  { "NULL", "MILES", "KILOMETERS" };
    size_t sizeofArray = sizeof(DISTANCEUNITArray) / sizeof(DISTANCEUNITArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(DISTANCEUNIT, DISTANCEUNITArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function searchOffersForConsumer_DISTANCEUNIT_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *searchOffersForConsumer_DISTANCEUNIT_convertToJSON(sirqul_iot_platform_searchOffersForConsumer_distanceUnit_e DISTANCEUNIT) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "distanceUnit", searchOffersForConsumer_DISTANCEUNIT_ToString(DISTANCEUNIT)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function searchOffersForConsumer_DISTANCEUNIT_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_searchOffersForConsumer_distanceUnit_e searchOffersForConsumer_DISTANCEUNIT_parseFromJSON(cJSON* DISTANCEUNITJSON) {
    sirqul_iot_platform_searchOffersForConsumer_distanceUnit_e DISTANCEUNITVariable = 0;
    cJSON *DISTANCEUNITVar = cJSON_GetObjectItemCaseSensitive(DISTANCEUNITJSON, "distanceUnit");
    if(!cJSON_IsString(DISTANCEUNITVar) || (DISTANCEUNITVar->valuestring == NULL))
    {
        goto end;
    }
    DISTANCEUNITVariable = searchOffersForConsumer_DISTANCEUNIT_FromString(DISTANCEUNITVar->valuestring);
    return DISTANCEUNITVariable;
end:
    return 0;
}
*/

// Functions for enum GROUPBY for OfferAPI_searchOffersForConsumer

static char* searchOffersForConsumer_GROUPBY_ToString(sirqul_iot_platform_searchOffersForConsumer_groupBy_e GROUPBY){
    char *GROUPBYArray[] =  { "NULL", "ID", "CREATED", "UPDATED", "DELETED", "SEARCH_TAGS", "ACTIVE", "OFFER_ID", "ACTIVATED", "EXPIRES", "TITLE", "SUBTITLE", "DETAILS", "OFFER_TYPE", "SPECIAL_OFFER_TYPE", "OFFER_VISIBILITY", "RETAILER_ID", "RETAILER_LOCATION_ID", "BILLABLE_ENTITY_ID", "BILLABLE_ENTITY_NAME", "RESPONSIBLE_DISPLAY" };
    return GROUPBYArray[GROUPBY];
}

static sirqul_iot_platform_searchOffersForConsumer_groupBy_e searchOffersForConsumer_GROUPBY_FromString(char* GROUPBY){
    int stringToReturn = 0;
    char *GROUPBYArray[] =  { "NULL", "ID", "CREATED", "UPDATED", "DELETED", "SEARCH_TAGS", "ACTIVE", "OFFER_ID", "ACTIVATED", "EXPIRES", "TITLE", "SUBTITLE", "DETAILS", "OFFER_TYPE", "SPECIAL_OFFER_TYPE", "OFFER_VISIBILITY", "RETAILER_ID", "RETAILER_LOCATION_ID", "BILLABLE_ENTITY_ID", "BILLABLE_ENTITY_NAME", "RESPONSIBLE_DISPLAY" };
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
// Function searchOffersForConsumer_GROUPBY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *searchOffersForConsumer_GROUPBY_convertToJSON(sirqul_iot_platform_searchOffersForConsumer_groupBy_e GROUPBY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "groupBy", searchOffersForConsumer_GROUPBY_ToString(GROUPBY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function searchOffersForConsumer_GROUPBY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_searchOffersForConsumer_groupBy_e searchOffersForConsumer_GROUPBY_parseFromJSON(cJSON* GROUPBYJSON) {
    sirqul_iot_platform_searchOffersForConsumer_groupBy_e GROUPBYVariable = 0;
    cJSON *GROUPBYVar = cJSON_GetObjectItemCaseSensitive(GROUPBYJSON, "groupBy");
    if(!cJSON_IsString(GROUPBYVar) || (GROUPBYVar->valuestring == NULL))
    {
        goto end;
    }
    GROUPBYVariable = searchOffersForConsumer_GROUPBY_FromString(GROUPBYVar->valuestring);
    return GROUPBYVariable;
end:
    return 0;
}
*/

// Functions for enum BARCODETYPE for OfferAPI_updateOffer

static char* updateOffer_BARCODETYPE_ToString(sirqul_iot_platform_updateOffer_barcodeType_e BARCODETYPE){
    char *BARCODETYPEArray[] =  { "NULL", "NONE", "UPC", "CODE_128", "QR", "CUSTOM_MEDIA" };
    return BARCODETYPEArray[BARCODETYPE];
}

static sirqul_iot_platform_updateOffer_barcodeType_e updateOffer_BARCODETYPE_FromString(char* BARCODETYPE){
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
// Function updateOffer_BARCODETYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *updateOffer_BARCODETYPE_convertToJSON(sirqul_iot_platform_updateOffer_barcodeType_e BARCODETYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "barcodeType", updateOffer_BARCODETYPE_ToString(BARCODETYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function updateOffer_BARCODETYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_updateOffer_barcodeType_e updateOffer_BARCODETYPE_parseFromJSON(cJSON* BARCODETYPEJSON) {
    sirqul_iot_platform_updateOffer_barcodeType_e BARCODETYPEVariable = 0;
    cJSON *BARCODETYPEVar = cJSON_GetObjectItemCaseSensitive(BARCODETYPEJSON, "barcodeType");
    if(!cJSON_IsString(BARCODETYPEVar) || (BARCODETYPEVar->valuestring == NULL))
    {
        goto end;
    }
    BARCODETYPEVariable = updateOffer_BARCODETYPE_FromString(BARCODETYPEVar->valuestring);
    return BARCODETYPEVariable;
end:
    return 0;
}
*/

// Functions for enum OFFERTYPE for OfferAPI_updateOffer

static char* updateOffer_OFFERTYPE_ToString(sirqul_iot_platform_updateOffer_offerType_e OFFERTYPE){
    char *OFFERTYPEArray[] =  { "NULL", "VOUCHER", "COUPON", "PRODUCT", "MEDIA", "EVENT", "DEVICE" };
    return OFFERTYPEArray[OFFERTYPE];
}

static sirqul_iot_platform_updateOffer_offerType_e updateOffer_OFFERTYPE_FromString(char* OFFERTYPE){
    int stringToReturn = 0;
    char *OFFERTYPEArray[] =  { "NULL", "VOUCHER", "COUPON", "PRODUCT", "MEDIA", "EVENT", "DEVICE" };
    size_t sizeofArray = sizeof(OFFERTYPEArray) / sizeof(OFFERTYPEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(OFFERTYPE, OFFERTYPEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function updateOffer_OFFERTYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *updateOffer_OFFERTYPE_convertToJSON(sirqul_iot_platform_updateOffer_offerType_e OFFERTYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "offerType", updateOffer_OFFERTYPE_ToString(OFFERTYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function updateOffer_OFFERTYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_updateOffer_offerType_e updateOffer_OFFERTYPE_parseFromJSON(cJSON* OFFERTYPEJSON) {
    sirqul_iot_platform_updateOffer_offerType_e OFFERTYPEVariable = 0;
    cJSON *OFFERTYPEVar = cJSON_GetObjectItemCaseSensitive(OFFERTYPEJSON, "offerType");
    if(!cJSON_IsString(OFFERTYPEVar) || (OFFERTYPEVar->valuestring == NULL))
    {
        goto end;
    }
    OFFERTYPEVariable = updateOffer_OFFERTYPE_FromString(OFFERTYPEVar->valuestring);
    return OFFERTYPEVariable;
end:
    return 0;
}
*/

// Functions for enum SPECIALOFFERTYPE for OfferAPI_updateOffer

static char* updateOffer_SPECIALOFFERTYPE_ToString(sirqul_iot_platform_updateOffer_specialOfferType_e SPECIALOFFERTYPE){
    char *SPECIALOFFERTYPEArray[] =  { "NULL", "ALL", "RESERVABLE", "REGULAR_OFFER", "ACT_NOW", "GET_THERE_NOW", "SQOOT", "TICKETS", "YIPIT" };
    return SPECIALOFFERTYPEArray[SPECIALOFFERTYPE];
}

static sirqul_iot_platform_updateOffer_specialOfferType_e updateOffer_SPECIALOFFERTYPE_FromString(char* SPECIALOFFERTYPE){
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
// Function updateOffer_SPECIALOFFERTYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *updateOffer_SPECIALOFFERTYPE_convertToJSON(sirqul_iot_platform_updateOffer_specialOfferType_e SPECIALOFFERTYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "specialOfferType", updateOffer_SPECIALOFFERTYPE_ToString(SPECIALOFFERTYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function updateOffer_SPECIALOFFERTYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_updateOffer_specialOfferType_e updateOffer_SPECIALOFFERTYPE_parseFromJSON(cJSON* SPECIALOFFERTYPEJSON) {
    sirqul_iot_platform_updateOffer_specialOfferType_e SPECIALOFFERTYPEVariable = 0;
    cJSON *SPECIALOFFERTYPEVar = cJSON_GetObjectItemCaseSensitive(SPECIALOFFERTYPEJSON, "specialOfferType");
    if(!cJSON_IsString(SPECIALOFFERTYPEVar) || (SPECIALOFFERTYPEVar->valuestring == NULL))
    {
        goto end;
    }
    SPECIALOFFERTYPEVariable = updateOffer_SPECIALOFFERTYPE_FromString(SPECIALOFFERTYPEVar->valuestring);
    return SPECIALOFFERTYPEVariable;
end:
    return 0;
}
*/

// Functions for enum OFFERVISIBILITY for OfferAPI_updateOffer

static char* updateOffer_OFFERVISIBILITY_ToString(sirqul_iot_platform_updateOffer_offerVisibility_e OFFERVISIBILITY){
    char *OFFERVISIBILITYArray[] =  { "NULL", "PUBLIC", "LISTABLE", "REWARDABLE", "TRIGGERABLE", "PRIVATE" };
    return OFFERVISIBILITYArray[OFFERVISIBILITY];
}

static sirqul_iot_platform_updateOffer_offerVisibility_e updateOffer_OFFERVISIBILITY_FromString(char* OFFERVISIBILITY){
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
// Function updateOffer_OFFERVISIBILITY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *updateOffer_OFFERVISIBILITY_convertToJSON(sirqul_iot_platform_updateOffer_offerVisibility_e OFFERVISIBILITY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "offerVisibility", updateOffer_OFFERVISIBILITY_ToString(OFFERVISIBILITY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function updateOffer_OFFERVISIBILITY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_updateOffer_offerVisibility_e updateOffer_OFFERVISIBILITY_parseFromJSON(cJSON* OFFERVISIBILITYJSON) {
    sirqul_iot_platform_updateOffer_offerVisibility_e OFFERVISIBILITYVariable = 0;
    cJSON *OFFERVISIBILITYVar = cJSON_GetObjectItemCaseSensitive(OFFERVISIBILITYJSON, "offerVisibility");
    if(!cJSON_IsString(OFFERVISIBILITYVar) || (OFFERVISIBILITYVar->valuestring == NULL))
    {
        goto end;
    }
    OFFERVISIBILITYVariable = updateOffer_OFFERVISIBILITY_FromString(OFFERVISIBILITYVar->valuestring);
    return OFFERVISIBILITYVariable;
end:
    return 0;
}
*/

// Functions for enum PRODUCTTYPE for OfferAPI_updateOffer

static char* updateOffer_PRODUCTTYPE_ToString(sirqul_iot_platform_updateOffer_productType_e PRODUCTTYPE){
    char *PRODUCTTYPEArray[] =  { "NULL", "APPAREL", "APPLIANCES", "APPS", "ARTS_CRAFTS", "AUTOMOTIVE", "BABY", "BEAUTY", "BOOKS", "CLASSICAL", "COLLECTIBLES", "DVD", "ELECTRONICS", "GIFT_CARDS", "GOURMET_FOOD", "GROCERY", "HEALTH_PERSONAL_CARE", "HOME_GARDEN", "INDUSTRIAL", "JEWELRY", "KITCHEN", "LAWN_GARDEN", "MAGAZINES", "MISCELLANEOUS", "MUSICAL_INSTRUMENTS", "OFFICE_PRODUCTS", "OTHER", "OUTDOOR_LIVING", "PC_HARDWARE", "PET_SUPPLIES", "SHOES", "SOFTWARE", "SPORTING_GOODS", "TOOLS", "TOYS", "VIDEO_GAMES", "WATCHES", "WIRELESS", "WIRELESS_ACCESSORIES" };
    return PRODUCTTYPEArray[PRODUCTTYPE];
}

static sirqul_iot_platform_updateOffer_productType_e updateOffer_PRODUCTTYPE_FromString(char* PRODUCTTYPE){
    int stringToReturn = 0;
    char *PRODUCTTYPEArray[] =  { "NULL", "APPAREL", "APPLIANCES", "APPS", "ARTS_CRAFTS", "AUTOMOTIVE", "BABY", "BEAUTY", "BOOKS", "CLASSICAL", "COLLECTIBLES", "DVD", "ELECTRONICS", "GIFT_CARDS", "GOURMET_FOOD", "GROCERY", "HEALTH_PERSONAL_CARE", "HOME_GARDEN", "INDUSTRIAL", "JEWELRY", "KITCHEN", "LAWN_GARDEN", "MAGAZINES", "MISCELLANEOUS", "MUSICAL_INSTRUMENTS", "OFFICE_PRODUCTS", "OTHER", "OUTDOOR_LIVING", "PC_HARDWARE", "PET_SUPPLIES", "SHOES", "SOFTWARE", "SPORTING_GOODS", "TOOLS", "TOYS", "VIDEO_GAMES", "WATCHES", "WIRELESS", "WIRELESS_ACCESSORIES" };
    size_t sizeofArray = sizeof(PRODUCTTYPEArray) / sizeof(PRODUCTTYPEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(PRODUCTTYPE, PRODUCTTYPEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function updateOffer_PRODUCTTYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *updateOffer_PRODUCTTYPE_convertToJSON(sirqul_iot_platform_updateOffer_productType_e PRODUCTTYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "productType", updateOffer_PRODUCTTYPE_ToString(PRODUCTTYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function updateOffer_PRODUCTTYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_updateOffer_productType_e updateOffer_PRODUCTTYPE_parseFromJSON(cJSON* PRODUCTTYPEJSON) {
    sirqul_iot_platform_updateOffer_productType_e PRODUCTTYPEVariable = 0;
    cJSON *PRODUCTTYPEVar = cJSON_GetObjectItemCaseSensitive(PRODUCTTYPEJSON, "productType");
    if(!cJSON_IsString(PRODUCTTYPEVar) || (PRODUCTTYPEVar->valuestring == NULL))
    {
        goto end;
    }
    PRODUCTTYPEVariable = updateOffer_PRODUCTTYPE_FromString(PRODUCTTYPEVar->valuestring);
    return PRODUCTTYPEVariable;
end:
    return 0;
}
*/

// Functions for enum CONDITIONTYPE for OfferAPI_updateOffer

static char* updateOffer_CONDITIONTYPE_ToString(sirqul_iot_platform_updateOffer_conditionType_e CONDITIONTYPE){
    char *CONDITIONTYPEArray[] =  { "NULL", "NEW", "USED", "REFURBISHED", "OTHER" };
    return CONDITIONTYPEArray[CONDITIONTYPE];
}

static sirqul_iot_platform_updateOffer_conditionType_e updateOffer_CONDITIONTYPE_FromString(char* CONDITIONTYPE){
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
// Function updateOffer_CONDITIONTYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *updateOffer_CONDITIONTYPE_convertToJSON(sirqul_iot_platform_updateOffer_conditionType_e CONDITIONTYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "conditionType", updateOffer_CONDITIONTYPE_ToString(CONDITIONTYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function updateOffer_CONDITIONTYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_updateOffer_conditionType_e updateOffer_CONDITIONTYPE_parseFromJSON(cJSON* CONDITIONTYPEJSON) {
    sirqul_iot_platform_updateOffer_conditionType_e CONDITIONTYPEVariable = 0;
    cJSON *CONDITIONTYPEVar = cJSON_GetObjectItemCaseSensitive(CONDITIONTYPEJSON, "conditionType");
    if(!cJSON_IsString(CONDITIONTYPEVar) || (CONDITIONTYPEVar->valuestring == NULL))
    {
        goto end;
    }
    CONDITIONTYPEVariable = updateOffer_CONDITIONTYPE_FromString(CONDITIONTYPEVar->valuestring);
    return CONDITIONTYPEVariable;
end:
    return 0;
}
*/

// Functions for enum UNIT for OfferAPI_updateOffer

static char* updateOffer_UNIT_ToString(sirqul_iot_platform_updateOffer_unit_e UNIT){
    char *UNITArray[] =  { "NULL", "MILIMETER", "CENTIMETER", "METER", "INCH", "FOOT", "YARD" };
    return UNITArray[UNIT];
}

static sirqul_iot_platform_updateOffer_unit_e updateOffer_UNIT_FromString(char* UNIT){
    int stringToReturn = 0;
    char *UNITArray[] =  { "NULL", "MILIMETER", "CENTIMETER", "METER", "INCH", "FOOT", "YARD" };
    size_t sizeofArray = sizeof(UNITArray) / sizeof(UNITArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(UNIT, UNITArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function updateOffer_UNIT_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *updateOffer_UNIT_convertToJSON(sirqul_iot_platform_updateOffer_unit_e UNIT) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "unit", updateOffer_UNIT_ToString(UNIT)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function updateOffer_UNIT_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_updateOffer_unit_e updateOffer_UNIT_parseFromJSON(cJSON* UNITJSON) {
    sirqul_iot_platform_updateOffer_unit_e UNITVariable = 0;
    cJSON *UNITVar = cJSON_GetObjectItemCaseSensitive(UNITJSON, "unit");
    if(!cJSON_IsString(UNITVar) || (UNITVar->valuestring == NULL))
    {
        goto end;
    }
    UNITVariable = updateOffer_UNIT_FromString(UNITVar->valuestring);
    return UNITVariable;
end:
    return 0;
}
*/

// Functions for enum MEDIATYPE for OfferAPI_updateOffer

static char* updateOffer_MEDIATYPE_ToString(sirqul_iot_platform_updateOffer_mediaType_e MEDIATYPE){
    char *MEDIATYPEArray[] =  { "NULL", "APK", "APPLICATION", "IMAGE", "AUDIO", "VIDEO", "MULTIPART", "BAR_CODE", "TEXT", "OTHER" };
    return MEDIATYPEArray[MEDIATYPE];
}

static sirqul_iot_platform_updateOffer_mediaType_e updateOffer_MEDIATYPE_FromString(char* MEDIATYPE){
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
// Function updateOffer_MEDIATYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *updateOffer_MEDIATYPE_convertToJSON(sirqul_iot_platform_updateOffer_mediaType_e MEDIATYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "mediaType", updateOffer_MEDIATYPE_ToString(MEDIATYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function updateOffer_MEDIATYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_updateOffer_mediaType_e updateOffer_MEDIATYPE_parseFromJSON(cJSON* MEDIATYPEJSON) {
    sirqul_iot_platform_updateOffer_mediaType_e MEDIATYPEVariable = 0;
    cJSON *MEDIATYPEVar = cJSON_GetObjectItemCaseSensitive(MEDIATYPEJSON, "mediaType");
    if(!cJSON_IsString(MEDIATYPEVar) || (MEDIATYPEVar->valuestring == NULL))
    {
        goto end;
    }
    MEDIATYPEVariable = updateOffer_MEDIATYPE_FromString(MEDIATYPEVar->valuestring);
    return MEDIATYPEVariable;
end:
    return 0;
}
*/


// Update Offer Locations
//
// Batch update offer locations.
//
sirqul_response_t*
OfferAPI_batchUpdateOfferLocations(apiClient_t *apiClient, double version, char *data, char *deviceId, long accountId)
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
    char *localVarPath = strdup("/api/{version}/retailer/offer/location/batchUpdate");



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
        cJSON *OfferAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(OfferAPIlocalVarJSON);
        cJSON_Delete(OfferAPIlocalVarJSON);
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Create Offer
//
// Create an offer and assign it to the provided retailer locations.
//
retailer_offer_response_t*
OfferAPI_createOffer(apiClient_t *apiClient, double version, int *includeOfferLocations, char *title, sirqul_iot_platform_createOffer_barcodeType_e barcodeType, int *noExpiration, int *availableLimit, int *availableLimitPerUser, int *addedLimit, int *viewLimit, int *maxPrints, long ticketPrice, double fullPrice, double discountPrice, sirqul_iot_platform_createOffer_offerType_e offerType, sirqul_iot_platform_createOffer_specialOfferType_e specialOfferType, sirqul_iot_platform_createOffer_offerVisibility_e offerVisibility, int *active, char *deviceId, long accountId, char *tags, long parentOfferId, char *retailerLocationIds, char *offerLocations, char *subTitle, char *details, char *subDetails, char *finePrint, char *barcodeEntry, char *externalRedeemOptions, char *externalUrl, char *externalId, char *ticketsRewardType, long ticketsReward, long activated, long expires, char *ticketPriceType, int *showRemaining, int *showRedeemed, int *replaced, int *featured, char *categoryIds, char *filterIds, long barcodeAssetId, long imageAssetId, long imageAssetId1, long imageAssetId2, long imageAssetId3, long imageAssetId4, long imageAssetId5, char *publisher, long redeemableStart, long redeemableEnd, char *brand, sirqul_iot_platform_createOffer_productType_e productType, sirqul_iot_platform_createOffer_conditionType_e conditionType, char *isbn, char *asin, char *catalogNumbers, char *department, char *features, double minimumPrice, double width, double height, double depth, double weight, sirqul_iot_platform_createOffer_unit_e unit, char *studio, char *parentalRating, long publishDate, long availabilityDate, long sizeId, long listingId, sirqul_iot_platform_createOffer_mediaType_e mediaType, int *duration, char *author, long releaseDate, char *collectionIds, int *rebootTimeHour, int *rebootTimeMinute, int *idleTimeoutInSecond, char *serialNumber, char *udid, char *deviceType, double devicePower, double deviceInterference, char *availability, char *availabilitySummary)
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
    char *localVarPath = strdup("/api/{version}/retailer/offer/create");



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
    char *keyQuery_parentOfferId = NULL;
    char * valueQuery_parentOfferId ;
    keyValuePair_t *keyPairQuery_parentOfferId = 0;
    {
        keyQuery_parentOfferId = strdup("parentOfferId");
        valueQuery_parentOfferId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_parentOfferId, MAX_NUMBER_LENGTH_LONG, "%d", parentOfferId);
        keyPairQuery_parentOfferId = keyValuePair_create(keyQuery_parentOfferId, valueQuery_parentOfferId);
        list_addElement(localVarQueryParameters,keyPairQuery_parentOfferId);
    }

    // query parameters
    char *keyQuery_includeOfferLocations = NULL;
    char * valueQuery_includeOfferLocations = NULL;
    keyValuePair_t *keyPairQuery_includeOfferLocations = 0;
    if (includeOfferLocations)
    {
        keyQuery_includeOfferLocations = strdup("includeOfferLocations");
        valueQuery_includeOfferLocations = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeOfferLocations, MAX_NUMBER_LENGTH, "%d", *includeOfferLocations);
        keyPairQuery_includeOfferLocations = keyValuePair_create(keyQuery_includeOfferLocations, valueQuery_includeOfferLocations);
        list_addElement(localVarQueryParameters,keyPairQuery_includeOfferLocations);
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
    sirqul_iot_platform_createOffer_barcodeType_e valueQuery_barcodeType ;
    keyValuePair_t *keyPairQuery_barcodeType = 0;
    if (barcodeType)
    {
        keyQuery_barcodeType = strdup("barcodeType");
        valueQuery_barcodeType = (barcodeType);
        keyPairQuery_barcodeType = keyValuePair_create(keyQuery_barcodeType, strdup(createOffer_BARCODETYPE_ToString(
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
    char *keyQuery_externalId = NULL;
    char * valueQuery_externalId = NULL;
    keyValuePair_t *keyPairQuery_externalId = 0;
    if (externalId)
    {
        keyQuery_externalId = strdup("externalId");
        valueQuery_externalId = strdup((externalId));
        keyPairQuery_externalId = keyValuePair_create(keyQuery_externalId, valueQuery_externalId);
        list_addElement(localVarQueryParameters,keyPairQuery_externalId);
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
    char *keyQuery_offerType = NULL;
    sirqul_iot_platform_createOffer_offerType_e valueQuery_offerType ;
    keyValuePair_t *keyPairQuery_offerType = 0;
    if (offerType)
    {
        keyQuery_offerType = strdup("offerType");
        valueQuery_offerType = (offerType);
        keyPairQuery_offerType = keyValuePair_create(keyQuery_offerType, strdup(createOffer_OFFERTYPE_ToString(
        valueQuery_offerType)));
        list_addElement(localVarQueryParameters,keyPairQuery_offerType);
    }

    // query parameters
    char *keyQuery_specialOfferType = NULL;
    sirqul_iot_platform_createOffer_specialOfferType_e valueQuery_specialOfferType ;
    keyValuePair_t *keyPairQuery_specialOfferType = 0;
    if (specialOfferType)
    {
        keyQuery_specialOfferType = strdup("specialOfferType");
        valueQuery_specialOfferType = (specialOfferType);
        keyPairQuery_specialOfferType = keyValuePair_create(keyQuery_specialOfferType, strdup(createOffer_SPECIALOFFERTYPE_ToString(
        valueQuery_specialOfferType)));
        list_addElement(localVarQueryParameters,keyPairQuery_specialOfferType);
    }

    // query parameters
    char *keyQuery_offerVisibility = NULL;
    sirqul_iot_platform_createOffer_offerVisibility_e valueQuery_offerVisibility ;
    keyValuePair_t *keyPairQuery_offerVisibility = 0;
    if (offerVisibility)
    {
        keyQuery_offerVisibility = strdup("offerVisibility");
        valueQuery_offerVisibility = (offerVisibility);
        keyPairQuery_offerVisibility = keyValuePair_create(keyQuery_offerVisibility, strdup(createOffer_OFFERVISIBILITY_ToString(
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
    char *keyQuery_brand = NULL;
    char * valueQuery_brand = NULL;
    keyValuePair_t *keyPairQuery_brand = 0;
    if (brand)
    {
        keyQuery_brand = strdup("brand");
        valueQuery_brand = strdup((brand));
        keyPairQuery_brand = keyValuePair_create(keyQuery_brand, valueQuery_brand);
        list_addElement(localVarQueryParameters,keyPairQuery_brand);
    }

    // query parameters
    char *keyQuery_productType = NULL;
    sirqul_iot_platform_createOffer_productType_e valueQuery_productType ;
    keyValuePair_t *keyPairQuery_productType = 0;
    if (productType)
    {
        keyQuery_productType = strdup("productType");
        valueQuery_productType = (productType);
        keyPairQuery_productType = keyValuePair_create(keyQuery_productType, strdup(createOffer_PRODUCTTYPE_ToString(
        valueQuery_productType)));
        list_addElement(localVarQueryParameters,keyPairQuery_productType);
    }

    // query parameters
    char *keyQuery_conditionType = NULL;
    sirqul_iot_platform_createOffer_conditionType_e valueQuery_conditionType ;
    keyValuePair_t *keyPairQuery_conditionType = 0;
    if (conditionType)
    {
        keyQuery_conditionType = strdup("conditionType");
        valueQuery_conditionType = (conditionType);
        keyPairQuery_conditionType = keyValuePair_create(keyQuery_conditionType, strdup(createOffer_CONDITIONTYPE_ToString(
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
    char *keyQuery_department = NULL;
    char * valueQuery_department = NULL;
    keyValuePair_t *keyPairQuery_department = 0;
    if (department)
    {
        keyQuery_department = strdup("department");
        valueQuery_department = strdup((department));
        keyPairQuery_department = keyValuePair_create(keyQuery_department, valueQuery_department);
        list_addElement(localVarQueryParameters,keyPairQuery_department);
    }

    // query parameters
    char *keyQuery_features = NULL;
    char * valueQuery_features = NULL;
    keyValuePair_t *keyPairQuery_features = 0;
    if (features)
    {
        keyQuery_features = strdup("features");
        valueQuery_features = strdup((features));
        keyPairQuery_features = keyValuePair_create(keyQuery_features, valueQuery_features);
        list_addElement(localVarQueryParameters,keyPairQuery_features);
    }

    // query parameters
    char *keyQuery_minimumPrice = NULL;
    char * valueQuery_minimumPrice = NULL;
    keyValuePair_t *keyPairQuery_minimumPrice = 0;
    {
        keyQuery_minimumPrice = strdup("minimumPrice");
        int s = snprintf(NULL, 0, "%.16e", minimumPrice);
        if (s >= 0)
        {
            valueQuery_minimumPrice = calloc(1,s+1);
            snprintf(valueQuery_minimumPrice, s+1, "%.16e", minimumPrice);
        }
        keyPairQuery_minimumPrice = keyValuePair_create(keyQuery_minimumPrice, valueQuery_minimumPrice);
        list_addElement(localVarQueryParameters,keyPairQuery_minimumPrice);
    }

    // query parameters
    char *keyQuery_width = NULL;
    char * valueQuery_width = NULL;
    keyValuePair_t *keyPairQuery_width = 0;
    {
        keyQuery_width = strdup("width");
        int s = snprintf(NULL, 0, "%.16e", width);
        if (s >= 0)
        {
            valueQuery_width = calloc(1,s+1);
            snprintf(valueQuery_width, s+1, "%.16e", width);
        }
        keyPairQuery_width = keyValuePair_create(keyQuery_width, valueQuery_width);
        list_addElement(localVarQueryParameters,keyPairQuery_width);
    }

    // query parameters
    char *keyQuery_height = NULL;
    char * valueQuery_height = NULL;
    keyValuePair_t *keyPairQuery_height = 0;
    {
        keyQuery_height = strdup("height");
        int s = snprintf(NULL, 0, "%.16e", height);
        if (s >= 0)
        {
            valueQuery_height = calloc(1,s+1);
            snprintf(valueQuery_height, s+1, "%.16e", height);
        }
        keyPairQuery_height = keyValuePair_create(keyQuery_height, valueQuery_height);
        list_addElement(localVarQueryParameters,keyPairQuery_height);
    }

    // query parameters
    char *keyQuery_depth = NULL;
    char * valueQuery_depth = NULL;
    keyValuePair_t *keyPairQuery_depth = 0;
    {
        keyQuery_depth = strdup("depth");
        int s = snprintf(NULL, 0, "%.16e", depth);
        if (s >= 0)
        {
            valueQuery_depth = calloc(1,s+1);
            snprintf(valueQuery_depth, s+1, "%.16e", depth);
        }
        keyPairQuery_depth = keyValuePair_create(keyQuery_depth, valueQuery_depth);
        list_addElement(localVarQueryParameters,keyPairQuery_depth);
    }

    // query parameters
    char *keyQuery_weight = NULL;
    char * valueQuery_weight = NULL;
    keyValuePair_t *keyPairQuery_weight = 0;
    {
        keyQuery_weight = strdup("weight");
        int s = snprintf(NULL, 0, "%.16e", weight);
        if (s >= 0)
        {
            valueQuery_weight = calloc(1,s+1);
            snprintf(valueQuery_weight, s+1, "%.16e", weight);
        }
        keyPairQuery_weight = keyValuePair_create(keyQuery_weight, valueQuery_weight);
        list_addElement(localVarQueryParameters,keyPairQuery_weight);
    }

    // query parameters
    char *keyQuery_unit = NULL;
    sirqul_iot_platform_createOffer_unit_e valueQuery_unit ;
    keyValuePair_t *keyPairQuery_unit = 0;
    if (unit)
    {
        keyQuery_unit = strdup("unit");
        valueQuery_unit = (unit);
        keyPairQuery_unit = keyValuePair_create(keyQuery_unit, strdup(createOffer_UNIT_ToString(
        valueQuery_unit)));
        list_addElement(localVarQueryParameters,keyPairQuery_unit);
    }

    // query parameters
    char *keyQuery_studio = NULL;
    char * valueQuery_studio = NULL;
    keyValuePair_t *keyPairQuery_studio = 0;
    if (studio)
    {
        keyQuery_studio = strdup("studio");
        valueQuery_studio = strdup((studio));
        keyPairQuery_studio = keyValuePair_create(keyQuery_studio, valueQuery_studio);
        list_addElement(localVarQueryParameters,keyPairQuery_studio);
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
    char *keyQuery_publishDate = NULL;
    char * valueQuery_publishDate ;
    keyValuePair_t *keyPairQuery_publishDate = 0;
    {
        keyQuery_publishDate = strdup("publishDate");
        valueQuery_publishDate = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_publishDate, MAX_NUMBER_LENGTH_LONG, "%d", publishDate);
        keyPairQuery_publishDate = keyValuePair_create(keyQuery_publishDate, valueQuery_publishDate);
        list_addElement(localVarQueryParameters,keyPairQuery_publishDate);
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
    char *keyQuery_sizeId = NULL;
    char * valueQuery_sizeId ;
    keyValuePair_t *keyPairQuery_sizeId = 0;
    {
        keyQuery_sizeId = strdup("sizeId");
        valueQuery_sizeId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_sizeId, MAX_NUMBER_LENGTH_LONG, "%d", sizeId);
        keyPairQuery_sizeId = keyValuePair_create(keyQuery_sizeId, valueQuery_sizeId);
        list_addElement(localVarQueryParameters,keyPairQuery_sizeId);
    }

    // query parameters
    char *keyQuery_listingId = NULL;
    char * valueQuery_listingId ;
    keyValuePair_t *keyPairQuery_listingId = 0;
    {
        keyQuery_listingId = strdup("listingId");
        valueQuery_listingId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_listingId, MAX_NUMBER_LENGTH_LONG, "%d", listingId);
        keyPairQuery_listingId = keyValuePair_create(keyQuery_listingId, valueQuery_listingId);
        list_addElement(localVarQueryParameters,keyPairQuery_listingId);
    }

    // query parameters
    char *keyQuery_mediaType = NULL;
    sirqul_iot_platform_createOffer_mediaType_e valueQuery_mediaType ;
    keyValuePair_t *keyPairQuery_mediaType = 0;
    if (mediaType)
    {
        keyQuery_mediaType = strdup("mediaType");
        valueQuery_mediaType = (mediaType);
        keyPairQuery_mediaType = keyValuePair_create(keyQuery_mediaType, strdup(createOffer_MEDIATYPE_ToString(
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
    char *keyQuery_rebootTimeHour = NULL;
    char * valueQuery_rebootTimeHour = NULL;
    keyValuePair_t *keyPairQuery_rebootTimeHour = 0;
    if (rebootTimeHour)
    {
        keyQuery_rebootTimeHour = strdup("rebootTimeHour");
        valueQuery_rebootTimeHour = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_rebootTimeHour, MAX_NUMBER_LENGTH, "%d", *rebootTimeHour);
        keyPairQuery_rebootTimeHour = keyValuePair_create(keyQuery_rebootTimeHour, valueQuery_rebootTimeHour);
        list_addElement(localVarQueryParameters,keyPairQuery_rebootTimeHour);
    }

    // query parameters
    char *keyQuery_rebootTimeMinute = NULL;
    char * valueQuery_rebootTimeMinute = NULL;
    keyValuePair_t *keyPairQuery_rebootTimeMinute = 0;
    if (rebootTimeMinute)
    {
        keyQuery_rebootTimeMinute = strdup("rebootTimeMinute");
        valueQuery_rebootTimeMinute = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_rebootTimeMinute, MAX_NUMBER_LENGTH, "%d", *rebootTimeMinute);
        keyPairQuery_rebootTimeMinute = keyValuePair_create(keyQuery_rebootTimeMinute, valueQuery_rebootTimeMinute);
        list_addElement(localVarQueryParameters,keyPairQuery_rebootTimeMinute);
    }

    // query parameters
    char *keyQuery_idleTimeoutInSecond = NULL;
    char * valueQuery_idleTimeoutInSecond = NULL;
    keyValuePair_t *keyPairQuery_idleTimeoutInSecond = 0;
    if (idleTimeoutInSecond)
    {
        keyQuery_idleTimeoutInSecond = strdup("idleTimeoutInSecond");
        valueQuery_idleTimeoutInSecond = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_idleTimeoutInSecond, MAX_NUMBER_LENGTH, "%d", *idleTimeoutInSecond);
        keyPairQuery_idleTimeoutInSecond = keyValuePair_create(keyQuery_idleTimeoutInSecond, valueQuery_idleTimeoutInSecond);
        list_addElement(localVarQueryParameters,keyPairQuery_idleTimeoutInSecond);
    }

    // query parameters
    char *keyQuery_serialNumber = NULL;
    char * valueQuery_serialNumber = NULL;
    keyValuePair_t *keyPairQuery_serialNumber = 0;
    if (serialNumber)
    {
        keyQuery_serialNumber = strdup("serialNumber");
        valueQuery_serialNumber = strdup((serialNumber));
        keyPairQuery_serialNumber = keyValuePair_create(keyQuery_serialNumber, valueQuery_serialNumber);
        list_addElement(localVarQueryParameters,keyPairQuery_serialNumber);
    }

    // query parameters
    char *keyQuery_udid = NULL;
    char * valueQuery_udid = NULL;
    keyValuePair_t *keyPairQuery_udid = 0;
    if (udid)
    {
        keyQuery_udid = strdup("udid");
        valueQuery_udid = strdup((udid));
        keyPairQuery_udid = keyValuePair_create(keyQuery_udid, valueQuery_udid);
        list_addElement(localVarQueryParameters,keyPairQuery_udid);
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
    char *keyQuery_devicePower = NULL;
    char * valueQuery_devicePower = NULL;
    keyValuePair_t *keyPairQuery_devicePower = 0;
    {
        keyQuery_devicePower = strdup("devicePower");
        int s = snprintf(NULL, 0, "%.16e", devicePower);
        if (s >= 0)
        {
            valueQuery_devicePower = calloc(1,s+1);
            snprintf(valueQuery_devicePower, s+1, "%.16e", devicePower);
        }
        keyPairQuery_devicePower = keyValuePair_create(keyQuery_devicePower, valueQuery_devicePower);
        list_addElement(localVarQueryParameters,keyPairQuery_devicePower);
    }

    // query parameters
    char *keyQuery_deviceInterference = NULL;
    char * valueQuery_deviceInterference = NULL;
    keyValuePair_t *keyPairQuery_deviceInterference = 0;
    {
        keyQuery_deviceInterference = strdup("deviceInterference");
        int s = snprintf(NULL, 0, "%.16e", deviceInterference);
        if (s >= 0)
        {
            valueQuery_deviceInterference = calloc(1,s+1);
            snprintf(valueQuery_deviceInterference, s+1, "%.16e", deviceInterference);
        }
        keyPairQuery_deviceInterference = keyValuePair_create(keyQuery_deviceInterference, valueQuery_deviceInterference);
        list_addElement(localVarQueryParameters,keyPairQuery_deviceInterference);
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
    retailer_offer_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *OfferAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = retailer_offer_response_parseFromJSON(OfferAPIlocalVarJSON);
        cJSON_Delete(OfferAPIlocalVarJSON);
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
    if(keyQuery_parentOfferId){
        free(keyQuery_parentOfferId);
        keyQuery_parentOfferId = NULL;
    }
    if(keyPairQuery_parentOfferId){
        keyValuePair_free(keyPairQuery_parentOfferId);
        keyPairQuery_parentOfferId = NULL;
    }
    if(keyQuery_includeOfferLocations){
        free(keyQuery_includeOfferLocations);
        keyQuery_includeOfferLocations = NULL;
    }
    if(valueQuery_includeOfferLocations){
        free(valueQuery_includeOfferLocations);
        valueQuery_includeOfferLocations = NULL;
    }
    if(keyPairQuery_includeOfferLocations){
        keyValuePair_free(keyPairQuery_includeOfferLocations);
        keyPairQuery_includeOfferLocations = NULL;
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
    if(keyQuery_externalId){
        free(keyQuery_externalId);
        keyQuery_externalId = NULL;
    }
    if(valueQuery_externalId){
        free(valueQuery_externalId);
        valueQuery_externalId = NULL;
    }
    if(keyPairQuery_externalId){
        keyValuePair_free(keyPairQuery_externalId);
        keyPairQuery_externalId = NULL;
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
    if(keyQuery_offerType){
        free(keyQuery_offerType);
        keyQuery_offerType = NULL;
    }
    if(keyPairQuery_offerType){
        keyValuePair_free(keyPairQuery_offerType);
        keyPairQuery_offerType = NULL;
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
    if(keyQuery_brand){
        free(keyQuery_brand);
        keyQuery_brand = NULL;
    }
    if(valueQuery_brand){
        free(valueQuery_brand);
        valueQuery_brand = NULL;
    }
    if(keyPairQuery_brand){
        keyValuePair_free(keyPairQuery_brand);
        keyPairQuery_brand = NULL;
    }
    if(keyQuery_productType){
        free(keyQuery_productType);
        keyQuery_productType = NULL;
    }
    if(keyPairQuery_productType){
        keyValuePair_free(keyPairQuery_productType);
        keyPairQuery_productType = NULL;
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
    if(keyQuery_department){
        free(keyQuery_department);
        keyQuery_department = NULL;
    }
    if(valueQuery_department){
        free(valueQuery_department);
        valueQuery_department = NULL;
    }
    if(keyPairQuery_department){
        keyValuePair_free(keyPairQuery_department);
        keyPairQuery_department = NULL;
    }
    if(keyQuery_features){
        free(keyQuery_features);
        keyQuery_features = NULL;
    }
    if(valueQuery_features){
        free(valueQuery_features);
        valueQuery_features = NULL;
    }
    if(keyPairQuery_features){
        keyValuePair_free(keyPairQuery_features);
        keyPairQuery_features = NULL;
    }
    if(keyQuery_minimumPrice){
        free(keyQuery_minimumPrice);
        keyQuery_minimumPrice = NULL;
    }
    if(keyPairQuery_minimumPrice){
        keyValuePair_free(keyPairQuery_minimumPrice);
        keyPairQuery_minimumPrice = NULL;
    }
    if(keyQuery_width){
        free(keyQuery_width);
        keyQuery_width = NULL;
    }
    if(keyPairQuery_width){
        keyValuePair_free(keyPairQuery_width);
        keyPairQuery_width = NULL;
    }
    if(keyQuery_height){
        free(keyQuery_height);
        keyQuery_height = NULL;
    }
    if(keyPairQuery_height){
        keyValuePair_free(keyPairQuery_height);
        keyPairQuery_height = NULL;
    }
    if(keyQuery_depth){
        free(keyQuery_depth);
        keyQuery_depth = NULL;
    }
    if(keyPairQuery_depth){
        keyValuePair_free(keyPairQuery_depth);
        keyPairQuery_depth = NULL;
    }
    if(keyQuery_weight){
        free(keyQuery_weight);
        keyQuery_weight = NULL;
    }
    if(keyPairQuery_weight){
        keyValuePair_free(keyPairQuery_weight);
        keyPairQuery_weight = NULL;
    }
    if(keyQuery_unit){
        free(keyQuery_unit);
        keyQuery_unit = NULL;
    }
    if(keyPairQuery_unit){
        keyValuePair_free(keyPairQuery_unit);
        keyPairQuery_unit = NULL;
    }
    if(keyQuery_studio){
        free(keyQuery_studio);
        keyQuery_studio = NULL;
    }
    if(valueQuery_studio){
        free(valueQuery_studio);
        valueQuery_studio = NULL;
    }
    if(keyPairQuery_studio){
        keyValuePair_free(keyPairQuery_studio);
        keyPairQuery_studio = NULL;
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
    if(keyQuery_publishDate){
        free(keyQuery_publishDate);
        keyQuery_publishDate = NULL;
    }
    if(keyPairQuery_publishDate){
        keyValuePair_free(keyPairQuery_publishDate);
        keyPairQuery_publishDate = NULL;
    }
    if(keyQuery_availabilityDate){
        free(keyQuery_availabilityDate);
        keyQuery_availabilityDate = NULL;
    }
    if(keyPairQuery_availabilityDate){
        keyValuePair_free(keyPairQuery_availabilityDate);
        keyPairQuery_availabilityDate = NULL;
    }
    if(keyQuery_sizeId){
        free(keyQuery_sizeId);
        keyQuery_sizeId = NULL;
    }
    if(keyPairQuery_sizeId){
        keyValuePair_free(keyPairQuery_sizeId);
        keyPairQuery_sizeId = NULL;
    }
    if(keyQuery_listingId){
        free(keyQuery_listingId);
        keyQuery_listingId = NULL;
    }
    if(keyPairQuery_listingId){
        keyValuePair_free(keyPairQuery_listingId);
        keyPairQuery_listingId = NULL;
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
    if(keyQuery_rebootTimeHour){
        free(keyQuery_rebootTimeHour);
        keyQuery_rebootTimeHour = NULL;
    }
    if(valueQuery_rebootTimeHour){
        free(valueQuery_rebootTimeHour);
        valueQuery_rebootTimeHour = NULL;
    }
    if(keyPairQuery_rebootTimeHour){
        keyValuePair_free(keyPairQuery_rebootTimeHour);
        keyPairQuery_rebootTimeHour = NULL;
    }
    if(keyQuery_rebootTimeMinute){
        free(keyQuery_rebootTimeMinute);
        keyQuery_rebootTimeMinute = NULL;
    }
    if(valueQuery_rebootTimeMinute){
        free(valueQuery_rebootTimeMinute);
        valueQuery_rebootTimeMinute = NULL;
    }
    if(keyPairQuery_rebootTimeMinute){
        keyValuePair_free(keyPairQuery_rebootTimeMinute);
        keyPairQuery_rebootTimeMinute = NULL;
    }
    if(keyQuery_idleTimeoutInSecond){
        free(keyQuery_idleTimeoutInSecond);
        keyQuery_idleTimeoutInSecond = NULL;
    }
    if(valueQuery_idleTimeoutInSecond){
        free(valueQuery_idleTimeoutInSecond);
        valueQuery_idleTimeoutInSecond = NULL;
    }
    if(keyPairQuery_idleTimeoutInSecond){
        keyValuePair_free(keyPairQuery_idleTimeoutInSecond);
        keyPairQuery_idleTimeoutInSecond = NULL;
    }
    if(keyQuery_serialNumber){
        free(keyQuery_serialNumber);
        keyQuery_serialNumber = NULL;
    }
    if(valueQuery_serialNumber){
        free(valueQuery_serialNumber);
        valueQuery_serialNumber = NULL;
    }
    if(keyPairQuery_serialNumber){
        keyValuePair_free(keyPairQuery_serialNumber);
        keyPairQuery_serialNumber = NULL;
    }
    if(keyQuery_udid){
        free(keyQuery_udid);
        keyQuery_udid = NULL;
    }
    if(valueQuery_udid){
        free(valueQuery_udid);
        valueQuery_udid = NULL;
    }
    if(keyPairQuery_udid){
        keyValuePair_free(keyPairQuery_udid);
        keyPairQuery_udid = NULL;
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
    if(keyQuery_devicePower){
        free(keyQuery_devicePower);
        keyQuery_devicePower = NULL;
    }
    if(keyPairQuery_devicePower){
        keyValuePair_free(keyPairQuery_devicePower);
        keyPairQuery_devicePower = NULL;
    }
    if(keyQuery_deviceInterference){
        free(keyQuery_deviceInterference);
        keyQuery_deviceInterference = NULL;
    }
    if(keyPairQuery_deviceInterference){
        keyValuePair_free(keyPairQuery_deviceInterference);
        keyPairQuery_deviceInterference = NULL;
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

// Delete Offer
//
// Set the deleted timestamp to current time. This effectively deletes the offer since all queries should ignore any records with a deleted time stamp.
//
sirqul_response_t*
OfferAPI_deleteOffer(apiClient_t *apiClient, double version, long offerId, char *deviceId, long accountId)
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
    char *localVarPath = strdup("/api/{version}/retailer/offer/delete");



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
    char *keyQuery_offerId = NULL;
    char * valueQuery_offerId ;
    keyValuePair_t *keyPairQuery_offerId = 0;
    {
        keyQuery_offerId = strdup("offerId");
        valueQuery_offerId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_offerId, MAX_NUMBER_LENGTH_LONG, "%d", offerId);
        keyPairQuery_offerId = keyValuePair_create(keyQuery_offerId, valueQuery_offerId);
        list_addElement(localVarQueryParameters,keyPairQuery_offerId);
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
        cJSON *OfferAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(OfferAPIlocalVarJSON);
        cJSON_Delete(OfferAPIlocalVarJSON);
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
    if(keyQuery_offerId){
        free(keyQuery_offerId);
        keyQuery_offerId = NULL;
    }
    if(keyPairQuery_offerId){
        keyValuePair_free(keyPairQuery_offerId);
        keyPairQuery_offerId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Delete Offer Location
//
// Set the deleted timestamp to current time. This effectively deletes the offer location since all queries should ignore any records with a deleted time stamp.
//
sirqul_response_t*
OfferAPI_deleteOfferLocation(apiClient_t *apiClient, double version, long offerLocationId, char *deviceId, long accountId)
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
    char *localVarPath = strdup("/api/{version}/retailer/offer/location/delete");



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
    sirqul_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *OfferAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(OfferAPIlocalVarJSON);
        cJSON_Delete(OfferAPIlocalVarJSON);
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

// Get Offer
//
// Gets the details of an offer that the user has access to.
//
retailer_offer_response_t*
OfferAPI_getOffer(apiClient_t *apiClient, double version, long offerId, int *includeOfferLocations, char *deviceId, long accountId)
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
    char *localVarPath = strdup("/api/{version}/retailer/offer/get");



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
    char *keyQuery_offerId = NULL;
    char * valueQuery_offerId ;
    keyValuePair_t *keyPairQuery_offerId = 0;
    {
        keyQuery_offerId = strdup("offerId");
        valueQuery_offerId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_offerId, MAX_NUMBER_LENGTH_LONG, "%d", offerId);
        keyPairQuery_offerId = keyValuePair_create(keyQuery_offerId, valueQuery_offerId);
        list_addElement(localVarQueryParameters,keyPairQuery_offerId);
    }

    // query parameters
    char *keyQuery_includeOfferLocations = NULL;
    char * valueQuery_includeOfferLocations = NULL;
    keyValuePair_t *keyPairQuery_includeOfferLocations = 0;
    if (includeOfferLocations)
    {
        keyQuery_includeOfferLocations = strdup("includeOfferLocations");
        valueQuery_includeOfferLocations = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeOfferLocations, MAX_NUMBER_LENGTH, "%d", *includeOfferLocations);
        keyPairQuery_includeOfferLocations = keyValuePair_create(keyQuery_includeOfferLocations, valueQuery_includeOfferLocations);
        list_addElement(localVarQueryParameters,keyPairQuery_includeOfferLocations);
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
    retailer_offer_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *OfferAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = retailer_offer_response_parseFromJSON(OfferAPIlocalVarJSON);
        cJSON_Delete(OfferAPIlocalVarJSON);
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
    if(keyQuery_offerId){
        free(keyQuery_offerId);
        keyQuery_offerId = NULL;
    }
    if(keyPairQuery_offerId){
        keyValuePair_free(keyPairQuery_offerId);
        keyPairQuery_offerId = NULL;
    }
    if(keyQuery_includeOfferLocations){
        free(keyQuery_includeOfferLocations);
        keyQuery_includeOfferLocations = NULL;
    }
    if(valueQuery_includeOfferLocations){
        free(valueQuery_includeOfferLocations);
        valueQuery_includeOfferLocations = NULL;
    }
    if(keyPairQuery_includeOfferLocations){
        keyValuePair_free(keyPairQuery_includeOfferLocations);
        keyPairQuery_includeOfferLocations = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Offer
//
// Gets offer or offer location details as a consumer.  Will check if it is a favorite if the deviceId/accountId is provided.  If the offerId is provided it will look up the main offer and ignore the the offerLocationId. If no offerId is provided then an offerLocationId must be specified.
//
offer_response_t*
OfferAPI_getOfferDetails(apiClient_t *apiClient, double version, char *deviceId, long accountId, long offerId, long offerLocationId, double distance, double latitude, double longitude, int *includeOfferLocations, int *includeRetailerLocations, int *includeChildOffers)
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
    char *localVarPath = strdup("/api/{version}/offer/get");



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
    char *keyQuery_offerId = NULL;
    char * valueQuery_offerId ;
    keyValuePair_t *keyPairQuery_offerId = 0;
    {
        keyQuery_offerId = strdup("offerId");
        valueQuery_offerId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_offerId, MAX_NUMBER_LENGTH_LONG, "%d", offerId);
        keyPairQuery_offerId = keyValuePair_create(keyQuery_offerId, valueQuery_offerId);
        list_addElement(localVarQueryParameters,keyPairQuery_offerId);
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

    // query parameters
    char *keyQuery_distance = NULL;
    char * valueQuery_distance = NULL;
    keyValuePair_t *keyPairQuery_distance = 0;
    {
        keyQuery_distance = strdup("distance");
        int s = snprintf(NULL, 0, "%.16e", distance);
        if (s >= 0)
        {
            valueQuery_distance = calloc(1,s+1);
            snprintf(valueQuery_distance, s+1, "%.16e", distance);
        }
        keyPairQuery_distance = keyValuePair_create(keyQuery_distance, valueQuery_distance);
        list_addElement(localVarQueryParameters,keyPairQuery_distance);
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
    char *keyQuery_includeOfferLocations = NULL;
    char * valueQuery_includeOfferLocations = NULL;
    keyValuePair_t *keyPairQuery_includeOfferLocations = 0;
    if (includeOfferLocations)
    {
        keyQuery_includeOfferLocations = strdup("includeOfferLocations");
        valueQuery_includeOfferLocations = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeOfferLocations, MAX_NUMBER_LENGTH, "%d", *includeOfferLocations);
        keyPairQuery_includeOfferLocations = keyValuePair_create(keyQuery_includeOfferLocations, valueQuery_includeOfferLocations);
        list_addElement(localVarQueryParameters,keyPairQuery_includeOfferLocations);
    }

    // query parameters
    char *keyQuery_includeRetailerLocations = NULL;
    char * valueQuery_includeRetailerLocations = NULL;
    keyValuePair_t *keyPairQuery_includeRetailerLocations = 0;
    if (includeRetailerLocations)
    {
        keyQuery_includeRetailerLocations = strdup("includeRetailerLocations");
        valueQuery_includeRetailerLocations = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeRetailerLocations, MAX_NUMBER_LENGTH, "%d", *includeRetailerLocations);
        keyPairQuery_includeRetailerLocations = keyValuePair_create(keyQuery_includeRetailerLocations, valueQuery_includeRetailerLocations);
        list_addElement(localVarQueryParameters,keyPairQuery_includeRetailerLocations);
    }

    // query parameters
    char *keyQuery_includeChildOffers = NULL;
    char * valueQuery_includeChildOffers = NULL;
    keyValuePair_t *keyPairQuery_includeChildOffers = 0;
    if (includeChildOffers)
    {
        keyQuery_includeChildOffers = strdup("includeChildOffers");
        valueQuery_includeChildOffers = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeChildOffers, MAX_NUMBER_LENGTH, "%d", *includeChildOffers);
        keyPairQuery_includeChildOffers = keyValuePair_create(keyQuery_includeChildOffers, valueQuery_includeChildOffers);
        list_addElement(localVarQueryParameters,keyPairQuery_includeChildOffers);
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
    offer_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *OfferAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = offer_response_parseFromJSON(OfferAPIlocalVarJSON);
        cJSON_Delete(OfferAPIlocalVarJSON);
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
    if(keyQuery_offerId){
        free(keyQuery_offerId);
        keyQuery_offerId = NULL;
    }
    if(keyPairQuery_offerId){
        keyValuePair_free(keyPairQuery_offerId);
        keyPairQuery_offerId = NULL;
    }
    if(keyQuery_offerLocationId){
        free(keyQuery_offerLocationId);
        keyQuery_offerLocationId = NULL;
    }
    if(keyPairQuery_offerLocationId){
        keyValuePair_free(keyPairQuery_offerLocationId);
        keyPairQuery_offerLocationId = NULL;
    }
    if(keyQuery_distance){
        free(keyQuery_distance);
        keyQuery_distance = NULL;
    }
    if(keyPairQuery_distance){
        keyValuePair_free(keyPairQuery_distance);
        keyPairQuery_distance = NULL;
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
    if(keyQuery_includeOfferLocations){
        free(keyQuery_includeOfferLocations);
        keyQuery_includeOfferLocations = NULL;
    }
    if(valueQuery_includeOfferLocations){
        free(valueQuery_includeOfferLocations);
        valueQuery_includeOfferLocations = NULL;
    }
    if(keyPairQuery_includeOfferLocations){
        keyValuePair_free(keyPairQuery_includeOfferLocations);
        keyPairQuery_includeOfferLocations = NULL;
    }
    if(keyQuery_includeRetailerLocations){
        free(keyQuery_includeRetailerLocations);
        keyQuery_includeRetailerLocations = NULL;
    }
    if(valueQuery_includeRetailerLocations){
        free(valueQuery_includeRetailerLocations);
        valueQuery_includeRetailerLocations = NULL;
    }
    if(keyPairQuery_includeRetailerLocations){
        keyValuePair_free(keyPairQuery_includeRetailerLocations);
        keyPairQuery_includeRetailerLocations = NULL;
    }
    if(keyQuery_includeChildOffers){
        free(keyQuery_includeChildOffers);
        keyQuery_includeChildOffers = NULL;
    }
    if(valueQuery_includeChildOffers){
        free(valueQuery_includeChildOffers);
        valueQuery_includeChildOffers = NULL;
    }
    if(keyPairQuery_includeChildOffers){
        keyValuePair_free(keyPairQuery_includeChildOffers);
        keyPairQuery_includeChildOffers = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Offers (Counts)
//
// Gets the offer list counts.
//
list_count_response_t*
OfferAPI_getOfferListCounts(apiClient_t *apiClient, double version, double latitude, double longitude, double searchRange, sirqul_iot_platform_getOfferListCounts_distanceUnit_e distanceUnit)
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
    char *localVarPath = strdup("/api/{version}/offer/lists/count");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



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
    char *keyQuery_searchRange = NULL;
    double valueQuery_searchRange ;
    keyValuePair_t *keyPairQuery_searchRange = 0;
    if (searchRange)
    {
        keyQuery_searchRange = strdup("searchRange");
        valueQuery_searchRange = (searchRange);
        keyPairQuery_searchRange = keyValuePair_create(keyQuery_searchRange, &valueQuery_searchRange);
        list_addElement(localVarQueryParameters,keyPairQuery_searchRange);
    }

    // query parameters
    char *keyQuery_distanceUnit = NULL;
    sirqul_iot_platform_getOfferListCounts_distanceUnit_e valueQuery_distanceUnit ;
    keyValuePair_t *keyPairQuery_distanceUnit = 0;
    if (distanceUnit)
    {
        keyQuery_distanceUnit = strdup("distanceUnit");
        valueQuery_distanceUnit = (distanceUnit);
        keyPairQuery_distanceUnit = keyValuePair_create(keyQuery_distanceUnit, strdup(getOfferListCounts_DISTANCEUNIT_ToString(
        valueQuery_distanceUnit)));
        list_addElement(localVarQueryParameters,keyPairQuery_distanceUnit);
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
    list_count_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *OfferAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = list_count_response_parseFromJSON(OfferAPIlocalVarJSON);
        cJSON_Delete(OfferAPIlocalVarJSON);
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
    if(keyQuery_searchRange){
        free(keyQuery_searchRange);
        keyQuery_searchRange = NULL;
    }
    if(keyPairQuery_searchRange){
        keyValuePair_free(keyPairQuery_searchRange);
        keyPairQuery_searchRange = NULL;
    }
    if(keyQuery_distanceUnit){
        free(keyQuery_distanceUnit);
        keyQuery_distanceUnit = NULL;
    }
    if(keyPairQuery_distanceUnit){
        keyValuePair_free(keyPairQuery_distanceUnit);
        keyPairQuery_distanceUnit = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Offer Location
//
// Gets the offer location by offer location id or udid (of a device)
//
offer_short_response_t*
OfferAPI_getOfferLocation(apiClient_t *apiClient, double version, long offerLocationId, char *udid)
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
    char *localVarPath = strdup("/api/{version}/offer/location/get");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



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

    // query parameters
    char *keyQuery_udid = NULL;
    char * valueQuery_udid = NULL;
    keyValuePair_t *keyPairQuery_udid = 0;
    if (udid)
    {
        keyQuery_udid = strdup("udid");
        valueQuery_udid = strdup((udid));
        keyPairQuery_udid = keyValuePair_create(keyQuery_udid, valueQuery_udid);
        list_addElement(localVarQueryParameters,keyPairQuery_udid);
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
    offer_short_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *OfferAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = offer_short_response_parseFromJSON(OfferAPIlocalVarJSON);
        cJSON_Delete(OfferAPIlocalVarJSON);
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
    if(keyQuery_offerLocationId){
        free(keyQuery_offerLocationId);
        keyQuery_offerLocationId = NULL;
    }
    if(keyPairQuery_offerLocationId){
        keyValuePair_free(keyPairQuery_offerLocationId);
        keyPairQuery_offerLocationId = NULL;
    }
    if(keyQuery_udid){
        free(keyQuery_udid);
        keyQuery_udid = NULL;
    }
    if(valueQuery_udid){
        free(valueQuery_udid);
        valueQuery_udid = NULL;
    }
    if(keyPairQuery_udid){
        keyValuePair_free(keyPairQuery_udid);
        keyPairQuery_udid = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Offer Locations
//
// Searches on offer locations, which are records that represent an offer that has been assigned to a retailer location. If an offer does not have any locations assigned, then it will NOT be returned.
//
list_t*
OfferAPI_getOfferLocationsForRetailers(apiClient_t *apiClient, double version, sirqul_iot_platform_getOfferLocationsForRetailers_sortField_e sortField, int *descending, int *start, int *limit, int *activeOnly, int *includeRetailerLocation, char *deviceId, long accountId, char *keyword, long retailerId, long retailerLocationId, sirqul_iot_platform_getOfferLocationsForRetailers_offerType_e offerType, sirqul_iot_platform_getOfferLocationsForRetailers_specialOfferType_e specialOfferType, char *barcodeType, char *barcodeEntry, char *isbn, char *asin, sirqul_iot_platform_getOfferLocationsForRetailers_deviceStatus_e deviceStatus, int *needsNotificationSent, long lastNotificationSent)
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
    char *localVarPath = strdup("/api/{version}/retailer/offer/location/search");



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
    char *keyQuery_retailerId = NULL;
    char * valueQuery_retailerId ;
    keyValuePair_t *keyPairQuery_retailerId = 0;
    {
        keyQuery_retailerId = strdup("retailerId");
        valueQuery_retailerId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_retailerId, MAX_NUMBER_LENGTH_LONG, "%d", retailerId);
        keyPairQuery_retailerId = keyValuePair_create(keyQuery_retailerId, valueQuery_retailerId);
        list_addElement(localVarQueryParameters,keyPairQuery_retailerId);
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
    char *keyQuery_offerType = NULL;
    sirqul_iot_platform_getOfferLocationsForRetailers_offerType_e valueQuery_offerType ;
    keyValuePair_t *keyPairQuery_offerType = 0;
    if (offerType)
    {
        keyQuery_offerType = strdup("offerType");
        valueQuery_offerType = (offerType);
        keyPairQuery_offerType = keyValuePair_create(keyQuery_offerType, strdup(getOfferLocationsForRetailers_OFFERTYPE_ToString(
        valueQuery_offerType)));
        list_addElement(localVarQueryParameters,keyPairQuery_offerType);
    }

    // query parameters
    char *keyQuery_specialOfferType = NULL;
    sirqul_iot_platform_getOfferLocationsForRetailers_specialOfferType_e valueQuery_specialOfferType ;
    keyValuePair_t *keyPairQuery_specialOfferType = 0;
    if (specialOfferType)
    {
        keyQuery_specialOfferType = strdup("specialOfferType");
        valueQuery_specialOfferType = (specialOfferType);
        keyPairQuery_specialOfferType = keyValuePair_create(keyQuery_specialOfferType, strdup(getOfferLocationsForRetailers_SPECIALOFFERTYPE_ToString(
        valueQuery_specialOfferType)));
        list_addElement(localVarQueryParameters,keyPairQuery_specialOfferType);
    }

    // query parameters
    char *keyQuery_sortField = NULL;
    sirqul_iot_platform_getOfferLocationsForRetailers_sortField_e valueQuery_sortField ;
    keyValuePair_t *keyPairQuery_sortField = 0;
    if (sortField)
    {
        keyQuery_sortField = strdup("sortField");
        valueQuery_sortField = (sortField);
        keyPairQuery_sortField = keyValuePair_create(keyQuery_sortField, strdup(getOfferLocationsForRetailers_SORTFIELD_ToString(
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

    // query parameters
    char *keyQuery_includeRetailerLocation = NULL;
    char * valueQuery_includeRetailerLocation = NULL;
    keyValuePair_t *keyPairQuery_includeRetailerLocation = 0;
    if (includeRetailerLocation)
    {
        keyQuery_includeRetailerLocation = strdup("includeRetailerLocation");
        valueQuery_includeRetailerLocation = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeRetailerLocation, MAX_NUMBER_LENGTH, "%d", *includeRetailerLocation);
        keyPairQuery_includeRetailerLocation = keyValuePair_create(keyQuery_includeRetailerLocation, valueQuery_includeRetailerLocation);
        list_addElement(localVarQueryParameters,keyPairQuery_includeRetailerLocation);
    }

    // query parameters
    char *keyQuery_barcodeType = NULL;
    char * valueQuery_barcodeType = NULL;
    keyValuePair_t *keyPairQuery_barcodeType = 0;
    if (barcodeType)
    {
        keyQuery_barcodeType = strdup("barcodeType");
        valueQuery_barcodeType = strdup((barcodeType));
        keyPairQuery_barcodeType = keyValuePair_create(keyQuery_barcodeType, valueQuery_barcodeType);
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
    char *keyQuery_deviceStatus = NULL;
    sirqul_iot_platform_getOfferLocationsForRetailers_deviceStatus_e valueQuery_deviceStatus ;
    keyValuePair_t *keyPairQuery_deviceStatus = 0;
    if (deviceStatus)
    {
        keyQuery_deviceStatus = strdup("deviceStatus");
        valueQuery_deviceStatus = (deviceStatus);
        keyPairQuery_deviceStatus = keyValuePair_create(keyQuery_deviceStatus, strdup(getOfferLocationsForRetailers_DEVICESTATUS_ToString(
        valueQuery_deviceStatus)));
        list_addElement(localVarQueryParameters,keyPairQuery_deviceStatus);
    }

    // query parameters
    char *keyQuery_needsNotificationSent = NULL;
    char * valueQuery_needsNotificationSent = NULL;
    keyValuePair_t *keyPairQuery_needsNotificationSent = 0;
    if (needsNotificationSent)
    {
        keyQuery_needsNotificationSent = strdup("needsNotificationSent");
        valueQuery_needsNotificationSent = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_needsNotificationSent, MAX_NUMBER_LENGTH, "%d", *needsNotificationSent);
        keyPairQuery_needsNotificationSent = keyValuePair_create(keyQuery_needsNotificationSent, valueQuery_needsNotificationSent);
        list_addElement(localVarQueryParameters,keyPairQuery_needsNotificationSent);
    }

    // query parameters
    char *keyQuery_lastNotificationSent = NULL;
    char * valueQuery_lastNotificationSent ;
    keyValuePair_t *keyPairQuery_lastNotificationSent = 0;
    {
        keyQuery_lastNotificationSent = strdup("lastNotificationSent");
        valueQuery_lastNotificationSent = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_lastNotificationSent, MAX_NUMBER_LENGTH_LONG, "%d", lastNotificationSent);
        keyPairQuery_lastNotificationSent = keyValuePair_create(keyQuery_lastNotificationSent, valueQuery_lastNotificationSent);
        list_addElement(localVarQueryParameters,keyPairQuery_lastNotificationSent);
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
        cJSON *OfferAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(OfferAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, OfferAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( OfferAPIlocalVarJSON);
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
    if(keyQuery_retailerId){
        free(keyQuery_retailerId);
        keyQuery_retailerId = NULL;
    }
    if(keyPairQuery_retailerId){
        keyValuePair_free(keyPairQuery_retailerId);
        keyPairQuery_retailerId = NULL;
    }
    if(keyQuery_retailerLocationId){
        free(keyQuery_retailerLocationId);
        keyQuery_retailerLocationId = NULL;
    }
    if(keyPairQuery_retailerLocationId){
        keyValuePair_free(keyPairQuery_retailerLocationId);
        keyPairQuery_retailerLocationId = NULL;
    }
    if(keyQuery_offerType){
        free(keyQuery_offerType);
        keyQuery_offerType = NULL;
    }
    if(keyPairQuery_offerType){
        keyValuePair_free(keyPairQuery_offerType);
        keyPairQuery_offerType = NULL;
    }
    if(keyQuery_specialOfferType){
        free(keyQuery_specialOfferType);
        keyQuery_specialOfferType = NULL;
    }
    if(keyPairQuery_specialOfferType){
        keyValuePair_free(keyPairQuery_specialOfferType);
        keyPairQuery_specialOfferType = NULL;
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
    if(keyQuery_includeRetailerLocation){
        free(keyQuery_includeRetailerLocation);
        keyQuery_includeRetailerLocation = NULL;
    }
    if(valueQuery_includeRetailerLocation){
        free(valueQuery_includeRetailerLocation);
        valueQuery_includeRetailerLocation = NULL;
    }
    if(keyPairQuery_includeRetailerLocation){
        keyValuePair_free(keyPairQuery_includeRetailerLocation);
        keyPairQuery_includeRetailerLocation = NULL;
    }
    if(keyQuery_barcodeType){
        free(keyQuery_barcodeType);
        keyQuery_barcodeType = NULL;
    }
    if(valueQuery_barcodeType){
        free(valueQuery_barcodeType);
        valueQuery_barcodeType = NULL;
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
    if(keyQuery_deviceStatus){
        free(keyQuery_deviceStatus);
        keyQuery_deviceStatus = NULL;
    }
    if(keyPairQuery_deviceStatus){
        keyValuePair_free(keyPairQuery_deviceStatus);
        keyPairQuery_deviceStatus = NULL;
    }
    if(keyQuery_needsNotificationSent){
        free(keyQuery_needsNotificationSent);
        keyQuery_needsNotificationSent = NULL;
    }
    if(valueQuery_needsNotificationSent){
        free(valueQuery_needsNotificationSent);
        valueQuery_needsNotificationSent = NULL;
    }
    if(keyPairQuery_needsNotificationSent){
        keyValuePair_free(keyPairQuery_needsNotificationSent);
        keyPairQuery_needsNotificationSent = NULL;
    }
    if(keyQuery_lastNotificationSent){
        free(keyQuery_lastNotificationSent);
        keyQuery_lastNotificationSent = NULL;
    }
    if(keyPairQuery_lastNotificationSent){
        keyValuePair_free(keyPairQuery_lastNotificationSent);
        keyPairQuery_lastNotificationSent = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Offers
//
// Searches on offers that the account has access to.
//
list_t*
OfferAPI_getOffersForRetailers(apiClient_t *apiClient, double version, sirqul_iot_platform_getOffersForRetailers_offerVisibility_e offerVisibility, sirqul_iot_platform_getOffersForRetailers_sortField_e sortField, int *descending, int *start, int *limit, int *availableOnly, int *activeOnly, int *includeCategories, int *includeFilters, int *includeOfferLocations, char *deviceId, long accountId, char *categoryIds, char *filterIds, char *q, char *keyword, long retailerId, long retailerLocationId, sirqul_iot_platform_getOffersForRetailers_couponType_e couponType, sirqul_iot_platform_getOffersForRetailers_offerType_e offerType, char *offerTypes, sirqul_iot_platform_getOffersForRetailers_specialOfferType_e specialOfferType, int *_i, int *_l, char *barcodeType, char *barcodeEntry, char *isbn, char *asin, sirqul_iot_platform_getOffersForRetailers_deviceStatus_e deviceStatus, int *needsNotificationSent, long lastNotificationSent)
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
    char *localVarPath = strdup("/api/{version}/retailer/offer/search");



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
    char *keyQuery_retailerId = NULL;
    char * valueQuery_retailerId ;
    keyValuePair_t *keyPairQuery_retailerId = 0;
    {
        keyQuery_retailerId = strdup("retailerId");
        valueQuery_retailerId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_retailerId, MAX_NUMBER_LENGTH_LONG, "%d", retailerId);
        keyPairQuery_retailerId = keyValuePair_create(keyQuery_retailerId, valueQuery_retailerId);
        list_addElement(localVarQueryParameters,keyPairQuery_retailerId);
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
    char *keyQuery_couponType = NULL;
    sirqul_iot_platform_getOffersForRetailers_couponType_e valueQuery_couponType ;
    keyValuePair_t *keyPairQuery_couponType = 0;
    if (couponType)
    {
        keyQuery_couponType = strdup("couponType");
        valueQuery_couponType = (couponType);
        keyPairQuery_couponType = keyValuePair_create(keyQuery_couponType, strdup(getOffersForRetailers_COUPONTYPE_ToString(
        valueQuery_couponType)));
        list_addElement(localVarQueryParameters,keyPairQuery_couponType);
    }

    // query parameters
    char *keyQuery_offerType = NULL;
    sirqul_iot_platform_getOffersForRetailers_offerType_e valueQuery_offerType ;
    keyValuePair_t *keyPairQuery_offerType = 0;
    if (offerType)
    {
        keyQuery_offerType = strdup("offerType");
        valueQuery_offerType = (offerType);
        keyPairQuery_offerType = keyValuePair_create(keyQuery_offerType, strdup(getOffersForRetailers_OFFERTYPE_ToString(
        valueQuery_offerType)));
        list_addElement(localVarQueryParameters,keyPairQuery_offerType);
    }

    // query parameters
    char *keyQuery_offerTypes = NULL;
    char * valueQuery_offerTypes = NULL;
    keyValuePair_t *keyPairQuery_offerTypes = 0;
    if (offerTypes)
    {
        keyQuery_offerTypes = strdup("offerTypes");
        valueQuery_offerTypes = strdup((offerTypes));
        keyPairQuery_offerTypes = keyValuePair_create(keyQuery_offerTypes, valueQuery_offerTypes);
        list_addElement(localVarQueryParameters,keyPairQuery_offerTypes);
    }

    // query parameters
    char *keyQuery_specialOfferType = NULL;
    sirqul_iot_platform_getOffersForRetailers_specialOfferType_e valueQuery_specialOfferType ;
    keyValuePair_t *keyPairQuery_specialOfferType = 0;
    if (specialOfferType)
    {
        keyQuery_specialOfferType = strdup("specialOfferType");
        valueQuery_specialOfferType = (specialOfferType);
        keyPairQuery_specialOfferType = keyValuePair_create(keyQuery_specialOfferType, strdup(getOffersForRetailers_SPECIALOFFERTYPE_ToString(
        valueQuery_specialOfferType)));
        list_addElement(localVarQueryParameters,keyPairQuery_specialOfferType);
    }

    // query parameters
    char *keyQuery_offerVisibility = NULL;
    sirqul_iot_platform_getOffersForRetailers_offerVisibility_e valueQuery_offerVisibility ;
    keyValuePair_t *keyPairQuery_offerVisibility = 0;
    if (offerVisibility)
    {
        keyQuery_offerVisibility = strdup("offerVisibility");
        valueQuery_offerVisibility = (offerVisibility);
        keyPairQuery_offerVisibility = keyValuePair_create(keyQuery_offerVisibility, strdup(getOffersForRetailers_OFFERVISIBILITY_ToString(
        valueQuery_offerVisibility)));
        list_addElement(localVarQueryParameters,keyPairQuery_offerVisibility);
    }

    // query parameters
    char *keyQuery_sortField = NULL;
    sirqul_iot_platform_getOffersForRetailers_sortField_e valueQuery_sortField ;
    keyValuePair_t *keyPairQuery_sortField = 0;
    if (sortField)
    {
        keyQuery_sortField = strdup("sortField");
        valueQuery_sortField = (sortField);
        keyPairQuery_sortField = keyValuePair_create(keyQuery_sortField, strdup(getOffersForRetailers_SORTFIELD_ToString(
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
    char *keyQuery_availableOnly = NULL;
    char * valueQuery_availableOnly = NULL;
    keyValuePair_t *keyPairQuery_availableOnly = 0;
    if (availableOnly)
    {
        keyQuery_availableOnly = strdup("availableOnly");
        valueQuery_availableOnly = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_availableOnly, MAX_NUMBER_LENGTH, "%d", *availableOnly);
        keyPairQuery_availableOnly = keyValuePair_create(keyQuery_availableOnly, valueQuery_availableOnly);
        list_addElement(localVarQueryParameters,keyPairQuery_availableOnly);
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
    char *keyQuery_includeCategories = NULL;
    char * valueQuery_includeCategories = NULL;
    keyValuePair_t *keyPairQuery_includeCategories = 0;
    if (includeCategories)
    {
        keyQuery_includeCategories = strdup("includeCategories");
        valueQuery_includeCategories = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeCategories, MAX_NUMBER_LENGTH, "%d", *includeCategories);
        keyPairQuery_includeCategories = keyValuePair_create(keyQuery_includeCategories, valueQuery_includeCategories);
        list_addElement(localVarQueryParameters,keyPairQuery_includeCategories);
    }

    // query parameters
    char *keyQuery_includeFilters = NULL;
    char * valueQuery_includeFilters = NULL;
    keyValuePair_t *keyPairQuery_includeFilters = 0;
    if (includeFilters)
    {
        keyQuery_includeFilters = strdup("includeFilters");
        valueQuery_includeFilters = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeFilters, MAX_NUMBER_LENGTH, "%d", *includeFilters);
        keyPairQuery_includeFilters = keyValuePair_create(keyQuery_includeFilters, valueQuery_includeFilters);
        list_addElement(localVarQueryParameters,keyPairQuery_includeFilters);
    }

    // query parameters
    char *keyQuery_includeOfferLocations = NULL;
    char * valueQuery_includeOfferLocations = NULL;
    keyValuePair_t *keyPairQuery_includeOfferLocations = 0;
    if (includeOfferLocations)
    {
        keyQuery_includeOfferLocations = strdup("includeOfferLocations");
        valueQuery_includeOfferLocations = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeOfferLocations, MAX_NUMBER_LENGTH, "%d", *includeOfferLocations);
        keyPairQuery_includeOfferLocations = keyValuePair_create(keyQuery_includeOfferLocations, valueQuery_includeOfferLocations);
        list_addElement(localVarQueryParameters,keyPairQuery_includeOfferLocations);
    }

    // query parameters
    char *keyQuery_barcodeType = NULL;
    char * valueQuery_barcodeType = NULL;
    keyValuePair_t *keyPairQuery_barcodeType = 0;
    if (barcodeType)
    {
        keyQuery_barcodeType = strdup("barcodeType");
        valueQuery_barcodeType = strdup((barcodeType));
        keyPairQuery_barcodeType = keyValuePair_create(keyQuery_barcodeType, valueQuery_barcodeType);
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
    char *keyQuery_deviceStatus = NULL;
    sirqul_iot_platform_getOffersForRetailers_deviceStatus_e valueQuery_deviceStatus ;
    keyValuePair_t *keyPairQuery_deviceStatus = 0;
    if (deviceStatus)
    {
        keyQuery_deviceStatus = strdup("deviceStatus");
        valueQuery_deviceStatus = (deviceStatus);
        keyPairQuery_deviceStatus = keyValuePair_create(keyQuery_deviceStatus, strdup(getOffersForRetailers_DEVICESTATUS_ToString(
        valueQuery_deviceStatus)));
        list_addElement(localVarQueryParameters,keyPairQuery_deviceStatus);
    }

    // query parameters
    char *keyQuery_needsNotificationSent = NULL;
    char * valueQuery_needsNotificationSent = NULL;
    keyValuePair_t *keyPairQuery_needsNotificationSent = 0;
    if (needsNotificationSent)
    {
        keyQuery_needsNotificationSent = strdup("needsNotificationSent");
        valueQuery_needsNotificationSent = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_needsNotificationSent, MAX_NUMBER_LENGTH, "%d", *needsNotificationSent);
        keyPairQuery_needsNotificationSent = keyValuePair_create(keyQuery_needsNotificationSent, valueQuery_needsNotificationSent);
        list_addElement(localVarQueryParameters,keyPairQuery_needsNotificationSent);
    }

    // query parameters
    char *keyQuery_lastNotificationSent = NULL;
    char * valueQuery_lastNotificationSent ;
    keyValuePair_t *keyPairQuery_lastNotificationSent = 0;
    {
        keyQuery_lastNotificationSent = strdup("lastNotificationSent");
        valueQuery_lastNotificationSent = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_lastNotificationSent, MAX_NUMBER_LENGTH_LONG, "%d", lastNotificationSent);
        keyPairQuery_lastNotificationSent = keyValuePair_create(keyQuery_lastNotificationSent, valueQuery_lastNotificationSent);
        list_addElement(localVarQueryParameters,keyPairQuery_lastNotificationSent);
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
        cJSON *OfferAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(OfferAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, OfferAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( OfferAPIlocalVarJSON);
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
    if(keyQuery_retailerId){
        free(keyQuery_retailerId);
        keyQuery_retailerId = NULL;
    }
    if(keyPairQuery_retailerId){
        keyValuePair_free(keyPairQuery_retailerId);
        keyPairQuery_retailerId = NULL;
    }
    if(keyQuery_retailerLocationId){
        free(keyQuery_retailerLocationId);
        keyQuery_retailerLocationId = NULL;
    }
    if(keyPairQuery_retailerLocationId){
        keyValuePair_free(keyPairQuery_retailerLocationId);
        keyPairQuery_retailerLocationId = NULL;
    }
    if(keyQuery_couponType){
        free(keyQuery_couponType);
        keyQuery_couponType = NULL;
    }
    if(keyPairQuery_couponType){
        keyValuePair_free(keyPairQuery_couponType);
        keyPairQuery_couponType = NULL;
    }
    if(keyQuery_offerType){
        free(keyQuery_offerType);
        keyQuery_offerType = NULL;
    }
    if(keyPairQuery_offerType){
        keyValuePair_free(keyPairQuery_offerType);
        keyPairQuery_offerType = NULL;
    }
    if(keyQuery_offerTypes){
        free(keyQuery_offerTypes);
        keyQuery_offerTypes = NULL;
    }
    if(valueQuery_offerTypes){
        free(valueQuery_offerTypes);
        valueQuery_offerTypes = NULL;
    }
    if(keyPairQuery_offerTypes){
        keyValuePair_free(keyPairQuery_offerTypes);
        keyPairQuery_offerTypes = NULL;
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
    if(keyQuery_availableOnly){
        free(keyQuery_availableOnly);
        keyQuery_availableOnly = NULL;
    }
    if(valueQuery_availableOnly){
        free(valueQuery_availableOnly);
        valueQuery_availableOnly = NULL;
    }
    if(keyPairQuery_availableOnly){
        keyValuePair_free(keyPairQuery_availableOnly);
        keyPairQuery_availableOnly = NULL;
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
    if(keyQuery_includeCategories){
        free(keyQuery_includeCategories);
        keyQuery_includeCategories = NULL;
    }
    if(valueQuery_includeCategories){
        free(valueQuery_includeCategories);
        valueQuery_includeCategories = NULL;
    }
    if(keyPairQuery_includeCategories){
        keyValuePair_free(keyPairQuery_includeCategories);
        keyPairQuery_includeCategories = NULL;
    }
    if(keyQuery_includeFilters){
        free(keyQuery_includeFilters);
        keyQuery_includeFilters = NULL;
    }
    if(valueQuery_includeFilters){
        free(valueQuery_includeFilters);
        valueQuery_includeFilters = NULL;
    }
    if(keyPairQuery_includeFilters){
        keyValuePair_free(keyPairQuery_includeFilters);
        keyPairQuery_includeFilters = NULL;
    }
    if(keyQuery_includeOfferLocations){
        free(keyQuery_includeOfferLocations);
        keyQuery_includeOfferLocations = NULL;
    }
    if(valueQuery_includeOfferLocations){
        free(valueQuery_includeOfferLocations);
        valueQuery_includeOfferLocations = NULL;
    }
    if(keyPairQuery_includeOfferLocations){
        keyValuePair_free(keyPairQuery_includeOfferLocations);
        keyPairQuery_includeOfferLocations = NULL;
    }
    if(keyQuery_barcodeType){
        free(keyQuery_barcodeType);
        keyQuery_barcodeType = NULL;
    }
    if(valueQuery_barcodeType){
        free(valueQuery_barcodeType);
        valueQuery_barcodeType = NULL;
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
    if(keyQuery_deviceStatus){
        free(keyQuery_deviceStatus);
        keyQuery_deviceStatus = NULL;
    }
    if(keyPairQuery_deviceStatus){
        keyValuePair_free(keyPairQuery_deviceStatus);
        keyPairQuery_deviceStatus = NULL;
    }
    if(keyQuery_needsNotificationSent){
        free(keyQuery_needsNotificationSent);
        keyQuery_needsNotificationSent = NULL;
    }
    if(valueQuery_needsNotificationSent){
        free(valueQuery_needsNotificationSent);
        valueQuery_needsNotificationSent = NULL;
    }
    if(keyPairQuery_needsNotificationSent){
        keyValuePair_free(keyPairQuery_needsNotificationSent);
        keyPairQuery_needsNotificationSent = NULL;
    }
    if(keyQuery_lastNotificationSent){
        free(keyQuery_lastNotificationSent);
        keyQuery_lastNotificationSent = NULL;
    }
    if(keyPairQuery_lastNotificationSent){
        keyValuePair_free(keyPairQuery_lastNotificationSent);
        keyPairQuery_lastNotificationSent = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Update Offer Transaction
//
// Redeems an offer.
//
sirqul_response_t*
OfferAPI_redeemOfferTransaction(apiClient_t *apiClient, double version, long offerTransactionId, int *status, char *deviceId, long accountId, long offerLocationId)
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
    char *localVarPath = strdup("/api/{version}/retailer/offer/transaction/update");



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
    char *keyQuery_offerTransactionId = NULL;
    char * valueQuery_offerTransactionId ;
    keyValuePair_t *keyPairQuery_offerTransactionId = 0;
    {
        keyQuery_offerTransactionId = strdup("offerTransactionId");
        valueQuery_offerTransactionId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_offerTransactionId, MAX_NUMBER_LENGTH_LONG, "%d", offerTransactionId);
        keyPairQuery_offerTransactionId = keyValuePair_create(keyQuery_offerTransactionId, valueQuery_offerTransactionId);
        list_addElement(localVarQueryParameters,keyPairQuery_offerTransactionId);
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

    // query parameters
    char *keyQuery_status = NULL;
    char * valueQuery_status = NULL;
    keyValuePair_t *keyPairQuery_status = 0;
    if (status)
    {
        keyQuery_status = strdup("status");
        valueQuery_status = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_status, MAX_NUMBER_LENGTH, "%d", *status);
        keyPairQuery_status = keyValuePair_create(keyQuery_status, valueQuery_status);
        list_addElement(localVarQueryParameters,keyPairQuery_status);
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
        cJSON *OfferAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(OfferAPIlocalVarJSON);
        cJSON_Delete(OfferAPIlocalVarJSON);
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
    if(keyQuery_offerTransactionId){
        free(keyQuery_offerTransactionId);
        keyQuery_offerTransactionId = NULL;
    }
    if(keyPairQuery_offerTransactionId){
        keyValuePair_free(keyPairQuery_offerTransactionId);
        keyPairQuery_offerTransactionId = NULL;
    }
    if(keyQuery_offerLocationId){
        free(keyQuery_offerLocationId);
        keyQuery_offerLocationId = NULL;
    }
    if(keyPairQuery_offerLocationId){
        keyValuePair_free(keyPairQuery_offerLocationId);
        keyPairQuery_offerLocationId = NULL;
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Offer Transactions
//
// Searches on offer transactions for offers that the account has access to.
//
list_t*
OfferAPI_searchOfferTransactionsForRetailers(apiClient_t *apiClient, double version, sirqul_iot_platform_searchOfferTransactionsForRetailers_sortField_e sortField, int *descending, int *start, int *limit, int *activeOnly, char *deviceId, long accountId, char *q, char *keyword, long retailerId, long retailerLocationId, long offerId, long offerLocationId, int *redeemed, int *reservationsOnly, sirqul_iot_platform_searchOfferTransactionsForRetailers_couponType_e couponType, sirqul_iot_platform_searchOfferTransactionsForRetailers_offerType_e offerType, sirqul_iot_platform_searchOfferTransactionsForRetailers_specialOfferType_e specialOfferType, char *customerAccountIds, char *categoryIds, long redeemableStartDate, long redeemableEndDate, int *_i, int *_l)
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
    char *localVarPath = strdup("/api/{version}/retailer/offer/transaction/search");



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
    char *keyQuery_retailerId = NULL;
    char * valueQuery_retailerId ;
    keyValuePair_t *keyPairQuery_retailerId = 0;
    {
        keyQuery_retailerId = strdup("retailerId");
        valueQuery_retailerId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_retailerId, MAX_NUMBER_LENGTH_LONG, "%d", retailerId);
        keyPairQuery_retailerId = keyValuePair_create(keyQuery_retailerId, valueQuery_retailerId);
        list_addElement(localVarQueryParameters,keyPairQuery_retailerId);
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
    char *keyQuery_offerId = NULL;
    char * valueQuery_offerId ;
    keyValuePair_t *keyPairQuery_offerId = 0;
    {
        keyQuery_offerId = strdup("offerId");
        valueQuery_offerId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_offerId, MAX_NUMBER_LENGTH_LONG, "%d", offerId);
        keyPairQuery_offerId = keyValuePair_create(keyQuery_offerId, valueQuery_offerId);
        list_addElement(localVarQueryParameters,keyPairQuery_offerId);
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

    // query parameters
    char *keyQuery_redeemed = NULL;
    char * valueQuery_redeemed = NULL;
    keyValuePair_t *keyPairQuery_redeemed = 0;
    if (redeemed)
    {
        keyQuery_redeemed = strdup("redeemed");
        valueQuery_redeemed = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_redeemed, MAX_NUMBER_LENGTH, "%d", *redeemed);
        keyPairQuery_redeemed = keyValuePair_create(keyQuery_redeemed, valueQuery_redeemed);
        list_addElement(localVarQueryParameters,keyPairQuery_redeemed);
    }

    // query parameters
    char *keyQuery_reservationsOnly = NULL;
    char * valueQuery_reservationsOnly = NULL;
    keyValuePair_t *keyPairQuery_reservationsOnly = 0;
    if (reservationsOnly)
    {
        keyQuery_reservationsOnly = strdup("reservationsOnly");
        valueQuery_reservationsOnly = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_reservationsOnly, MAX_NUMBER_LENGTH, "%d", *reservationsOnly);
        keyPairQuery_reservationsOnly = keyValuePair_create(keyQuery_reservationsOnly, valueQuery_reservationsOnly);
        list_addElement(localVarQueryParameters,keyPairQuery_reservationsOnly);
    }

    // query parameters
    char *keyQuery_couponType = NULL;
    sirqul_iot_platform_searchOfferTransactionsForRetailers_couponType_e valueQuery_couponType ;
    keyValuePair_t *keyPairQuery_couponType = 0;
    if (couponType)
    {
        keyQuery_couponType = strdup("couponType");
        valueQuery_couponType = (couponType);
        keyPairQuery_couponType = keyValuePair_create(keyQuery_couponType, strdup(searchOfferTransactionsForRetailers_COUPONTYPE_ToString(
        valueQuery_couponType)));
        list_addElement(localVarQueryParameters,keyPairQuery_couponType);
    }

    // query parameters
    char *keyQuery_offerType = NULL;
    sirqul_iot_platform_searchOfferTransactionsForRetailers_offerType_e valueQuery_offerType ;
    keyValuePair_t *keyPairQuery_offerType = 0;
    if (offerType)
    {
        keyQuery_offerType = strdup("offerType");
        valueQuery_offerType = (offerType);
        keyPairQuery_offerType = keyValuePair_create(keyQuery_offerType, strdup(searchOfferTransactionsForRetailers_OFFERTYPE_ToString(
        valueQuery_offerType)));
        list_addElement(localVarQueryParameters,keyPairQuery_offerType);
    }

    // query parameters
    char *keyQuery_specialOfferType = NULL;
    sirqul_iot_platform_searchOfferTransactionsForRetailers_specialOfferType_e valueQuery_specialOfferType ;
    keyValuePair_t *keyPairQuery_specialOfferType = 0;
    if (specialOfferType)
    {
        keyQuery_specialOfferType = strdup("specialOfferType");
        valueQuery_specialOfferType = (specialOfferType);
        keyPairQuery_specialOfferType = keyValuePair_create(keyQuery_specialOfferType, strdup(searchOfferTransactionsForRetailers_SPECIALOFFERTYPE_ToString(
        valueQuery_specialOfferType)));
        list_addElement(localVarQueryParameters,keyPairQuery_specialOfferType);
    }

    // query parameters
    char *keyQuery_customerAccountIds = NULL;
    char * valueQuery_customerAccountIds = NULL;
    keyValuePair_t *keyPairQuery_customerAccountIds = 0;
    if (customerAccountIds)
    {
        keyQuery_customerAccountIds = strdup("customerAccountIds");
        valueQuery_customerAccountIds = strdup((customerAccountIds));
        keyPairQuery_customerAccountIds = keyValuePair_create(keyQuery_customerAccountIds, valueQuery_customerAccountIds);
        list_addElement(localVarQueryParameters,keyPairQuery_customerAccountIds);
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
    char *keyQuery_redeemableStartDate = NULL;
    char * valueQuery_redeemableStartDate ;
    keyValuePair_t *keyPairQuery_redeemableStartDate = 0;
    {
        keyQuery_redeemableStartDate = strdup("redeemableStartDate");
        valueQuery_redeemableStartDate = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_redeemableStartDate, MAX_NUMBER_LENGTH_LONG, "%d", redeemableStartDate);
        keyPairQuery_redeemableStartDate = keyValuePair_create(keyQuery_redeemableStartDate, valueQuery_redeemableStartDate);
        list_addElement(localVarQueryParameters,keyPairQuery_redeemableStartDate);
    }

    // query parameters
    char *keyQuery_redeemableEndDate = NULL;
    char * valueQuery_redeemableEndDate ;
    keyValuePair_t *keyPairQuery_redeemableEndDate = 0;
    {
        keyQuery_redeemableEndDate = strdup("redeemableEndDate");
        valueQuery_redeemableEndDate = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_redeemableEndDate, MAX_NUMBER_LENGTH_LONG, "%d", redeemableEndDate);
        keyPairQuery_redeemableEndDate = keyValuePair_create(keyQuery_redeemableEndDate, valueQuery_redeemableEndDate);
        list_addElement(localVarQueryParameters,keyPairQuery_redeemableEndDate);
    }

    // query parameters
    char *keyQuery_sortField = NULL;
    sirqul_iot_platform_searchOfferTransactionsForRetailers_sortField_e valueQuery_sortField ;
    keyValuePair_t *keyPairQuery_sortField = 0;
    if (sortField)
    {
        keyQuery_sortField = strdup("sortField");
        valueQuery_sortField = (sortField);
        keyPairQuery_sortField = keyValuePair_create(keyQuery_sortField, strdup(searchOfferTransactionsForRetailers_SORTFIELD_ToString(
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
        cJSON *OfferAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(OfferAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, OfferAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( OfferAPIlocalVarJSON);
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
    if(keyQuery_retailerId){
        free(keyQuery_retailerId);
        keyQuery_retailerId = NULL;
    }
    if(keyPairQuery_retailerId){
        keyValuePair_free(keyPairQuery_retailerId);
        keyPairQuery_retailerId = NULL;
    }
    if(keyQuery_retailerLocationId){
        free(keyQuery_retailerLocationId);
        keyQuery_retailerLocationId = NULL;
    }
    if(keyPairQuery_retailerLocationId){
        keyValuePair_free(keyPairQuery_retailerLocationId);
        keyPairQuery_retailerLocationId = NULL;
    }
    if(keyQuery_offerId){
        free(keyQuery_offerId);
        keyQuery_offerId = NULL;
    }
    if(keyPairQuery_offerId){
        keyValuePair_free(keyPairQuery_offerId);
        keyPairQuery_offerId = NULL;
    }
    if(keyQuery_offerLocationId){
        free(keyQuery_offerLocationId);
        keyQuery_offerLocationId = NULL;
    }
    if(keyPairQuery_offerLocationId){
        keyValuePair_free(keyPairQuery_offerLocationId);
        keyPairQuery_offerLocationId = NULL;
    }
    if(keyQuery_redeemed){
        free(keyQuery_redeemed);
        keyQuery_redeemed = NULL;
    }
    if(valueQuery_redeemed){
        free(valueQuery_redeemed);
        valueQuery_redeemed = NULL;
    }
    if(keyPairQuery_redeemed){
        keyValuePair_free(keyPairQuery_redeemed);
        keyPairQuery_redeemed = NULL;
    }
    if(keyQuery_reservationsOnly){
        free(keyQuery_reservationsOnly);
        keyQuery_reservationsOnly = NULL;
    }
    if(valueQuery_reservationsOnly){
        free(valueQuery_reservationsOnly);
        valueQuery_reservationsOnly = NULL;
    }
    if(keyPairQuery_reservationsOnly){
        keyValuePair_free(keyPairQuery_reservationsOnly);
        keyPairQuery_reservationsOnly = NULL;
    }
    if(keyQuery_couponType){
        free(keyQuery_couponType);
        keyQuery_couponType = NULL;
    }
    if(keyPairQuery_couponType){
        keyValuePair_free(keyPairQuery_couponType);
        keyPairQuery_couponType = NULL;
    }
    if(keyQuery_offerType){
        free(keyQuery_offerType);
        keyQuery_offerType = NULL;
    }
    if(keyPairQuery_offerType){
        keyValuePair_free(keyPairQuery_offerType);
        keyPairQuery_offerType = NULL;
    }
    if(keyQuery_specialOfferType){
        free(keyQuery_specialOfferType);
        keyQuery_specialOfferType = NULL;
    }
    if(keyPairQuery_specialOfferType){
        keyValuePair_free(keyPairQuery_specialOfferType);
        keyPairQuery_specialOfferType = NULL;
    }
    if(keyQuery_customerAccountIds){
        free(keyQuery_customerAccountIds);
        keyQuery_customerAccountIds = NULL;
    }
    if(valueQuery_customerAccountIds){
        free(valueQuery_customerAccountIds);
        valueQuery_customerAccountIds = NULL;
    }
    if(keyPairQuery_customerAccountIds){
        keyValuePair_free(keyPairQuery_customerAccountIds);
        keyPairQuery_customerAccountIds = NULL;
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
    if(keyQuery_redeemableStartDate){
        free(keyQuery_redeemableStartDate);
        keyQuery_redeemableStartDate = NULL;
    }
    if(keyPairQuery_redeemableStartDate){
        keyValuePair_free(keyPairQuery_redeemableStartDate);
        keyPairQuery_redeemableStartDate = NULL;
    }
    if(keyQuery_redeemableEndDate){
        free(keyQuery_redeemableEndDate);
        keyQuery_redeemableEndDate = NULL;
    }
    if(keyPairQuery_redeemableEndDate){
        keyValuePair_free(keyPairQuery_redeemableEndDate);
        keyPairQuery_redeemableEndDate = NULL;
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

// Search Offers
//
// Searches for offers as a consumer.
//
offer_list_response_t*
OfferAPI_searchOffersForConsumer(apiClient_t *apiClient, double version, double latitude, double longitude, sirqul_iot_platform_searchOffersForConsumer_recommendationType_e recommendationType, long locationId, int *start, int *limit, int *maxRecommendations, sirqul_iot_platform_searchOffersForConsumer_distanceUnit_e distanceUnit, char *appKey, char *deviceId, long accountId, double searchRange, char *tags, char *supportedPostalCodes, char *keyword, char *categories, char *filters, char *offerTypes, char *type, char *sortField, char *recommendOfferIds, char *retailerLocationIds, long offerId, int *includeMission, int *includeCategories, int *includeFilters, int *includeExpired, int *includeFavorite, int *closestOfferOnly, char *searchExpression, sirqul_iot_platform_searchOffersForConsumer_groupBy_e groupBy)
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
    char *localVarPath = strdup("/api/{version}/offer/lists");



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
    char *keyQuery_searchRange = NULL;
    char * valueQuery_searchRange = NULL;
    keyValuePair_t *keyPairQuery_searchRange = 0;
    {
        keyQuery_searchRange = strdup("searchRange");
        int s = snprintf(NULL, 0, "%.16e", searchRange);
        if (s >= 0)
        {
            valueQuery_searchRange = calloc(1,s+1);
            snprintf(valueQuery_searchRange, s+1, "%.16e", searchRange);
        }
        keyPairQuery_searchRange = keyValuePair_create(keyQuery_searchRange, valueQuery_searchRange);
        list_addElement(localVarQueryParameters,keyPairQuery_searchRange);
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
    char *keyQuery_supportedPostalCodes = NULL;
    char * valueQuery_supportedPostalCodes = NULL;
    keyValuePair_t *keyPairQuery_supportedPostalCodes = 0;
    if (supportedPostalCodes)
    {
        keyQuery_supportedPostalCodes = strdup("supportedPostalCodes");
        valueQuery_supportedPostalCodes = strdup((supportedPostalCodes));
        keyPairQuery_supportedPostalCodes = keyValuePair_create(keyQuery_supportedPostalCodes, valueQuery_supportedPostalCodes);
        list_addElement(localVarQueryParameters,keyPairQuery_supportedPostalCodes);
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
    char *keyQuery_categories = NULL;
    char * valueQuery_categories = NULL;
    keyValuePair_t *keyPairQuery_categories = 0;
    if (categories)
    {
        keyQuery_categories = strdup("categories");
        valueQuery_categories = strdup((categories));
        keyPairQuery_categories = keyValuePair_create(keyQuery_categories, valueQuery_categories);
        list_addElement(localVarQueryParameters,keyPairQuery_categories);
    }

    // query parameters
    char *keyQuery_filters = NULL;
    char * valueQuery_filters = NULL;
    keyValuePair_t *keyPairQuery_filters = 0;
    if (filters)
    {
        keyQuery_filters = strdup("filters");
        valueQuery_filters = strdup((filters));
        keyPairQuery_filters = keyValuePair_create(keyQuery_filters, valueQuery_filters);
        list_addElement(localVarQueryParameters,keyPairQuery_filters);
    }

    // query parameters
    char *keyQuery_offerTypes = NULL;
    char * valueQuery_offerTypes = NULL;
    keyValuePair_t *keyPairQuery_offerTypes = 0;
    if (offerTypes)
    {
        keyQuery_offerTypes = strdup("offerTypes");
        valueQuery_offerTypes = strdup((offerTypes));
        keyPairQuery_offerTypes = keyValuePair_create(keyQuery_offerTypes, valueQuery_offerTypes);
        list_addElement(localVarQueryParameters,keyPairQuery_offerTypes);
    }

    // query parameters
    char *keyQuery_type = NULL;
    char * valueQuery_type = NULL;
    keyValuePair_t *keyPairQuery_type = 0;
    if (type)
    {
        keyQuery_type = strdup("type");
        valueQuery_type = strdup((type));
        keyPairQuery_type = keyValuePair_create(keyQuery_type, valueQuery_type);
        list_addElement(localVarQueryParameters,keyPairQuery_type);
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
    char *keyQuery_recommendOfferIds = NULL;
    char * valueQuery_recommendOfferIds = NULL;
    keyValuePair_t *keyPairQuery_recommendOfferIds = 0;
    if (recommendOfferIds)
    {
        keyQuery_recommendOfferIds = strdup("recommendOfferIds");
        valueQuery_recommendOfferIds = strdup((recommendOfferIds));
        keyPairQuery_recommendOfferIds = keyValuePair_create(keyQuery_recommendOfferIds, valueQuery_recommendOfferIds);
        list_addElement(localVarQueryParameters,keyPairQuery_recommendOfferIds);
    }

    // query parameters
    char *keyQuery_recommendationType = NULL;
    sirqul_iot_platform_searchOffersForConsumer_recommendationType_e valueQuery_recommendationType ;
    keyValuePair_t *keyPairQuery_recommendationType = 0;
    if (recommendationType)
    {
        keyQuery_recommendationType = strdup("recommendationType");
        valueQuery_recommendationType = (recommendationType);
        keyPairQuery_recommendationType = keyValuePair_create(keyQuery_recommendationType, strdup(searchOffersForConsumer_RECOMMENDATIONTYPE_ToString(
        valueQuery_recommendationType)));
        list_addElement(localVarQueryParameters,keyPairQuery_recommendationType);
    }

    // query parameters
    char *keyQuery_locationId = NULL;
    char * valueQuery_locationId ;
    keyValuePair_t *keyPairQuery_locationId = 0;
    {
        keyQuery_locationId = strdup("locationId");
        valueQuery_locationId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_locationId, MAX_NUMBER_LENGTH_LONG, "%d", locationId);
        keyPairQuery_locationId = keyValuePair_create(keyQuery_locationId, valueQuery_locationId);
        list_addElement(localVarQueryParameters,keyPairQuery_locationId);
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
    char *keyQuery_offerId = NULL;
    char * valueQuery_offerId ;
    keyValuePair_t *keyPairQuery_offerId = 0;
    {
        keyQuery_offerId = strdup("offerId");
        valueQuery_offerId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_offerId, MAX_NUMBER_LENGTH_LONG, "%d", offerId);
        keyPairQuery_offerId = keyValuePair_create(keyQuery_offerId, valueQuery_offerId);
        list_addElement(localVarQueryParameters,keyPairQuery_offerId);
    }

    // query parameters
    char *keyQuery_includeMission = NULL;
    char * valueQuery_includeMission = NULL;
    keyValuePair_t *keyPairQuery_includeMission = 0;
    if (includeMission)
    {
        keyQuery_includeMission = strdup("includeMission");
        valueQuery_includeMission = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeMission, MAX_NUMBER_LENGTH, "%d", *includeMission);
        keyPairQuery_includeMission = keyValuePair_create(keyQuery_includeMission, valueQuery_includeMission);
        list_addElement(localVarQueryParameters,keyPairQuery_includeMission);
    }

    // query parameters
    char *keyQuery_includeCategories = NULL;
    char * valueQuery_includeCategories = NULL;
    keyValuePair_t *keyPairQuery_includeCategories = 0;
    if (includeCategories)
    {
        keyQuery_includeCategories = strdup("includeCategories");
        valueQuery_includeCategories = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeCategories, MAX_NUMBER_LENGTH, "%d", *includeCategories);
        keyPairQuery_includeCategories = keyValuePair_create(keyQuery_includeCategories, valueQuery_includeCategories);
        list_addElement(localVarQueryParameters,keyPairQuery_includeCategories);
    }

    // query parameters
    char *keyQuery_includeFilters = NULL;
    char * valueQuery_includeFilters = NULL;
    keyValuePair_t *keyPairQuery_includeFilters = 0;
    if (includeFilters)
    {
        keyQuery_includeFilters = strdup("includeFilters");
        valueQuery_includeFilters = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeFilters, MAX_NUMBER_LENGTH, "%d", *includeFilters);
        keyPairQuery_includeFilters = keyValuePair_create(keyQuery_includeFilters, valueQuery_includeFilters);
        list_addElement(localVarQueryParameters,keyPairQuery_includeFilters);
    }

    // query parameters
    char *keyQuery_includeExpired = NULL;
    char * valueQuery_includeExpired = NULL;
    keyValuePair_t *keyPairQuery_includeExpired = 0;
    if (includeExpired)
    {
        keyQuery_includeExpired = strdup("includeExpired");
        valueQuery_includeExpired = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeExpired, MAX_NUMBER_LENGTH, "%d", *includeExpired);
        keyPairQuery_includeExpired = keyValuePair_create(keyQuery_includeExpired, valueQuery_includeExpired);
        list_addElement(localVarQueryParameters,keyPairQuery_includeExpired);
    }

    // query parameters
    char *keyQuery_includeFavorite = NULL;
    char * valueQuery_includeFavorite = NULL;
    keyValuePair_t *keyPairQuery_includeFavorite = 0;
    if (includeFavorite)
    {
        keyQuery_includeFavorite = strdup("includeFavorite");
        valueQuery_includeFavorite = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeFavorite, MAX_NUMBER_LENGTH, "%d", *includeFavorite);
        keyPairQuery_includeFavorite = keyValuePair_create(keyQuery_includeFavorite, valueQuery_includeFavorite);
        list_addElement(localVarQueryParameters,keyPairQuery_includeFavorite);
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
    char *keyQuery_maxRecommendations = NULL;
    char * valueQuery_maxRecommendations = NULL;
    keyValuePair_t *keyPairQuery_maxRecommendations = 0;
    if (maxRecommendations)
    {
        keyQuery_maxRecommendations = strdup("maxRecommendations");
        valueQuery_maxRecommendations = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_maxRecommendations, MAX_NUMBER_LENGTH, "%d", *maxRecommendations);
        keyPairQuery_maxRecommendations = keyValuePair_create(keyQuery_maxRecommendations, valueQuery_maxRecommendations);
        list_addElement(localVarQueryParameters,keyPairQuery_maxRecommendations);
    }

    // query parameters
    char *keyQuery_distanceUnit = NULL;
    sirqul_iot_platform_searchOffersForConsumer_distanceUnit_e valueQuery_distanceUnit ;
    keyValuePair_t *keyPairQuery_distanceUnit = 0;
    if (distanceUnit)
    {
        keyQuery_distanceUnit = strdup("distanceUnit");
        valueQuery_distanceUnit = (distanceUnit);
        keyPairQuery_distanceUnit = keyValuePair_create(keyQuery_distanceUnit, strdup(searchOffersForConsumer_DISTANCEUNIT_ToString(
        valueQuery_distanceUnit)));
        list_addElement(localVarQueryParameters,keyPairQuery_distanceUnit);
    }

    // query parameters
    char *keyQuery_closestOfferOnly = NULL;
    char * valueQuery_closestOfferOnly = NULL;
    keyValuePair_t *keyPairQuery_closestOfferOnly = 0;
    if (closestOfferOnly)
    {
        keyQuery_closestOfferOnly = strdup("closestOfferOnly");
        valueQuery_closestOfferOnly = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_closestOfferOnly, MAX_NUMBER_LENGTH, "%d", *closestOfferOnly);
        keyPairQuery_closestOfferOnly = keyValuePair_create(keyQuery_closestOfferOnly, valueQuery_closestOfferOnly);
        list_addElement(localVarQueryParameters,keyPairQuery_closestOfferOnly);
    }

    // query parameters
    char *keyQuery_searchExpression = NULL;
    char * valueQuery_searchExpression = NULL;
    keyValuePair_t *keyPairQuery_searchExpression = 0;
    if (searchExpression)
    {
        keyQuery_searchExpression = strdup("searchExpression");
        valueQuery_searchExpression = strdup((searchExpression));
        keyPairQuery_searchExpression = keyValuePair_create(keyQuery_searchExpression, valueQuery_searchExpression);
        list_addElement(localVarQueryParameters,keyPairQuery_searchExpression);
    }

    // query parameters
    char *keyQuery_groupBy = NULL;
    sirqul_iot_platform_searchOffersForConsumer_groupBy_e valueQuery_groupBy ;
    keyValuePair_t *keyPairQuery_groupBy = 0;
    if (groupBy)
    {
        keyQuery_groupBy = strdup("groupBy");
        valueQuery_groupBy = (groupBy);
        keyPairQuery_groupBy = keyValuePair_create(keyQuery_groupBy, strdup(searchOffersForConsumer_GROUPBY_ToString(
        valueQuery_groupBy)));
        list_addElement(localVarQueryParameters,keyPairQuery_groupBy);
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
    offer_list_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *OfferAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = offer_list_response_parseFromJSON(OfferAPIlocalVarJSON);
        cJSON_Delete(OfferAPIlocalVarJSON);
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
    if(keyQuery_searchRange){
        free(keyQuery_searchRange);
        keyQuery_searchRange = NULL;
    }
    if(keyPairQuery_searchRange){
        keyValuePair_free(keyPairQuery_searchRange);
        keyPairQuery_searchRange = NULL;
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
    if(keyQuery_supportedPostalCodes){
        free(keyQuery_supportedPostalCodes);
        keyQuery_supportedPostalCodes = NULL;
    }
    if(valueQuery_supportedPostalCodes){
        free(valueQuery_supportedPostalCodes);
        valueQuery_supportedPostalCodes = NULL;
    }
    if(keyPairQuery_supportedPostalCodes){
        keyValuePair_free(keyPairQuery_supportedPostalCodes);
        keyPairQuery_supportedPostalCodes = NULL;
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
    if(keyQuery_categories){
        free(keyQuery_categories);
        keyQuery_categories = NULL;
    }
    if(valueQuery_categories){
        free(valueQuery_categories);
        valueQuery_categories = NULL;
    }
    if(keyPairQuery_categories){
        keyValuePair_free(keyPairQuery_categories);
        keyPairQuery_categories = NULL;
    }
    if(keyQuery_filters){
        free(keyQuery_filters);
        keyQuery_filters = NULL;
    }
    if(valueQuery_filters){
        free(valueQuery_filters);
        valueQuery_filters = NULL;
    }
    if(keyPairQuery_filters){
        keyValuePair_free(keyPairQuery_filters);
        keyPairQuery_filters = NULL;
    }
    if(keyQuery_offerTypes){
        free(keyQuery_offerTypes);
        keyQuery_offerTypes = NULL;
    }
    if(valueQuery_offerTypes){
        free(valueQuery_offerTypes);
        valueQuery_offerTypes = NULL;
    }
    if(keyPairQuery_offerTypes){
        keyValuePair_free(keyPairQuery_offerTypes);
        keyPairQuery_offerTypes = NULL;
    }
    if(keyQuery_type){
        free(keyQuery_type);
        keyQuery_type = NULL;
    }
    if(valueQuery_type){
        free(valueQuery_type);
        valueQuery_type = NULL;
    }
    if(keyPairQuery_type){
        keyValuePair_free(keyPairQuery_type);
        keyPairQuery_type = NULL;
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
    if(keyQuery_recommendOfferIds){
        free(keyQuery_recommendOfferIds);
        keyQuery_recommendOfferIds = NULL;
    }
    if(valueQuery_recommendOfferIds){
        free(valueQuery_recommendOfferIds);
        valueQuery_recommendOfferIds = NULL;
    }
    if(keyPairQuery_recommendOfferIds){
        keyValuePair_free(keyPairQuery_recommendOfferIds);
        keyPairQuery_recommendOfferIds = NULL;
    }
    if(keyQuery_recommendationType){
        free(keyQuery_recommendationType);
        keyQuery_recommendationType = NULL;
    }
    if(keyPairQuery_recommendationType){
        keyValuePair_free(keyPairQuery_recommendationType);
        keyPairQuery_recommendationType = NULL;
    }
    if(keyQuery_locationId){
        free(keyQuery_locationId);
        keyQuery_locationId = NULL;
    }
    if(keyPairQuery_locationId){
        keyValuePair_free(keyPairQuery_locationId);
        keyPairQuery_locationId = NULL;
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
    if(keyQuery_offerId){
        free(keyQuery_offerId);
        keyQuery_offerId = NULL;
    }
    if(keyPairQuery_offerId){
        keyValuePair_free(keyPairQuery_offerId);
        keyPairQuery_offerId = NULL;
    }
    if(keyQuery_includeMission){
        free(keyQuery_includeMission);
        keyQuery_includeMission = NULL;
    }
    if(valueQuery_includeMission){
        free(valueQuery_includeMission);
        valueQuery_includeMission = NULL;
    }
    if(keyPairQuery_includeMission){
        keyValuePair_free(keyPairQuery_includeMission);
        keyPairQuery_includeMission = NULL;
    }
    if(keyQuery_includeCategories){
        free(keyQuery_includeCategories);
        keyQuery_includeCategories = NULL;
    }
    if(valueQuery_includeCategories){
        free(valueQuery_includeCategories);
        valueQuery_includeCategories = NULL;
    }
    if(keyPairQuery_includeCategories){
        keyValuePair_free(keyPairQuery_includeCategories);
        keyPairQuery_includeCategories = NULL;
    }
    if(keyQuery_includeFilters){
        free(keyQuery_includeFilters);
        keyQuery_includeFilters = NULL;
    }
    if(valueQuery_includeFilters){
        free(valueQuery_includeFilters);
        valueQuery_includeFilters = NULL;
    }
    if(keyPairQuery_includeFilters){
        keyValuePair_free(keyPairQuery_includeFilters);
        keyPairQuery_includeFilters = NULL;
    }
    if(keyQuery_includeExpired){
        free(keyQuery_includeExpired);
        keyQuery_includeExpired = NULL;
    }
    if(valueQuery_includeExpired){
        free(valueQuery_includeExpired);
        valueQuery_includeExpired = NULL;
    }
    if(keyPairQuery_includeExpired){
        keyValuePair_free(keyPairQuery_includeExpired);
        keyPairQuery_includeExpired = NULL;
    }
    if(keyQuery_includeFavorite){
        free(keyQuery_includeFavorite);
        keyQuery_includeFavorite = NULL;
    }
    if(valueQuery_includeFavorite){
        free(valueQuery_includeFavorite);
        valueQuery_includeFavorite = NULL;
    }
    if(keyPairQuery_includeFavorite){
        keyValuePair_free(keyPairQuery_includeFavorite);
        keyPairQuery_includeFavorite = NULL;
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
    if(keyQuery_maxRecommendations){
        free(keyQuery_maxRecommendations);
        keyQuery_maxRecommendations = NULL;
    }
    if(valueQuery_maxRecommendations){
        free(valueQuery_maxRecommendations);
        valueQuery_maxRecommendations = NULL;
    }
    if(keyPairQuery_maxRecommendations){
        keyValuePair_free(keyPairQuery_maxRecommendations);
        keyPairQuery_maxRecommendations = NULL;
    }
    if(keyQuery_distanceUnit){
        free(keyQuery_distanceUnit);
        keyQuery_distanceUnit = NULL;
    }
    if(keyPairQuery_distanceUnit){
        keyValuePair_free(keyPairQuery_distanceUnit);
        keyPairQuery_distanceUnit = NULL;
    }
    if(keyQuery_closestOfferOnly){
        free(keyQuery_closestOfferOnly);
        keyQuery_closestOfferOnly = NULL;
    }
    if(valueQuery_closestOfferOnly){
        free(valueQuery_closestOfferOnly);
        valueQuery_closestOfferOnly = NULL;
    }
    if(keyPairQuery_closestOfferOnly){
        keyValuePair_free(keyPairQuery_closestOfferOnly);
        keyPairQuery_closestOfferOnly = NULL;
    }
    if(keyQuery_searchExpression){
        free(keyQuery_searchExpression);
        keyQuery_searchExpression = NULL;
    }
    if(valueQuery_searchExpression){
        free(valueQuery_searchExpression);
        valueQuery_searchExpression = NULL;
    }
    if(keyPairQuery_searchExpression){
        keyValuePair_free(keyPairQuery_searchExpression);
        keyPairQuery_searchExpression = NULL;
    }
    if(keyQuery_groupBy){
        free(keyQuery_groupBy);
        keyQuery_groupBy = NULL;
    }
    if(keyPairQuery_groupBy){
        keyValuePair_free(keyPairQuery_groupBy);
        keyPairQuery_groupBy = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Offers (Top)
//
// Gets the top active offers.
//
offer_list_response_t*
OfferAPI_topOfferTransactions(apiClient_t *apiClient, double version, int *start, int *limit)
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
    char *localVarPath = strdup("/api/{version}/offer/top");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



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
    offer_list_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *OfferAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = offer_list_response_parseFromJSON(OfferAPIlocalVarJSON);
        cJSON_Delete(OfferAPIlocalVarJSON);
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

// Update Offer
//
// Update an offer, must provide a current list of retailer locations or the current offer locations will be marked as deleted.
//
retailer_offer_response_t*
OfferAPI_updateOffer(apiClient_t *apiClient, double version, long offerId, int *includeOfferLocations, char *deviceId, long accountId, long parentOfferId, char *retailerLocationIds, char *offerLocations, char *tags, char *title, char *subTitle, char *details, char *subDetails, char *finePrint, sirqul_iot_platform_updateOffer_barcodeType_e barcodeType, char *barcodeEntry, char *externalRedeemOptions, char *externalUrl, char *externalId, char *ticketsRewardType, long ticketsReward, long activated, long expires, int *noExpiration, int *availableLimit, int *availableLimitPerUser, int *addedLimit, int *viewLimit, int *maxPrints, char *ticketPriceType, long ticketPrice, double fullPrice, double discountPrice, int *showRemaining, int *showRedeemed, int *replaced, int *featured, sirqul_iot_platform_updateOffer_offerType_e offerType, sirqul_iot_platform_updateOffer_specialOfferType_e specialOfferType, sirqul_iot_platform_updateOffer_offerVisibility_e offerVisibility, char *categoryIds, char *filterIds, int *active, long barcodeAssetId, long imageAssetId, long imageAssetId1, long imageAssetId2, long imageAssetId3, long imageAssetId4, long imageAssetId5, char *publisher, long redeemableStart, long redeemableEnd, char *brand, sirqul_iot_platform_updateOffer_productType_e productType, sirqul_iot_platform_updateOffer_conditionType_e conditionType, char *isbn, char *asin, char *catalogNumbers, char *department, char *features, double minimumPrice, double width, double height, double depth, double weight, sirqul_iot_platform_updateOffer_unit_e unit, char *studio, char *parentalRating, long publishDate, long availabilityDate, long sizeId, long listingId, sirqul_iot_platform_updateOffer_mediaType_e mediaType, int *duration, char *author, long releaseDate, char *collectionIds, int *rebootTimeHour, int *rebootTimeMinute, int *idleTimeoutInSecond, char *serialNumber, char *udid, char *deviceType, double devicePower, double deviceInterference, char *availability, char *availabilitySummary)
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
    char *localVarPath = strdup("/api/{version}/retailer/offer/update");



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
    char *keyQuery_offerId = NULL;
    char * valueQuery_offerId ;
    keyValuePair_t *keyPairQuery_offerId = 0;
    {
        keyQuery_offerId = strdup("offerId");
        valueQuery_offerId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_offerId, MAX_NUMBER_LENGTH_LONG, "%d", offerId);
        keyPairQuery_offerId = keyValuePair_create(keyQuery_offerId, valueQuery_offerId);
        list_addElement(localVarQueryParameters,keyPairQuery_offerId);
    }

    // query parameters
    char *keyQuery_parentOfferId = NULL;
    char * valueQuery_parentOfferId ;
    keyValuePair_t *keyPairQuery_parentOfferId = 0;
    {
        keyQuery_parentOfferId = strdup("parentOfferId");
        valueQuery_parentOfferId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_parentOfferId, MAX_NUMBER_LENGTH_LONG, "%d", parentOfferId);
        keyPairQuery_parentOfferId = keyValuePair_create(keyQuery_parentOfferId, valueQuery_parentOfferId);
        list_addElement(localVarQueryParameters,keyPairQuery_parentOfferId);
    }

    // query parameters
    char *keyQuery_includeOfferLocations = NULL;
    char * valueQuery_includeOfferLocations = NULL;
    keyValuePair_t *keyPairQuery_includeOfferLocations = 0;
    if (includeOfferLocations)
    {
        keyQuery_includeOfferLocations = strdup("includeOfferLocations");
        valueQuery_includeOfferLocations = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeOfferLocations, MAX_NUMBER_LENGTH, "%d", *includeOfferLocations);
        keyPairQuery_includeOfferLocations = keyValuePair_create(keyQuery_includeOfferLocations, valueQuery_includeOfferLocations);
        list_addElement(localVarQueryParameters,keyPairQuery_includeOfferLocations);
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
    sirqul_iot_platform_updateOffer_barcodeType_e valueQuery_barcodeType ;
    keyValuePair_t *keyPairQuery_barcodeType = 0;
    if (barcodeType)
    {
        keyQuery_barcodeType = strdup("barcodeType");
        valueQuery_barcodeType = (barcodeType);
        keyPairQuery_barcodeType = keyValuePair_create(keyQuery_barcodeType, strdup(updateOffer_BARCODETYPE_ToString(
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
    char *keyQuery_externalId = NULL;
    char * valueQuery_externalId = NULL;
    keyValuePair_t *keyPairQuery_externalId = 0;
    if (externalId)
    {
        keyQuery_externalId = strdup("externalId");
        valueQuery_externalId = strdup((externalId));
        keyPairQuery_externalId = keyValuePair_create(keyQuery_externalId, valueQuery_externalId);
        list_addElement(localVarQueryParameters,keyPairQuery_externalId);
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
    char *keyQuery_offerType = NULL;
    sirqul_iot_platform_updateOffer_offerType_e valueQuery_offerType ;
    keyValuePair_t *keyPairQuery_offerType = 0;
    if (offerType)
    {
        keyQuery_offerType = strdup("offerType");
        valueQuery_offerType = (offerType);
        keyPairQuery_offerType = keyValuePair_create(keyQuery_offerType, strdup(updateOffer_OFFERTYPE_ToString(
        valueQuery_offerType)));
        list_addElement(localVarQueryParameters,keyPairQuery_offerType);
    }

    // query parameters
    char *keyQuery_specialOfferType = NULL;
    sirqul_iot_platform_updateOffer_specialOfferType_e valueQuery_specialOfferType ;
    keyValuePair_t *keyPairQuery_specialOfferType = 0;
    if (specialOfferType)
    {
        keyQuery_specialOfferType = strdup("specialOfferType");
        valueQuery_specialOfferType = (specialOfferType);
        keyPairQuery_specialOfferType = keyValuePair_create(keyQuery_specialOfferType, strdup(updateOffer_SPECIALOFFERTYPE_ToString(
        valueQuery_specialOfferType)));
        list_addElement(localVarQueryParameters,keyPairQuery_specialOfferType);
    }

    // query parameters
    char *keyQuery_offerVisibility = NULL;
    sirqul_iot_platform_updateOffer_offerVisibility_e valueQuery_offerVisibility ;
    keyValuePair_t *keyPairQuery_offerVisibility = 0;
    if (offerVisibility)
    {
        keyQuery_offerVisibility = strdup("offerVisibility");
        valueQuery_offerVisibility = (offerVisibility);
        keyPairQuery_offerVisibility = keyValuePair_create(keyQuery_offerVisibility, strdup(updateOffer_OFFERVISIBILITY_ToString(
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
    char *keyQuery_brand = NULL;
    char * valueQuery_brand = NULL;
    keyValuePair_t *keyPairQuery_brand = 0;
    if (brand)
    {
        keyQuery_brand = strdup("brand");
        valueQuery_brand = strdup((brand));
        keyPairQuery_brand = keyValuePair_create(keyQuery_brand, valueQuery_brand);
        list_addElement(localVarQueryParameters,keyPairQuery_brand);
    }

    // query parameters
    char *keyQuery_productType = NULL;
    sirqul_iot_platform_updateOffer_productType_e valueQuery_productType ;
    keyValuePair_t *keyPairQuery_productType = 0;
    if (productType)
    {
        keyQuery_productType = strdup("productType");
        valueQuery_productType = (productType);
        keyPairQuery_productType = keyValuePair_create(keyQuery_productType, strdup(updateOffer_PRODUCTTYPE_ToString(
        valueQuery_productType)));
        list_addElement(localVarQueryParameters,keyPairQuery_productType);
    }

    // query parameters
    char *keyQuery_conditionType = NULL;
    sirqul_iot_platform_updateOffer_conditionType_e valueQuery_conditionType ;
    keyValuePair_t *keyPairQuery_conditionType = 0;
    if (conditionType)
    {
        keyQuery_conditionType = strdup("conditionType");
        valueQuery_conditionType = (conditionType);
        keyPairQuery_conditionType = keyValuePair_create(keyQuery_conditionType, strdup(updateOffer_CONDITIONTYPE_ToString(
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
    char *keyQuery_department = NULL;
    char * valueQuery_department = NULL;
    keyValuePair_t *keyPairQuery_department = 0;
    if (department)
    {
        keyQuery_department = strdup("department");
        valueQuery_department = strdup((department));
        keyPairQuery_department = keyValuePair_create(keyQuery_department, valueQuery_department);
        list_addElement(localVarQueryParameters,keyPairQuery_department);
    }

    // query parameters
    char *keyQuery_features = NULL;
    char * valueQuery_features = NULL;
    keyValuePair_t *keyPairQuery_features = 0;
    if (features)
    {
        keyQuery_features = strdup("features");
        valueQuery_features = strdup((features));
        keyPairQuery_features = keyValuePair_create(keyQuery_features, valueQuery_features);
        list_addElement(localVarQueryParameters,keyPairQuery_features);
    }

    // query parameters
    char *keyQuery_minimumPrice = NULL;
    char * valueQuery_minimumPrice = NULL;
    keyValuePair_t *keyPairQuery_minimumPrice = 0;
    {
        keyQuery_minimumPrice = strdup("minimumPrice");
        int s = snprintf(NULL, 0, "%.16e", minimumPrice);
        if (s >= 0)
        {
            valueQuery_minimumPrice = calloc(1,s+1);
            snprintf(valueQuery_minimumPrice, s+1, "%.16e", minimumPrice);
        }
        keyPairQuery_minimumPrice = keyValuePair_create(keyQuery_minimumPrice, valueQuery_minimumPrice);
        list_addElement(localVarQueryParameters,keyPairQuery_minimumPrice);
    }

    // query parameters
    char *keyQuery_width = NULL;
    char * valueQuery_width = NULL;
    keyValuePair_t *keyPairQuery_width = 0;
    {
        keyQuery_width = strdup("width");
        int s = snprintf(NULL, 0, "%.16e", width);
        if (s >= 0)
        {
            valueQuery_width = calloc(1,s+1);
            snprintf(valueQuery_width, s+1, "%.16e", width);
        }
        keyPairQuery_width = keyValuePair_create(keyQuery_width, valueQuery_width);
        list_addElement(localVarQueryParameters,keyPairQuery_width);
    }

    // query parameters
    char *keyQuery_height = NULL;
    char * valueQuery_height = NULL;
    keyValuePair_t *keyPairQuery_height = 0;
    {
        keyQuery_height = strdup("height");
        int s = snprintf(NULL, 0, "%.16e", height);
        if (s >= 0)
        {
            valueQuery_height = calloc(1,s+1);
            snprintf(valueQuery_height, s+1, "%.16e", height);
        }
        keyPairQuery_height = keyValuePair_create(keyQuery_height, valueQuery_height);
        list_addElement(localVarQueryParameters,keyPairQuery_height);
    }

    // query parameters
    char *keyQuery_depth = NULL;
    char * valueQuery_depth = NULL;
    keyValuePair_t *keyPairQuery_depth = 0;
    {
        keyQuery_depth = strdup("depth");
        int s = snprintf(NULL, 0, "%.16e", depth);
        if (s >= 0)
        {
            valueQuery_depth = calloc(1,s+1);
            snprintf(valueQuery_depth, s+1, "%.16e", depth);
        }
        keyPairQuery_depth = keyValuePair_create(keyQuery_depth, valueQuery_depth);
        list_addElement(localVarQueryParameters,keyPairQuery_depth);
    }

    // query parameters
    char *keyQuery_weight = NULL;
    char * valueQuery_weight = NULL;
    keyValuePair_t *keyPairQuery_weight = 0;
    {
        keyQuery_weight = strdup("weight");
        int s = snprintf(NULL, 0, "%.16e", weight);
        if (s >= 0)
        {
            valueQuery_weight = calloc(1,s+1);
            snprintf(valueQuery_weight, s+1, "%.16e", weight);
        }
        keyPairQuery_weight = keyValuePair_create(keyQuery_weight, valueQuery_weight);
        list_addElement(localVarQueryParameters,keyPairQuery_weight);
    }

    // query parameters
    char *keyQuery_unit = NULL;
    sirqul_iot_platform_updateOffer_unit_e valueQuery_unit ;
    keyValuePair_t *keyPairQuery_unit = 0;
    if (unit)
    {
        keyQuery_unit = strdup("unit");
        valueQuery_unit = (unit);
        keyPairQuery_unit = keyValuePair_create(keyQuery_unit, strdup(updateOffer_UNIT_ToString(
        valueQuery_unit)));
        list_addElement(localVarQueryParameters,keyPairQuery_unit);
    }

    // query parameters
    char *keyQuery_studio = NULL;
    char * valueQuery_studio = NULL;
    keyValuePair_t *keyPairQuery_studio = 0;
    if (studio)
    {
        keyQuery_studio = strdup("studio");
        valueQuery_studio = strdup((studio));
        keyPairQuery_studio = keyValuePair_create(keyQuery_studio, valueQuery_studio);
        list_addElement(localVarQueryParameters,keyPairQuery_studio);
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
    char *keyQuery_publishDate = NULL;
    char * valueQuery_publishDate ;
    keyValuePair_t *keyPairQuery_publishDate = 0;
    {
        keyQuery_publishDate = strdup("publishDate");
        valueQuery_publishDate = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_publishDate, MAX_NUMBER_LENGTH_LONG, "%d", publishDate);
        keyPairQuery_publishDate = keyValuePair_create(keyQuery_publishDate, valueQuery_publishDate);
        list_addElement(localVarQueryParameters,keyPairQuery_publishDate);
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
    char *keyQuery_sizeId = NULL;
    char * valueQuery_sizeId ;
    keyValuePair_t *keyPairQuery_sizeId = 0;
    {
        keyQuery_sizeId = strdup("sizeId");
        valueQuery_sizeId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_sizeId, MAX_NUMBER_LENGTH_LONG, "%d", sizeId);
        keyPairQuery_sizeId = keyValuePair_create(keyQuery_sizeId, valueQuery_sizeId);
        list_addElement(localVarQueryParameters,keyPairQuery_sizeId);
    }

    // query parameters
    char *keyQuery_listingId = NULL;
    char * valueQuery_listingId ;
    keyValuePair_t *keyPairQuery_listingId = 0;
    {
        keyQuery_listingId = strdup("listingId");
        valueQuery_listingId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_listingId, MAX_NUMBER_LENGTH_LONG, "%d", listingId);
        keyPairQuery_listingId = keyValuePair_create(keyQuery_listingId, valueQuery_listingId);
        list_addElement(localVarQueryParameters,keyPairQuery_listingId);
    }

    // query parameters
    char *keyQuery_mediaType = NULL;
    sirqul_iot_platform_updateOffer_mediaType_e valueQuery_mediaType ;
    keyValuePair_t *keyPairQuery_mediaType = 0;
    if (mediaType)
    {
        keyQuery_mediaType = strdup("mediaType");
        valueQuery_mediaType = (mediaType);
        keyPairQuery_mediaType = keyValuePair_create(keyQuery_mediaType, strdup(updateOffer_MEDIATYPE_ToString(
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
    char *keyQuery_rebootTimeHour = NULL;
    char * valueQuery_rebootTimeHour = NULL;
    keyValuePair_t *keyPairQuery_rebootTimeHour = 0;
    if (rebootTimeHour)
    {
        keyQuery_rebootTimeHour = strdup("rebootTimeHour");
        valueQuery_rebootTimeHour = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_rebootTimeHour, MAX_NUMBER_LENGTH, "%d", *rebootTimeHour);
        keyPairQuery_rebootTimeHour = keyValuePair_create(keyQuery_rebootTimeHour, valueQuery_rebootTimeHour);
        list_addElement(localVarQueryParameters,keyPairQuery_rebootTimeHour);
    }

    // query parameters
    char *keyQuery_rebootTimeMinute = NULL;
    char * valueQuery_rebootTimeMinute = NULL;
    keyValuePair_t *keyPairQuery_rebootTimeMinute = 0;
    if (rebootTimeMinute)
    {
        keyQuery_rebootTimeMinute = strdup("rebootTimeMinute");
        valueQuery_rebootTimeMinute = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_rebootTimeMinute, MAX_NUMBER_LENGTH, "%d", *rebootTimeMinute);
        keyPairQuery_rebootTimeMinute = keyValuePair_create(keyQuery_rebootTimeMinute, valueQuery_rebootTimeMinute);
        list_addElement(localVarQueryParameters,keyPairQuery_rebootTimeMinute);
    }

    // query parameters
    char *keyQuery_idleTimeoutInSecond = NULL;
    char * valueQuery_idleTimeoutInSecond = NULL;
    keyValuePair_t *keyPairQuery_idleTimeoutInSecond = 0;
    if (idleTimeoutInSecond)
    {
        keyQuery_idleTimeoutInSecond = strdup("idleTimeoutInSecond");
        valueQuery_idleTimeoutInSecond = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_idleTimeoutInSecond, MAX_NUMBER_LENGTH, "%d", *idleTimeoutInSecond);
        keyPairQuery_idleTimeoutInSecond = keyValuePair_create(keyQuery_idleTimeoutInSecond, valueQuery_idleTimeoutInSecond);
        list_addElement(localVarQueryParameters,keyPairQuery_idleTimeoutInSecond);
    }

    // query parameters
    char *keyQuery_serialNumber = NULL;
    char * valueQuery_serialNumber = NULL;
    keyValuePair_t *keyPairQuery_serialNumber = 0;
    if (serialNumber)
    {
        keyQuery_serialNumber = strdup("serialNumber");
        valueQuery_serialNumber = strdup((serialNumber));
        keyPairQuery_serialNumber = keyValuePair_create(keyQuery_serialNumber, valueQuery_serialNumber);
        list_addElement(localVarQueryParameters,keyPairQuery_serialNumber);
    }

    // query parameters
    char *keyQuery_udid = NULL;
    char * valueQuery_udid = NULL;
    keyValuePair_t *keyPairQuery_udid = 0;
    if (udid)
    {
        keyQuery_udid = strdup("udid");
        valueQuery_udid = strdup((udid));
        keyPairQuery_udid = keyValuePair_create(keyQuery_udid, valueQuery_udid);
        list_addElement(localVarQueryParameters,keyPairQuery_udid);
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
    char *keyQuery_devicePower = NULL;
    char * valueQuery_devicePower = NULL;
    keyValuePair_t *keyPairQuery_devicePower = 0;
    {
        keyQuery_devicePower = strdup("devicePower");
        int s = snprintf(NULL, 0, "%.16e", devicePower);
        if (s >= 0)
        {
            valueQuery_devicePower = calloc(1,s+1);
            snprintf(valueQuery_devicePower, s+1, "%.16e", devicePower);
        }
        keyPairQuery_devicePower = keyValuePair_create(keyQuery_devicePower, valueQuery_devicePower);
        list_addElement(localVarQueryParameters,keyPairQuery_devicePower);
    }

    // query parameters
    char *keyQuery_deviceInterference = NULL;
    char * valueQuery_deviceInterference = NULL;
    keyValuePair_t *keyPairQuery_deviceInterference = 0;
    {
        keyQuery_deviceInterference = strdup("deviceInterference");
        int s = snprintf(NULL, 0, "%.16e", deviceInterference);
        if (s >= 0)
        {
            valueQuery_deviceInterference = calloc(1,s+1);
            snprintf(valueQuery_deviceInterference, s+1, "%.16e", deviceInterference);
        }
        keyPairQuery_deviceInterference = keyValuePair_create(keyQuery_deviceInterference, valueQuery_deviceInterference);
        list_addElement(localVarQueryParameters,keyPairQuery_deviceInterference);
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
    retailer_offer_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *OfferAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = retailer_offer_response_parseFromJSON(OfferAPIlocalVarJSON);
        cJSON_Delete(OfferAPIlocalVarJSON);
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
    if(keyQuery_offerId){
        free(keyQuery_offerId);
        keyQuery_offerId = NULL;
    }
    if(keyPairQuery_offerId){
        keyValuePair_free(keyPairQuery_offerId);
        keyPairQuery_offerId = NULL;
    }
    if(keyQuery_parentOfferId){
        free(keyQuery_parentOfferId);
        keyQuery_parentOfferId = NULL;
    }
    if(keyPairQuery_parentOfferId){
        keyValuePair_free(keyPairQuery_parentOfferId);
        keyPairQuery_parentOfferId = NULL;
    }
    if(keyQuery_includeOfferLocations){
        free(keyQuery_includeOfferLocations);
        keyQuery_includeOfferLocations = NULL;
    }
    if(valueQuery_includeOfferLocations){
        free(valueQuery_includeOfferLocations);
        valueQuery_includeOfferLocations = NULL;
    }
    if(keyPairQuery_includeOfferLocations){
        keyValuePair_free(keyPairQuery_includeOfferLocations);
        keyPairQuery_includeOfferLocations = NULL;
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
    if(keyQuery_externalId){
        free(keyQuery_externalId);
        keyQuery_externalId = NULL;
    }
    if(valueQuery_externalId){
        free(valueQuery_externalId);
        valueQuery_externalId = NULL;
    }
    if(keyPairQuery_externalId){
        keyValuePair_free(keyPairQuery_externalId);
        keyPairQuery_externalId = NULL;
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
    if(keyQuery_offerType){
        free(keyQuery_offerType);
        keyQuery_offerType = NULL;
    }
    if(keyPairQuery_offerType){
        keyValuePair_free(keyPairQuery_offerType);
        keyPairQuery_offerType = NULL;
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
    if(keyQuery_brand){
        free(keyQuery_brand);
        keyQuery_brand = NULL;
    }
    if(valueQuery_brand){
        free(valueQuery_brand);
        valueQuery_brand = NULL;
    }
    if(keyPairQuery_brand){
        keyValuePair_free(keyPairQuery_brand);
        keyPairQuery_brand = NULL;
    }
    if(keyQuery_productType){
        free(keyQuery_productType);
        keyQuery_productType = NULL;
    }
    if(keyPairQuery_productType){
        keyValuePair_free(keyPairQuery_productType);
        keyPairQuery_productType = NULL;
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
    if(keyQuery_department){
        free(keyQuery_department);
        keyQuery_department = NULL;
    }
    if(valueQuery_department){
        free(valueQuery_department);
        valueQuery_department = NULL;
    }
    if(keyPairQuery_department){
        keyValuePair_free(keyPairQuery_department);
        keyPairQuery_department = NULL;
    }
    if(keyQuery_features){
        free(keyQuery_features);
        keyQuery_features = NULL;
    }
    if(valueQuery_features){
        free(valueQuery_features);
        valueQuery_features = NULL;
    }
    if(keyPairQuery_features){
        keyValuePair_free(keyPairQuery_features);
        keyPairQuery_features = NULL;
    }
    if(keyQuery_minimumPrice){
        free(keyQuery_minimumPrice);
        keyQuery_minimumPrice = NULL;
    }
    if(keyPairQuery_minimumPrice){
        keyValuePair_free(keyPairQuery_minimumPrice);
        keyPairQuery_minimumPrice = NULL;
    }
    if(keyQuery_width){
        free(keyQuery_width);
        keyQuery_width = NULL;
    }
    if(keyPairQuery_width){
        keyValuePair_free(keyPairQuery_width);
        keyPairQuery_width = NULL;
    }
    if(keyQuery_height){
        free(keyQuery_height);
        keyQuery_height = NULL;
    }
    if(keyPairQuery_height){
        keyValuePair_free(keyPairQuery_height);
        keyPairQuery_height = NULL;
    }
    if(keyQuery_depth){
        free(keyQuery_depth);
        keyQuery_depth = NULL;
    }
    if(keyPairQuery_depth){
        keyValuePair_free(keyPairQuery_depth);
        keyPairQuery_depth = NULL;
    }
    if(keyQuery_weight){
        free(keyQuery_weight);
        keyQuery_weight = NULL;
    }
    if(keyPairQuery_weight){
        keyValuePair_free(keyPairQuery_weight);
        keyPairQuery_weight = NULL;
    }
    if(keyQuery_unit){
        free(keyQuery_unit);
        keyQuery_unit = NULL;
    }
    if(keyPairQuery_unit){
        keyValuePair_free(keyPairQuery_unit);
        keyPairQuery_unit = NULL;
    }
    if(keyQuery_studio){
        free(keyQuery_studio);
        keyQuery_studio = NULL;
    }
    if(valueQuery_studio){
        free(valueQuery_studio);
        valueQuery_studio = NULL;
    }
    if(keyPairQuery_studio){
        keyValuePair_free(keyPairQuery_studio);
        keyPairQuery_studio = NULL;
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
    if(keyQuery_publishDate){
        free(keyQuery_publishDate);
        keyQuery_publishDate = NULL;
    }
    if(keyPairQuery_publishDate){
        keyValuePair_free(keyPairQuery_publishDate);
        keyPairQuery_publishDate = NULL;
    }
    if(keyQuery_availabilityDate){
        free(keyQuery_availabilityDate);
        keyQuery_availabilityDate = NULL;
    }
    if(keyPairQuery_availabilityDate){
        keyValuePair_free(keyPairQuery_availabilityDate);
        keyPairQuery_availabilityDate = NULL;
    }
    if(keyQuery_sizeId){
        free(keyQuery_sizeId);
        keyQuery_sizeId = NULL;
    }
    if(keyPairQuery_sizeId){
        keyValuePair_free(keyPairQuery_sizeId);
        keyPairQuery_sizeId = NULL;
    }
    if(keyQuery_listingId){
        free(keyQuery_listingId);
        keyQuery_listingId = NULL;
    }
    if(keyPairQuery_listingId){
        keyValuePair_free(keyPairQuery_listingId);
        keyPairQuery_listingId = NULL;
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
    if(keyQuery_rebootTimeHour){
        free(keyQuery_rebootTimeHour);
        keyQuery_rebootTimeHour = NULL;
    }
    if(valueQuery_rebootTimeHour){
        free(valueQuery_rebootTimeHour);
        valueQuery_rebootTimeHour = NULL;
    }
    if(keyPairQuery_rebootTimeHour){
        keyValuePair_free(keyPairQuery_rebootTimeHour);
        keyPairQuery_rebootTimeHour = NULL;
    }
    if(keyQuery_rebootTimeMinute){
        free(keyQuery_rebootTimeMinute);
        keyQuery_rebootTimeMinute = NULL;
    }
    if(valueQuery_rebootTimeMinute){
        free(valueQuery_rebootTimeMinute);
        valueQuery_rebootTimeMinute = NULL;
    }
    if(keyPairQuery_rebootTimeMinute){
        keyValuePair_free(keyPairQuery_rebootTimeMinute);
        keyPairQuery_rebootTimeMinute = NULL;
    }
    if(keyQuery_idleTimeoutInSecond){
        free(keyQuery_idleTimeoutInSecond);
        keyQuery_idleTimeoutInSecond = NULL;
    }
    if(valueQuery_idleTimeoutInSecond){
        free(valueQuery_idleTimeoutInSecond);
        valueQuery_idleTimeoutInSecond = NULL;
    }
    if(keyPairQuery_idleTimeoutInSecond){
        keyValuePair_free(keyPairQuery_idleTimeoutInSecond);
        keyPairQuery_idleTimeoutInSecond = NULL;
    }
    if(keyQuery_serialNumber){
        free(keyQuery_serialNumber);
        keyQuery_serialNumber = NULL;
    }
    if(valueQuery_serialNumber){
        free(valueQuery_serialNumber);
        valueQuery_serialNumber = NULL;
    }
    if(keyPairQuery_serialNumber){
        keyValuePair_free(keyPairQuery_serialNumber);
        keyPairQuery_serialNumber = NULL;
    }
    if(keyQuery_udid){
        free(keyQuery_udid);
        keyQuery_udid = NULL;
    }
    if(valueQuery_udid){
        free(valueQuery_udid);
        valueQuery_udid = NULL;
    }
    if(keyPairQuery_udid){
        keyValuePair_free(keyPairQuery_udid);
        keyPairQuery_udid = NULL;
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
    if(keyQuery_devicePower){
        free(keyQuery_devicePower);
        keyQuery_devicePower = NULL;
    }
    if(keyPairQuery_devicePower){
        keyValuePair_free(keyPairQuery_devicePower);
        keyPairQuery_devicePower = NULL;
    }
    if(keyQuery_deviceInterference){
        free(keyQuery_deviceInterference);
        keyQuery_deviceInterference = NULL;
    }
    if(keyPairQuery_deviceInterference){
        keyValuePair_free(keyPairQuery_deviceInterference);
        keyPairQuery_deviceInterference = NULL;
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

// Activate Offer
//
// Sets the activated date on offers. This will make offers visible for consumers.
//
sirqul_response_t*
OfferAPI_updateOfferStatus(apiClient_t *apiClient, double version, char *offerIds, int *active, char *deviceId, long accountId)
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
    char *localVarPath = strdup("/api/{version}/retailer/offer/status");



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
        cJSON *OfferAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(OfferAPIlocalVarJSON);
        cJSON_Delete(OfferAPIlocalVarJSON);
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

