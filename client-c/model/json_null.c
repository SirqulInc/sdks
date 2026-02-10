#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "json_null.h"



static json_null_t *json_null_create_internal(
    int as_int,
    json_object_t *as_json_object,
    int json_null,
    char *as_string,
    int as_boolean,
    int json_array,
    int json_object,
    int json_primitive,
    json_array_t *as_json_array,
    json_primitive_t *as_json_primitive,
    json_null_t *as_json_null,
    object_t *as_number,
    double as_double,
    float as_float,
    long as_long,
    char *as_byte,
    char *as_character,
    double as_big_decimal,
    int as_big_integer,
    int as_short
    ) {
    json_null_t *json_null_local_var = malloc(sizeof(json_null_t));
    if (!json_null_local_var) {
        return NULL;
    }
    json_null_local_var->as_int = as_int;
    json_null_local_var->as_json_object = as_json_object;
    json_null_local_var->json_null = json_null;
    json_null_local_var->as_string = as_string;
    json_null_local_var->as_boolean = as_boolean;
    json_null_local_var->json_array = json_array;
    json_null_local_var->json_object = json_object;
    json_null_local_var->json_primitive = json_primitive;
    json_null_local_var->as_json_array = as_json_array;
    json_null_local_var->as_json_primitive = as_json_primitive;
    json_null_local_var->as_json_null = as_json_null;
    json_null_local_var->as_number = as_number;
    json_null_local_var->as_double = as_double;
    json_null_local_var->as_float = as_float;
    json_null_local_var->as_long = as_long;
    json_null_local_var->as_byte = as_byte;
    json_null_local_var->as_character = as_character;
    json_null_local_var->as_big_decimal = as_big_decimal;
    json_null_local_var->as_big_integer = as_big_integer;
    json_null_local_var->as_short = as_short;

    json_null_local_var->_library_owned = 1;
    return json_null_local_var;
}

__attribute__((deprecated)) json_null_t *json_null_create(
    int as_int,
    json_object_t *as_json_object,
    int json_null,
    char *as_string,
    int as_boolean,
    int json_array,
    int json_object,
    int json_primitive,
    json_array_t *as_json_array,
    json_primitive_t *as_json_primitive,
    json_null_t *as_json_null,
    object_t *as_number,
    double as_double,
    float as_float,
    long as_long,
    char *as_byte,
    char *as_character,
    double as_big_decimal,
    int as_big_integer,
    int as_short
    ) {
    return json_null_create_internal (
        as_int,
        as_json_object,
        json_null,
        as_string,
        as_boolean,
        json_array,
        json_object,
        json_primitive,
        as_json_array,
        as_json_primitive,
        as_json_null,
        as_number,
        as_double,
        as_float,
        as_long,
        as_byte,
        as_character,
        as_big_decimal,
        as_big_integer,
        as_short
        );
}

void json_null_free(json_null_t *json_null) {
    if(NULL == json_null){
        return ;
    }
    if(json_null->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "json_null_free");
        return ;
    }
    listEntry_t *listEntry;
    if (json_null->as_json_object) {
        json_object_free(json_null->as_json_object);
        json_null->as_json_object = NULL;
    }
    if (json_null->as_string) {
        free(json_null->as_string);
        json_null->as_string = NULL;
    }
    if (json_null->as_json_array) {
        json_array_free(json_null->as_json_array);
        json_null->as_json_array = NULL;
    }
    if (json_null->as_json_primitive) {
        json_primitive_free(json_null->as_json_primitive);
        json_null->as_json_primitive = NULL;
    }
    if (json_null->as_json_null) {
        json_null_free(json_null->as_json_null);
        json_null->as_json_null = NULL;
    }
    if (json_null->as_number) {
        object_free(json_null->as_number);
        json_null->as_number = NULL;
    }
    if (json_null->as_byte) {
        free(json_null->as_byte);
        json_null->as_byte = NULL;
    }
    if (json_null->as_character) {
        free(json_null->as_character);
        json_null->as_character = NULL;
    }
    free(json_null);
}

cJSON *json_null_convertToJSON(json_null_t *json_null) {
    cJSON *item = cJSON_CreateObject();

    // json_null->as_int
    if(json_null->as_int) {
    if(cJSON_AddNumberToObject(item, "asInt", json_null->as_int) == NULL) {
    goto fail; //Numeric
    }
    }


    // json_null->as_json_object
    if(json_null->as_json_object) {
    cJSON *as_json_object_local_JSON = json_object_convertToJSON(json_null->as_json_object);
    if(as_json_object_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "asJsonObject", as_json_object_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // json_null->json_null
    if(json_null->json_null) {
    if(cJSON_AddBoolToObject(item, "jsonNull", json_null->json_null) == NULL) {
    goto fail; //Bool
    }
    }


    // json_null->as_string
    if(json_null->as_string) {
    if(cJSON_AddStringToObject(item, "asString", json_null->as_string) == NULL) {
    goto fail; //String
    }
    }


    // json_null->as_boolean
    if(json_null->as_boolean) {
    if(cJSON_AddBoolToObject(item, "asBoolean", json_null->as_boolean) == NULL) {
    goto fail; //Bool
    }
    }


    // json_null->json_array
    if(json_null->json_array) {
    if(cJSON_AddBoolToObject(item, "jsonArray", json_null->json_array) == NULL) {
    goto fail; //Bool
    }
    }


    // json_null->json_object
    if(json_null->json_object) {
    if(cJSON_AddBoolToObject(item, "jsonObject", json_null->json_object) == NULL) {
    goto fail; //Bool
    }
    }


    // json_null->json_primitive
    if(json_null->json_primitive) {
    if(cJSON_AddBoolToObject(item, "jsonPrimitive", json_null->json_primitive) == NULL) {
    goto fail; //Bool
    }
    }


    // json_null->as_json_array
    if(json_null->as_json_array) {
    cJSON *as_json_array_local_JSON = json_array_convertToJSON(json_null->as_json_array);
    if(as_json_array_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "asJsonArray", as_json_array_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // json_null->as_json_primitive
    if(json_null->as_json_primitive) {
    cJSON *as_json_primitive_local_JSON = json_primitive_convertToJSON(json_null->as_json_primitive);
    if(as_json_primitive_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "asJsonPrimitive", as_json_primitive_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // json_null->as_json_null
    if(json_null->as_json_null) {
    cJSON *as_json_null_local_JSON = json_null_convertToJSON(json_null->as_json_null);
    if(as_json_null_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "asJsonNull", as_json_null_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // json_null->as_number
    if(json_null->as_number) {
    cJSON *as_number_object = object_convertToJSON(json_null->as_number);
    if(as_number_object == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "asNumber", as_number_object);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // json_null->as_double
    if(json_null->as_double) {
    if(cJSON_AddNumberToObject(item, "asDouble", json_null->as_double) == NULL) {
    goto fail; //Numeric
    }
    }


    // json_null->as_float
    if(json_null->as_float) {
    if(cJSON_AddNumberToObject(item, "asFloat", json_null->as_float) == NULL) {
    goto fail; //Numeric
    }
    }


    // json_null->as_long
    if(json_null->as_long) {
    if(cJSON_AddNumberToObject(item, "asLong", json_null->as_long) == NULL) {
    goto fail; //Numeric
    }
    }


    // json_null->as_byte
    if(json_null->as_byte) {
    if(cJSON_AddStringToObject(item, "asByte", json_null->as_byte) == NULL) {
    goto fail; //ByteArray
    }
    }


    // json_null->as_character
    if(json_null->as_character) {
    if(cJSON_AddStringToObject(item, "asCharacter", json_null->as_character) == NULL) {
    goto fail; //String
    }
    }


    // json_null->as_big_decimal
    if(json_null->as_big_decimal) {
    if(cJSON_AddNumberToObject(item, "asBigDecimal", json_null->as_big_decimal) == NULL) {
    goto fail; //Numeric
    }
    }


    // json_null->as_big_integer
    if(json_null->as_big_integer) {
    if(cJSON_AddNumberToObject(item, "asBigInteger", json_null->as_big_integer) == NULL) {
    goto fail; //Numeric
    }
    }


    // json_null->as_short
    if(json_null->as_short) {
    if(cJSON_AddNumberToObject(item, "asShort", json_null->as_short) == NULL) {
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

json_null_t *json_null_parseFromJSON(cJSON *json_nullJSON){

    json_null_t *json_null_local_var = NULL;

    // define the local variable for json_null->as_json_object
    json_object_t *as_json_object_local_nonprim = NULL;

    // define the local variable for json_null->as_json_array
    json_array_t *as_json_array_local_nonprim = NULL;

    // define the local variable for json_null->as_json_primitive
    json_primitive_t *as_json_primitive_local_nonprim = NULL;

    // define the local variable for json_null->as_json_null
    json_null_t *as_json_null_local_nonprim = NULL;

    // json_null->as_int
    cJSON *as_int = cJSON_GetObjectItemCaseSensitive(json_nullJSON, "asInt");
    if (cJSON_IsNull(as_int)) {
        as_int = NULL;
    }
    if (as_int) { 
    if(!cJSON_IsNumber(as_int))
    {
    goto end; //Numeric
    }
    }

    // json_null->as_json_object
    cJSON *as_json_object = cJSON_GetObjectItemCaseSensitive(json_nullJSON, "asJsonObject");
    if (cJSON_IsNull(as_json_object)) {
        as_json_object = NULL;
    }
    if (as_json_object) { 
    as_json_object_local_nonprim = json_object_parseFromJSON(as_json_object); //nonprimitive
    }

    // json_null->json_null
    cJSON *json_null = cJSON_GetObjectItemCaseSensitive(json_nullJSON, "jsonNull");
    if (cJSON_IsNull(json_null)) {
        json_null = NULL;
    }
    if (json_null) { 
    if(!cJSON_IsBool(json_null))
    {
    goto end; //Bool
    }
    }

    // json_null->as_string
    cJSON *as_string = cJSON_GetObjectItemCaseSensitive(json_nullJSON, "asString");
    if (cJSON_IsNull(as_string)) {
        as_string = NULL;
    }
    if (as_string) { 
    if(!cJSON_IsString(as_string) && !cJSON_IsNull(as_string))
    {
    goto end; //String
    }
    }

    // json_null->as_boolean
    cJSON *as_boolean = cJSON_GetObjectItemCaseSensitive(json_nullJSON, "asBoolean");
    if (cJSON_IsNull(as_boolean)) {
        as_boolean = NULL;
    }
    if (as_boolean) { 
    if(!cJSON_IsBool(as_boolean))
    {
    goto end; //Bool
    }
    }

    // json_null->json_array
    cJSON *json_array = cJSON_GetObjectItemCaseSensitive(json_nullJSON, "jsonArray");
    if (cJSON_IsNull(json_array)) {
        json_array = NULL;
    }
    if (json_array) { 
    if(!cJSON_IsBool(json_array))
    {
    goto end; //Bool
    }
    }

    // json_null->json_object
    cJSON *json_object = cJSON_GetObjectItemCaseSensitive(json_nullJSON, "jsonObject");
    if (cJSON_IsNull(json_object)) {
        json_object = NULL;
    }
    if (json_object) { 
    if(!cJSON_IsBool(json_object))
    {
    goto end; //Bool
    }
    }

    // json_null->json_primitive
    cJSON *json_primitive = cJSON_GetObjectItemCaseSensitive(json_nullJSON, "jsonPrimitive");
    if (cJSON_IsNull(json_primitive)) {
        json_primitive = NULL;
    }
    if (json_primitive) { 
    if(!cJSON_IsBool(json_primitive))
    {
    goto end; //Bool
    }
    }

    // json_null->as_json_array
    cJSON *as_json_array = cJSON_GetObjectItemCaseSensitive(json_nullJSON, "asJsonArray");
    if (cJSON_IsNull(as_json_array)) {
        as_json_array = NULL;
    }
    if (as_json_array) { 
    as_json_array_local_nonprim = json_array_parseFromJSON(as_json_array); //nonprimitive
    }

    // json_null->as_json_primitive
    cJSON *as_json_primitive = cJSON_GetObjectItemCaseSensitive(json_nullJSON, "asJsonPrimitive");
    if (cJSON_IsNull(as_json_primitive)) {
        as_json_primitive = NULL;
    }
    if (as_json_primitive) { 
    as_json_primitive_local_nonprim = json_primitive_parseFromJSON(as_json_primitive); //nonprimitive
    }

    // json_null->as_json_null
    cJSON *as_json_null = cJSON_GetObjectItemCaseSensitive(json_nullJSON, "asJsonNull");
    if (cJSON_IsNull(as_json_null)) {
        as_json_null = NULL;
    }
    if (as_json_null) { 
    as_json_null_local_nonprim = json_null_parseFromJSON(as_json_null); //nonprimitive
    }

    // json_null->as_number
    cJSON *as_number = cJSON_GetObjectItemCaseSensitive(json_nullJSON, "asNumber");
    if (cJSON_IsNull(as_number)) {
        as_number = NULL;
    }
    object_t *as_number_local_object = NULL;
    if (as_number) { 
    as_number_local_object = object_parseFromJSON(as_number); //object
    }

    // json_null->as_double
    cJSON *as_double = cJSON_GetObjectItemCaseSensitive(json_nullJSON, "asDouble");
    if (cJSON_IsNull(as_double)) {
        as_double = NULL;
    }
    if (as_double) { 
    if(!cJSON_IsNumber(as_double))
    {
    goto end; //Numeric
    }
    }

    // json_null->as_float
    cJSON *as_float = cJSON_GetObjectItemCaseSensitive(json_nullJSON, "asFloat");
    if (cJSON_IsNull(as_float)) {
        as_float = NULL;
    }
    if (as_float) { 
    if(!cJSON_IsNumber(as_float))
    {
    goto end; //Numeric
    }
    }

    // json_null->as_long
    cJSON *as_long = cJSON_GetObjectItemCaseSensitive(json_nullJSON, "asLong");
    if (cJSON_IsNull(as_long)) {
        as_long = NULL;
    }
    if (as_long) { 
    if(!cJSON_IsNumber(as_long))
    {
    goto end; //Numeric
    }
    }

    // json_null->as_byte
    cJSON *as_byte = cJSON_GetObjectItemCaseSensitive(json_nullJSON, "asByte");
    if (cJSON_IsNull(as_byte)) {
        as_byte = NULL;
    }
    if (as_byte) { 
    if(!cJSON_IsString(as_byte))
    {
    goto end; //ByteArray
    }
    }

    // json_null->as_character
    cJSON *as_character = cJSON_GetObjectItemCaseSensitive(json_nullJSON, "asCharacter");
    if (cJSON_IsNull(as_character)) {
        as_character = NULL;
    }
    if (as_character) { 
    if(!cJSON_IsString(as_character) && !cJSON_IsNull(as_character))
    {
    goto end; //String
    }
    }

    // json_null->as_big_decimal
    cJSON *as_big_decimal = cJSON_GetObjectItemCaseSensitive(json_nullJSON, "asBigDecimal");
    if (cJSON_IsNull(as_big_decimal)) {
        as_big_decimal = NULL;
    }
    if (as_big_decimal) { 
    if(!cJSON_IsNumber(as_big_decimal))
    {
    goto end; //Numeric
    }
    }

    // json_null->as_big_integer
    cJSON *as_big_integer = cJSON_GetObjectItemCaseSensitive(json_nullJSON, "asBigInteger");
    if (cJSON_IsNull(as_big_integer)) {
        as_big_integer = NULL;
    }
    if (as_big_integer) { 
    if(!cJSON_IsNumber(as_big_integer))
    {
    goto end; //Numeric
    }
    }

    // json_null->as_short
    cJSON *as_short = cJSON_GetObjectItemCaseSensitive(json_nullJSON, "asShort");
    if (cJSON_IsNull(as_short)) {
        as_short = NULL;
    }
    if (as_short) { 
    if(!cJSON_IsNumber(as_short))
    {
    goto end; //Numeric
    }
    }


    json_null_local_var = json_null_create_internal (
        as_int ? as_int->valuedouble : 0,
        as_json_object ? as_json_object_local_nonprim : NULL,
        json_null ? json_null->valueint : 0,
        as_string && !cJSON_IsNull(as_string) ? strdup(as_string->valuestring) : NULL,
        as_boolean ? as_boolean->valueint : 0,
        json_array ? json_array->valueint : 0,
        json_object ? json_object->valueint : 0,
        json_primitive ? json_primitive->valueint : 0,
        as_json_array ? as_json_array_local_nonprim : NULL,
        as_json_primitive ? as_json_primitive_local_nonprim : NULL,
        as_json_null ? as_json_null_local_nonprim : NULL,
        as_number ? as_number_local_object : NULL,
        as_double ? as_double->valuedouble : 0,
        as_float ? as_float->valuedouble : 0,
        as_long ? as_long->valuedouble : 0,
        as_byte ? strdup(as_byte->valuestring) : NULL,
        as_character && !cJSON_IsNull(as_character) ? strdup(as_character->valuestring) : NULL,
        as_big_decimal ? as_big_decimal->valuedouble : 0,
        as_big_integer ? as_big_integer->valuedouble : 0,
        as_short ? as_short->valuedouble : 0
        );

    return json_null_local_var;
end:
    if (as_json_object_local_nonprim) {
        json_object_free(as_json_object_local_nonprim);
        as_json_object_local_nonprim = NULL;
    }
    if (as_json_array_local_nonprim) {
        json_array_free(as_json_array_local_nonprim);
        as_json_array_local_nonprim = NULL;
    }
    if (as_json_primitive_local_nonprim) {
        json_primitive_free(as_json_primitive_local_nonprim);
        as_json_primitive_local_nonprim = NULL;
    }
    if (as_json_null_local_nonprim) {
        json_null_free(as_json_null_local_nonprim);
        as_json_null_local_nonprim = NULL;
    }
    return NULL;

}
