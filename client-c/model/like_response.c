#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "like_response.h"



static like_response_t *like_response_create_internal(
    account_short_response_t *account
    ) {
    like_response_t *like_response_local_var = malloc(sizeof(like_response_t));
    if (!like_response_local_var) {
        return NULL;
    }
    like_response_local_var->account = account;

    like_response_local_var->_library_owned = 1;
    return like_response_local_var;
}

__attribute__((deprecated)) like_response_t *like_response_create(
    account_short_response_t *account
    ) {
    return like_response_create_internal (
        account
        );
}

void like_response_free(like_response_t *like_response) {
    if(NULL == like_response){
        return ;
    }
    if(like_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "like_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (like_response->account) {
        account_short_response_free(like_response->account);
        like_response->account = NULL;
    }
    free(like_response);
}

cJSON *like_response_convertToJSON(like_response_t *like_response) {
    cJSON *item = cJSON_CreateObject();

    // like_response->account
    if(like_response->account) {
    cJSON *account_local_JSON = account_short_response_convertToJSON(like_response->account);
    if(account_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "account", account_local_JSON);
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

like_response_t *like_response_parseFromJSON(cJSON *like_responseJSON){

    like_response_t *like_response_local_var = NULL;

    // define the local variable for like_response->account
    account_short_response_t *account_local_nonprim = NULL;

    // like_response->account
    cJSON *account = cJSON_GetObjectItemCaseSensitive(like_responseJSON, "account");
    if (cJSON_IsNull(account)) {
        account = NULL;
    }
    if (account) { 
    account_local_nonprim = account_short_response_parseFromJSON(account); //nonprimitive
    }


    like_response_local_var = like_response_create_internal (
        account ? account_local_nonprim : NULL
        );

    return like_response_local_var;
end:
    if (account_local_nonprim) {
        account_short_response_free(account_local_nonprim);
        account_local_nonprim = NULL;
    }
    return NULL;

}
