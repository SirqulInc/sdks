#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "ticket_response.h"


char* ticket_response_action_ToString(sirqul_iot_platform_ticket_response_ACTION_e action) {
    char* actionArray[] =  { "NULL", "DATA", "SAVE", "DELETE", "GET" };
    return actionArray[action];
}

sirqul_iot_platform_ticket_response_ACTION_e ticket_response_action_FromString(char* action){
    int stringToReturn = 0;
    char *actionArray[] =  { "NULL", "DATA", "SAVE", "DELETE", "GET" };
    size_t sizeofArray = sizeof(actionArray) / sizeof(actionArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(action, actionArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}
char* ticket_response_type_ToString(sirqul_iot_platform_ticket_response_TYPE_e type) {
    char* typeArray[] =  { "NULL", "GAME_OBJECT", "GAME_LEVEL", "PACK", "GAME", "MISSION", "PROFILE", "APPLICATION", "TICKETS", "ASSET", "CUSTOM" };
    return typeArray[type];
}

sirqul_iot_platform_ticket_response_TYPE_e ticket_response_type_FromString(char* type){
    int stringToReturn = 0;
    char *typeArray[] =  { "NULL", "GAME_OBJECT", "GAME_LEVEL", "PACK", "GAME", "MISSION", "PROFILE", "APPLICATION", "TICKETS", "ASSET", "CUSTOM" };
    size_t sizeofArray = sizeof(typeArray) / sizeof(typeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(type, typeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}
char* ticket_response_action_type_ToString(sirqul_iot_platform_ticket_response_ACTIONTYPE_e action_type) {
    char* action_typeArray[] =  { "NULL", "COMPLETED", "REDEEMED", "USERS_PLAYED", "TOURNAMENT_OWNER", "PURCHASED", "SUMATION", "GIFTED", "REFUNDED" };
    return action_typeArray[action_type];
}

sirqul_iot_platform_ticket_response_ACTIONTYPE_e ticket_response_action_type_FromString(char* action_type){
    int stringToReturn = 0;
    char *action_typeArray[] =  { "NULL", "COMPLETED", "REDEEMED", "USERS_PLAYED", "TOURNAMENT_OWNER", "PURCHASED", "SUMATION", "GIFTED", "REFUNDED" };
    size_t sizeofArray = sizeof(action_typeArray) / sizeof(action_typeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(action_type, action_typeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static ticket_response_t *ticket_response_create_internal(
    sirqul_iot_platform_ticket_response_ACTION_e action,
    long id,
    long account_id,
    long object_id,
    sirqul_iot_platform_ticket_response_TYPE_e type,
    sirqul_iot_platform_ticket_response_ACTIONTYPE_e action_type,
    long used,
    long count,
    purchase_item_short_response_t *purchase_item,
    char *custom_message,
    account_short_response_t *sender,
    list_t *receiver,
    asset_short_response_t *custom_asset,
    char *receipt_token,
    char *ticket_type,
    application_short_response_t *application
    ) {
    ticket_response_t *ticket_response_local_var = malloc(sizeof(ticket_response_t));
    if (!ticket_response_local_var) {
        return NULL;
    }
    ticket_response_local_var->action = action;
    ticket_response_local_var->id = id;
    ticket_response_local_var->account_id = account_id;
    ticket_response_local_var->object_id = object_id;
    ticket_response_local_var->type = type;
    ticket_response_local_var->action_type = action_type;
    ticket_response_local_var->used = used;
    ticket_response_local_var->count = count;
    ticket_response_local_var->purchase_item = purchase_item;
    ticket_response_local_var->custom_message = custom_message;
    ticket_response_local_var->sender = sender;
    ticket_response_local_var->receiver = receiver;
    ticket_response_local_var->custom_asset = custom_asset;
    ticket_response_local_var->receipt_token = receipt_token;
    ticket_response_local_var->ticket_type = ticket_type;
    ticket_response_local_var->application = application;

    ticket_response_local_var->_library_owned = 1;
    return ticket_response_local_var;
}

__attribute__((deprecated)) ticket_response_t *ticket_response_create(
    sirqul_iot_platform_ticket_response_ACTION_e action,
    long id,
    long account_id,
    long object_id,
    sirqul_iot_platform_ticket_response_TYPE_e type,
    sirqul_iot_platform_ticket_response_ACTIONTYPE_e action_type,
    long used,
    long count,
    purchase_item_short_response_t *purchase_item,
    char *custom_message,
    account_short_response_t *sender,
    list_t *receiver,
    asset_short_response_t *custom_asset,
    char *receipt_token,
    char *ticket_type,
    application_short_response_t *application
    ) {
    return ticket_response_create_internal (
        action,
        id,
        account_id,
        object_id,
        type,
        action_type,
        used,
        count,
        purchase_item,
        custom_message,
        sender,
        receiver,
        custom_asset,
        receipt_token,
        ticket_type,
        application
        );
}

void ticket_response_free(ticket_response_t *ticket_response) {
    if(NULL == ticket_response){
        return ;
    }
    if(ticket_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "ticket_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (ticket_response->purchase_item) {
        purchase_item_short_response_free(ticket_response->purchase_item);
        ticket_response->purchase_item = NULL;
    }
    if (ticket_response->custom_message) {
        free(ticket_response->custom_message);
        ticket_response->custom_message = NULL;
    }
    if (ticket_response->sender) {
        account_short_response_free(ticket_response->sender);
        ticket_response->sender = NULL;
    }
    if (ticket_response->receiver) {
        list_ForEach(listEntry, ticket_response->receiver) {
            account_short_response_free(listEntry->data);
        }
        list_freeList(ticket_response->receiver);
        ticket_response->receiver = NULL;
    }
    if (ticket_response->custom_asset) {
        asset_short_response_free(ticket_response->custom_asset);
        ticket_response->custom_asset = NULL;
    }
    if (ticket_response->receipt_token) {
        free(ticket_response->receipt_token);
        ticket_response->receipt_token = NULL;
    }
    if (ticket_response->ticket_type) {
        free(ticket_response->ticket_type);
        ticket_response->ticket_type = NULL;
    }
    if (ticket_response->application) {
        application_short_response_free(ticket_response->application);
        ticket_response->application = NULL;
    }
    free(ticket_response);
}

cJSON *ticket_response_convertToJSON(ticket_response_t *ticket_response) {
    cJSON *item = cJSON_CreateObject();

    // ticket_response->action
    if(ticket_response->action != sirqul_iot_platform_ticket_response_ACTION_NULL) {
    if(cJSON_AddStringToObject(item, "action", ticket_response_action_ToString(ticket_response->action)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // ticket_response->id
    if(ticket_response->id) {
    if(cJSON_AddNumberToObject(item, "id", ticket_response->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // ticket_response->account_id
    if(ticket_response->account_id) {
    if(cJSON_AddNumberToObject(item, "accountId", ticket_response->account_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // ticket_response->object_id
    if(ticket_response->object_id) {
    if(cJSON_AddNumberToObject(item, "objectId", ticket_response->object_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // ticket_response->type
    if(ticket_response->type != sirqul_iot_platform_ticket_response_TYPE_NULL) {
    if(cJSON_AddStringToObject(item, "type", ticket_response_type_ToString(ticket_response->type)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // ticket_response->action_type
    if(ticket_response->action_type != sirqul_iot_platform_ticket_response_ACTIONTYPE_NULL) {
    if(cJSON_AddStringToObject(item, "actionType", ticket_response_action_type_ToString(ticket_response->action_type)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // ticket_response->used
    if(ticket_response->used) {
    if(cJSON_AddNumberToObject(item, "used", ticket_response->used) == NULL) {
    goto fail; //Numeric
    }
    }


    // ticket_response->count
    if(ticket_response->count) {
    if(cJSON_AddNumberToObject(item, "count", ticket_response->count) == NULL) {
    goto fail; //Numeric
    }
    }


    // ticket_response->purchase_item
    if(ticket_response->purchase_item) {
    cJSON *purchase_item_local_JSON = purchase_item_short_response_convertToJSON(ticket_response->purchase_item);
    if(purchase_item_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "purchaseItem", purchase_item_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // ticket_response->custom_message
    if(ticket_response->custom_message) {
    if(cJSON_AddStringToObject(item, "customMessage", ticket_response->custom_message) == NULL) {
    goto fail; //String
    }
    }


    // ticket_response->sender
    if(ticket_response->sender) {
    cJSON *sender_local_JSON = account_short_response_convertToJSON(ticket_response->sender);
    if(sender_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "sender", sender_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // ticket_response->receiver
    if(ticket_response->receiver) {
    cJSON *receiver = cJSON_AddArrayToObject(item, "receiver");
    if(receiver == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *receiverListEntry;
    if (ticket_response->receiver) {
    list_ForEach(receiverListEntry, ticket_response->receiver) {
    cJSON *itemLocal = account_short_response_convertToJSON(receiverListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(receiver, itemLocal);
    }
    }
    }


    // ticket_response->custom_asset
    if(ticket_response->custom_asset) {
    cJSON *custom_asset_local_JSON = asset_short_response_convertToJSON(ticket_response->custom_asset);
    if(custom_asset_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "customAsset", custom_asset_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // ticket_response->receipt_token
    if(ticket_response->receipt_token) {
    if(cJSON_AddStringToObject(item, "receiptToken", ticket_response->receipt_token) == NULL) {
    goto fail; //String
    }
    }


    // ticket_response->ticket_type
    if(ticket_response->ticket_type) {
    if(cJSON_AddStringToObject(item, "ticketType", ticket_response->ticket_type) == NULL) {
    goto fail; //String
    }
    }


    // ticket_response->application
    if(ticket_response->application) {
    cJSON *application_local_JSON = application_short_response_convertToJSON(ticket_response->application);
    if(application_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "application", application_local_JSON);
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

ticket_response_t *ticket_response_parseFromJSON(cJSON *ticket_responseJSON){

    ticket_response_t *ticket_response_local_var = NULL;

    // define the local variable for ticket_response->purchase_item
    purchase_item_short_response_t *purchase_item_local_nonprim = NULL;

    // define the local variable for ticket_response->sender
    account_short_response_t *sender_local_nonprim = NULL;

    // define the local list for ticket_response->receiver
    list_t *receiverList = NULL;

    // define the local variable for ticket_response->custom_asset
    asset_short_response_t *custom_asset_local_nonprim = NULL;

    // define the local variable for ticket_response->application
    application_short_response_t *application_local_nonprim = NULL;

    // ticket_response->action
    cJSON *action = cJSON_GetObjectItemCaseSensitive(ticket_responseJSON, "action");
    if (cJSON_IsNull(action)) {
        action = NULL;
    }
    sirqul_iot_platform_ticket_response_ACTION_e actionVariable;
    if (action) { 
    if(!cJSON_IsString(action))
    {
    goto end; //Enum
    }
    actionVariable = ticket_response_action_FromString(action->valuestring);
    }

    // ticket_response->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(ticket_responseJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // ticket_response->account_id
    cJSON *account_id = cJSON_GetObjectItemCaseSensitive(ticket_responseJSON, "accountId");
    if (cJSON_IsNull(account_id)) {
        account_id = NULL;
    }
    if (account_id) { 
    if(!cJSON_IsNumber(account_id))
    {
    goto end; //Numeric
    }
    }

    // ticket_response->object_id
    cJSON *object_id = cJSON_GetObjectItemCaseSensitive(ticket_responseJSON, "objectId");
    if (cJSON_IsNull(object_id)) {
        object_id = NULL;
    }
    if (object_id) { 
    if(!cJSON_IsNumber(object_id))
    {
    goto end; //Numeric
    }
    }

    // ticket_response->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(ticket_responseJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    sirqul_iot_platform_ticket_response_TYPE_e typeVariable;
    if (type) { 
    if(!cJSON_IsString(type))
    {
    goto end; //Enum
    }
    typeVariable = ticket_response_type_FromString(type->valuestring);
    }

    // ticket_response->action_type
    cJSON *action_type = cJSON_GetObjectItemCaseSensitive(ticket_responseJSON, "actionType");
    if (cJSON_IsNull(action_type)) {
        action_type = NULL;
    }
    sirqul_iot_platform_ticket_response_ACTIONTYPE_e action_typeVariable;
    if (action_type) { 
    if(!cJSON_IsString(action_type))
    {
    goto end; //Enum
    }
    action_typeVariable = ticket_response_action_type_FromString(action_type->valuestring);
    }

    // ticket_response->used
    cJSON *used = cJSON_GetObjectItemCaseSensitive(ticket_responseJSON, "used");
    if (cJSON_IsNull(used)) {
        used = NULL;
    }
    if (used) { 
    if(!cJSON_IsNumber(used))
    {
    goto end; //Numeric
    }
    }

    // ticket_response->count
    cJSON *count = cJSON_GetObjectItemCaseSensitive(ticket_responseJSON, "count");
    if (cJSON_IsNull(count)) {
        count = NULL;
    }
    if (count) { 
    if(!cJSON_IsNumber(count))
    {
    goto end; //Numeric
    }
    }

    // ticket_response->purchase_item
    cJSON *purchase_item = cJSON_GetObjectItemCaseSensitive(ticket_responseJSON, "purchaseItem");
    if (cJSON_IsNull(purchase_item)) {
        purchase_item = NULL;
    }
    if (purchase_item) { 
    purchase_item_local_nonprim = purchase_item_short_response_parseFromJSON(purchase_item); //nonprimitive
    }

    // ticket_response->custom_message
    cJSON *custom_message = cJSON_GetObjectItemCaseSensitive(ticket_responseJSON, "customMessage");
    if (cJSON_IsNull(custom_message)) {
        custom_message = NULL;
    }
    if (custom_message) { 
    if(!cJSON_IsString(custom_message) && !cJSON_IsNull(custom_message))
    {
    goto end; //String
    }
    }

    // ticket_response->sender
    cJSON *sender = cJSON_GetObjectItemCaseSensitive(ticket_responseJSON, "sender");
    if (cJSON_IsNull(sender)) {
        sender = NULL;
    }
    if (sender) { 
    sender_local_nonprim = account_short_response_parseFromJSON(sender); //nonprimitive
    }

    // ticket_response->receiver
    cJSON *receiver = cJSON_GetObjectItemCaseSensitive(ticket_responseJSON, "receiver");
    if (cJSON_IsNull(receiver)) {
        receiver = NULL;
    }
    if (receiver) { 
    cJSON *receiver_local_nonprimitive = NULL;
    if(!cJSON_IsArray(receiver)){
        goto end; //nonprimitive container
    }

    receiverList = list_createList();

    cJSON_ArrayForEach(receiver_local_nonprimitive,receiver )
    {
        if(!cJSON_IsObject(receiver_local_nonprimitive)){
            goto end;
        }
        account_short_response_t *receiverItem = account_short_response_parseFromJSON(receiver_local_nonprimitive);

        list_addElement(receiverList, receiverItem);
    }
    }

    // ticket_response->custom_asset
    cJSON *custom_asset = cJSON_GetObjectItemCaseSensitive(ticket_responseJSON, "customAsset");
    if (cJSON_IsNull(custom_asset)) {
        custom_asset = NULL;
    }
    if (custom_asset) { 
    custom_asset_local_nonprim = asset_short_response_parseFromJSON(custom_asset); //nonprimitive
    }

    // ticket_response->receipt_token
    cJSON *receipt_token = cJSON_GetObjectItemCaseSensitive(ticket_responseJSON, "receiptToken");
    if (cJSON_IsNull(receipt_token)) {
        receipt_token = NULL;
    }
    if (receipt_token) { 
    if(!cJSON_IsString(receipt_token) && !cJSON_IsNull(receipt_token))
    {
    goto end; //String
    }
    }

    // ticket_response->ticket_type
    cJSON *ticket_type = cJSON_GetObjectItemCaseSensitive(ticket_responseJSON, "ticketType");
    if (cJSON_IsNull(ticket_type)) {
        ticket_type = NULL;
    }
    if (ticket_type) { 
    if(!cJSON_IsString(ticket_type) && !cJSON_IsNull(ticket_type))
    {
    goto end; //String
    }
    }

    // ticket_response->application
    cJSON *application = cJSON_GetObjectItemCaseSensitive(ticket_responseJSON, "application");
    if (cJSON_IsNull(application)) {
        application = NULL;
    }
    if (application) { 
    application_local_nonprim = application_short_response_parseFromJSON(application); //nonprimitive
    }


    ticket_response_local_var = ticket_response_create_internal (
        action ? actionVariable : sirqul_iot_platform_ticket_response_ACTION_NULL,
        id ? id->valuedouble : 0,
        account_id ? account_id->valuedouble : 0,
        object_id ? object_id->valuedouble : 0,
        type ? typeVariable : sirqul_iot_platform_ticket_response_TYPE_NULL,
        action_type ? action_typeVariable : sirqul_iot_platform_ticket_response_ACTIONTYPE_NULL,
        used ? used->valuedouble : 0,
        count ? count->valuedouble : 0,
        purchase_item ? purchase_item_local_nonprim : NULL,
        custom_message && !cJSON_IsNull(custom_message) ? strdup(custom_message->valuestring) : NULL,
        sender ? sender_local_nonprim : NULL,
        receiver ? receiverList : NULL,
        custom_asset ? custom_asset_local_nonprim : NULL,
        receipt_token && !cJSON_IsNull(receipt_token) ? strdup(receipt_token->valuestring) : NULL,
        ticket_type && !cJSON_IsNull(ticket_type) ? strdup(ticket_type->valuestring) : NULL,
        application ? application_local_nonprim : NULL
        );

    return ticket_response_local_var;
end:
    if (purchase_item_local_nonprim) {
        purchase_item_short_response_free(purchase_item_local_nonprim);
        purchase_item_local_nonprim = NULL;
    }
    if (sender_local_nonprim) {
        account_short_response_free(sender_local_nonprim);
        sender_local_nonprim = NULL;
    }
    if (receiverList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, receiverList) {
            account_short_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(receiverList);
        receiverList = NULL;
    }
    if (custom_asset_local_nonprim) {
        asset_short_response_free(custom_asset_local_nonprim);
        custom_asset_local_nonprim = NULL;
    }
    if (application_local_nonprim) {
        application_short_response_free(application_local_nonprim);
        application_local_nonprim = NULL;
    }
    return NULL;

}
