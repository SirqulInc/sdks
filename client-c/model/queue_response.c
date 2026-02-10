#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "queue_response.h"



static queue_response_t *queue_response_create_internal(
    long queue_id,
    char *name,
    char *host,
    int port,
    char *username,
    char *password,
    char *virtual_host,
    int workers,
    char *exchanger,
    char *exchanger_type,
    int handle_delivery,
    char *data_mapping,
    char *analytic_tags
    ) {
    queue_response_t *queue_response_local_var = malloc(sizeof(queue_response_t));
    if (!queue_response_local_var) {
        return NULL;
    }
    queue_response_local_var->queue_id = queue_id;
    queue_response_local_var->name = name;
    queue_response_local_var->host = host;
    queue_response_local_var->port = port;
    queue_response_local_var->username = username;
    queue_response_local_var->password = password;
    queue_response_local_var->virtual_host = virtual_host;
    queue_response_local_var->workers = workers;
    queue_response_local_var->exchanger = exchanger;
    queue_response_local_var->exchanger_type = exchanger_type;
    queue_response_local_var->handle_delivery = handle_delivery;
    queue_response_local_var->data_mapping = data_mapping;
    queue_response_local_var->analytic_tags = analytic_tags;

    queue_response_local_var->_library_owned = 1;
    return queue_response_local_var;
}

__attribute__((deprecated)) queue_response_t *queue_response_create(
    long queue_id,
    char *name,
    char *host,
    int port,
    char *username,
    char *password,
    char *virtual_host,
    int workers,
    char *exchanger,
    char *exchanger_type,
    int handle_delivery,
    char *data_mapping,
    char *analytic_tags
    ) {
    return queue_response_create_internal (
        queue_id,
        name,
        host,
        port,
        username,
        password,
        virtual_host,
        workers,
        exchanger,
        exchanger_type,
        handle_delivery,
        data_mapping,
        analytic_tags
        );
}

void queue_response_free(queue_response_t *queue_response) {
    if(NULL == queue_response){
        return ;
    }
    if(queue_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "queue_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (queue_response->name) {
        free(queue_response->name);
        queue_response->name = NULL;
    }
    if (queue_response->host) {
        free(queue_response->host);
        queue_response->host = NULL;
    }
    if (queue_response->username) {
        free(queue_response->username);
        queue_response->username = NULL;
    }
    if (queue_response->password) {
        free(queue_response->password);
        queue_response->password = NULL;
    }
    if (queue_response->virtual_host) {
        free(queue_response->virtual_host);
        queue_response->virtual_host = NULL;
    }
    if (queue_response->exchanger) {
        free(queue_response->exchanger);
        queue_response->exchanger = NULL;
    }
    if (queue_response->exchanger_type) {
        free(queue_response->exchanger_type);
        queue_response->exchanger_type = NULL;
    }
    if (queue_response->data_mapping) {
        free(queue_response->data_mapping);
        queue_response->data_mapping = NULL;
    }
    if (queue_response->analytic_tags) {
        free(queue_response->analytic_tags);
        queue_response->analytic_tags = NULL;
    }
    free(queue_response);
}

cJSON *queue_response_convertToJSON(queue_response_t *queue_response) {
    cJSON *item = cJSON_CreateObject();

    // queue_response->queue_id
    if(queue_response->queue_id) {
    if(cJSON_AddNumberToObject(item, "queueId", queue_response->queue_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // queue_response->name
    if(queue_response->name) {
    if(cJSON_AddStringToObject(item, "name", queue_response->name) == NULL) {
    goto fail; //String
    }
    }


    // queue_response->host
    if(queue_response->host) {
    if(cJSON_AddStringToObject(item, "host", queue_response->host) == NULL) {
    goto fail; //String
    }
    }


    // queue_response->port
    if(queue_response->port) {
    if(cJSON_AddNumberToObject(item, "port", queue_response->port) == NULL) {
    goto fail; //Numeric
    }
    }


    // queue_response->username
    if(queue_response->username) {
    if(cJSON_AddStringToObject(item, "username", queue_response->username) == NULL) {
    goto fail; //String
    }
    }


    // queue_response->password
    if(queue_response->password) {
    if(cJSON_AddStringToObject(item, "password", queue_response->password) == NULL) {
    goto fail; //String
    }
    }


    // queue_response->virtual_host
    if(queue_response->virtual_host) {
    if(cJSON_AddStringToObject(item, "virtualHost", queue_response->virtual_host) == NULL) {
    goto fail; //String
    }
    }


    // queue_response->workers
    if(queue_response->workers) {
    if(cJSON_AddNumberToObject(item, "workers", queue_response->workers) == NULL) {
    goto fail; //Numeric
    }
    }


    // queue_response->exchanger
    if(queue_response->exchanger) {
    if(cJSON_AddStringToObject(item, "exchanger", queue_response->exchanger) == NULL) {
    goto fail; //String
    }
    }


    // queue_response->exchanger_type
    if(queue_response->exchanger_type) {
    if(cJSON_AddStringToObject(item, "exchangerType", queue_response->exchanger_type) == NULL) {
    goto fail; //String
    }
    }


    // queue_response->handle_delivery
    if(queue_response->handle_delivery) {
    if(cJSON_AddBoolToObject(item, "handleDelivery", queue_response->handle_delivery) == NULL) {
    goto fail; //Bool
    }
    }


    // queue_response->data_mapping
    if(queue_response->data_mapping) {
    if(cJSON_AddStringToObject(item, "dataMapping", queue_response->data_mapping) == NULL) {
    goto fail; //String
    }
    }


    // queue_response->analytic_tags
    if(queue_response->analytic_tags) {
    if(cJSON_AddStringToObject(item, "analyticTags", queue_response->analytic_tags) == NULL) {
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

queue_response_t *queue_response_parseFromJSON(cJSON *queue_responseJSON){

    queue_response_t *queue_response_local_var = NULL;

    // queue_response->queue_id
    cJSON *queue_id = cJSON_GetObjectItemCaseSensitive(queue_responseJSON, "queueId");
    if (cJSON_IsNull(queue_id)) {
        queue_id = NULL;
    }
    if (queue_id) { 
    if(!cJSON_IsNumber(queue_id))
    {
    goto end; //Numeric
    }
    }

    // queue_response->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(queue_responseJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // queue_response->host
    cJSON *host = cJSON_GetObjectItemCaseSensitive(queue_responseJSON, "host");
    if (cJSON_IsNull(host)) {
        host = NULL;
    }
    if (host) { 
    if(!cJSON_IsString(host) && !cJSON_IsNull(host))
    {
    goto end; //String
    }
    }

    // queue_response->port
    cJSON *port = cJSON_GetObjectItemCaseSensitive(queue_responseJSON, "port");
    if (cJSON_IsNull(port)) {
        port = NULL;
    }
    if (port) { 
    if(!cJSON_IsNumber(port))
    {
    goto end; //Numeric
    }
    }

    // queue_response->username
    cJSON *username = cJSON_GetObjectItemCaseSensitive(queue_responseJSON, "username");
    if (cJSON_IsNull(username)) {
        username = NULL;
    }
    if (username) { 
    if(!cJSON_IsString(username) && !cJSON_IsNull(username))
    {
    goto end; //String
    }
    }

    // queue_response->password
    cJSON *password = cJSON_GetObjectItemCaseSensitive(queue_responseJSON, "password");
    if (cJSON_IsNull(password)) {
        password = NULL;
    }
    if (password) { 
    if(!cJSON_IsString(password) && !cJSON_IsNull(password))
    {
    goto end; //String
    }
    }

    // queue_response->virtual_host
    cJSON *virtual_host = cJSON_GetObjectItemCaseSensitive(queue_responseJSON, "virtualHost");
    if (cJSON_IsNull(virtual_host)) {
        virtual_host = NULL;
    }
    if (virtual_host) { 
    if(!cJSON_IsString(virtual_host) && !cJSON_IsNull(virtual_host))
    {
    goto end; //String
    }
    }

    // queue_response->workers
    cJSON *workers = cJSON_GetObjectItemCaseSensitive(queue_responseJSON, "workers");
    if (cJSON_IsNull(workers)) {
        workers = NULL;
    }
    if (workers) { 
    if(!cJSON_IsNumber(workers))
    {
    goto end; //Numeric
    }
    }

    // queue_response->exchanger
    cJSON *exchanger = cJSON_GetObjectItemCaseSensitive(queue_responseJSON, "exchanger");
    if (cJSON_IsNull(exchanger)) {
        exchanger = NULL;
    }
    if (exchanger) { 
    if(!cJSON_IsString(exchanger) && !cJSON_IsNull(exchanger))
    {
    goto end; //String
    }
    }

    // queue_response->exchanger_type
    cJSON *exchanger_type = cJSON_GetObjectItemCaseSensitive(queue_responseJSON, "exchangerType");
    if (cJSON_IsNull(exchanger_type)) {
        exchanger_type = NULL;
    }
    if (exchanger_type) { 
    if(!cJSON_IsString(exchanger_type) && !cJSON_IsNull(exchanger_type))
    {
    goto end; //String
    }
    }

    // queue_response->handle_delivery
    cJSON *handle_delivery = cJSON_GetObjectItemCaseSensitive(queue_responseJSON, "handleDelivery");
    if (cJSON_IsNull(handle_delivery)) {
        handle_delivery = NULL;
    }
    if (handle_delivery) { 
    if(!cJSON_IsBool(handle_delivery))
    {
    goto end; //Bool
    }
    }

    // queue_response->data_mapping
    cJSON *data_mapping = cJSON_GetObjectItemCaseSensitive(queue_responseJSON, "dataMapping");
    if (cJSON_IsNull(data_mapping)) {
        data_mapping = NULL;
    }
    if (data_mapping) { 
    if(!cJSON_IsString(data_mapping) && !cJSON_IsNull(data_mapping))
    {
    goto end; //String
    }
    }

    // queue_response->analytic_tags
    cJSON *analytic_tags = cJSON_GetObjectItemCaseSensitive(queue_responseJSON, "analyticTags");
    if (cJSON_IsNull(analytic_tags)) {
        analytic_tags = NULL;
    }
    if (analytic_tags) { 
    if(!cJSON_IsString(analytic_tags) && !cJSON_IsNull(analytic_tags))
    {
    goto end; //String
    }
    }


    queue_response_local_var = queue_response_create_internal (
        queue_id ? queue_id->valuedouble : 0,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        host && !cJSON_IsNull(host) ? strdup(host->valuestring) : NULL,
        port ? port->valuedouble : 0,
        username && !cJSON_IsNull(username) ? strdup(username->valuestring) : NULL,
        password && !cJSON_IsNull(password) ? strdup(password->valuestring) : NULL,
        virtual_host && !cJSON_IsNull(virtual_host) ? strdup(virtual_host->valuestring) : NULL,
        workers ? workers->valuedouble : 0,
        exchanger && !cJSON_IsNull(exchanger) ? strdup(exchanger->valuestring) : NULL,
        exchanger_type && !cJSON_IsNull(exchanger_type) ? strdup(exchanger_type->valuestring) : NULL,
        handle_delivery ? handle_delivery->valueint : 0,
        data_mapping && !cJSON_IsNull(data_mapping) ? strdup(data_mapping->valuestring) : NULL,
        analytic_tags && !cJSON_IsNull(analytic_tags) ? strdup(analytic_tags->valuestring) : NULL
        );

    return queue_response_local_var;
end:
    return NULL;

}
