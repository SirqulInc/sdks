#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "product_response.h"



static product_response_t *product_response_create_internal(
    char *brand,
    char *product_type,
    char *condition,
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
    char *unit,
    char *studio,
    char *parental_rating,
    long publish_date,
    long availability_date,
    size_group_response_t *size
    ) {
    product_response_t *product_response_local_var = malloc(sizeof(product_response_t));
    if (!product_response_local_var) {
        return NULL;
    }
    product_response_local_var->brand = brand;
    product_response_local_var->product_type = product_type;
    product_response_local_var->condition = condition;
    product_response_local_var->isbn = isbn;
    product_response_local_var->asin = asin;
    product_response_local_var->catalog_numbers = catalog_numbers;
    product_response_local_var->department = department;
    product_response_local_var->features = features;
    product_response_local_var->minimum_price = minimum_price;
    product_response_local_var->width = width;
    product_response_local_var->height = height;
    product_response_local_var->depth = depth;
    product_response_local_var->weight = weight;
    product_response_local_var->unit = unit;
    product_response_local_var->studio = studio;
    product_response_local_var->parental_rating = parental_rating;
    product_response_local_var->publish_date = publish_date;
    product_response_local_var->availability_date = availability_date;
    product_response_local_var->size = size;

    product_response_local_var->_library_owned = 1;
    return product_response_local_var;
}

__attribute__((deprecated)) product_response_t *product_response_create(
    char *brand,
    char *product_type,
    char *condition,
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
    char *unit,
    char *studio,
    char *parental_rating,
    long publish_date,
    long availability_date,
    size_group_response_t *size
    ) {
    return product_response_create_internal (
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

void product_response_free(product_response_t *product_response) {
    if(NULL == product_response){
        return ;
    }
    if(product_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "product_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (product_response->brand) {
        free(product_response->brand);
        product_response->brand = NULL;
    }
    if (product_response->product_type) {
        free(product_response->product_type);
        product_response->product_type = NULL;
    }
    if (product_response->condition) {
        free(product_response->condition);
        product_response->condition = NULL;
    }
    if (product_response->isbn) {
        free(product_response->isbn);
        product_response->isbn = NULL;
    }
    if (product_response->asin) {
        free(product_response->asin);
        product_response->asin = NULL;
    }
    if (product_response->catalog_numbers) {
        list_ForEach(listEntry, product_response->catalog_numbers) {
            free(listEntry->data);
        }
        list_freeList(product_response->catalog_numbers);
        product_response->catalog_numbers = NULL;
    }
    if (product_response->department) {
        free(product_response->department);
        product_response->department = NULL;
    }
    if (product_response->features) {
        list_ForEach(listEntry, product_response->features) {
            free(listEntry->data);
        }
        list_freeList(product_response->features);
        product_response->features = NULL;
    }
    if (product_response->unit) {
        free(product_response->unit);
        product_response->unit = NULL;
    }
    if (product_response->studio) {
        free(product_response->studio);
        product_response->studio = NULL;
    }
    if (product_response->parental_rating) {
        free(product_response->parental_rating);
        product_response->parental_rating = NULL;
    }
    if (product_response->size) {
        size_group_response_free(product_response->size);
        product_response->size = NULL;
    }
    free(product_response);
}

cJSON *product_response_convertToJSON(product_response_t *product_response) {
    cJSON *item = cJSON_CreateObject();

    // product_response->brand
    if(product_response->brand) {
    if(cJSON_AddStringToObject(item, "brand", product_response->brand) == NULL) {
    goto fail; //String
    }
    }


    // product_response->product_type
    if(product_response->product_type) {
    if(cJSON_AddStringToObject(item, "productType", product_response->product_type) == NULL) {
    goto fail; //String
    }
    }


    // product_response->condition
    if(product_response->condition) {
    if(cJSON_AddStringToObject(item, "condition", product_response->condition) == NULL) {
    goto fail; //String
    }
    }


    // product_response->isbn
    if(product_response->isbn) {
    if(cJSON_AddStringToObject(item, "isbn", product_response->isbn) == NULL) {
    goto fail; //String
    }
    }


    // product_response->asin
    if(product_response->asin) {
    if(cJSON_AddStringToObject(item, "asin", product_response->asin) == NULL) {
    goto fail; //String
    }
    }


    // product_response->catalog_numbers
    if(product_response->catalog_numbers) {
    cJSON *catalog_numbers = cJSON_AddArrayToObject(item, "catalogNumbers");
    if(catalog_numbers == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *catalog_numbersListEntry;
    list_ForEach(catalog_numbersListEntry, product_response->catalog_numbers) {
    if(cJSON_AddStringToObject(catalog_numbers, "", catalog_numbersListEntry->data) == NULL)
    {
        goto fail;
    }
    }
    }


    // product_response->department
    if(product_response->department) {
    if(cJSON_AddStringToObject(item, "department", product_response->department) == NULL) {
    goto fail; //String
    }
    }


    // product_response->features
    if(product_response->features) {
    cJSON *features = cJSON_AddArrayToObject(item, "features");
    if(features == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *featuresListEntry;
    list_ForEach(featuresListEntry, product_response->features) {
    if(cJSON_AddStringToObject(features, "", featuresListEntry->data) == NULL)
    {
        goto fail;
    }
    }
    }


    // product_response->minimum_price
    if(product_response->minimum_price) {
    if(cJSON_AddNumberToObject(item, "minimumPrice", product_response->minimum_price) == NULL) {
    goto fail; //Numeric
    }
    }


    // product_response->width
    if(product_response->width) {
    if(cJSON_AddNumberToObject(item, "width", product_response->width) == NULL) {
    goto fail; //Numeric
    }
    }


    // product_response->height
    if(product_response->height) {
    if(cJSON_AddNumberToObject(item, "height", product_response->height) == NULL) {
    goto fail; //Numeric
    }
    }


    // product_response->depth
    if(product_response->depth) {
    if(cJSON_AddNumberToObject(item, "depth", product_response->depth) == NULL) {
    goto fail; //Numeric
    }
    }


    // product_response->weight
    if(product_response->weight) {
    if(cJSON_AddNumberToObject(item, "weight", product_response->weight) == NULL) {
    goto fail; //Numeric
    }
    }


    // product_response->unit
    if(product_response->unit) {
    if(cJSON_AddStringToObject(item, "unit", product_response->unit) == NULL) {
    goto fail; //String
    }
    }


    // product_response->studio
    if(product_response->studio) {
    if(cJSON_AddStringToObject(item, "studio", product_response->studio) == NULL) {
    goto fail; //String
    }
    }


    // product_response->parental_rating
    if(product_response->parental_rating) {
    if(cJSON_AddStringToObject(item, "parentalRating", product_response->parental_rating) == NULL) {
    goto fail; //String
    }
    }


    // product_response->publish_date
    if(product_response->publish_date) {
    if(cJSON_AddNumberToObject(item, "publishDate", product_response->publish_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // product_response->availability_date
    if(product_response->availability_date) {
    if(cJSON_AddNumberToObject(item, "availabilityDate", product_response->availability_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // product_response->size
    if(product_response->size) {
    cJSON *size_local_JSON = size_group_response_convertToJSON(product_response->size);
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

product_response_t *product_response_parseFromJSON(cJSON *product_responseJSON){

    product_response_t *product_response_local_var = NULL;

    // define the local list for product_response->catalog_numbers
    list_t *catalog_numbersList = NULL;

    // define the local list for product_response->features
    list_t *featuresList = NULL;

    // define the local variable for product_response->size
    size_group_response_t *size_local_nonprim = NULL;

    // product_response->brand
    cJSON *brand = cJSON_GetObjectItemCaseSensitive(product_responseJSON, "brand");
    if (cJSON_IsNull(brand)) {
        brand = NULL;
    }
    if (brand) { 
    if(!cJSON_IsString(brand) && !cJSON_IsNull(brand))
    {
    goto end; //String
    }
    }

    // product_response->product_type
    cJSON *product_type = cJSON_GetObjectItemCaseSensitive(product_responseJSON, "productType");
    if (cJSON_IsNull(product_type)) {
        product_type = NULL;
    }
    if (product_type) { 
    if(!cJSON_IsString(product_type) && !cJSON_IsNull(product_type))
    {
    goto end; //String
    }
    }

    // product_response->condition
    cJSON *condition = cJSON_GetObjectItemCaseSensitive(product_responseJSON, "condition");
    if (cJSON_IsNull(condition)) {
        condition = NULL;
    }
    if (condition) { 
    if(!cJSON_IsString(condition) && !cJSON_IsNull(condition))
    {
    goto end; //String
    }
    }

    // product_response->isbn
    cJSON *isbn = cJSON_GetObjectItemCaseSensitive(product_responseJSON, "isbn");
    if (cJSON_IsNull(isbn)) {
        isbn = NULL;
    }
    if (isbn) { 
    if(!cJSON_IsString(isbn) && !cJSON_IsNull(isbn))
    {
    goto end; //String
    }
    }

    // product_response->asin
    cJSON *asin = cJSON_GetObjectItemCaseSensitive(product_responseJSON, "asin");
    if (cJSON_IsNull(asin)) {
        asin = NULL;
    }
    if (asin) { 
    if(!cJSON_IsString(asin) && !cJSON_IsNull(asin))
    {
    goto end; //String
    }
    }

    // product_response->catalog_numbers
    cJSON *catalog_numbers = cJSON_GetObjectItemCaseSensitive(product_responseJSON, "catalogNumbers");
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

    // product_response->department
    cJSON *department = cJSON_GetObjectItemCaseSensitive(product_responseJSON, "department");
    if (cJSON_IsNull(department)) {
        department = NULL;
    }
    if (department) { 
    if(!cJSON_IsString(department) && !cJSON_IsNull(department))
    {
    goto end; //String
    }
    }

    // product_response->features
    cJSON *features = cJSON_GetObjectItemCaseSensitive(product_responseJSON, "features");
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

    // product_response->minimum_price
    cJSON *minimum_price = cJSON_GetObjectItemCaseSensitive(product_responseJSON, "minimumPrice");
    if (cJSON_IsNull(minimum_price)) {
        minimum_price = NULL;
    }
    if (minimum_price) { 
    if(!cJSON_IsNumber(minimum_price))
    {
    goto end; //Numeric
    }
    }

    // product_response->width
    cJSON *width = cJSON_GetObjectItemCaseSensitive(product_responseJSON, "width");
    if (cJSON_IsNull(width)) {
        width = NULL;
    }
    if (width) { 
    if(!cJSON_IsNumber(width))
    {
    goto end; //Numeric
    }
    }

    // product_response->height
    cJSON *height = cJSON_GetObjectItemCaseSensitive(product_responseJSON, "height");
    if (cJSON_IsNull(height)) {
        height = NULL;
    }
    if (height) { 
    if(!cJSON_IsNumber(height))
    {
    goto end; //Numeric
    }
    }

    // product_response->depth
    cJSON *depth = cJSON_GetObjectItemCaseSensitive(product_responseJSON, "depth");
    if (cJSON_IsNull(depth)) {
        depth = NULL;
    }
    if (depth) { 
    if(!cJSON_IsNumber(depth))
    {
    goto end; //Numeric
    }
    }

    // product_response->weight
    cJSON *weight = cJSON_GetObjectItemCaseSensitive(product_responseJSON, "weight");
    if (cJSON_IsNull(weight)) {
        weight = NULL;
    }
    if (weight) { 
    if(!cJSON_IsNumber(weight))
    {
    goto end; //Numeric
    }
    }

    // product_response->unit
    cJSON *unit = cJSON_GetObjectItemCaseSensitive(product_responseJSON, "unit");
    if (cJSON_IsNull(unit)) {
        unit = NULL;
    }
    if (unit) { 
    if(!cJSON_IsString(unit) && !cJSON_IsNull(unit))
    {
    goto end; //String
    }
    }

    // product_response->studio
    cJSON *studio = cJSON_GetObjectItemCaseSensitive(product_responseJSON, "studio");
    if (cJSON_IsNull(studio)) {
        studio = NULL;
    }
    if (studio) { 
    if(!cJSON_IsString(studio) && !cJSON_IsNull(studio))
    {
    goto end; //String
    }
    }

    // product_response->parental_rating
    cJSON *parental_rating = cJSON_GetObjectItemCaseSensitive(product_responseJSON, "parentalRating");
    if (cJSON_IsNull(parental_rating)) {
        parental_rating = NULL;
    }
    if (parental_rating) { 
    if(!cJSON_IsString(parental_rating) && !cJSON_IsNull(parental_rating))
    {
    goto end; //String
    }
    }

    // product_response->publish_date
    cJSON *publish_date = cJSON_GetObjectItemCaseSensitive(product_responseJSON, "publishDate");
    if (cJSON_IsNull(publish_date)) {
        publish_date = NULL;
    }
    if (publish_date) { 
    if(!cJSON_IsNumber(publish_date))
    {
    goto end; //Numeric
    }
    }

    // product_response->availability_date
    cJSON *availability_date = cJSON_GetObjectItemCaseSensitive(product_responseJSON, "availabilityDate");
    if (cJSON_IsNull(availability_date)) {
        availability_date = NULL;
    }
    if (availability_date) { 
    if(!cJSON_IsNumber(availability_date))
    {
    goto end; //Numeric
    }
    }

    // product_response->size
    cJSON *size = cJSON_GetObjectItemCaseSensitive(product_responseJSON, "size");
    if (cJSON_IsNull(size)) {
        size = NULL;
    }
    if (size) { 
    size_local_nonprim = size_group_response_parseFromJSON(size); //nonprimitive
    }


    product_response_local_var = product_response_create_internal (
        brand && !cJSON_IsNull(brand) ? strdup(brand->valuestring) : NULL,
        product_type && !cJSON_IsNull(product_type) ? strdup(product_type->valuestring) : NULL,
        condition && !cJSON_IsNull(condition) ? strdup(condition->valuestring) : NULL,
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
        unit && !cJSON_IsNull(unit) ? strdup(unit->valuestring) : NULL,
        studio && !cJSON_IsNull(studio) ? strdup(studio->valuestring) : NULL,
        parental_rating && !cJSON_IsNull(parental_rating) ? strdup(parental_rating->valuestring) : NULL,
        publish_date ? publish_date->valuedouble : 0,
        availability_date ? availability_date->valuedouble : 0,
        size ? size_local_nonprim : NULL
        );

    return product_response_local_var;
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
        size_group_response_free(size_local_nonprim);
        size_local_nonprim = NULL;
    }
    return NULL;

}
