#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "media.h"


char* media_media_type_ToString(sirqul_iot_platform_media_MEDIATYPE_e media_type) {
    char* media_typeArray[] =  { "NULL", "APK", "APPLICATION", "IMAGE", "AUDIO", "VIDEO", "MULTIPART", "BAR_CODE", "TEXT", "OTHER" };
    return media_typeArray[media_type];
}

sirqul_iot_platform_media_MEDIATYPE_e media_media_type_FromString(char* media_type){
    int stringToReturn = 0;
    char *media_typeArray[] =  { "NULL", "APK", "APPLICATION", "IMAGE", "AUDIO", "VIDEO", "MULTIPART", "BAR_CODE", "TEXT", "OTHER" };
    size_t sizeofArray = sizeof(media_typeArray) / sizeof(media_typeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(media_type, media_typeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}
char* media_condition_ToString(sirqul_iot_platform_media_CONDITION_e condition) {
    char* conditionArray[] =  { "NULL", "NEW", "USED", "REFURBISHED", "OTHER" };
    return conditionArray[condition];
}

sirqul_iot_platform_media_CONDITION_e media_condition_FromString(char* condition){
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

static media_t *media_create_internal(
    sirqul_iot_platform_media_MEDIATYPE_e media_type,
    sirqul_iot_platform_media_CONDITION_e condition,
    char *isbn,
    char *asin,
    list_t *catalog_numbers,
    int duration,
    char *author,
    long release_date,
    long availability_date,
    char *parental_rating,
    list_t *collections,
    int collection_count
    ) {
    media_t *media_local_var = malloc(sizeof(media_t));
    if (!media_local_var) {
        return NULL;
    }
    media_local_var->media_type = media_type;
    media_local_var->condition = condition;
    media_local_var->isbn = isbn;
    media_local_var->asin = asin;
    media_local_var->catalog_numbers = catalog_numbers;
    media_local_var->duration = duration;
    media_local_var->author = author;
    media_local_var->release_date = release_date;
    media_local_var->availability_date = availability_date;
    media_local_var->parental_rating = parental_rating;
    media_local_var->collections = collections;
    media_local_var->collection_count = collection_count;

    media_local_var->_library_owned = 1;
    return media_local_var;
}

__attribute__((deprecated)) media_t *media_create(
    sirqul_iot_platform_media_MEDIATYPE_e media_type,
    sirqul_iot_platform_media_CONDITION_e condition,
    char *isbn,
    char *asin,
    list_t *catalog_numbers,
    int duration,
    char *author,
    long release_date,
    long availability_date,
    char *parental_rating,
    list_t *collections,
    int collection_count
    ) {
    return media_create_internal (
        media_type,
        condition,
        isbn,
        asin,
        catalog_numbers,
        duration,
        author,
        release_date,
        availability_date,
        parental_rating,
        collections,
        collection_count
        );
}

void media_free(media_t *media) {
    if(NULL == media){
        return ;
    }
    if(media->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "media_free");
        return ;
    }
    listEntry_t *listEntry;
    if (media->isbn) {
        free(media->isbn);
        media->isbn = NULL;
    }
    if (media->asin) {
        free(media->asin);
        media->asin = NULL;
    }
    if (media->catalog_numbers) {
        list_ForEach(listEntry, media->catalog_numbers) {
            free(listEntry->data);
        }
        list_freeList(media->catalog_numbers);
        media->catalog_numbers = NULL;
    }
    if (media->author) {
        free(media->author);
        media->author = NULL;
    }
    if (media->parental_rating) {
        free(media->parental_rating);
        media->parental_rating = NULL;
    }
    if (media->collections) {
        list_ForEach(listEntry, media->collections) {
            album_free(listEntry->data);
        }
        list_freeList(media->collections);
        media->collections = NULL;
    }
    free(media);
}

cJSON *media_convertToJSON(media_t *media) {
    cJSON *item = cJSON_CreateObject();

    // media->media_type
    if(media->media_type != sirqul_iot_platform_media_MEDIATYPE_NULL) {
    if(cJSON_AddStringToObject(item, "mediaType", media_media_type_ToString(media->media_type)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // media->condition
    if(media->condition != sirqul_iot_platform_media_CONDITION_NULL) {
    if(cJSON_AddStringToObject(item, "condition", media_condition_ToString(media->condition)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // media->isbn
    if(media->isbn) {
    if(cJSON_AddStringToObject(item, "isbn", media->isbn) == NULL) {
    goto fail; //String
    }
    }


    // media->asin
    if(media->asin) {
    if(cJSON_AddStringToObject(item, "asin", media->asin) == NULL) {
    goto fail; //String
    }
    }


    // media->catalog_numbers
    if(media->catalog_numbers) {
    cJSON *catalog_numbers = cJSON_AddArrayToObject(item, "catalogNumbers");
    if(catalog_numbers == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *catalog_numbersListEntry;
    list_ForEach(catalog_numbersListEntry, media->catalog_numbers) {
    if(cJSON_AddStringToObject(catalog_numbers, "", catalog_numbersListEntry->data) == NULL)
    {
        goto fail;
    }
    }
    }


    // media->duration
    if(media->duration) {
    if(cJSON_AddNumberToObject(item, "duration", media->duration) == NULL) {
    goto fail; //Numeric
    }
    }


    // media->author
    if(media->author) {
    if(cJSON_AddStringToObject(item, "author", media->author) == NULL) {
    goto fail; //String
    }
    }


    // media->release_date
    if(media->release_date) {
    if(cJSON_AddNumberToObject(item, "releaseDate", media->release_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // media->availability_date
    if(media->availability_date) {
    if(cJSON_AddNumberToObject(item, "availabilityDate", media->availability_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // media->parental_rating
    if(media->parental_rating) {
    if(cJSON_AddStringToObject(item, "parentalRating", media->parental_rating) == NULL) {
    goto fail; //String
    }
    }


    // media->collections
    if(media->collections) {
    cJSON *collections = cJSON_AddArrayToObject(item, "collections");
    if(collections == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *collectionsListEntry;
    if (media->collections) {
    list_ForEach(collectionsListEntry, media->collections) {
    cJSON *itemLocal = album_convertToJSON(collectionsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(collections, itemLocal);
    }
    }
    }


    // media->collection_count
    if(media->collection_count) {
    if(cJSON_AddNumberToObject(item, "collectionCount", media->collection_count) == NULL) {
    goto fail; //Numeric
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

media_t *media_parseFromJSON(cJSON *mediaJSON){

    media_t *media_local_var = NULL;

    // define the local list for media->catalog_numbers
    list_t *catalog_numbersList = NULL;

    // define the local list for media->collections
    list_t *collectionsList = NULL;

    // media->media_type
    cJSON *media_type = cJSON_GetObjectItemCaseSensitive(mediaJSON, "mediaType");
    if (cJSON_IsNull(media_type)) {
        media_type = NULL;
    }
    sirqul_iot_platform_media_MEDIATYPE_e media_typeVariable;
    if (media_type) { 
    if(!cJSON_IsString(media_type))
    {
    goto end; //Enum
    }
    media_typeVariable = media_media_type_FromString(media_type->valuestring);
    }

    // media->condition
    cJSON *condition = cJSON_GetObjectItemCaseSensitive(mediaJSON, "condition");
    if (cJSON_IsNull(condition)) {
        condition = NULL;
    }
    sirqul_iot_platform_media_CONDITION_e conditionVariable;
    if (condition) { 
    if(!cJSON_IsString(condition))
    {
    goto end; //Enum
    }
    conditionVariable = media_condition_FromString(condition->valuestring);
    }

    // media->isbn
    cJSON *isbn = cJSON_GetObjectItemCaseSensitive(mediaJSON, "isbn");
    if (cJSON_IsNull(isbn)) {
        isbn = NULL;
    }
    if (isbn) { 
    if(!cJSON_IsString(isbn) && !cJSON_IsNull(isbn))
    {
    goto end; //String
    }
    }

    // media->asin
    cJSON *asin = cJSON_GetObjectItemCaseSensitive(mediaJSON, "asin");
    if (cJSON_IsNull(asin)) {
        asin = NULL;
    }
    if (asin) { 
    if(!cJSON_IsString(asin) && !cJSON_IsNull(asin))
    {
    goto end; //String
    }
    }

    // media->catalog_numbers
    cJSON *catalog_numbers = cJSON_GetObjectItemCaseSensitive(mediaJSON, "catalogNumbers");
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

    // media->duration
    cJSON *duration = cJSON_GetObjectItemCaseSensitive(mediaJSON, "duration");
    if (cJSON_IsNull(duration)) {
        duration = NULL;
    }
    if (duration) { 
    if(!cJSON_IsNumber(duration))
    {
    goto end; //Numeric
    }
    }

    // media->author
    cJSON *author = cJSON_GetObjectItemCaseSensitive(mediaJSON, "author");
    if (cJSON_IsNull(author)) {
        author = NULL;
    }
    if (author) { 
    if(!cJSON_IsString(author) && !cJSON_IsNull(author))
    {
    goto end; //String
    }
    }

    // media->release_date
    cJSON *release_date = cJSON_GetObjectItemCaseSensitive(mediaJSON, "releaseDate");
    if (cJSON_IsNull(release_date)) {
        release_date = NULL;
    }
    if (release_date) { 
    if(!cJSON_IsNumber(release_date))
    {
    goto end; //Numeric
    }
    }

    // media->availability_date
    cJSON *availability_date = cJSON_GetObjectItemCaseSensitive(mediaJSON, "availabilityDate");
    if (cJSON_IsNull(availability_date)) {
        availability_date = NULL;
    }
    if (availability_date) { 
    if(!cJSON_IsNumber(availability_date))
    {
    goto end; //Numeric
    }
    }

    // media->parental_rating
    cJSON *parental_rating = cJSON_GetObjectItemCaseSensitive(mediaJSON, "parentalRating");
    if (cJSON_IsNull(parental_rating)) {
        parental_rating = NULL;
    }
    if (parental_rating) { 
    if(!cJSON_IsString(parental_rating) && !cJSON_IsNull(parental_rating))
    {
    goto end; //String
    }
    }

    // media->collections
    cJSON *collections = cJSON_GetObjectItemCaseSensitive(mediaJSON, "collections");
    if (cJSON_IsNull(collections)) {
        collections = NULL;
    }
    if (collections) { 
    cJSON *collections_local_nonprimitive = NULL;
    if(!cJSON_IsArray(collections)){
        goto end; //nonprimitive container
    }

    collectionsList = list_createList();

    cJSON_ArrayForEach(collections_local_nonprimitive,collections )
    {
        if(!cJSON_IsObject(collections_local_nonprimitive)){
            goto end;
        }
        album_t *collectionsItem = album_parseFromJSON(collections_local_nonprimitive);

        list_addElement(collectionsList, collectionsItem);
    }
    }

    // media->collection_count
    cJSON *collection_count = cJSON_GetObjectItemCaseSensitive(mediaJSON, "collectionCount");
    if (cJSON_IsNull(collection_count)) {
        collection_count = NULL;
    }
    if (collection_count) { 
    if(!cJSON_IsNumber(collection_count))
    {
    goto end; //Numeric
    }
    }


    media_local_var = media_create_internal (
        media_type ? media_typeVariable : sirqul_iot_platform_media_MEDIATYPE_NULL,
        condition ? conditionVariable : sirqul_iot_platform_media_CONDITION_NULL,
        isbn && !cJSON_IsNull(isbn) ? strdup(isbn->valuestring) : NULL,
        asin && !cJSON_IsNull(asin) ? strdup(asin->valuestring) : NULL,
        catalog_numbers ? catalog_numbersList : NULL,
        duration ? duration->valuedouble : 0,
        author && !cJSON_IsNull(author) ? strdup(author->valuestring) : NULL,
        release_date ? release_date->valuedouble : 0,
        availability_date ? availability_date->valuedouble : 0,
        parental_rating && !cJSON_IsNull(parental_rating) ? strdup(parental_rating->valuestring) : NULL,
        collections ? collectionsList : NULL,
        collection_count ? collection_count->valuedouble : 0
        );

    return media_local_var;
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
    if (collectionsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, collectionsList) {
            album_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(collectionsList);
        collectionsList = NULL;
    }
    return NULL;

}
