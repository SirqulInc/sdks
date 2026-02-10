#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "purchase_item_short_response.h"



static purchase_item_short_response_t *purchase_item_short_response_create_internal(
    long id,
    char *name,
    char *description,
    int tickets,
    asset_short_response_t *cover_asset,
    asset_short_response_t *promo_asset,
    int giftable,
    int assetable
    ) {
    purchase_item_short_response_t *purchase_item_short_response_local_var = malloc(sizeof(purchase_item_short_response_t));
    if (!purchase_item_short_response_local_var) {
        return NULL;
    }
    purchase_item_short_response_local_var->id = id;
    purchase_item_short_response_local_var->name = name;
    purchase_item_short_response_local_var->description = description;
    purchase_item_short_response_local_var->tickets = tickets;
    purchase_item_short_response_local_var->cover_asset = cover_asset;
    purchase_item_short_response_local_var->promo_asset = promo_asset;
    purchase_item_short_response_local_var->giftable = giftable;
    purchase_item_short_response_local_var->assetable = assetable;

    purchase_item_short_response_local_var->_library_owned = 1;
    return purchase_item_short_response_local_var;
}

__attribute__((deprecated)) purchase_item_short_response_t *purchase_item_short_response_create(
    long id,
    char *name,
    char *description,
    int tickets,
    asset_short_response_t *cover_asset,
    asset_short_response_t *promo_asset,
    int giftable,
    int assetable
    ) {
    return purchase_item_short_response_create_internal (
        id,
        name,
        description,
        tickets,
        cover_asset,
        promo_asset,
        giftable,
        assetable
        );
}

void purchase_item_short_response_free(purchase_item_short_response_t *purchase_item_short_response) {
    if(NULL == purchase_item_short_response){
        return ;
    }
    if(purchase_item_short_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "purchase_item_short_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (purchase_item_short_response->name) {
        free(purchase_item_short_response->name);
        purchase_item_short_response->name = NULL;
    }
    if (purchase_item_short_response->description) {
        free(purchase_item_short_response->description);
        purchase_item_short_response->description = NULL;
    }
    if (purchase_item_short_response->cover_asset) {
        asset_short_response_free(purchase_item_short_response->cover_asset);
        purchase_item_short_response->cover_asset = NULL;
    }
    if (purchase_item_short_response->promo_asset) {
        asset_short_response_free(purchase_item_short_response->promo_asset);
        purchase_item_short_response->promo_asset = NULL;
    }
    free(purchase_item_short_response);
}

cJSON *purchase_item_short_response_convertToJSON(purchase_item_short_response_t *purchase_item_short_response) {
    cJSON *item = cJSON_CreateObject();

    // purchase_item_short_response->id
    if(purchase_item_short_response->id) {
    if(cJSON_AddNumberToObject(item, "id", purchase_item_short_response->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // purchase_item_short_response->name
    if(purchase_item_short_response->name) {
    if(cJSON_AddStringToObject(item, "name", purchase_item_short_response->name) == NULL) {
    goto fail; //String
    }
    }


    // purchase_item_short_response->description
    if(purchase_item_short_response->description) {
    if(cJSON_AddStringToObject(item, "description", purchase_item_short_response->description) == NULL) {
    goto fail; //String
    }
    }


    // purchase_item_short_response->tickets
    if(purchase_item_short_response->tickets) {
    if(cJSON_AddNumberToObject(item, "tickets", purchase_item_short_response->tickets) == NULL) {
    goto fail; //Numeric
    }
    }


    // purchase_item_short_response->cover_asset
    if(purchase_item_short_response->cover_asset) {
    cJSON *cover_asset_local_JSON = asset_short_response_convertToJSON(purchase_item_short_response->cover_asset);
    if(cover_asset_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "coverAsset", cover_asset_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // purchase_item_short_response->promo_asset
    if(purchase_item_short_response->promo_asset) {
    cJSON *promo_asset_local_JSON = asset_short_response_convertToJSON(purchase_item_short_response->promo_asset);
    if(promo_asset_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "promoAsset", promo_asset_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // purchase_item_short_response->giftable
    if(purchase_item_short_response->giftable) {
    if(cJSON_AddBoolToObject(item, "giftable", purchase_item_short_response->giftable) == NULL) {
    goto fail; //Bool
    }
    }


    // purchase_item_short_response->assetable
    if(purchase_item_short_response->assetable) {
    if(cJSON_AddBoolToObject(item, "assetable", purchase_item_short_response->assetable) == NULL) {
    goto fail; //Bool
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

purchase_item_short_response_t *purchase_item_short_response_parseFromJSON(cJSON *purchase_item_short_responseJSON){

    purchase_item_short_response_t *purchase_item_short_response_local_var = NULL;

    // define the local variable for purchase_item_short_response->cover_asset
    asset_short_response_t *cover_asset_local_nonprim = NULL;

    // define the local variable for purchase_item_short_response->promo_asset
    asset_short_response_t *promo_asset_local_nonprim = NULL;

    // purchase_item_short_response->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(purchase_item_short_responseJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // purchase_item_short_response->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(purchase_item_short_responseJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // purchase_item_short_response->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(purchase_item_short_responseJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // purchase_item_short_response->tickets
    cJSON *tickets = cJSON_GetObjectItemCaseSensitive(purchase_item_short_responseJSON, "tickets");
    if (cJSON_IsNull(tickets)) {
        tickets = NULL;
    }
    if (tickets) { 
    if(!cJSON_IsNumber(tickets))
    {
    goto end; //Numeric
    }
    }

    // purchase_item_short_response->cover_asset
    cJSON *cover_asset = cJSON_GetObjectItemCaseSensitive(purchase_item_short_responseJSON, "coverAsset");
    if (cJSON_IsNull(cover_asset)) {
        cover_asset = NULL;
    }
    if (cover_asset) { 
    cover_asset_local_nonprim = asset_short_response_parseFromJSON(cover_asset); //nonprimitive
    }

    // purchase_item_short_response->promo_asset
    cJSON *promo_asset = cJSON_GetObjectItemCaseSensitive(purchase_item_short_responseJSON, "promoAsset");
    if (cJSON_IsNull(promo_asset)) {
        promo_asset = NULL;
    }
    if (promo_asset) { 
    promo_asset_local_nonprim = asset_short_response_parseFromJSON(promo_asset); //nonprimitive
    }

    // purchase_item_short_response->giftable
    cJSON *giftable = cJSON_GetObjectItemCaseSensitive(purchase_item_short_responseJSON, "giftable");
    if (cJSON_IsNull(giftable)) {
        giftable = NULL;
    }
    if (giftable) { 
    if(!cJSON_IsBool(giftable))
    {
    goto end; //Bool
    }
    }

    // purchase_item_short_response->assetable
    cJSON *assetable = cJSON_GetObjectItemCaseSensitive(purchase_item_short_responseJSON, "assetable");
    if (cJSON_IsNull(assetable)) {
        assetable = NULL;
    }
    if (assetable) { 
    if(!cJSON_IsBool(assetable))
    {
    goto end; //Bool
    }
    }


    purchase_item_short_response_local_var = purchase_item_short_response_create_internal (
        id ? id->valuedouble : 0,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        tickets ? tickets->valuedouble : 0,
        cover_asset ? cover_asset_local_nonprim : NULL,
        promo_asset ? promo_asset_local_nonprim : NULL,
        giftable ? giftable->valueint : 0,
        assetable ? assetable->valueint : 0
        );

    return purchase_item_short_response_local_var;
end:
    if (cover_asset_local_nonprim) {
        asset_short_response_free(cover_asset_local_nonprim);
        cover_asset_local_nonprim = NULL;
    }
    if (promo_asset_local_nonprim) {
        asset_short_response_free(promo_asset_local_nonprim);
        promo_asset_local_nonprim = NULL;
    }
    return NULL;

}
