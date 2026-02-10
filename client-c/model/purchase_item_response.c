#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "purchase_item_response.h"


char* purchase_item_response_service_action_ToString(sirqul_iot_platform_purchase_item_response_SERVICEACTION_e service_action) {
    char* service_actionArray[] =  { "NULL", "DAY_PREMIUM", "WEEK_PREMIUM", "MONTH_PREMIUM", "YEAR_PREMIUM", "LIFETIME_PREMIUM", "ADD_TICKET", "ADD_GIFT", "ADD_POINTS" };
    return service_actionArray[service_action];
}

sirqul_iot_platform_purchase_item_response_SERVICEACTION_e purchase_item_response_service_action_FromString(char* service_action){
    int stringToReturn = 0;
    char *service_actionArray[] =  { "NULL", "DAY_PREMIUM", "WEEK_PREMIUM", "MONTH_PREMIUM", "YEAR_PREMIUM", "LIFETIME_PREMIUM", "ADD_TICKET", "ADD_GIFT", "ADD_POINTS" };
    size_t sizeofArray = sizeof(service_actionArray) / sizeof(service_actionArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(service_action, service_actionArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static purchase_item_response_t *purchase_item_response_create_internal(
    long id,
    char *name,
    char *description,
    int tickets,
    asset_short_response_t *cover_asset,
    asset_short_response_t *promo_asset,
    int giftable,
    int assetable,
    char *game_type,
    float price,
    char *purchase_type,
    char *purchase_code,
    int purchase_limit,
    int quantity,
    sirqul_iot_platform_purchase_item_response_SERVICEACTION_e service_action,
    char *app_name
    ) {
    purchase_item_response_t *purchase_item_response_local_var = malloc(sizeof(purchase_item_response_t));
    if (!purchase_item_response_local_var) {
        return NULL;
    }
    purchase_item_response_local_var->id = id;
    purchase_item_response_local_var->name = name;
    purchase_item_response_local_var->description = description;
    purchase_item_response_local_var->tickets = tickets;
    purchase_item_response_local_var->cover_asset = cover_asset;
    purchase_item_response_local_var->promo_asset = promo_asset;
    purchase_item_response_local_var->giftable = giftable;
    purchase_item_response_local_var->assetable = assetable;
    purchase_item_response_local_var->game_type = game_type;
    purchase_item_response_local_var->price = price;
    purchase_item_response_local_var->purchase_type = purchase_type;
    purchase_item_response_local_var->purchase_code = purchase_code;
    purchase_item_response_local_var->purchase_limit = purchase_limit;
    purchase_item_response_local_var->quantity = quantity;
    purchase_item_response_local_var->service_action = service_action;
    purchase_item_response_local_var->app_name = app_name;

    purchase_item_response_local_var->_library_owned = 1;
    return purchase_item_response_local_var;
}

__attribute__((deprecated)) purchase_item_response_t *purchase_item_response_create(
    long id,
    char *name,
    char *description,
    int tickets,
    asset_short_response_t *cover_asset,
    asset_short_response_t *promo_asset,
    int giftable,
    int assetable,
    char *game_type,
    float price,
    char *purchase_type,
    char *purchase_code,
    int purchase_limit,
    int quantity,
    sirqul_iot_platform_purchase_item_response_SERVICEACTION_e service_action,
    char *app_name
    ) {
    return purchase_item_response_create_internal (
        id,
        name,
        description,
        tickets,
        cover_asset,
        promo_asset,
        giftable,
        assetable,
        game_type,
        price,
        purchase_type,
        purchase_code,
        purchase_limit,
        quantity,
        service_action,
        app_name
        );
}

void purchase_item_response_free(purchase_item_response_t *purchase_item_response) {
    if(NULL == purchase_item_response){
        return ;
    }
    if(purchase_item_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "purchase_item_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (purchase_item_response->name) {
        free(purchase_item_response->name);
        purchase_item_response->name = NULL;
    }
    if (purchase_item_response->description) {
        free(purchase_item_response->description);
        purchase_item_response->description = NULL;
    }
    if (purchase_item_response->cover_asset) {
        asset_short_response_free(purchase_item_response->cover_asset);
        purchase_item_response->cover_asset = NULL;
    }
    if (purchase_item_response->promo_asset) {
        asset_short_response_free(purchase_item_response->promo_asset);
        purchase_item_response->promo_asset = NULL;
    }
    if (purchase_item_response->game_type) {
        free(purchase_item_response->game_type);
        purchase_item_response->game_type = NULL;
    }
    if (purchase_item_response->purchase_type) {
        free(purchase_item_response->purchase_type);
        purchase_item_response->purchase_type = NULL;
    }
    if (purchase_item_response->purchase_code) {
        free(purchase_item_response->purchase_code);
        purchase_item_response->purchase_code = NULL;
    }
    if (purchase_item_response->app_name) {
        free(purchase_item_response->app_name);
        purchase_item_response->app_name = NULL;
    }
    free(purchase_item_response);
}

cJSON *purchase_item_response_convertToJSON(purchase_item_response_t *purchase_item_response) {
    cJSON *item = cJSON_CreateObject();

    // purchase_item_response->id
    if(purchase_item_response->id) {
    if(cJSON_AddNumberToObject(item, "id", purchase_item_response->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // purchase_item_response->name
    if(purchase_item_response->name) {
    if(cJSON_AddStringToObject(item, "name", purchase_item_response->name) == NULL) {
    goto fail; //String
    }
    }


    // purchase_item_response->description
    if(purchase_item_response->description) {
    if(cJSON_AddStringToObject(item, "description", purchase_item_response->description) == NULL) {
    goto fail; //String
    }
    }


    // purchase_item_response->tickets
    if(purchase_item_response->tickets) {
    if(cJSON_AddNumberToObject(item, "tickets", purchase_item_response->tickets) == NULL) {
    goto fail; //Numeric
    }
    }


    // purchase_item_response->cover_asset
    if(purchase_item_response->cover_asset) {
    cJSON *cover_asset_local_JSON = asset_short_response_convertToJSON(purchase_item_response->cover_asset);
    if(cover_asset_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "coverAsset", cover_asset_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // purchase_item_response->promo_asset
    if(purchase_item_response->promo_asset) {
    cJSON *promo_asset_local_JSON = asset_short_response_convertToJSON(purchase_item_response->promo_asset);
    if(promo_asset_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "promoAsset", promo_asset_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // purchase_item_response->giftable
    if(purchase_item_response->giftable) {
    if(cJSON_AddBoolToObject(item, "giftable", purchase_item_response->giftable) == NULL) {
    goto fail; //Bool
    }
    }


    // purchase_item_response->assetable
    if(purchase_item_response->assetable) {
    if(cJSON_AddBoolToObject(item, "assetable", purchase_item_response->assetable) == NULL) {
    goto fail; //Bool
    }
    }


    // purchase_item_response->game_type
    if(purchase_item_response->game_type) {
    if(cJSON_AddStringToObject(item, "gameType", purchase_item_response->game_type) == NULL) {
    goto fail; //String
    }
    }


    // purchase_item_response->price
    if(purchase_item_response->price) {
    if(cJSON_AddNumberToObject(item, "price", purchase_item_response->price) == NULL) {
    goto fail; //Numeric
    }
    }


    // purchase_item_response->purchase_type
    if(purchase_item_response->purchase_type) {
    if(cJSON_AddStringToObject(item, "purchaseType", purchase_item_response->purchase_type) == NULL) {
    goto fail; //String
    }
    }


    // purchase_item_response->purchase_code
    if(purchase_item_response->purchase_code) {
    if(cJSON_AddStringToObject(item, "purchaseCode", purchase_item_response->purchase_code) == NULL) {
    goto fail; //String
    }
    }


    // purchase_item_response->purchase_limit
    if(purchase_item_response->purchase_limit) {
    if(cJSON_AddNumberToObject(item, "purchaseLimit", purchase_item_response->purchase_limit) == NULL) {
    goto fail; //Numeric
    }
    }


    // purchase_item_response->quantity
    if(purchase_item_response->quantity) {
    if(cJSON_AddNumberToObject(item, "quantity", purchase_item_response->quantity) == NULL) {
    goto fail; //Numeric
    }
    }


    // purchase_item_response->service_action
    if(purchase_item_response->service_action != sirqul_iot_platform_purchase_item_response_SERVICEACTION_NULL) {
    if(cJSON_AddStringToObject(item, "serviceAction", purchase_item_response_service_action_ToString(purchase_item_response->service_action)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // purchase_item_response->app_name
    if(purchase_item_response->app_name) {
    if(cJSON_AddStringToObject(item, "appName", purchase_item_response->app_name) == NULL) {
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

purchase_item_response_t *purchase_item_response_parseFromJSON(cJSON *purchase_item_responseJSON){

    purchase_item_response_t *purchase_item_response_local_var = NULL;

    // define the local variable for purchase_item_response->cover_asset
    asset_short_response_t *cover_asset_local_nonprim = NULL;

    // define the local variable for purchase_item_response->promo_asset
    asset_short_response_t *promo_asset_local_nonprim = NULL;

    // purchase_item_response->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(purchase_item_responseJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // purchase_item_response->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(purchase_item_responseJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // purchase_item_response->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(purchase_item_responseJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // purchase_item_response->tickets
    cJSON *tickets = cJSON_GetObjectItemCaseSensitive(purchase_item_responseJSON, "tickets");
    if (cJSON_IsNull(tickets)) {
        tickets = NULL;
    }
    if (tickets) { 
    if(!cJSON_IsNumber(tickets))
    {
    goto end; //Numeric
    }
    }

    // purchase_item_response->cover_asset
    cJSON *cover_asset = cJSON_GetObjectItemCaseSensitive(purchase_item_responseJSON, "coverAsset");
    if (cJSON_IsNull(cover_asset)) {
        cover_asset = NULL;
    }
    if (cover_asset) { 
    cover_asset_local_nonprim = asset_short_response_parseFromJSON(cover_asset); //nonprimitive
    }

    // purchase_item_response->promo_asset
    cJSON *promo_asset = cJSON_GetObjectItemCaseSensitive(purchase_item_responseJSON, "promoAsset");
    if (cJSON_IsNull(promo_asset)) {
        promo_asset = NULL;
    }
    if (promo_asset) { 
    promo_asset_local_nonprim = asset_short_response_parseFromJSON(promo_asset); //nonprimitive
    }

    // purchase_item_response->giftable
    cJSON *giftable = cJSON_GetObjectItemCaseSensitive(purchase_item_responseJSON, "giftable");
    if (cJSON_IsNull(giftable)) {
        giftable = NULL;
    }
    if (giftable) { 
    if(!cJSON_IsBool(giftable))
    {
    goto end; //Bool
    }
    }

    // purchase_item_response->assetable
    cJSON *assetable = cJSON_GetObjectItemCaseSensitive(purchase_item_responseJSON, "assetable");
    if (cJSON_IsNull(assetable)) {
        assetable = NULL;
    }
    if (assetable) { 
    if(!cJSON_IsBool(assetable))
    {
    goto end; //Bool
    }
    }

    // purchase_item_response->game_type
    cJSON *game_type = cJSON_GetObjectItemCaseSensitive(purchase_item_responseJSON, "gameType");
    if (cJSON_IsNull(game_type)) {
        game_type = NULL;
    }
    if (game_type) { 
    if(!cJSON_IsString(game_type) && !cJSON_IsNull(game_type))
    {
    goto end; //String
    }
    }

    // purchase_item_response->price
    cJSON *price = cJSON_GetObjectItemCaseSensitive(purchase_item_responseJSON, "price");
    if (cJSON_IsNull(price)) {
        price = NULL;
    }
    if (price) { 
    if(!cJSON_IsNumber(price))
    {
    goto end; //Numeric
    }
    }

    // purchase_item_response->purchase_type
    cJSON *purchase_type = cJSON_GetObjectItemCaseSensitive(purchase_item_responseJSON, "purchaseType");
    if (cJSON_IsNull(purchase_type)) {
        purchase_type = NULL;
    }
    if (purchase_type) { 
    if(!cJSON_IsString(purchase_type) && !cJSON_IsNull(purchase_type))
    {
    goto end; //String
    }
    }

    // purchase_item_response->purchase_code
    cJSON *purchase_code = cJSON_GetObjectItemCaseSensitive(purchase_item_responseJSON, "purchaseCode");
    if (cJSON_IsNull(purchase_code)) {
        purchase_code = NULL;
    }
    if (purchase_code) { 
    if(!cJSON_IsString(purchase_code) && !cJSON_IsNull(purchase_code))
    {
    goto end; //String
    }
    }

    // purchase_item_response->purchase_limit
    cJSON *purchase_limit = cJSON_GetObjectItemCaseSensitive(purchase_item_responseJSON, "purchaseLimit");
    if (cJSON_IsNull(purchase_limit)) {
        purchase_limit = NULL;
    }
    if (purchase_limit) { 
    if(!cJSON_IsNumber(purchase_limit))
    {
    goto end; //Numeric
    }
    }

    // purchase_item_response->quantity
    cJSON *quantity = cJSON_GetObjectItemCaseSensitive(purchase_item_responseJSON, "quantity");
    if (cJSON_IsNull(quantity)) {
        quantity = NULL;
    }
    if (quantity) { 
    if(!cJSON_IsNumber(quantity))
    {
    goto end; //Numeric
    }
    }

    // purchase_item_response->service_action
    cJSON *service_action = cJSON_GetObjectItemCaseSensitive(purchase_item_responseJSON, "serviceAction");
    if (cJSON_IsNull(service_action)) {
        service_action = NULL;
    }
    sirqul_iot_platform_purchase_item_response_SERVICEACTION_e service_actionVariable;
    if (service_action) { 
    if(!cJSON_IsString(service_action))
    {
    goto end; //Enum
    }
    service_actionVariable = purchase_item_response_service_action_FromString(service_action->valuestring);
    }

    // purchase_item_response->app_name
    cJSON *app_name = cJSON_GetObjectItemCaseSensitive(purchase_item_responseJSON, "appName");
    if (cJSON_IsNull(app_name)) {
        app_name = NULL;
    }
    if (app_name) { 
    if(!cJSON_IsString(app_name) && !cJSON_IsNull(app_name))
    {
    goto end; //String
    }
    }


    purchase_item_response_local_var = purchase_item_response_create_internal (
        id ? id->valuedouble : 0,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        tickets ? tickets->valuedouble : 0,
        cover_asset ? cover_asset_local_nonprim : NULL,
        promo_asset ? promo_asset_local_nonprim : NULL,
        giftable ? giftable->valueint : 0,
        assetable ? assetable->valueint : 0,
        game_type && !cJSON_IsNull(game_type) ? strdup(game_type->valuestring) : NULL,
        price ? price->valuedouble : 0,
        purchase_type && !cJSON_IsNull(purchase_type) ? strdup(purchase_type->valuestring) : NULL,
        purchase_code && !cJSON_IsNull(purchase_code) ? strdup(purchase_code->valuestring) : NULL,
        purchase_limit ? purchase_limit->valuedouble : 0,
        quantity ? quantity->valuedouble : 0,
        service_action ? service_actionVariable : sirqul_iot_platform_purchase_item_response_SERVICEACTION_NULL,
        app_name && !cJSON_IsNull(app_name) ? strdup(app_name->valuestring) : NULL
        );

    return purchase_item_response_local_var;
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
