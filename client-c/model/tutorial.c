#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "tutorial.h"


char* tutorial_alignment_ToString(sirqul_iot_platform_tutorial_ALIGNMENT_e alignment) {
    char* alignmentArray[] =  { "NULL", "NONE", "IMAGE_ABOVE", "IMAGE_BELOW", "IMAGE_LEFT", "IMAGE_RIGHT", "IMAGE_ONLY", "TEXT_ONLY" };
    return alignmentArray[alignment];
}

sirqul_iot_platform_tutorial_ALIGNMENT_e tutorial_alignment_FromString(char* alignment){
    int stringToReturn = 0;
    char *alignmentArray[] =  { "NULL", "NONE", "IMAGE_ABOVE", "IMAGE_BELOW", "IMAGE_LEFT", "IMAGE_RIGHT", "IMAGE_ONLY", "TEXT_ONLY" };
    size_t sizeofArray = sizeof(alignmentArray) / sizeof(alignmentArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(alignment, alignmentArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}
char* tutorial_tutorial_object_type_ToString(sirqul_iot_platform_tutorial_TUTORIALOBJECTTYPE_e tutorial_object_type) {
    char* tutorial_object_typeArray[] =  { "NULL", "GAME_OBJECT", "GAME_LEVEL", "PACK", "GAME", "MISSION", "PROFILE", "APPLICATION", "TICKETS", "ASSET", "CUSTOM" };
    return tutorial_object_typeArray[tutorial_object_type];
}

sirqul_iot_platform_tutorial_TUTORIALOBJECTTYPE_e tutorial_tutorial_object_type_FromString(char* tutorial_object_type){
    int stringToReturn = 0;
    char *tutorial_object_typeArray[] =  { "NULL", "GAME_OBJECT", "GAME_LEVEL", "PACK", "GAME", "MISSION", "PROFILE", "APPLICATION", "TICKETS", "ASSET", "CUSTOM" };
    size_t sizeofArray = sizeof(tutorial_object_typeArray) / sizeof(tutorial_object_typeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(tutorial_object_type, tutorial_object_typeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static tutorial_t *tutorial_create_internal(
    long id,
    int active,
    int valid,
    char *name,
    char *description,
    sirqul_iot_platform_tutorial_ALIGNMENT_e alignment,
    asset_t *image,
    long order_index,
    sirqul_iot_platform_tutorial_TUTORIALOBJECTTYPE_e tutorial_object_type
    ) {
    tutorial_t *tutorial_local_var = malloc(sizeof(tutorial_t));
    if (!tutorial_local_var) {
        return NULL;
    }
    tutorial_local_var->id = id;
    tutorial_local_var->active = active;
    tutorial_local_var->valid = valid;
    tutorial_local_var->name = name;
    tutorial_local_var->description = description;
    tutorial_local_var->alignment = alignment;
    tutorial_local_var->image = image;
    tutorial_local_var->order_index = order_index;
    tutorial_local_var->tutorial_object_type = tutorial_object_type;

    tutorial_local_var->_library_owned = 1;
    return tutorial_local_var;
}

__attribute__((deprecated)) tutorial_t *tutorial_create(
    long id,
    int active,
    int valid,
    char *name,
    char *description,
    sirqul_iot_platform_tutorial_ALIGNMENT_e alignment,
    asset_t *image,
    long order_index,
    sirqul_iot_platform_tutorial_TUTORIALOBJECTTYPE_e tutorial_object_type
    ) {
    return tutorial_create_internal (
        id,
        active,
        valid,
        name,
        description,
        alignment,
        image,
        order_index,
        tutorial_object_type
        );
}

void tutorial_free(tutorial_t *tutorial) {
    if(NULL == tutorial){
        return ;
    }
    if(tutorial->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "tutorial_free");
        return ;
    }
    listEntry_t *listEntry;
    if (tutorial->name) {
        free(tutorial->name);
        tutorial->name = NULL;
    }
    if (tutorial->description) {
        free(tutorial->description);
        tutorial->description = NULL;
    }
    if (tutorial->image) {
        asset_free(tutorial->image);
        tutorial->image = NULL;
    }
    free(tutorial);
}

cJSON *tutorial_convertToJSON(tutorial_t *tutorial) {
    cJSON *item = cJSON_CreateObject();

    // tutorial->id
    if(tutorial->id) {
    if(cJSON_AddNumberToObject(item, "id", tutorial->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // tutorial->active
    if(tutorial->active) {
    if(cJSON_AddBoolToObject(item, "active", tutorial->active) == NULL) {
    goto fail; //Bool
    }
    }


    // tutorial->valid
    if(tutorial->valid) {
    if(cJSON_AddBoolToObject(item, "valid", tutorial->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // tutorial->name
    if(tutorial->name) {
    if(cJSON_AddStringToObject(item, "name", tutorial->name) == NULL) {
    goto fail; //String
    }
    }


    // tutorial->description
    if(tutorial->description) {
    if(cJSON_AddStringToObject(item, "description", tutorial->description) == NULL) {
    goto fail; //String
    }
    }


    // tutorial->alignment
    if(tutorial->alignment != sirqul_iot_platform_tutorial_ALIGNMENT_NULL) {
    if(cJSON_AddStringToObject(item, "alignment", tutorial_alignment_ToString(tutorial->alignment)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // tutorial->image
    if(tutorial->image) {
    cJSON *image_local_JSON = asset_convertToJSON(tutorial->image);
    if(image_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "image", image_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // tutorial->order_index
    if(tutorial->order_index) {
    if(cJSON_AddNumberToObject(item, "orderIndex", tutorial->order_index) == NULL) {
    goto fail; //Numeric
    }
    }


    // tutorial->tutorial_object_type
    if(tutorial->tutorial_object_type != sirqul_iot_platform_tutorial_TUTORIALOBJECTTYPE_NULL) {
    if(cJSON_AddStringToObject(item, "tutorialObjectType", tutorial_tutorial_object_type_ToString(tutorial->tutorial_object_type)) == NULL)
    {
    goto fail; //Enum
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

tutorial_t *tutorial_parseFromJSON(cJSON *tutorialJSON){

    tutorial_t *tutorial_local_var = NULL;

    // define the local variable for tutorial->image
    asset_t *image_local_nonprim = NULL;

    // tutorial->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(tutorialJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // tutorial->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(tutorialJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // tutorial->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(tutorialJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // tutorial->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(tutorialJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // tutorial->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(tutorialJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // tutorial->alignment
    cJSON *alignment = cJSON_GetObjectItemCaseSensitive(tutorialJSON, "alignment");
    if (cJSON_IsNull(alignment)) {
        alignment = NULL;
    }
    sirqul_iot_platform_tutorial_ALIGNMENT_e alignmentVariable;
    if (alignment) { 
    if(!cJSON_IsString(alignment))
    {
    goto end; //Enum
    }
    alignmentVariable = tutorial_alignment_FromString(alignment->valuestring);
    }

    // tutorial->image
    cJSON *image = cJSON_GetObjectItemCaseSensitive(tutorialJSON, "image");
    if (cJSON_IsNull(image)) {
        image = NULL;
    }
    if (image) { 
    image_local_nonprim = asset_parseFromJSON(image); //nonprimitive
    }

    // tutorial->order_index
    cJSON *order_index = cJSON_GetObjectItemCaseSensitive(tutorialJSON, "orderIndex");
    if (cJSON_IsNull(order_index)) {
        order_index = NULL;
    }
    if (order_index) { 
    if(!cJSON_IsNumber(order_index))
    {
    goto end; //Numeric
    }
    }

    // tutorial->tutorial_object_type
    cJSON *tutorial_object_type = cJSON_GetObjectItemCaseSensitive(tutorialJSON, "tutorialObjectType");
    if (cJSON_IsNull(tutorial_object_type)) {
        tutorial_object_type = NULL;
    }
    sirqul_iot_platform_tutorial_TUTORIALOBJECTTYPE_e tutorial_object_typeVariable;
    if (tutorial_object_type) { 
    if(!cJSON_IsString(tutorial_object_type))
    {
    goto end; //Enum
    }
    tutorial_object_typeVariable = tutorial_tutorial_object_type_FromString(tutorial_object_type->valuestring);
    }


    tutorial_local_var = tutorial_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        alignment ? alignmentVariable : sirqul_iot_platform_tutorial_ALIGNMENT_NULL,
        image ? image_local_nonprim : NULL,
        order_index ? order_index->valuedouble : 0,
        tutorial_object_type ? tutorial_object_typeVariable : sirqul_iot_platform_tutorial_TUTORIALOBJECTTYPE_NULL
        );

    return tutorial_local_var;
end:
    if (image_local_nonprim) {
        asset_free(image_local_nonprim);
        image_local_nonprim = NULL;
    }
    return NULL;

}
