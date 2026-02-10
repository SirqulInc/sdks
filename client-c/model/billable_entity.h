/*
 * billable_entity.h
 *
 * 
 */

#ifndef _billable_entity_H_
#define _billable_entity_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct billable_entity_t billable_entity_t;

#include "account.h"
#include "album.h"
#include "asset.h"
#include "category.h"
#include "contact_info.h"
#include "filter.h"
#include "retailer.h"
#include "subscription.h"
#include "third_party_network.h"



typedef struct billable_entity_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    char *name; // string
    struct contact_info_t *contact_info; //model
    struct account_t *responsible; //model
    list_t *retailers; //nonprimitive container
    list_t *managers; //nonprimitive container
    list_t *categories; //nonprimitive container
    list_t *filters; //nonprimitive container
    list_t *media; //nonprimitive container
    struct album_t *media_album; //model
    struct subscription_t *subscription; //model
    struct third_party_network_t *disbursement_introspect; //model
    char *authorize_net_transaction_key; // string
    char *authorize_net_api_key; // string

    int _library_owned; // Is the library responsible for freeing this object?
} billable_entity_t;

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
);

void billable_entity_free(billable_entity_t *billable_entity);

billable_entity_t *billable_entity_parseFromJSON(cJSON *billable_entityJSON);

cJSON *billable_entity_convertToJSON(billable_entity_t *billable_entity);

#endif /* _billable_entity_H_ */

