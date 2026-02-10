#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "product.h"


char* product_product_type_ToString(sirqul_iot_platform_product_PRODUCTTYPE_e product_type) {
    char* product_typeArray[] =  { "NULL", "APPAREL", "APPLIANCES", "APPS", "ARTS_CRAFTS", "AUTOMOTIVE", "BABY", "BEAUTY", "BOOKS", "CLASSICAL", "COLLECTIBLES", "DVD", "ELECTRONICS", "GIFT_CARDS", "GOURMET_FOOD", "GROCERY", "HEALTH_PERSONAL_CARE", "HOME_GARDEN", "INDUSTRIAL", "JEWELRY", "KITCHEN", "LAWN_GARDEN", "MAGAZINES", "MISCELLANEOUS", "MUSICAL_INSTRUMENTS", "OFFICE_PRODUCTS", "OTHER", "OUTDOOR_LIVING", "PC_HARDWARE", "PET_SUPPLIES", "SHOES", "SOFTWARE", "SPORTING_GOODS", "TOOLS", "TOYS", "VIDEO_GAMES", "WATCHES", "WIRELESS", "WIRELESS_ACCESSORIES" };
    return product_typeArray[product_type];
}

sirqul_iot_platform_product_PRODUCTTYPE_e product_product_type_FromString(char* product_type){
    int stringToReturn = 0;
    char *product_typeArray[] =  { "NULL", "APPAREL", "APPLIANCES", "APPS", "ARTS_CRAFTS", "AUTOMOTIVE", "BABY", "BEAUTY", "BOOKS", "CLASSICAL", "COLLECTIBLES", "DVD", "ELECTRONICS", "GIFT_CARDS", "GOURMET_FOOD", "GROCERY", "HEALTH_PERSONAL_CARE", "HOME_GARDEN", "INDUSTRIAL", "JEWELRY", "KITCHEN", "LAWN_GARDEN", "MAGAZINES", "MISCELLANEOUS", "MUSICAL_INSTRUMENTS", "OFFICE_PRODUCTS", "OTHER", "OUTDOOR_LIVING", "PC_HARDWARE", "PET_SUPPLIES", "SHOES", "SOFTWARE", "SPORTING_GOODS", "TOOLS", "TOYS", "VIDEO_GAMES", "WATCHES", "WIRELESS", "WIRELESS_ACCESSORIES" };
    size_t sizeofArray = sizeof(product_typeArray) / sizeof(product_typeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(product_type, product_typeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}
char* product_condition_ToString(sirqul_iot_platform_product_CONDITION_e condition) {
    char* conditionArray[] =  { "NULL", "NEW", "USED", "REFURBISHED", "OTHER" };
    return conditionArray[condition];
}

sirqul_iot_platform_product_CONDITION_e product_condition_FromString(char* condition){
    int stringToReturn = 0;
    char *conditionArray[] =  { "NULL", "NEW", "USED", "REFURBISHED", "OTHER" };
    size_t sizeofArray = sizeof(conditionArray) / sizeof(conditionArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(condition, conditionArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}
char* product_unit_ToString(sirqul_iot_platform_product_UNIT_e unit) {
    char* unitArray[] =  { "NULL", "MILIMETER", "CENTIMETER", "METER", "INCH", "FOOT", "YARD" };
    return unitArray[unit];
}

sirqul_iot_platform_product_UNIT_e product_unit_FromString(char* unit){
    int stringToReturn = 0;
    char *unitArray[] =  { "NULL", "MILIMETER", "CENTIMETER", "METER", "INCH", "FOOT", "YARD" };
    size_t sizeofArray = sizeof(unitArray) / sizeof(unitArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(unit, unitArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static product_t *product_create_internal(
    char *brand,
    sirqul_iot_platform_product_PRODUCTTYPE_e product_type,
    sirqul_iot_platform_product_CONDITION_e condition,
    char *isbn,
    char *asin,
    list_t *catalog_numbers,
    char *department,
    list_t *features,
    double minimum_price,
    double width,
    double height,
    double depth,
    double weight,
    sirqul_iot_platform_product_UNIT_e unit,
    char *studio,
    char *parental_rating,
    long publish_date,
    long availability_date,
    size_group_t *size
    ) {
    product_t *product_local_var = malloc(sizeof(product_t));
    if (!product_local_var) {
        return NULL;
    }
    product_local_var->brand = brand;
    product_local_var->product_type = product_type;
    product_local_var->condition = condition;
    product_local_var->isbn = isbn;
    product_local_var->asin = asin;
    product_local_var->catalog_numbers = catalog_numbers;
    product_local_var->department = department;
    product_local_var->features = features;
    product_local_var->minimum_price = minimum_price;
    product_local_var->width = width;
    product_local_var->height = height;
    product_local_var->depth = depth;
    product_local_var->weight = weight;
    product_local_var->unit = unit;
    product_local_var->studio = studio;
    product_local_var->parental_rating = parental_rating;
    product_local_var->publish_date = publish_date;
    product_local_var->availability_date = availability_date;
    product_local_var->size = size;

    product_local_var->_library_owned = 1;
    return product_local_var;
}

__attribute__((deprecated)) product_t *product_create(
    char *brand,
    sirqul_iot_platform_product_PRODUCTTYPE_e product_type,
    sirqul_iot_platform_product_CONDITION_e condition,
    char *isbn,
    char *asin,
    list_t *catalog_numbers,
    char *department,
    list_t *features,
    double minimum_price,
    double width,
    double height,
    double depth,
    double weight,
    sirqul_iot_platform_product_UNIT_e unit,
    char *studio,
    char *parental_rating,
    long publish_date,
    long availability_date,
    size_group_t *size
    ) {
    return product_create_internal (
        brand,
        product_type,
        condition,
        isbn,
        asin,
        catalog_numbers,
        department,
        features,
        minimum_price,
        width,
        height,
        depth,
        weight,
        unit,
        studio,
        parental_rating,
        publish_date,
        availability_date,
        size
        );
}

void product_free(product_t *product) {
    if(NULL == product){
        return ;
    }
    if(product->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "product_free");
        return ;
    }
    listEntry_t *listEntry;
    if (product->brand) {
        free(product->brand);
        product->brand = NULL;
    }
    if (product->isbn) {
        free(product->isbn);
        product->isbn = NULL;
    }
    if (product->asin) {
        free(product->asin);
        product->asin = NULL;
    }
    if (product->catalog_numbers) {
        list_ForEach(listEntry, product->catalog_numbers) {
            free(listEntry->data);
        }
        list_freeList(product->catalog_numbers);
        product->catalog_numbers = NULL;
    }
    if (product->department) {
        free(product->department);
        product->department = NULL;
    }
    if (product->features) {
        list_ForEach(listEntry, product->features) {
            free(listEntry->data);
        }
        list_freeList(product->features);
        product->features = NULL;
    }
    if (product->studio) {
        free(product->studio);
        product->studio = NULL;
    }
    if (product->parental_rating) {
        free(product->parental_rating);
        product->parental_rating = NULL;
    }
    if (product->size) {
        size_group_free(product->size);
        product->size = NULL;
    }
    free(product);
}

cJSON *product_convertToJSON(product_t *product) {
    cJSON *item = cJSON_CreateObject();

    // product->brand
    if(product->brand) {
    if(cJSON_AddStringToObject(item, "brand", product->brand) == NULL) {
    goto fail; //String
    }
    }


    // product->product_type
    if(product->product_type != sirqul_iot_platform_product_PRODUCTTYPE_NULL) {
    if(cJSON_AddStringToObject(item, "productType", product_product_type_ToString(product->product_type)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // product->condition
    if(product->condition != sirqul_iot_platform_product_CONDITION_NULL) {
    if(cJSON_AddStringToObject(item, "condition", product_condition_ToString(product->condition)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // product->isbn
    if(product->isbn) {
    if(cJSON_AddStringToObject(item, "isbn", product->isbn) == NULL) {
    goto fail; //String
    }
    }


    // product->asin
    if(product->asin) {
    if(cJSON_AddStringToObject(item, "asin", product->asin) == NULL) {
    goto fail; //String
    }
    }


    // product->catalog_numbers
    if(product->catalog_numbers) {
    cJSON *catalog_numbers = cJSON_AddArrayToObject(item, "catalogNumbers");
    if(catalog_numbers == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *catalog_numbersListEntry;
    list_ForEach(catalog_numbersListEntry, product->catalog_numbers) {
    if(cJSON_AddStringToObject(catalog_numbers, "", catalog_numbersListEntry->data) == NULL)
    {
        goto fail;
    }
    }
    }


    // product->department
    if(product->department) {
    if(cJSON_AddStringToObject(item, "department", product->department) == NULL) {
    goto fail; //String
    }
    }


    // product->features
    if(product->features) {
    cJSON *features = cJSON_AddArrayToObject(item, "features");
    if(features == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *featuresListEntry;
    list_ForEach(featuresListEntry, product->features) {
    if(cJSON_AddStringToObject(features, "", featuresListEntry->data) == NULL)
    {
        goto fail;
    }
    }
    }


    // product->minimum_price
    if(product->minimum_price) {
    if(cJSON_AddNumberToObject(item, "minimumPrice", product->minimum_price) == NULL) {
    goto fail; //Numeric
    }
    }


    // product->width
    if(product->width) {
    if(cJSON_AddNumberToObject(item, "width", product->width) == NULL) {
    goto fail; //Numeric
    }
    }


    // product->height
    if(product->height) {
    if(cJSON_AddNumberToObject(item, "height", product->height) == NULL) {
    goto fail; //Numeric
    }
    }


    // product->depth
    if(product->depth) {
    if(cJSON_AddNumberToObject(item, "depth", product->depth) == NULL) {
    goto fail; //Numeric
    }
    }


    // product->weight
    if(product->weight) {
    if(cJSON_AddNumberToObject(item, "weight", product->weight) == NULL) {
    goto fail; //Numeric
    }
    }


    // product->unit
    if(product->unit != sirqul_iot_platform_product_UNIT_NULL) {
    if(cJSON_AddStringToObject(item, "unit", product_unit_ToString(product->unit)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // product->studio
    if(product->studio) {
    if(cJSON_AddStringToObject(item, "studio", product->studio) == NULL) {
    goto fail; //String
    }
    }


    // product->parental_rating
    if(product->parental_rating) {
    if(cJSON_AddStringToObject(item, "parentalRating", product->parental_rating) == NULL) {
    goto fail; //String
    }
    }


    // product->publish_date
    if(product->publish_date) {
    if(cJSON_AddNumberToObject(item, "publishDate", product->publish_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // product->availability_date
    if(product->availability_date) {
    if(cJSON_AddNumberToObject(item, "availabilityDate", product->availability_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // product->size
    if(product->size) {
    cJSON *size_local_JSON = size_group_convertToJSON(product->size);
    if(size_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "size", size_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

product_t *product_parseFromJSON(cJSON *productJSON){

    product_t *product_local_var = NULL;

    // define the local list for product->catalog_numbers
    list_t *catalog_numbersList = NULL;

    // define the local list for product->features
    list_t *featuresList = NULL;

    // define the local variable for product->size
    size_group_t *size_local_nonprim = NULL;

    // product->brand
    cJSON *brand = cJSON_GetObjectItemCaseSensitive(productJSON, "brand");
    if (cJSON_IsNull(brand)) {
        brand = NULL;
    }
    if (brand) { 
    if(!cJSON_IsString(brand) && !cJSON_IsNull(brand))
    {
    goto end; //String
    }
    }

    // product->product_type
    cJSON *product_type = cJSON_GetObjectItemCaseSensitive(productJSON, "productType");
    if (cJSON_IsNull(product_type)) {
        product_type = NULL;
    }
    sirqul_iot_platform_product_PRODUCTTYPE_e product_typeVariable;
    if (product_type) { 
    if(!cJSON_IsString(product_type))
    {
    goto end; //Enum
    }
    product_typeVariable = product_product_type_FromString(product_type->valuestring);
    }

    // product->condition
    cJSON *condition = cJSON_GetObjectItemCaseSensitive(productJSON, "condition");
    if (cJSON_IsNull(condition)) {
        condition = NULL;
    }
    sirqul_iot_platform_product_CONDITION_e conditionVariable;
    if (condition) { 
    if(!cJSON_IsString(condition))
    {
    goto end; //Enum
    }
    conditionVariable = product_condition_FromString(condition->valuestring);
    }

    // product->isbn
    cJSON *isbn = cJSON_GetObjectItemCaseSensitive(productJSON, "isbn");
    if (cJSON_IsNull(isbn)) {
        isbn = NULL;
    }
    if (isbn) { 
    if(!cJSON_IsString(isbn) && !cJSON_IsNull(isbn))
    {
    goto end; //String
    }
    }

    // product->asin
    cJSON *asin = cJSON_GetObjectItemCaseSensitive(productJSON, "asin");
    if (cJSON_IsNull(asin)) {
        asin = NULL;
    }
    if (asin) { 
    if(!cJSON_IsString(asin) && !cJSON_IsNull(asin))
    {
    goto end; //String
    }
    }

    // product->catalog_numbers
    cJSON *catalog_numbers = cJSON_GetObjectItemCaseSensitive(productJSON, "catalogNumbers");
    if (cJSON_IsNull(catalog_numbers)) {
        catalog_numbers = NULL;
    }
    if (catalog_numbers) { 
    cJSON *catalog_numbers_local = NULL;
    if(!cJSON_IsArray(catalog_numbers)) {
        goto end;//primitive container
    }
    catalog_numbersList = list_createList();

    cJSON_ArrayForEach(catalog_numbers_local, catalog_numbers)
    {
        if(!cJSON_IsString(catalog_numbers_local))
        {
            goto end;
        }
        list_addElement(catalog_numbersList , strdup(catalog_numbers_local->valuestring));
    }
    }

    // product->department
    cJSON *department = cJSON_GetObjectItemCaseSensitive(productJSON, "department");
    if (cJSON_IsNull(department)) {
        department = NULL;
    }
    if (department) { 
    if(!cJSON_IsString(department) && !cJSON_IsNull(department))
    {
    goto end; //String
    }
    }

    // product->features
    cJSON *features = cJSON_GetObjectItemCaseSensitive(productJSON, "features");
    if (cJSON_IsNull(features)) {
        features = NULL;
    }
    if (features) { 
    cJSON *features_local = NULL;
    if(!cJSON_IsArray(features)) {
        goto end;//primitive container
    }
    featuresList = list_createList();

    cJSON_ArrayForEach(features_local, features)
    {
        if(!cJSON_IsString(features_local))
        {
            goto end;
        }
        list_addElement(featuresList , strdup(features_local->valuestring));
    }
    }

    // product->minimum_price
    cJSON *minimum_price = cJSON_GetObjectItemCaseSensitive(productJSON, "minimumPrice");
    if (cJSON_IsNull(minimum_price)) {
        minimum_price = NULL;
    }
    if (minimum_price) { 
    if(!cJSON_IsNumber(minimum_price))
    {
    goto end; //Numeric
    }
    }

    // product->width
    cJSON *width = cJSON_GetObjectItemCaseSensitive(productJSON, "width");
    if (cJSON_IsNull(width)) {
        width = NULL;
    }
    if (width) { 
    if(!cJSON_IsNumber(width))
    {
    goto end; //Numeric
    }
    }

    // product->height
    cJSON *height = cJSON_GetObjectItemCaseSensitive(productJSON, "height");
    if (cJSON_IsNull(height)) {
        height = NULL;
    }
    if (height) { 
    if(!cJSON_IsNumber(height))
    {
    goto end; //Numeric
    }
    }

    // product->depth
    cJSON *depth = cJSON_GetObjectItemCaseSensitive(productJSON, "depth");
    if (cJSON_IsNull(depth)) {
        depth = NULL;
    }
    if (depth) { 
    if(!cJSON_IsNumber(depth))
    {
    goto end; //Numeric
    }
    }

    // product->weight
    cJSON *weight = cJSON_GetObjectItemCaseSensitive(productJSON, "weight");
    if (cJSON_IsNull(weight)) {
        weight = NULL;
    }
    if (weight) { 
    if(!cJSON_IsNumber(weight))
    {
    goto end; //Numeric
    }
    }

    // product->unit
    cJSON *unit = cJSON_GetObjectItemCaseSensitive(productJSON, "unit");
    if (cJSON_IsNull(unit)) {
        unit = NULL;
    }
    sirqul_iot_platform_product_UNIT_e unitVariable;
    if (unit) { 
    if(!cJSON_IsString(unit))
    {
    goto end; //Enum
    }
    unitVariable = product_unit_FromString(unit->valuestring);
    }

    // product->studio
    cJSON *studio = cJSON_GetObjectItemCaseSensitive(productJSON, "studio");
    if (cJSON_IsNull(studio)) {
        studio = NULL;
    }
    if (studio) { 
    if(!cJSON_IsString(studio) && !cJSON_IsNull(studio))
    {
    goto end; //String
    }
    }

    // product->parental_rating
    cJSON *parental_rating = cJSON_GetObjectItemCaseSensitive(productJSON, "parentalRating");
    if (cJSON_IsNull(parental_rating)) {
        parental_rating = NULL;
    }
    if (parental_rating) { 
    if(!cJSON_IsString(parental_rating) && !cJSON_IsNull(parental_rating))
    {
    goto end; //String
    }
    }

    // product->publish_date
    cJSON *publish_date = cJSON_GetObjectItemCaseSensitive(productJSON, "publishDate");
    if (cJSON_IsNull(publish_date)) {
        publish_date = NULL;
    }
    if (publish_date) { 
    if(!cJSON_IsNumber(publish_date))
    {
    goto end; //Numeric
    }
    }

    // product->availability_date
    cJSON *availability_date = cJSON_GetObjectItemCaseSensitive(productJSON, "availabilityDate");
    if (cJSON_IsNull(availability_date)) {
        availability_date = NULL;
    }
    if (availability_date) { 
    if(!cJSON_IsNumber(availability_date))
    {
    goto end; //Numeric
    }
    }

    // product->size
    cJSON *size = cJSON_GetObjectItemCaseSensitive(productJSON, "size");
    if (cJSON_IsNull(size)) {
        size = NULL;
    }
    if (size) { 
    size_local_nonprim = size_group_parseFromJSON(size); //nonprimitive
    }


    product_local_var = product_create_internal (
        brand && !cJSON_IsNull(brand) ? strdup(brand->valuestring) : NULL,
        product_type ? product_typeVariable : sirqul_iot_platform_product_PRODUCTTYPE_NULL,
        condition ? conditionVariable : sirqul_iot_platform_product_CONDITION_NULL,
        isbn && !cJSON_IsNull(isbn) ? strdup(isbn->valuestring) : NULL,
        asin && !cJSON_IsNull(asin) ? strdup(asin->valuestring) : NULL,
        catalog_numbers ? catalog_numbersList : NULL,
        department && !cJSON_IsNull(department) ? strdup(department->valuestring) : NULL,
        features ? featuresList : NULL,
        minimum_price ? minimum_price->valuedouble : 0,
        width ? width->valuedouble : 0,
        height ? height->valuedouble : 0,
        depth ? depth->valuedouble : 0,
        weight ? weight->valuedouble : 0,
        unit ? unitVariable : sirqul_iot_platform_product_UNIT_NULL,
        studio && !cJSON_IsNull(studio) ? strdup(studio->valuestring) : NULL,
        parental_rating && !cJSON_IsNull(parental_rating) ? strdup(parental_rating->valuestring) : NULL,
        publish_date ? publish_date->valuedouble : 0,
        availability_date ? availability_date->valuedouble : 0,
        size ? size_local_nonprim : NULL
        );

    return product_local_var;
end:
    if (catalog_numbersList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, catalog_numbersList) {
            free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(catalog_numbersList);
        catalog_numbersList = NULL;
    }
    if (featuresList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, featuresList) {
            free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(featuresList);
        featuresList = NULL;
    }
    if (size_local_nonprim) {
        size_group_free(size_local_nonprim);
        size_local_nonprim = NULL;
    }
    return NULL;

}
