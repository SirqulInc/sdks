#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "rating_index_response.h"


char* rating_index_response_ratable_type_ToString(sirqul_iot_platform_rating_index_response_RATABLETYPE_e ratable_type) {
    char* ratable_typeArray[] =  { "NULL", "LOCATABLE", "RESERVABLE", "PERMISSIONABLE", "NOTABLE", "ASSETABLE", "LIKABLE", "FLAGABLE", "FAVORITABLE", "RATABLE", "ALBUM", "COLLECTION", "APPLICATION", "APPLICATION_SETTING", "APPLICATION_CERT", "APPLICATION_PLACEMENT", "ACCOUNT", "ACCOUNT_SETTING", "GAME_LEVEL", "PACK", "MISSION", "TOURNAMENT", "ASSET", "ALBUM_CONTEST", "THEME_DESCRIPTOR", "OFFER", "OFFER_LOCATION", "EVENT", "RETAILER", "RETAILER_LOCATION", "NOTE", "CREATIVE", "FAVORITE", "LIKE", "RATING", "ANALYTIC", "THIRD_PARTY_CREDENTIAL", "THIRD_PARTY_NETWORK", "REGION" };
    return ratable_typeArray[ratable_type];
}

sirqul_iot_platform_rating_index_response_RATABLETYPE_e rating_index_response_ratable_type_FromString(char* ratable_type){
    int stringToReturn = 0;
    char *ratable_typeArray[] =  { "NULL", "LOCATABLE", "RESERVABLE", "PERMISSIONABLE", "NOTABLE", "ASSETABLE", "LIKABLE", "FLAGABLE", "FAVORITABLE", "RATABLE", "ALBUM", "COLLECTION", "APPLICATION", "APPLICATION_SETTING", "APPLICATION_CERT", "APPLICATION_PLACEMENT", "ACCOUNT", "ACCOUNT_SETTING", "GAME_LEVEL", "PACK", "MISSION", "TOURNAMENT", "ASSET", "ALBUM_CONTEST", "THEME_DESCRIPTOR", "OFFER", "OFFER_LOCATION", "EVENT", "RETAILER", "RETAILER_LOCATION", "NOTE", "CREATIVE", "FAVORITE", "LIKE", "RATING", "ANALYTIC", "THIRD_PARTY_CREDENTIAL", "THIRD_PARTY_NETWORK", "REGION" };
    size_t sizeofArray = sizeof(ratable_typeArray) / sizeof(ratable_typeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(ratable_type, ratable_typeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static rating_index_response_t *rating_index_response_create_internal(
    long rating_index_id,
    long rating_count,
    float rating_average,
    float value,
    char *display,
    sirqul_iot_platform_rating_index_response_RATABLETYPE_e ratable_type,
    long ratable_id,
    category_response_t *category,
    object_t *ratable,
    char *secondary_type
    ) {
    rating_index_response_t *rating_index_response_local_var = malloc(sizeof(rating_index_response_t));
    if (!rating_index_response_local_var) {
        return NULL;
    }
    rating_index_response_local_var->rating_index_id = rating_index_id;
    rating_index_response_local_var->rating_count = rating_count;
    rating_index_response_local_var->rating_average = rating_average;
    rating_index_response_local_var->value = value;
    rating_index_response_local_var->display = display;
    rating_index_response_local_var->ratable_type = ratable_type;
    rating_index_response_local_var->ratable_id = ratable_id;
    rating_index_response_local_var->category = category;
    rating_index_response_local_var->ratable = ratable;
    rating_index_response_local_var->secondary_type = secondary_type;

    rating_index_response_local_var->_library_owned = 1;
    return rating_index_response_local_var;
}

__attribute__((deprecated)) rating_index_response_t *rating_index_response_create(
    long rating_index_id,
    long rating_count,
    float rating_average,
    float value,
    char *display,
    sirqul_iot_platform_rating_index_response_RATABLETYPE_e ratable_type,
    long ratable_id,
    category_response_t *category,
    object_t *ratable,
    char *secondary_type
    ) {
    return rating_index_response_create_internal (
        rating_index_id,
        rating_count,
        rating_average,
        value,
        display,
        ratable_type,
        ratable_id,
        category,
        ratable,
        secondary_type
        );
}

void rating_index_response_free(rating_index_response_t *rating_index_response) {
    if(NULL == rating_index_response){
        return ;
    }
    if(rating_index_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "rating_index_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (rating_index_response->display) {
        free(rating_index_response->display);
        rating_index_response->display = NULL;
    }
    if (rating_index_response->category) {
        category_response_free(rating_index_response->category);
        rating_index_response->category = NULL;
    }
    if (rating_index_response->ratable) {
        object_free(rating_index_response->ratable);
        rating_index_response->ratable = NULL;
    }
    if (rating_index_response->secondary_type) {
        free(rating_index_response->secondary_type);
        rating_index_response->secondary_type = NULL;
    }
    free(rating_index_response);
}

cJSON *rating_index_response_convertToJSON(rating_index_response_t *rating_index_response) {
    cJSON *item = cJSON_CreateObject();

    // rating_index_response->rating_index_id
    if(rating_index_response->rating_index_id) {
    if(cJSON_AddNumberToObject(item, "ratingIndexId", rating_index_response->rating_index_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // rating_index_response->rating_count
    if(rating_index_response->rating_count) {
    if(cJSON_AddNumberToObject(item, "ratingCount", rating_index_response->rating_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // rating_index_response->rating_average
    if(rating_index_response->rating_average) {
    if(cJSON_AddNumberToObject(item, "ratingAverage", rating_index_response->rating_average) == NULL) {
    goto fail; //Numeric
    }
    }


    // rating_index_response->value
    if(rating_index_response->value) {
    if(cJSON_AddNumberToObject(item, "value", rating_index_response->value) == NULL) {
    goto fail; //Numeric
    }
    }


    // rating_index_response->display
    if(rating_index_response->display) {
    if(cJSON_AddStringToObject(item, "display", rating_index_response->display) == NULL) {
    goto fail; //String
    }
    }


    // rating_index_response->ratable_type
    if(rating_index_response->ratable_type != sirqul_iot_platform_rating_index_response_RATABLETYPE_NULL) {
    if(cJSON_AddStringToObject(item, "ratableType", rating_index_response_ratable_type_ToString(rating_index_response->ratable_type)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // rating_index_response->ratable_id
    if(rating_index_response->ratable_id) {
    if(cJSON_AddNumberToObject(item, "ratableId", rating_index_response->ratable_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // rating_index_response->category
    if(rating_index_response->category) {
    cJSON *category_local_JSON = category_response_convertToJSON(rating_index_response->category);
    if(category_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "category", category_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // rating_index_response->ratable
    if(rating_index_response->ratable) {
    cJSON *ratable_object = object_convertToJSON(rating_index_response->ratable);
    if(ratable_object == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "ratable", ratable_object);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // rating_index_response->secondary_type
    if(rating_index_response->secondary_type) {
    if(cJSON_AddStringToObject(item, "secondaryType", rating_index_response->secondary_type) == NULL) {
    goto fail; //String
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

rating_index_response_t *rating_index_response_parseFromJSON(cJSON *rating_index_responseJSON){

    rating_index_response_t *rating_index_response_local_var = NULL;

    // define the local variable for rating_index_response->category
    category_response_t *category_local_nonprim = NULL;

    // rating_index_response->rating_index_id
    cJSON *rating_index_id = cJSON_GetObjectItemCaseSensitive(rating_index_responseJSON, "ratingIndexId");
    if (cJSON_IsNull(rating_index_id)) {
        rating_index_id = NULL;
    }
    if (rating_index_id) { 
    if(!cJSON_IsNumber(rating_index_id))
    {
    goto end; //Numeric
    }
    }

    // rating_index_response->rating_count
    cJSON *rating_count = cJSON_GetObjectItemCaseSensitive(rating_index_responseJSON, "ratingCount");
    if (cJSON_IsNull(rating_count)) {
        rating_count = NULL;
    }
    if (rating_count) { 
    if(!cJSON_IsNumber(rating_count))
    {
    goto end; //Numeric
    }
    }

    // rating_index_response->rating_average
    cJSON *rating_average = cJSON_GetObjectItemCaseSensitive(rating_index_responseJSON, "ratingAverage");
    if (cJSON_IsNull(rating_average)) {
        rating_average = NULL;
    }
    if (rating_average) { 
    if(!cJSON_IsNumber(rating_average))
    {
    goto end; //Numeric
    }
    }

    // rating_index_response->value
    cJSON *value = cJSON_GetObjectItemCaseSensitive(rating_index_responseJSON, "value");
    if (cJSON_IsNull(value)) {
        value = NULL;
    }
    if (value) { 
    if(!cJSON_IsNumber(value))
    {
    goto end; //Numeric
    }
    }

    // rating_index_response->display
    cJSON *display = cJSON_GetObjectItemCaseSensitive(rating_index_responseJSON, "display");
    if (cJSON_IsNull(display)) {
        display = NULL;
    }
    if (display) { 
    if(!cJSON_IsString(display) && !cJSON_IsNull(display))
    {
    goto end; //String
    }
    }

    // rating_index_response->ratable_type
    cJSON *ratable_type = cJSON_GetObjectItemCaseSensitive(rating_index_responseJSON, "ratableType");
    if (cJSON_IsNull(ratable_type)) {
        ratable_type = NULL;
    }
    sirqul_iot_platform_rating_index_response_RATABLETYPE_e ratable_typeVariable;
    if (ratable_type) { 
    if(!cJSON_IsString(ratable_type))
    {
    goto end; //Enum
    }
    ratable_typeVariable = rating_index_response_ratable_type_FromString(ratable_type->valuestring);
    }

    // rating_index_response->ratable_id
    cJSON *ratable_id = cJSON_GetObjectItemCaseSensitive(rating_index_responseJSON, "ratableId");
    if (cJSON_IsNull(ratable_id)) {
        ratable_id = NULL;
    }
    if (ratable_id) { 
    if(!cJSON_IsNumber(ratable_id))
    {
    goto end; //Numeric
    }
    }

    // rating_index_response->category
    cJSON *category = cJSON_GetObjectItemCaseSensitive(rating_index_responseJSON, "category");
    if (cJSON_IsNull(category)) {
        category = NULL;
    }
    if (category) { 
    category_local_nonprim = category_response_parseFromJSON(category); //nonprimitive
    }

    // rating_index_response->ratable
    cJSON *ratable = cJSON_GetObjectItemCaseSensitive(rating_index_responseJSON, "ratable");
    if (cJSON_IsNull(ratable)) {
        ratable = NULL;
    }
    object_t *ratable_local_object = NULL;
    if (ratable) { 
    ratable_local_object = object_parseFromJSON(ratable); //object
    }

    // rating_index_response->secondary_type
    cJSON *secondary_type = cJSON_GetObjectItemCaseSensitive(rating_index_responseJSON, "secondaryType");
    if (cJSON_IsNull(secondary_type)) {
        secondary_type = NULL;
    }
    if (secondary_type) { 
    if(!cJSON_IsString(secondary_type) && !cJSON_IsNull(secondary_type))
    {
    goto end; //String
    }
    }


    rating_index_response_local_var = rating_index_response_create_internal (
        rating_index_id ? rating_index_id->valuedouble : 0,
        rating_count ? rating_count->valuedouble : 0,
        rating_average ? rating_average->valuedouble : 0,
        value ? value->valuedouble : 0,
        display && !cJSON_IsNull(display) ? strdup(display->valuestring) : NULL,
        ratable_type ? ratable_typeVariable : sirqul_iot_platform_rating_index_response_RATABLETYPE_NULL,
        ratable_id ? ratable_id->valuedouble : 0,
        category ? category_local_nonprim : NULL,
        ratable ? ratable_local_object : NULL,
        secondary_type && !cJSON_IsNull(secondary_type) ? strdup(secondary_type->valuestring) : NULL
        );

    return rating_index_response_local_var;
end:
    if (category_local_nonprim) {
        category_response_free(category_local_nonprim);
        category_local_nonprim = NULL;
    }
    return NULL;

}
