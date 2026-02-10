/*
 * blob_file.h
 *
 * 
 */

#ifndef _blob_file_H_
#define _blob_file_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct blob_file_t blob_file_t;

#include "account.h"
#include "application.h"



typedef struct blob_file_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    struct account_t *owner; //model
    struct application_t *application; //model
    char *folder_uri; // string
    char *file_name; // string
    list_t *file; //primitive container

    int _library_owned; // Is the library responsible for freeing this object?
} blob_file_t;

__attribute__((deprecated)) blob_file_t *blob_file_create(
    long id,
    int active,
    int valid,
    account_t *owner,
    application_t *application,
    char *folder_uri,
    char *file_name,
    list_t *file
);

void blob_file_free(blob_file_t *blob_file);

blob_file_t *blob_file_parseFromJSON(cJSON *blob_fileJSON);

cJSON *blob_file_convertToJSON(blob_file_t *blob_file);

#endif /* _blob_file_H_ */

