#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cell_carrier.h"



static cell_carrier_t *cell_carrier_create_internal(
    long id,
    int active,
    int valid,
    char *uid,
    char *display,
    char *email_format,
    char *api_url,
    char *auth_url,
    char *short_code,
    char *client_id,
    char *client_secret
    ) {
    cell_carrier_t *cell_carrier_local_var = malloc(sizeof(cell_carrier_t));
    if (!cell_carrier_local_var) {
        return NULL;
    }
    cell_carrier_local_var->id = id;
    cell_carrier_local_var->active = active;
    cell_carrier_local_var->valid = valid;
    cell_carrier_local_var->uid = uid;
    cell_carrier_local_var->display = display;
    cell_carrier_local_var->email_format = email_format;
    cell_carrier_local_var->api_url = api_url;
    cell_carrier_local_var->auth_url = auth_url;
    cell_carrier_local_var->short_code = short_code;
    cell_carrier_local_var->client_id = client_id;
    cell_carrier_local_var->client_secret = client_secret;

    cell_carrier_local_var->_library_owned = 1;
    return cell_carrier_local_var;
}

__attribute__((deprecated)) cell_carrier_t *cell_carrier_create(
    long id,
    int active,
    int valid,
    char *uid,
    char *display,
    char *email_format,
    char *api_url,
    char *auth_url,
    char *short_code,
    char *client_id,
    char *client_secret
    ) {
    return cell_carrier_create_internal (
        id,
        active,
        valid,
        uid,
        display,
        email_format,
        api_url,
        auth_url,
        short_code,
        client_id,
        client_secret
        );
}

void cell_carrier_free(cell_carrier_t *cell_carrier) {
    if(NULL == cell_carrier){
        return ;
    }
    if(cell_carrier->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "cell_carrier_free");
        return ;
    }
    listEntry_t *listEntry;
    if (cell_carrier->uid) {
        free(cell_carrier->uid);
        cell_carrier->uid = NULL;
    }
    if (cell_carrier->display) {
        free(cell_carrier->display);
        cell_carrier->display = NULL;
    }
    if (cell_carrier->email_format) {
        free(cell_carrier->email_format);
        cell_carrier->email_format = NULL;
    }
    if (cell_carrier->api_url) {
        free(cell_carrier->api_url);
        cell_carrier->api_url = NULL;
    }
    if (cell_carrier->auth_url) {
        free(cell_carrier->auth_url);
        cell_carrier->auth_url = NULL;
    }
    if (cell_carrier->short_code) {
        free(cell_carrier->short_code);
        cell_carrier->short_code = NULL;
    }
    if (cell_carrier->client_id) {
        free(cell_carrier->client_id);
        cell_carrier->client_id = NULL;
    }
    if (cell_carrier->client_secret) {
        free(cell_carrier->client_secret);
        cell_carrier->client_secret = NULL;
    }
    free(cell_carrier);
}

cJSON *cell_carrier_convertToJSON(cell_carrier_t *cell_carrier) {
    cJSON *item = cJSON_CreateObject();

    // cell_carrier->id
    if(cell_carrier->id) {
    if(cJSON_AddNumberToObject(item, "id", cell_carrier->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // cell_carrier->active
    if(cell_carrier->active) {
    if(cJSON_AddBoolToObject(item, "active", cell_carrier->active) == NULL) {
    goto fail; //Bool
    }
    }


    // cell_carrier->valid
    if(cell_carrier->valid) {
    if(cJSON_AddBoolToObject(item, "valid", cell_carrier->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // cell_carrier->uid
    if(cell_carrier->uid) {
    if(cJSON_AddStringToObject(item, "uid", cell_carrier->uid) == NULL) {
    goto fail; //String
    }
    }


    // cell_carrier->display
    if(cell_carrier->display) {
    if(cJSON_AddStringToObject(item, "display", cell_carrier->display) == NULL) {
    goto fail; //String
    }
    }


    // cell_carrier->email_format
    if(cell_carrier->email_format) {
    if(cJSON_AddStringToObject(item, "emailFormat", cell_carrier->email_format) == NULL) {
    goto fail; //String
    }
    }


    // cell_carrier->api_url
    if(cell_carrier->api_url) {
    if(cJSON_AddStringToObject(item, "apiUrl", cell_carrier->api_url) == NULL) {
    goto fail; //String
    }
    }


    // cell_carrier->auth_url
    if(cell_carrier->auth_url) {
    if(cJSON_AddStringToObject(item, "authUrl", cell_carrier->auth_url) == NULL) {
    goto fail; //String
    }
    }


    // cell_carrier->short_code
    if(cell_carrier->short_code) {
    if(cJSON_AddStringToObject(item, "shortCode", cell_carrier->short_code) == NULL) {
    goto fail; //String
    }
    }


    // cell_carrier->client_id
    if(cell_carrier->client_id) {
    if(cJSON_AddStringToObject(item, "clientId", cell_carrier->client_id) == NULL) {
    goto fail; //String
    }
    }


    // cell_carrier->client_secret
    if(cell_carrier->client_secret) {
    if(cJSON_AddStringToObject(item, "clientSecret", cell_carrier->client_secret) == NULL) {
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

cell_carrier_t *cell_carrier_parseFromJSON(cJSON *cell_carrierJSON){

    cell_carrier_t *cell_carrier_local_var = NULL;

    // cell_carrier->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(cell_carrierJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // cell_carrier->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(cell_carrierJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // cell_carrier->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(cell_carrierJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // cell_carrier->uid
    cJSON *uid = cJSON_GetObjectItemCaseSensitive(cell_carrierJSON, "uid");
    if (cJSON_IsNull(uid)) {
        uid = NULL;
    }
    if (uid) { 
    if(!cJSON_IsString(uid) && !cJSON_IsNull(uid))
    {
    goto end; //String
    }
    }

    // cell_carrier->display
    cJSON *display = cJSON_GetObjectItemCaseSensitive(cell_carrierJSON, "display");
    if (cJSON_IsNull(display)) {
        display = NULL;
    }
    if (display) { 
    if(!cJSON_IsString(display) && !cJSON_IsNull(display))
    {
    goto end; //String
    }
    }

    // cell_carrier->email_format
    cJSON *email_format = cJSON_GetObjectItemCaseSensitive(cell_carrierJSON, "emailFormat");
    if (cJSON_IsNull(email_format)) {
        email_format = NULL;
    }
    if (email_format) { 
    if(!cJSON_IsString(email_format) && !cJSON_IsNull(email_format))
    {
    goto end; //String
    }
    }

    // cell_carrier->api_url
    cJSON *api_url = cJSON_GetObjectItemCaseSensitive(cell_carrierJSON, "apiUrl");
    if (cJSON_IsNull(api_url)) {
        api_url = NULL;
    }
    if (api_url) { 
    if(!cJSON_IsString(api_url) && !cJSON_IsNull(api_url))
    {
    goto end; //String
    }
    }

    // cell_carrier->auth_url
    cJSON *auth_url = cJSON_GetObjectItemCaseSensitive(cell_carrierJSON, "authUrl");
    if (cJSON_IsNull(auth_url)) {
        auth_url = NULL;
    }
    if (auth_url) { 
    if(!cJSON_IsString(auth_url) && !cJSON_IsNull(auth_url))
    {
    goto end; //String
    }
    }

    // cell_carrier->short_code
    cJSON *short_code = cJSON_GetObjectItemCaseSensitive(cell_carrierJSON, "shortCode");
    if (cJSON_IsNull(short_code)) {
        short_code = NULL;
    }
    if (short_code) { 
    if(!cJSON_IsString(short_code) && !cJSON_IsNull(short_code))
    {
    goto end; //String
    }
    }

    // cell_carrier->client_id
    cJSON *client_id = cJSON_GetObjectItemCaseSensitive(cell_carrierJSON, "clientId");
    if (cJSON_IsNull(client_id)) {
        client_id = NULL;
    }
    if (client_id) { 
    if(!cJSON_IsString(client_id) && !cJSON_IsNull(client_id))
    {
    goto end; //String
    }
    }

    // cell_carrier->client_secret
    cJSON *client_secret = cJSON_GetObjectItemCaseSensitive(cell_carrierJSON, "clientSecret");
    if (cJSON_IsNull(client_secret)) {
        client_secret = NULL;
    }
    if (client_secret) { 
    if(!cJSON_IsString(client_secret) && !cJSON_IsNull(client_secret))
    {
    goto end; //String
    }
    }


    cell_carrier_local_var = cell_carrier_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        uid && !cJSON_IsNull(uid) ? strdup(uid->valuestring) : NULL,
        display && !cJSON_IsNull(display) ? strdup(display->valuestring) : NULL,
        email_format && !cJSON_IsNull(email_format) ? strdup(email_format->valuestring) : NULL,
        api_url && !cJSON_IsNull(api_url) ? strdup(api_url->valuestring) : NULL,
        auth_url && !cJSON_IsNull(auth_url) ? strdup(auth_url->valuestring) : NULL,
        short_code && !cJSON_IsNull(short_code) ? strdup(short_code->valuestring) : NULL,
        client_id && !cJSON_IsNull(client_id) ? strdup(client_id->valuestring) : NULL,
        client_secret && !cJSON_IsNull(client_secret) ? strdup(client_secret->valuestring) : NULL
        );

    return cell_carrier_local_var;
end:
    return NULL;

}
