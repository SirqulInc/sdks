#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "third_party_credentials.h"



static third_party_credentials_t *third_party_credentials_create_internal(
    long id,
    int active,
    int valid,
    account_t *account,
    third_party_network_t *third_party_network,
    long third_party_uid,
    char *third_party_id,
    char *third_party_token,
    char *third_party_secret,
    char *third_party_name,
    char *third_party_unencrypted_token
    ) {
    third_party_credentials_t *third_party_credentials_local_var = malloc(sizeof(third_party_credentials_t));
    if (!third_party_credentials_local_var) {
        return NULL;
    }
    third_party_credentials_local_var->id = id;
    third_party_credentials_local_var->active = active;
    third_party_credentials_local_var->valid = valid;
    third_party_credentials_local_var->account = account;
    third_party_credentials_local_var->third_party_network = third_party_network;
    third_party_credentials_local_var->third_party_uid = third_party_uid;
    third_party_credentials_local_var->third_party_id = third_party_id;
    third_party_credentials_local_var->third_party_token = third_party_token;
    third_party_credentials_local_var->third_party_secret = third_party_secret;
    third_party_credentials_local_var->third_party_name = third_party_name;
    third_party_credentials_local_var->third_party_unencrypted_token = third_party_unencrypted_token;

    third_party_credentials_local_var->_library_owned = 1;
    return third_party_credentials_local_var;
}

__attribute__((deprecated)) third_party_credentials_t *third_party_credentials_create(
    long id,
    int active,
    int valid,
    account_t *account,
    third_party_network_t *third_party_network,
    long third_party_uid,
    char *third_party_id,
    char *third_party_token,
    char *third_party_secret,
    char *third_party_name,
    char *third_party_unencrypted_token
    ) {
    return third_party_credentials_create_internal (
        id,
        active,
        valid,
        account,
        third_party_network,
        third_party_uid,
        third_party_id,
        third_party_token,
        third_party_secret,
        third_party_name,
        third_party_unencrypted_token
        );
}

void third_party_credentials_free(third_party_credentials_t *third_party_credentials) {
    if(NULL == third_party_credentials){
        return ;
    }
    if(third_party_credentials->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "third_party_credentials_free");
        return ;
    }
    listEntry_t *listEntry;
    if (third_party_credentials->account) {
        account_free(third_party_credentials->account);
        third_party_credentials->account = NULL;
    }
    if (third_party_credentials->third_party_network) {
        third_party_network_free(third_party_credentials->third_party_network);
        third_party_credentials->third_party_network = NULL;
    }
    if (third_party_credentials->third_party_id) {
        free(third_party_credentials->third_party_id);
        third_party_credentials->third_party_id = NULL;
    }
    if (third_party_credentials->third_party_token) {
        free(third_party_credentials->third_party_token);
        third_party_credentials->third_party_token = NULL;
    }
    if (third_party_credentials->third_party_secret) {
        free(third_party_credentials->third_party_secret);
        third_party_credentials->third_party_secret = NULL;
    }
    if (third_party_credentials->third_party_name) {
        free(third_party_credentials->third_party_name);
        third_party_credentials->third_party_name = NULL;
    }
    if (third_party_credentials->third_party_unencrypted_token) {
        free(third_party_credentials->third_party_unencrypted_token);
        third_party_credentials->third_party_unencrypted_token = NULL;
    }
    free(third_party_credentials);
}

cJSON *third_party_credentials_convertToJSON(third_party_credentials_t *third_party_credentials) {
    cJSON *item = cJSON_CreateObject();

    // third_party_credentials->id
    if(third_party_credentials->id) {
    if(cJSON_AddNumberToObject(item, "id", third_party_credentials->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // third_party_credentials->active
    if(third_party_credentials->active) {
    if(cJSON_AddBoolToObject(item, "active", third_party_credentials->active) == NULL) {
    goto fail; //Bool
    }
    }


    // third_party_credentials->valid
    if(third_party_credentials->valid) {
    if(cJSON_AddBoolToObject(item, "valid", third_party_credentials->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // third_party_credentials->account
    if(third_party_credentials->account) {
    cJSON *account_local_JSON = account_convertToJSON(third_party_credentials->account);
    if(account_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "account", account_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // third_party_credentials->third_party_network
    if(third_party_credentials->third_party_network) {
    cJSON *third_party_network_local_JSON = third_party_network_convertToJSON(third_party_credentials->third_party_network);
    if(third_party_network_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "thirdPartyNetwork", third_party_network_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // third_party_credentials->third_party_uid
    if(third_party_credentials->third_party_uid) {
    if(cJSON_AddNumberToObject(item, "thirdPartyUID", third_party_credentials->third_party_uid) == NULL) {
    goto fail; //Numeric
    }
    }


    // third_party_credentials->third_party_id
    if(third_party_credentials->third_party_id) {
    if(cJSON_AddStringToObject(item, "thirdPartyId", third_party_credentials->third_party_id) == NULL) {
    goto fail; //String
    }
    }


    // third_party_credentials->third_party_token
    if(third_party_credentials->third_party_token) {
    if(cJSON_AddStringToObject(item, "thirdPartyToken", third_party_credentials->third_party_token) == NULL) {
    goto fail; //String
    }
    }


    // third_party_credentials->third_party_secret
    if(third_party_credentials->third_party_secret) {
    if(cJSON_AddStringToObject(item, "thirdPartySecret", third_party_credentials->third_party_secret) == NULL) {
    goto fail; //String
    }
    }


    // third_party_credentials->third_party_name
    if(third_party_credentials->third_party_name) {
    if(cJSON_AddStringToObject(item, "thirdPartyName", third_party_credentials->third_party_name) == NULL) {
    goto fail; //String
    }
    }


    // third_party_credentials->third_party_unencrypted_token
    if(third_party_credentials->third_party_unencrypted_token) {
    if(cJSON_AddStringToObject(item, "thirdPartyUnencryptedToken", third_party_credentials->third_party_unencrypted_token) == NULL) {
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

third_party_credentials_t *third_party_credentials_parseFromJSON(cJSON *third_party_credentialsJSON){

    third_party_credentials_t *third_party_credentials_local_var = NULL;

    // define the local variable for third_party_credentials->account
    account_t *account_local_nonprim = NULL;

    // define the local variable for third_party_credentials->third_party_network
    third_party_network_t *third_party_network_local_nonprim = NULL;

    // third_party_credentials->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(third_party_credentialsJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // third_party_credentials->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(third_party_credentialsJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // third_party_credentials->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(third_party_credentialsJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // third_party_credentials->account
    cJSON *account = cJSON_GetObjectItemCaseSensitive(third_party_credentialsJSON, "account");
    if (cJSON_IsNull(account)) {
        account = NULL;
    }
    if (account) { 
    account_local_nonprim = account_parseFromJSON(account); //nonprimitive
    }

    // third_party_credentials->third_party_network
    cJSON *third_party_network = cJSON_GetObjectItemCaseSensitive(third_party_credentialsJSON, "thirdPartyNetwork");
    if (cJSON_IsNull(third_party_network)) {
        third_party_network = NULL;
    }
    if (third_party_network) { 
    third_party_network_local_nonprim = third_party_network_parseFromJSON(third_party_network); //nonprimitive
    }

    // third_party_credentials->third_party_uid
    cJSON *third_party_uid = cJSON_GetObjectItemCaseSensitive(third_party_credentialsJSON, "thirdPartyUID");
    if (cJSON_IsNull(third_party_uid)) {
        third_party_uid = NULL;
    }
    if (third_party_uid) { 
    if(!cJSON_IsNumber(third_party_uid))
    {
    goto end; //Numeric
    }
    }

    // third_party_credentials->third_party_id
    cJSON *third_party_id = cJSON_GetObjectItemCaseSensitive(third_party_credentialsJSON, "thirdPartyId");
    if (cJSON_IsNull(third_party_id)) {
        third_party_id = NULL;
    }
    if (third_party_id) { 
    if(!cJSON_IsString(third_party_id) && !cJSON_IsNull(third_party_id))
    {
    goto end; //String
    }
    }

    // third_party_credentials->third_party_token
    cJSON *third_party_token = cJSON_GetObjectItemCaseSensitive(third_party_credentialsJSON, "thirdPartyToken");
    if (cJSON_IsNull(third_party_token)) {
        third_party_token = NULL;
    }
    if (third_party_token) { 
    if(!cJSON_IsString(third_party_token) && !cJSON_IsNull(third_party_token))
    {
    goto end; //String
    }
    }

    // third_party_credentials->third_party_secret
    cJSON *third_party_secret = cJSON_GetObjectItemCaseSensitive(third_party_credentialsJSON, "thirdPartySecret");
    if (cJSON_IsNull(third_party_secret)) {
        third_party_secret = NULL;
    }
    if (third_party_secret) { 
    if(!cJSON_IsString(third_party_secret) && !cJSON_IsNull(third_party_secret))
    {
    goto end; //String
    }
    }

    // third_party_credentials->third_party_name
    cJSON *third_party_name = cJSON_GetObjectItemCaseSensitive(third_party_credentialsJSON, "thirdPartyName");
    if (cJSON_IsNull(third_party_name)) {
        third_party_name = NULL;
    }
    if (third_party_name) { 
    if(!cJSON_IsString(third_party_name) && !cJSON_IsNull(third_party_name))
    {
    goto end; //String
    }
    }

    // third_party_credentials->third_party_unencrypted_token
    cJSON *third_party_unencrypted_token = cJSON_GetObjectItemCaseSensitive(third_party_credentialsJSON, "thirdPartyUnencryptedToken");
    if (cJSON_IsNull(third_party_unencrypted_token)) {
        third_party_unencrypted_token = NULL;
    }
    if (third_party_unencrypted_token) { 
    if(!cJSON_IsString(third_party_unencrypted_token) && !cJSON_IsNull(third_party_unencrypted_token))
    {
    goto end; //String
    }
    }


    third_party_credentials_local_var = third_party_credentials_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        account ? account_local_nonprim : NULL,
        third_party_network ? third_party_network_local_nonprim : NULL,
        third_party_uid ? third_party_uid->valuedouble : 0,
        third_party_id && !cJSON_IsNull(third_party_id) ? strdup(third_party_id->valuestring) : NULL,
        third_party_token && !cJSON_IsNull(third_party_token) ? strdup(third_party_token->valuestring) : NULL,
        third_party_secret && !cJSON_IsNull(third_party_secret) ? strdup(third_party_secret->valuestring) : NULL,
        third_party_name && !cJSON_IsNull(third_party_name) ? strdup(third_party_name->valuestring) : NULL,
        third_party_unencrypted_token && !cJSON_IsNull(third_party_unencrypted_token) ? strdup(third_party_unencrypted_token->valuestring) : NULL
        );

    return third_party_credentials_local_var;
end:
    if (account_local_nonprim) {
        account_free(account_local_nonprim);
        account_local_nonprim = NULL;
    }
    if (third_party_network_local_nonprim) {
        third_party_network_free(third_party_network_local_nonprim);
        third_party_network_local_nonprim = NULL;
    }
    return NULL;

}
