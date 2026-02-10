#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "retailer_count_response.h"



static retailer_count_response_t *retailer_count_response_create_internal(
    int locations,
    int transactions,
    int offers
    ) {
    retailer_count_response_t *retailer_count_response_local_var = malloc(sizeof(retailer_count_response_t));
    if (!retailer_count_response_local_var) {
        return NULL;
    }
    retailer_count_response_local_var->locations = locations;
    retailer_count_response_local_var->transactions = transactions;
    retailer_count_response_local_var->offers = offers;

    retailer_count_response_local_var->_library_owned = 1;
    return retailer_count_response_local_var;
}

__attribute__((deprecated)) retailer_count_response_t *retailer_count_response_create(
    int locations,
    int transactions,
    int offers
    ) {
    return retailer_count_response_create_internal (
        locations,
        transactions,
        offers
        );
}

void retailer_count_response_free(retailer_count_response_t *retailer_count_response) {
    if(NULL == retailer_count_response){
        return ;
    }
    if(retailer_count_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "retailer_count_response_free");
        return ;
    }
    listEntry_t *listEntry;
    free(retailer_count_response);
}

cJSON *retailer_count_response_convertToJSON(retailer_count_response_t *retailer_count_response) {
    cJSON *item = cJSON_CreateObject();

    // retailer_count_response->locations
    if(retailer_count_response->locations) {
    if(cJSON_AddNumberToObject(item, "locations", retailer_count_response->locations) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_count_response->transactions
    if(retailer_count_response->transactions) {
    if(cJSON_AddNumberToObject(item, "transactions", retailer_count_response->transactions) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_count_response->offers
    if(retailer_count_response->offers) {
    if(cJSON_AddNumberToObject(item, "offers", retailer_count_response->offers) == NULL) {
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

retailer_count_response_t *retailer_count_response_parseFromJSON(cJSON *retailer_count_responseJSON){

    retailer_count_response_t *retailer_count_response_local_var = NULL;

    // retailer_count_response->locations
    cJSON *locations = cJSON_GetObjectItemCaseSensitive(retailer_count_responseJSON, "locations");
    if (cJSON_IsNull(locations)) {
        locations = NULL;
    }
    if (locations) { 
    if(!cJSON_IsNumber(locations))
    {
    goto end; //Numeric
    }
    }

    // retailer_count_response->transactions
    cJSON *transactions = cJSON_GetObjectItemCaseSensitive(retailer_count_responseJSON, "transactions");
    if (cJSON_IsNull(transactions)) {
        transactions = NULL;
    }
    if (transactions) { 
    if(!cJSON_IsNumber(transactions))
    {
    goto end; //Numeric
    }
    }

    // retailer_count_response->offers
    cJSON *offers = cJSON_GetObjectItemCaseSensitive(retailer_count_responseJSON, "offers");
    if (cJSON_IsNull(offers)) {
        offers = NULL;
    }
    if (offers) { 
    if(!cJSON_IsNumber(offers))
    {
    goto end; //Numeric
    }
    }


    retailer_count_response_local_var = retailer_count_response_create_internal (
        locations ? locations->valuedouble : 0,
        transactions ? transactions->valuedouble : 0,
        offers ? offers->valuedouble : 0
        );

    return retailer_count_response_local_var;
end:
    return NULL;

}
