#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "billable_entity.h"



static billable_entity_t *billable_entity_create_internal(
    long id,
    int active,
    int valid,
    char *name,
    contact_info_t *contact_info,
    account_t *responsible,
    list_t *retailers,
    list_t *managers,
    list_t *categories,
    list_t *filters,
    list_t *media,
    album_t *media_album,
    subscription_t *subscription,
    third_party_network_t *disbursement_introspect,
    char *authorize_net_transaction_key,
    char *authorize_net_api_key
    ) {
    billable_entity_t *billable_entity_local_var = malloc(sizeof(billable_entity_t));
    if (!billable_entity_local_var) {
        return NULL;
    }
    billable_entity_local_var->id = id;
    billable_entity_local_var->active = active;
    billable_entity_local_var->valid = valid;
    billable_entity_local_var->name = name;
    billable_entity_local_var->contact_info = contact_info;
    billable_entity_local_var->responsible = responsible;
    billable_entity_local_var->retailers = retailers;
    billable_entity_local_var->managers = managers;
    billable_entity_local_var->categories = categories;
    billable_entity_local_var->filters = filters;
    billable_entity_local_var->media = media;
    billable_entity_local_var->media_album = media_album;
    billable_entity_local_var->subscription = subscription;
    billable_entity_local_var->disbursement_introspect = disbursement_introspect;
    billable_entity_local_var->authorize_net_transaction_key = authorize_net_transaction_key;
    billable_entity_local_var->authorize_net_api_key = authorize_net_api_key;

    billable_entity_local_var->_library_owned = 1;
    return billable_entity_local_var;
}

__attribute__((deprecated)) billable_entity_t *billable_entity_create(
    long id,
    int active,
    int valid,
    char *name,
    contact_info_t *contact_info,
    account_t *responsible,
    list_t *retailers,
    list_t *managers,
    list_t *categories,
    list_t *filters,
    list_t *media,
    album_t *media_album,
    subscription_t *subscription,
    third_party_network_t *disbursement_introspect,
    char *authorize_net_transaction_key,
    char *authorize_net_api_key
    ) {
    return billable_entity_create_internal (
        id,
        active,
        valid,
        name,
        contact_info,
        responsible,
        retailers,
        managers,
        categories,
        filters,
        media,
        media_album,
        subscription,
        disbursement_introspect,
        authorize_net_transaction_key,
        authorize_net_api_key
        );
}

void billable_entity_free(billable_entity_t *billable_entity) {
    if(NULL == billable_entity){
        return ;
    }
    if(billable_entity->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "billable_entity_free");
        return ;
    }
    listEntry_t *listEntry;
    if (billable_entity->name) {
        free(billable_entity->name);
        billable_entity->name = NULL;
    }
    if (billable_entity->contact_info) {
        contact_info_free(billable_entity->contact_info);
        billable_entity->contact_info = NULL;
    }
    if (billable_entity->responsible) {
        account_free(billable_entity->responsible);
        billable_entity->responsible = NULL;
    }
    if (billable_entity->retailers) {
        list_ForEach(listEntry, billable_entity->retailers) {
            retailer_free(listEntry->data);
        }
        list_freeList(billable_entity->retailers);
        billable_entity->retailers = NULL;
    }
    if (billable_entity->managers) {
        list_ForEach(listEntry, billable_entity->managers) {
            account_free(listEntry->data);
        }
        list_freeList(billable_entity->managers);
        billable_entity->managers = NULL;
    }
    if (billable_entity->categories) {
        list_ForEach(listEntry, billable_entity->categories) {
            category_free(listEntry->data);
        }
        list_freeList(billable_entity->categories);
        billable_entity->categories = NULL;
    }
    if (billable_entity->filters) {
        list_ForEach(listEntry, billable_entity->filters) {
            filter_free(listEntry->data);
        }
        list_freeList(billable_entity->filters);
        billable_entity->filters = NULL;
    }
    if (billable_entity->media) {
        list_ForEach(listEntry, billable_entity->media) {
            asset_free(listEntry->data);
        }
        list_freeList(billable_entity->media);
        billable_entity->media = NULL;
    }
    if (billable_entity->media_album) {
        album_free(billable_entity->media_album);
        billable_entity->media_album = NULL;
    }
    if (billable_entity->subscription) {
        subscription_free(billable_entity->subscription);
        billable_entity->subscription = NULL;
    }
    if (billable_entity->disbursement_introspect) {
        third_party_network_free(billable_entity->disbursement_introspect);
        billable_entity->disbursement_introspect = NULL;
    }
    if (billable_entity->authorize_net_transaction_key) {
        free(billable_entity->authorize_net_transaction_key);
        billable_entity->authorize_net_transaction_key = NULL;
    }
    if (billable_entity->authorize_net_api_key) {
        free(billable_entity->authorize_net_api_key);
        billable_entity->authorize_net_api_key = NULL;
    }
    free(billable_entity);
}

cJSON *billable_entity_convertToJSON(billable_entity_t *billable_entity) {
    cJSON *item = cJSON_CreateObject();

    // billable_entity->id
    if(billable_entity->id) {
    if(cJSON_AddNumberToObject(item, "id", billable_entity->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // billable_entity->active
    if(billable_entity->active) {
    if(cJSON_AddBoolToObject(item, "active", billable_entity->active) == NULL) {
    goto fail; //Bool
    }
    }


    // billable_entity->valid
    if(billable_entity->valid) {
    if(cJSON_AddBoolToObject(item, "valid", billable_entity->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // billable_entity->name
    if(billable_entity->name) {
    if(cJSON_AddStringToObject(item, "name", billable_entity->name) == NULL) {
    goto fail; //String
    }
    }


    // billable_entity->contact_info
    if(billable_entity->contact_info) {
    cJSON *contact_info_local_JSON = contact_info_convertToJSON(billable_entity->contact_info);
    if(contact_info_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "contactInfo", contact_info_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // billable_entity->responsible
    if(billable_entity->responsible) {
    cJSON *responsible_local_JSON = account_convertToJSON(billable_entity->responsible);
    if(responsible_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "responsible", responsible_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // billable_entity->retailers
    if(billable_entity->retailers) {
    cJSON *retailers = cJSON_AddArrayToObject(item, "retailers");
    if(retailers == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *retailersListEntry;
    if (billable_entity->retailers) {
    list_ForEach(retailersListEntry, billable_entity->retailers) {
    cJSON *itemLocal = retailer_convertToJSON(retailersListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(retailers, itemLocal);
    }
    }
    }


    // billable_entity->managers
    if(billable_entity->managers) {
    cJSON *managers = cJSON_AddArrayToObject(item, "managers");
    if(managers == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *managersListEntry;
    if (billable_entity->managers) {
    list_ForEach(managersListEntry, billable_entity->managers) {
    cJSON *itemLocal = account_convertToJSON(managersListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(managers, itemLocal);
    }
    }
    }


    // billable_entity->categories
    if(billable_entity->categories) {
    cJSON *categories = cJSON_AddArrayToObject(item, "categories");
    if(categories == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *categoriesListEntry;
    if (billable_entity->categories) {
    list_ForEach(categoriesListEntry, billable_entity->categories) {
    cJSON *itemLocal = category_convertToJSON(categoriesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(categories, itemLocal);
    }
    }
    }


    // billable_entity->filters
    if(billable_entity->filters) {
    cJSON *filters = cJSON_AddArrayToObject(item, "filters");
    if(filters == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *filtersListEntry;
    if (billable_entity->filters) {
    list_ForEach(filtersListEntry, billable_entity->filters) {
    cJSON *itemLocal = filter_convertToJSON(filtersListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(filters, itemLocal);
    }
    }
    }


    // billable_entity->media
    if(billable_entity->media) {
    cJSON *media = cJSON_AddArrayToObject(item, "media");
    if(media == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *mediaListEntry;
    if (billable_entity->media) {
    list_ForEach(mediaListEntry, billable_entity->media) {
    cJSON *itemLocal = asset_convertToJSON(mediaListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(media, itemLocal);
    }
    }
    }


    // billable_entity->media_album
    if(billable_entity->media_album) {
    cJSON *media_album_local_JSON = album_convertToJSON(billable_entity->media_album);
    if(media_album_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "mediaAlbum", media_album_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // billable_entity->subscription
    if(billable_entity->subscription) {
    cJSON *subscription_local_JSON = subscription_convertToJSON(billable_entity->subscription);
    if(subscription_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "subscription", subscription_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // billable_entity->disbursement_introspect
    if(billable_entity->disbursement_introspect) {
    cJSON *disbursement_introspect_local_JSON = third_party_network_convertToJSON(billable_entity->disbursement_introspect);
    if(disbursement_introspect_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "disbursementIntrospect", disbursement_introspect_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // billable_entity->authorize_net_transaction_key
    if(billable_entity->authorize_net_transaction_key) {
    if(cJSON_AddStringToObject(item, "authorizeNetTransactionKey", billable_entity->authorize_net_transaction_key) == NULL) {
    goto fail; //String
    }
    }


    // billable_entity->authorize_net_api_key
    if(billable_entity->authorize_net_api_key) {
    if(cJSON_AddStringToObject(item, "authorizeNetApiKey", billable_entity->authorize_net_api_key) == NULL) {
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

billable_entity_t *billable_entity_parseFromJSON(cJSON *billable_entityJSON){

    billable_entity_t *billable_entity_local_var = NULL;

    // define the local variable for billable_entity->contact_info
    contact_info_t *contact_info_local_nonprim = NULL;

    // define the local variable for billable_entity->responsible
    account_t *responsible_local_nonprim = NULL;

    // define the local list for billable_entity->retailers
    list_t *retailersList = NULL;

    // define the local list for billable_entity->managers
    list_t *managersList = NULL;

    // define the local list for billable_entity->categories
    list_t *categoriesList = NULL;

    // define the local list for billable_entity->filters
    list_t *filtersList = NULL;

    // define the local list for billable_entity->media
    list_t *mediaList = NULL;

    // define the local variable for billable_entity->media_album
    album_t *media_album_local_nonprim = NULL;

    // define the local variable for billable_entity->subscription
    subscription_t *subscription_local_nonprim = NULL;

    // define the local variable for billable_entity->disbursement_introspect
    third_party_network_t *disbursement_introspect_local_nonprim = NULL;

    // billable_entity->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(billable_entityJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // billable_entity->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(billable_entityJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // billable_entity->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(billable_entityJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // billable_entity->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(billable_entityJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // billable_entity->contact_info
    cJSON *contact_info = cJSON_GetObjectItemCaseSensitive(billable_entityJSON, "contactInfo");
    if (cJSON_IsNull(contact_info)) {
        contact_info = NULL;
    }
    if (contact_info) { 
    contact_info_local_nonprim = contact_info_parseFromJSON(contact_info); //nonprimitive
    }

    // billable_entity->responsible
    cJSON *responsible = cJSON_GetObjectItemCaseSensitive(billable_entityJSON, "responsible");
    if (cJSON_IsNull(responsible)) {
        responsible = NULL;
    }
    if (responsible) { 
    responsible_local_nonprim = account_parseFromJSON(responsible); //nonprimitive
    }

    // billable_entity->retailers
    cJSON *retailers = cJSON_GetObjectItemCaseSensitive(billable_entityJSON, "retailers");
    if (cJSON_IsNull(retailers)) {
        retailers = NULL;
    }
    if (retailers) { 
    cJSON *retailers_local_nonprimitive = NULL;
    if(!cJSON_IsArray(retailers)){
        goto end; //nonprimitive container
    }

    retailersList = list_createList();

    cJSON_ArrayForEach(retailers_local_nonprimitive,retailers )
    {
        if(!cJSON_IsObject(retailers_local_nonprimitive)){
            goto end;
        }
        retailer_t *retailersItem = retailer_parseFromJSON(retailers_local_nonprimitive);

        list_addElement(retailersList, retailersItem);
    }
    }

    // billable_entity->managers
    cJSON *managers = cJSON_GetObjectItemCaseSensitive(billable_entityJSON, "managers");
    if (cJSON_IsNull(managers)) {
        managers = NULL;
    }
    if (managers) { 
    cJSON *managers_local_nonprimitive = NULL;
    if(!cJSON_IsArray(managers)){
        goto end; //nonprimitive container
    }

    managersList = list_createList();

    cJSON_ArrayForEach(managers_local_nonprimitive,managers )
    {
        if(!cJSON_IsObject(managers_local_nonprimitive)){
            goto end;
        }
        account_t *managersItem = account_parseFromJSON(managers_local_nonprimitive);

        list_addElement(managersList, managersItem);
    }
    }

    // billable_entity->categories
    cJSON *categories = cJSON_GetObjectItemCaseSensitive(billable_entityJSON, "categories");
    if (cJSON_IsNull(categories)) {
        categories = NULL;
    }
    if (categories) { 
    cJSON *categories_local_nonprimitive = NULL;
    if(!cJSON_IsArray(categories)){
        goto end; //nonprimitive container
    }

    categoriesList = list_createList();

    cJSON_ArrayForEach(categories_local_nonprimitive,categories )
    {
        if(!cJSON_IsObject(categories_local_nonprimitive)){
            goto end;
        }
        category_t *categoriesItem = category_parseFromJSON(categories_local_nonprimitive);

        list_addElement(categoriesList, categoriesItem);
    }
    }

    // billable_entity->filters
    cJSON *filters = cJSON_GetObjectItemCaseSensitive(billable_entityJSON, "filters");
    if (cJSON_IsNull(filters)) {
        filters = NULL;
    }
    if (filters) { 
    cJSON *filters_local_nonprimitive = NULL;
    if(!cJSON_IsArray(filters)){
        goto end; //nonprimitive container
    }

    filtersList = list_createList();

    cJSON_ArrayForEach(filters_local_nonprimitive,filters )
    {
        if(!cJSON_IsObject(filters_local_nonprimitive)){
            goto end;
        }
        filter_t *filtersItem = filter_parseFromJSON(filters_local_nonprimitive);

        list_addElement(filtersList, filtersItem);
    }
    }

    // billable_entity->media
    cJSON *media = cJSON_GetObjectItemCaseSensitive(billable_entityJSON, "media");
    if (cJSON_IsNull(media)) {
        media = NULL;
    }
    if (media) { 
    cJSON *media_local_nonprimitive = NULL;
    if(!cJSON_IsArray(media)){
        goto end; //nonprimitive container
    }

    mediaList = list_createList();

    cJSON_ArrayForEach(media_local_nonprimitive,media )
    {
        if(!cJSON_IsObject(media_local_nonprimitive)){
            goto end;
        }
        asset_t *mediaItem = asset_parseFromJSON(media_local_nonprimitive);

        list_addElement(mediaList, mediaItem);
    }
    }

    // billable_entity->media_album
    cJSON *media_album = cJSON_GetObjectItemCaseSensitive(billable_entityJSON, "mediaAlbum");
    if (cJSON_IsNull(media_album)) {
        media_album = NULL;
    }
    if (media_album) { 
    media_album_local_nonprim = album_parseFromJSON(media_album); //nonprimitive
    }

    // billable_entity->subscription
    cJSON *subscription = cJSON_GetObjectItemCaseSensitive(billable_entityJSON, "subscription");
    if (cJSON_IsNull(subscription)) {
        subscription = NULL;
    }
    if (subscription) { 
    subscription_local_nonprim = subscription_parseFromJSON(subscription); //nonprimitive
    }

    // billable_entity->disbursement_introspect
    cJSON *disbursement_introspect = cJSON_GetObjectItemCaseSensitive(billable_entityJSON, "disbursementIntrospect");
    if (cJSON_IsNull(disbursement_introspect)) {
        disbursement_introspect = NULL;
    }
    if (disbursement_introspect) { 
    disbursement_introspect_local_nonprim = third_party_network_parseFromJSON(disbursement_introspect); //nonprimitive
    }

    // billable_entity->authorize_net_transaction_key
    cJSON *authorize_net_transaction_key = cJSON_GetObjectItemCaseSensitive(billable_entityJSON, "authorizeNetTransactionKey");
    if (cJSON_IsNull(authorize_net_transaction_key)) {
        authorize_net_transaction_key = NULL;
    }
    if (authorize_net_transaction_key) { 
    if(!cJSON_IsString(authorize_net_transaction_key) && !cJSON_IsNull(authorize_net_transaction_key))
    {
    goto end; //String
    }
    }

    // billable_entity->authorize_net_api_key
    cJSON *authorize_net_api_key = cJSON_GetObjectItemCaseSensitive(billable_entityJSON, "authorizeNetApiKey");
    if (cJSON_IsNull(authorize_net_api_key)) {
        authorize_net_api_key = NULL;
    }
    if (authorize_net_api_key) { 
    if(!cJSON_IsString(authorize_net_api_key) && !cJSON_IsNull(authorize_net_api_key))
    {
    goto end; //String
    }
    }


    billable_entity_local_var = billable_entity_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        contact_info ? contact_info_local_nonprim : NULL,
        responsible ? responsible_local_nonprim : NULL,
        retailers ? retailersList : NULL,
        managers ? managersList : NULL,
        categories ? categoriesList : NULL,
        filters ? filtersList : NULL,
        media ? mediaList : NULL,
        media_album ? media_album_local_nonprim : NULL,
        subscription ? subscription_local_nonprim : NULL,
        disbursement_introspect ? disbursement_introspect_local_nonprim : NULL,
        authorize_net_transaction_key && !cJSON_IsNull(authorize_net_transaction_key) ? strdup(authorize_net_transaction_key->valuestring) : NULL,
        authorize_net_api_key && !cJSON_IsNull(authorize_net_api_key) ? strdup(authorize_net_api_key->valuestring) : NULL
        );

    return billable_entity_local_var;
end:
    if (contact_info_local_nonprim) {
        contact_info_free(contact_info_local_nonprim);
        contact_info_local_nonprim = NULL;
    }
    if (responsible_local_nonprim) {
        account_free(responsible_local_nonprim);
        responsible_local_nonprim = NULL;
    }
    if (retailersList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, retailersList) {
            retailer_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(retailersList);
        retailersList = NULL;
    }
    if (managersList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, managersList) {
            account_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(managersList);
        managersList = NULL;
    }
    if (categoriesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, categoriesList) {
            category_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(categoriesList);
        categoriesList = NULL;
    }
    if (filtersList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, filtersList) {
            filter_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(filtersList);
        filtersList = NULL;
    }
    if (mediaList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, mediaList) {
            asset_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(mediaList);
        mediaList = NULL;
    }
    if (media_album_local_nonprim) {
        album_free(media_album_local_nonprim);
        media_album_local_nonprim = NULL;
    }
    if (subscription_local_nonprim) {
        subscription_free(subscription_local_nonprim);
        subscription_local_nonprim = NULL;
    }
    if (disbursement_introspect_local_nonprim) {
        third_party_network_free(disbursement_introspect_local_nonprim);
        disbursement_introspect_local_nonprim = NULL;
    }
    return NULL;

}
