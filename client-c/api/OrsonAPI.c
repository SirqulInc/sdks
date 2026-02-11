#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "OrsonAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21


// Add Movie
//
// Add a movie to be indexed for Topics. Indexing a movie analyses the content and incorporates it into the topics model for future /topics calls. This does not store the movie file long-term.
//
orson_ai_add_movie_response_t*
OrsonAPI_addMovie(apiClient_t *apiClient, long accountId, char *movieName, char *thirdPartyAccountId, char *tags, binary_t* file, char *url, char *callback)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/orson/ai/addMovie");





    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }

    // query parameters
    char *keyQuery_thirdPartyAccountId = NULL;
    char * valueQuery_thirdPartyAccountId = NULL;
    keyValuePair_t *keyPairQuery_thirdPartyAccountId = 0;
    if (thirdPartyAccountId)
    {
        keyQuery_thirdPartyAccountId = strdup("thirdPartyAccountId");
        valueQuery_thirdPartyAccountId = strdup((thirdPartyAccountId));
        keyPairQuery_thirdPartyAccountId = keyValuePair_create(keyQuery_thirdPartyAccountId, valueQuery_thirdPartyAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_thirdPartyAccountId);
    }

    // query parameters
    char *keyQuery_tags = NULL;
    char * valueQuery_tags = NULL;
    keyValuePair_t *keyPairQuery_tags = 0;
    if (tags)
    {
        keyQuery_tags = strdup("tags");
        valueQuery_tags = strdup((tags));
        keyPairQuery_tags = keyValuePair_create(keyQuery_tags, valueQuery_tags);
        list_addElement(localVarQueryParameters,keyPairQuery_tags);
    }

    // query parameters
    char *keyQuery_movieName = NULL;
    char * valueQuery_movieName = NULL;
    keyValuePair_t *keyPairQuery_movieName = 0;
    if (movieName)
    {
        keyQuery_movieName = strdup("movieName");
        valueQuery_movieName = strdup((movieName));
        keyPairQuery_movieName = keyValuePair_create(keyQuery_movieName, valueQuery_movieName);
        list_addElement(localVarQueryParameters,keyPairQuery_movieName);
    }

    // query parameters
    char *keyQuery_file = NULL;
    binary_t* valueQuery_file ;
    keyValuePair_t *keyPairQuery_file = 0;
    if (file)
    {
        keyQuery_file = strdup("file");
        valueQuery_file = (file);
        keyPairQuery_file = keyValuePair_create(keyQuery_file, &valueQuery_file);
        list_addElement(localVarQueryParameters,keyPairQuery_file);
    }

    // query parameters
    char *keyQuery_url = NULL;
    char * valueQuery_url = NULL;
    keyValuePair_t *keyPairQuery_url = 0;
    if (url)
    {
        keyQuery_url = strdup("url");
        valueQuery_url = strdup((url));
        keyPairQuery_url = keyValuePair_create(keyQuery_url, valueQuery_url);
        list_addElement(localVarQueryParameters,keyPairQuery_url);
    }

    // query parameters
    char *keyQuery_callback = NULL;
    char * valueQuery_callback = NULL;
    keyValuePair_t *keyPairQuery_callback = 0;
    if (callback)
    {
        keyQuery_callback = strdup("callback");
        valueQuery_callback = strdup((callback));
        keyPairQuery_callback = keyValuePair_create(keyQuery_callback, valueQuery_callback);
        list_addElement(localVarQueryParameters,keyPairQuery_callback);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "POST");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    orson_ai_add_movie_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *OrsonAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = orson_ai_add_movie_response_parseFromJSON(OrsonAPIlocalVarJSON);
        cJSON_Delete(OrsonAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_thirdPartyAccountId){
        free(keyQuery_thirdPartyAccountId);
        keyQuery_thirdPartyAccountId = NULL;
    }
    if(valueQuery_thirdPartyAccountId){
        free(valueQuery_thirdPartyAccountId);
        valueQuery_thirdPartyAccountId = NULL;
    }
    if(keyPairQuery_thirdPartyAccountId){
        keyValuePair_free(keyPairQuery_thirdPartyAccountId);
        keyPairQuery_thirdPartyAccountId = NULL;
    }
    if(keyQuery_tags){
        free(keyQuery_tags);
        keyQuery_tags = NULL;
    }
    if(valueQuery_tags){
        free(valueQuery_tags);
        valueQuery_tags = NULL;
    }
    if(keyPairQuery_tags){
        keyValuePair_free(keyPairQuery_tags);
        keyPairQuery_tags = NULL;
    }
    if(keyQuery_movieName){
        free(keyQuery_movieName);
        keyQuery_movieName = NULL;
    }
    if(valueQuery_movieName){
        free(valueQuery_movieName);
        valueQuery_movieName = NULL;
    }
    if(keyPairQuery_movieName){
        keyValuePair_free(keyPairQuery_movieName);
        keyPairQuery_movieName = NULL;
    }
    if(keyQuery_file){
        free(keyQuery_file);
        keyQuery_file = NULL;
    }
    if(keyPairQuery_file){
        keyValuePair_free(keyPairQuery_file);
        keyPairQuery_file = NULL;
    }
    if(keyQuery_url){
        free(keyQuery_url);
        keyQuery_url = NULL;
    }
    if(valueQuery_url){
        free(valueQuery_url);
        valueQuery_url = NULL;
    }
    if(keyPairQuery_url){
        keyValuePair_free(keyPairQuery_url);
        keyPairQuery_url = NULL;
    }
    if(keyQuery_callback){
        free(keyQuery_callback);
        keyQuery_callback = NULL;
    }
    if(valueQuery_callback){
        free(valueQuery_callback);
        valueQuery_callback = NULL;
    }
    if(keyPairQuery_callback){
        keyValuePair_free(keyPairQuery_callback);
        keyPairQuery_callback = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Docs
//
// Takes in a text string representing one or more sentences and it returns a list of documents which are related to the provided document.
//
orson_ai_proto_response_t*
OrsonAPI_aiDocs(apiClient_t *apiClient, long accountId, char *doc, int *return_topics, int *limit, int *offset)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/orson/ai/docs");





    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }

    // query parameters
    char *keyQuery_doc = NULL;
    char * valueQuery_doc = NULL;
    keyValuePair_t *keyPairQuery_doc = 0;
    if (doc)
    {
        keyQuery_doc = strdup("doc");
        valueQuery_doc = strdup((doc));
        keyPairQuery_doc = keyValuePair_create(keyQuery_doc, valueQuery_doc);
        list_addElement(localVarQueryParameters,keyPairQuery_doc);
    }

    // query parameters
    char *keyQuery_return_topics = NULL;
    char * valueQuery_return_topics = NULL;
    keyValuePair_t *keyPairQuery_return_topics = 0;
    if (return_topics)
    {
        keyQuery_return_topics = strdup("return_topics");
        valueQuery_return_topics = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_return_topics, MAX_NUMBER_LENGTH, "%d", *return_topics);
        keyPairQuery_return_topics = keyValuePair_create(keyQuery_return_topics, valueQuery_return_topics);
        list_addElement(localVarQueryParameters,keyPairQuery_return_topics);
    }

    // query parameters
    char *keyQuery_limit = NULL;
    char * valueQuery_limit = NULL;
    keyValuePair_t *keyPairQuery_limit = 0;
    if (limit)
    {
        keyQuery_limit = strdup("limit");
        valueQuery_limit = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_limit, MAX_NUMBER_LENGTH, "%d", *limit);
        keyPairQuery_limit = keyValuePair_create(keyQuery_limit, valueQuery_limit);
        list_addElement(localVarQueryParameters,keyPairQuery_limit);
    }

    // query parameters
    char *keyQuery_offset = NULL;
    char * valueQuery_offset = NULL;
    keyValuePair_t *keyPairQuery_offset = 0;
    if (offset)
    {
        keyQuery_offset = strdup("offset");
        valueQuery_offset = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_offset, MAX_NUMBER_LENGTH, "%d", *offset);
        keyPairQuery_offset = keyValuePair_create(keyQuery_offset, valueQuery_offset);
        list_addElement(localVarQueryParameters,keyPairQuery_offset);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    orson_ai_proto_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *OrsonAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = orson_ai_proto_response_parseFromJSON(OrsonAPIlocalVarJSON);
        cJSON_Delete(OrsonAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_doc){
        free(keyQuery_doc);
        keyQuery_doc = NULL;
    }
    if(valueQuery_doc){
        free(valueQuery_doc);
        valueQuery_doc = NULL;
    }
    if(keyPairQuery_doc){
        keyValuePair_free(keyPairQuery_doc);
        keyPairQuery_doc = NULL;
    }
    if(keyQuery_return_topics){
        free(keyQuery_return_topics);
        keyQuery_return_topics = NULL;
    }
    if(valueQuery_return_topics){
        free(valueQuery_return_topics);
        valueQuery_return_topics = NULL;
    }
    if(keyPairQuery_return_topics){
        keyValuePair_free(keyPairQuery_return_topics);
        keyPairQuery_return_topics = NULL;
    }
    if(keyQuery_limit){
        free(keyQuery_limit);
        keyQuery_limit = NULL;
    }
    if(valueQuery_limit){
        free(valueQuery_limit);
        valueQuery_limit = NULL;
    }
    if(keyPairQuery_limit){
        keyValuePair_free(keyPairQuery_limit);
        keyPairQuery_limit = NULL;
    }
    if(keyQuery_offset){
        free(keyQuery_offset);
        keyQuery_offset = NULL;
    }
    if(valueQuery_offset){
        free(valueQuery_offset);
        valueQuery_offset = NULL;
    }
    if(keyPairQuery_offset){
        keyValuePair_free(keyPairQuery_offset);
        keyPairQuery_offset = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Find images
//
// Returns a list of URIs of images that match the text.
//
orson_ai_proto_response_t*
OrsonAPI_aiFindImages(apiClient_t *apiClient, long accountId, char *text, char *parse_flag, char *fetch_flag, char *size)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/orson/ai/img");





    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }

    // query parameters
    char *keyQuery_text = NULL;
    char * valueQuery_text = NULL;
    keyValuePair_t *keyPairQuery_text = 0;
    if (text)
    {
        keyQuery_text = strdup("text");
        valueQuery_text = strdup((text));
        keyPairQuery_text = keyValuePair_create(keyQuery_text, valueQuery_text);
        list_addElement(localVarQueryParameters,keyPairQuery_text);
    }

    // query parameters
    char *keyQuery_parse_flag = NULL;
    char * valueQuery_parse_flag = NULL;
    keyValuePair_t *keyPairQuery_parse_flag = 0;
    if (parse_flag)
    {
        keyQuery_parse_flag = strdup("parse_flag");
        valueQuery_parse_flag = strdup((parse_flag));
        keyPairQuery_parse_flag = keyValuePair_create(keyQuery_parse_flag, valueQuery_parse_flag);
        list_addElement(localVarQueryParameters,keyPairQuery_parse_flag);
    }

    // query parameters
    char *keyQuery_fetch_flag = NULL;
    char * valueQuery_fetch_flag = NULL;
    keyValuePair_t *keyPairQuery_fetch_flag = 0;
    if (fetch_flag)
    {
        keyQuery_fetch_flag = strdup("fetch_flag");
        valueQuery_fetch_flag = strdup((fetch_flag));
        keyPairQuery_fetch_flag = keyValuePair_create(keyQuery_fetch_flag, valueQuery_fetch_flag);
        list_addElement(localVarQueryParameters,keyPairQuery_fetch_flag);
    }

    // query parameters
    char *keyQuery_size = NULL;
    char * valueQuery_size = NULL;
    keyValuePair_t *keyPairQuery_size = 0;
    if (size)
    {
        keyQuery_size = strdup("size");
        valueQuery_size = strdup((size));
        keyPairQuery_size = keyValuePair_create(keyQuery_size, valueQuery_size);
        list_addElement(localVarQueryParameters,keyPairQuery_size);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    orson_ai_proto_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *OrsonAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = orson_ai_proto_response_parseFromJSON(OrsonAPIlocalVarJSON);
        cJSON_Delete(OrsonAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_text){
        free(keyQuery_text);
        keyQuery_text = NULL;
    }
    if(valueQuery_text){
        free(valueQuery_text);
        valueQuery_text = NULL;
    }
    if(keyPairQuery_text){
        keyValuePair_free(keyPairQuery_text);
        keyPairQuery_text = NULL;
    }
    if(keyQuery_parse_flag){
        free(keyQuery_parse_flag);
        keyQuery_parse_flag = NULL;
    }
    if(valueQuery_parse_flag){
        free(valueQuery_parse_flag);
        valueQuery_parse_flag = NULL;
    }
    if(keyPairQuery_parse_flag){
        keyValuePair_free(keyPairQuery_parse_flag);
        keyPairQuery_parse_flag = NULL;
    }
    if(keyQuery_fetch_flag){
        free(keyQuery_fetch_flag);
        keyQuery_fetch_flag = NULL;
    }
    if(valueQuery_fetch_flag){
        free(valueQuery_fetch_flag);
        valueQuery_fetch_flag = NULL;
    }
    if(keyPairQuery_fetch_flag){
        keyValuePair_free(keyPairQuery_fetch_flag);
        keyPairQuery_fetch_flag = NULL;
    }
    if(keyQuery_size){
        free(keyQuery_size);
        keyQuery_size = NULL;
    }
    if(valueQuery_size){
        free(valueQuery_size);
        valueQuery_size = NULL;
    }
    if(keyPairQuery_size){
        keyValuePair_free(keyPairQuery_size);
        keyPairQuery_size = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Tags
//
// Search the tags column of user provided tags using this endpoint.
//
orson_ai_proto_response_t*
OrsonAPI_aiTags(apiClient_t *apiClient, long accountId, char *tags, char *conditional, int *limit, int *offset)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/orson/ai/tags");





    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }

    // query parameters
    char *keyQuery_tags = NULL;
    char * valueQuery_tags = NULL;
    keyValuePair_t *keyPairQuery_tags = 0;
    if (tags)
    {
        keyQuery_tags = strdup("tags");
        valueQuery_tags = strdup((tags));
        keyPairQuery_tags = keyValuePair_create(keyQuery_tags, valueQuery_tags);
        list_addElement(localVarQueryParameters,keyPairQuery_tags);
    }

    // query parameters
    char *keyQuery_conditional = NULL;
    char * valueQuery_conditional = NULL;
    keyValuePair_t *keyPairQuery_conditional = 0;
    if (conditional)
    {
        keyQuery_conditional = strdup("conditional");
        valueQuery_conditional = strdup((conditional));
        keyPairQuery_conditional = keyValuePair_create(keyQuery_conditional, valueQuery_conditional);
        list_addElement(localVarQueryParameters,keyPairQuery_conditional);
    }

    // query parameters
    char *keyQuery_limit = NULL;
    char * valueQuery_limit = NULL;
    keyValuePair_t *keyPairQuery_limit = 0;
    if (limit)
    {
        keyQuery_limit = strdup("limit");
        valueQuery_limit = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_limit, MAX_NUMBER_LENGTH, "%d", *limit);
        keyPairQuery_limit = keyValuePair_create(keyQuery_limit, valueQuery_limit);
        list_addElement(localVarQueryParameters,keyPairQuery_limit);
    }

    // query parameters
    char *keyQuery_offset = NULL;
    char * valueQuery_offset = NULL;
    keyValuePair_t *keyPairQuery_offset = 0;
    if (offset)
    {
        keyQuery_offset = strdup("offset");
        valueQuery_offset = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_offset, MAX_NUMBER_LENGTH, "%d", *offset);
        keyPairQuery_offset = keyValuePair_create(keyQuery_offset, valueQuery_offset);
        list_addElement(localVarQueryParameters,keyPairQuery_offset);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    orson_ai_proto_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *OrsonAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = orson_ai_proto_response_parseFromJSON(OrsonAPIlocalVarJSON);
        cJSON_Delete(OrsonAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_tags){
        free(keyQuery_tags);
        keyQuery_tags = NULL;
    }
    if(valueQuery_tags){
        free(valueQuery_tags);
        valueQuery_tags = NULL;
    }
    if(keyPairQuery_tags){
        keyValuePair_free(keyPairQuery_tags);
        keyPairQuery_tags = NULL;
    }
    if(keyQuery_conditional){
        free(keyQuery_conditional);
        keyQuery_conditional = NULL;
    }
    if(valueQuery_conditional){
        free(valueQuery_conditional);
        valueQuery_conditional = NULL;
    }
    if(keyPairQuery_conditional){
        keyValuePair_free(keyPairQuery_conditional);
        keyPairQuery_conditional = NULL;
    }
    if(keyQuery_limit){
        free(keyQuery_limit);
        keyQuery_limit = NULL;
    }
    if(valueQuery_limit){
        free(valueQuery_limit);
        valueQuery_limit = NULL;
    }
    if(keyPairQuery_limit){
        keyValuePair_free(keyPairQuery_limit);
        keyPairQuery_limit = NULL;
    }
    if(keyQuery_offset){
        free(keyQuery_offset);
        keyQuery_offset = NULL;
    }
    if(valueQuery_offset){
        free(valueQuery_offset);
        valueQuery_offset = NULL;
    }
    if(keyPairQuery_offset){
        keyValuePair_free(keyPairQuery_offset);
        keyPairQuery_offset = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Text
//
// Search the movie text column of movie text using this endpoint.
//
orson_ai_proto_response_t*
OrsonAPI_aiText(apiClient_t *apiClient, long accountId, char *terms, char *conditional, int *limit, int *offset)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/orson/ai/text");





    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }

    // query parameters
    char *keyQuery_terms = NULL;
    char * valueQuery_terms = NULL;
    keyValuePair_t *keyPairQuery_terms = 0;
    if (terms)
    {
        keyQuery_terms = strdup("terms");
        valueQuery_terms = strdup((terms));
        keyPairQuery_terms = keyValuePair_create(keyQuery_terms, valueQuery_terms);
        list_addElement(localVarQueryParameters,keyPairQuery_terms);
    }

    // query parameters
    char *keyQuery_conditional = NULL;
    char * valueQuery_conditional = NULL;
    keyValuePair_t *keyPairQuery_conditional = 0;
    if (conditional)
    {
        keyQuery_conditional = strdup("conditional");
        valueQuery_conditional = strdup((conditional));
        keyPairQuery_conditional = keyValuePair_create(keyQuery_conditional, valueQuery_conditional);
        list_addElement(localVarQueryParameters,keyPairQuery_conditional);
    }

    // query parameters
    char *keyQuery_limit = NULL;
    char * valueQuery_limit = NULL;
    keyValuePair_t *keyPairQuery_limit = 0;
    if (limit)
    {
        keyQuery_limit = strdup("limit");
        valueQuery_limit = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_limit, MAX_NUMBER_LENGTH, "%d", *limit);
        keyPairQuery_limit = keyValuePair_create(keyQuery_limit, valueQuery_limit);
        list_addElement(localVarQueryParameters,keyPairQuery_limit);
    }

    // query parameters
    char *keyQuery_offset = NULL;
    char * valueQuery_offset = NULL;
    keyValuePair_t *keyPairQuery_offset = 0;
    if (offset)
    {
        keyQuery_offset = strdup("offset");
        valueQuery_offset = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_offset, MAX_NUMBER_LENGTH, "%d", *offset);
        keyPairQuery_offset = keyValuePair_create(keyQuery_offset, valueQuery_offset);
        list_addElement(localVarQueryParameters,keyPairQuery_offset);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    orson_ai_proto_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *OrsonAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = orson_ai_proto_response_parseFromJSON(OrsonAPIlocalVarJSON);
        cJSON_Delete(OrsonAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_terms){
        free(keyQuery_terms);
        keyQuery_terms = NULL;
    }
    if(valueQuery_terms){
        free(valueQuery_terms);
        valueQuery_terms = NULL;
    }
    if(keyPairQuery_terms){
        keyValuePair_free(keyPairQuery_terms);
        keyPairQuery_terms = NULL;
    }
    if(keyQuery_conditional){
        free(keyQuery_conditional);
        keyQuery_conditional = NULL;
    }
    if(valueQuery_conditional){
        free(valueQuery_conditional);
        valueQuery_conditional = NULL;
    }
    if(keyPairQuery_conditional){
        keyValuePair_free(keyPairQuery_conditional);
        keyPairQuery_conditional = NULL;
    }
    if(keyQuery_limit){
        free(keyQuery_limit);
        keyQuery_limit = NULL;
    }
    if(valueQuery_limit){
        free(valueQuery_limit);
        valueQuery_limit = NULL;
    }
    if(keyPairQuery_limit){
        keyValuePair_free(keyPairQuery_limit);
        keyPairQuery_limit = NULL;
    }
    if(keyQuery_offset){
        free(keyQuery_offset);
        keyQuery_offset = NULL;
    }
    if(valueQuery_offset){
        free(valueQuery_offset);
        valueQuery_offset = NULL;
    }
    if(keyPairQuery_offset){
        keyValuePair_free(keyPairQuery_offset);
        keyPairQuery_offset = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Batch Analysis
//
// Run several types of analysis on an audio or video file in a single API call, instead of calling several operations for the same file..
//
orson_ai_batch_response_t*
OrsonAPI_batch(apiClient_t *apiClient, long accountId, char *thirdPartyAccountId, int *limit, char *operations, binary_t* file, char *url, char *callback)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/orson/ai/batch");





    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }

    // query parameters
    char *keyQuery_thirdPartyAccountId = NULL;
    char * valueQuery_thirdPartyAccountId = NULL;
    keyValuePair_t *keyPairQuery_thirdPartyAccountId = 0;
    if (thirdPartyAccountId)
    {
        keyQuery_thirdPartyAccountId = strdup("thirdPartyAccountId");
        valueQuery_thirdPartyAccountId = strdup((thirdPartyAccountId));
        keyPairQuery_thirdPartyAccountId = keyValuePair_create(keyQuery_thirdPartyAccountId, valueQuery_thirdPartyAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_thirdPartyAccountId);
    }

    // query parameters
    char *keyQuery_limit = NULL;
    char * valueQuery_limit = NULL;
    keyValuePair_t *keyPairQuery_limit = 0;
    if (limit)
    {
        keyQuery_limit = strdup("limit");
        valueQuery_limit = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_limit, MAX_NUMBER_LENGTH, "%d", *limit);
        keyPairQuery_limit = keyValuePair_create(keyQuery_limit, valueQuery_limit);
        list_addElement(localVarQueryParameters,keyPairQuery_limit);
    }

    // query parameters
    char *keyQuery_operations = NULL;
    char * valueQuery_operations = NULL;
    keyValuePair_t *keyPairQuery_operations = 0;
    if (operations)
    {
        keyQuery_operations = strdup("operations");
        valueQuery_operations = strdup((operations));
        keyPairQuery_operations = keyValuePair_create(keyQuery_operations, valueQuery_operations);
        list_addElement(localVarQueryParameters,keyPairQuery_operations);
    }

    // query parameters
    char *keyQuery_file = NULL;
    binary_t* valueQuery_file ;
    keyValuePair_t *keyPairQuery_file = 0;
    if (file)
    {
        keyQuery_file = strdup("file");
        valueQuery_file = (file);
        keyPairQuery_file = keyValuePair_create(keyQuery_file, &valueQuery_file);
        list_addElement(localVarQueryParameters,keyPairQuery_file);
    }

    // query parameters
    char *keyQuery_url = NULL;
    char * valueQuery_url = NULL;
    keyValuePair_t *keyPairQuery_url = 0;
    if (url)
    {
        keyQuery_url = strdup("url");
        valueQuery_url = strdup((url));
        keyPairQuery_url = keyValuePair_create(keyQuery_url, valueQuery_url);
        list_addElement(localVarQueryParameters,keyPairQuery_url);
    }

    // query parameters
    char *keyQuery_callback = NULL;
    char * valueQuery_callback = NULL;
    keyValuePair_t *keyPairQuery_callback = 0;
    if (callback)
    {
        keyQuery_callback = strdup("callback");
        valueQuery_callback = strdup((callback));
        keyPairQuery_callback = keyValuePair_create(keyQuery_callback, valueQuery_callback);
        list_addElement(localVarQueryParameters,keyPairQuery_callback);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "POST");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    orson_ai_batch_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *OrsonAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = orson_ai_batch_response_parseFromJSON(OrsonAPIlocalVarJSON);
        cJSON_Delete(OrsonAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_thirdPartyAccountId){
        free(keyQuery_thirdPartyAccountId);
        keyQuery_thirdPartyAccountId = NULL;
    }
    if(valueQuery_thirdPartyAccountId){
        free(valueQuery_thirdPartyAccountId);
        valueQuery_thirdPartyAccountId = NULL;
    }
    if(keyPairQuery_thirdPartyAccountId){
        keyValuePair_free(keyPairQuery_thirdPartyAccountId);
        keyPairQuery_thirdPartyAccountId = NULL;
    }
    if(keyQuery_limit){
        free(keyQuery_limit);
        keyQuery_limit = NULL;
    }
    if(valueQuery_limit){
        free(valueQuery_limit);
        valueQuery_limit = NULL;
    }
    if(keyPairQuery_limit){
        keyValuePair_free(keyPairQuery_limit);
        keyPairQuery_limit = NULL;
    }
    if(keyQuery_operations){
        free(keyQuery_operations);
        keyQuery_operations = NULL;
    }
    if(valueQuery_operations){
        free(valueQuery_operations);
        valueQuery_operations = NULL;
    }
    if(keyPairQuery_operations){
        keyValuePair_free(keyPairQuery_operations);
        keyPairQuery_operations = NULL;
    }
    if(keyQuery_file){
        free(keyQuery_file);
        keyQuery_file = NULL;
    }
    if(keyPairQuery_file){
        keyValuePair_free(keyPairQuery_file);
        keyPairQuery_file = NULL;
    }
    if(keyQuery_url){
        free(keyQuery_url);
        keyQuery_url = NULL;
    }
    if(valueQuery_url){
        free(valueQuery_url);
        valueQuery_url = NULL;
    }
    if(keyPairQuery_url){
        keyValuePair_free(keyPairQuery_url);
        keyPairQuery_url = NULL;
    }
    if(keyQuery_callback){
        free(keyQuery_callback);
        keyQuery_callback = NULL;
    }
    if(valueQuery_callback){
        free(valueQuery_callback);
        valueQuery_callback = NULL;
    }
    if(keyPairQuery_callback){
        keyValuePair_free(keyPairQuery_callback);
        keyPairQuery_callback = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Creates an instant episode
//
// Creates an instant episode for a given StoryStrip by providing all necessary inputs, interview recordings, and pictures, kicking off a render immediately.
//
orson_episode_response_t*
OrsonAPI_createInstantEpisode(apiClient_t *apiClient, long accountId, char *data)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/orson/stories/episodes/instant");





    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }

    // query parameters
    char *keyQuery_data = NULL;
    char * valueQuery_data = NULL;
    keyValuePair_t *keyPairQuery_data = 0;
    if (data)
    {
        keyQuery_data = strdup("data");
        valueQuery_data = strdup((data));
        keyPairQuery_data = keyValuePair_create(keyQuery_data, valueQuery_data);
        list_addElement(localVarQueryParameters,keyPairQuery_data);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "POST");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    orson_episode_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *OrsonAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = orson_episode_response_parseFromJSON(OrsonAPIlocalVarJSON);
        cJSON_Delete(OrsonAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_data){
        free(keyQuery_data);
        keyQuery_data = NULL;
    }
    if(valueQuery_data){
        free(valueQuery_data);
        valueQuery_data = NULL;
    }
    if(keyPairQuery_data){
        keyValuePair_free(keyPairQuery_data);
        keyPairQuery_data = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Create VoiceCanvas images
//
// Create VoiceCanvas images for provided text, file upload, or file URL
//
orson_ai_voice_canvas_response_t*
OrsonAPI_createVoiceCanvas(apiClient_t *apiClient, long accountId, char *dimensions, char *thirdPartyAccountId, char *text, binary_t* file, char *url, int *parseFlag, int *fetchFlag, char *callback)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/orson/ai/voiceCanvas");





    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }

    // query parameters
    char *keyQuery_thirdPartyAccountId = NULL;
    char * valueQuery_thirdPartyAccountId = NULL;
    keyValuePair_t *keyPairQuery_thirdPartyAccountId = 0;
    if (thirdPartyAccountId)
    {
        keyQuery_thirdPartyAccountId = strdup("thirdPartyAccountId");
        valueQuery_thirdPartyAccountId = strdup((thirdPartyAccountId));
        keyPairQuery_thirdPartyAccountId = keyValuePair_create(keyQuery_thirdPartyAccountId, valueQuery_thirdPartyAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_thirdPartyAccountId);
    }

    // query parameters
    char *keyQuery_dimensions = NULL;
    char * valueQuery_dimensions = NULL;
    keyValuePair_t *keyPairQuery_dimensions = 0;
    if (dimensions)
    {
        keyQuery_dimensions = strdup("dimensions");
        valueQuery_dimensions = strdup((dimensions));
        keyPairQuery_dimensions = keyValuePair_create(keyQuery_dimensions, valueQuery_dimensions);
        list_addElement(localVarQueryParameters,keyPairQuery_dimensions);
    }

    // query parameters
    char *keyQuery_text = NULL;
    char * valueQuery_text = NULL;
    keyValuePair_t *keyPairQuery_text = 0;
    if (text)
    {
        keyQuery_text = strdup("text");
        valueQuery_text = strdup((text));
        keyPairQuery_text = keyValuePair_create(keyQuery_text, valueQuery_text);
        list_addElement(localVarQueryParameters,keyPairQuery_text);
    }

    // query parameters
    char *keyQuery_file = NULL;
    binary_t* valueQuery_file ;
    keyValuePair_t *keyPairQuery_file = 0;
    if (file)
    {
        keyQuery_file = strdup("file");
        valueQuery_file = (file);
        keyPairQuery_file = keyValuePair_create(keyQuery_file, &valueQuery_file);
        list_addElement(localVarQueryParameters,keyPairQuery_file);
    }

    // query parameters
    char *keyQuery_url = NULL;
    char * valueQuery_url = NULL;
    keyValuePair_t *keyPairQuery_url = 0;
    if (url)
    {
        keyQuery_url = strdup("url");
        valueQuery_url = strdup((url));
        keyPairQuery_url = keyValuePair_create(keyQuery_url, valueQuery_url);
        list_addElement(localVarQueryParameters,keyPairQuery_url);
    }

    // query parameters
    char *keyQuery_parseFlag = NULL;
    char * valueQuery_parseFlag = NULL;
    keyValuePair_t *keyPairQuery_parseFlag = 0;
    if (parseFlag)
    {
        keyQuery_parseFlag = strdup("parseFlag");
        valueQuery_parseFlag = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_parseFlag, MAX_NUMBER_LENGTH, "%d", *parseFlag);
        keyPairQuery_parseFlag = keyValuePair_create(keyQuery_parseFlag, valueQuery_parseFlag);
        list_addElement(localVarQueryParameters,keyPairQuery_parseFlag);
    }

    // query parameters
    char *keyQuery_fetchFlag = NULL;
    char * valueQuery_fetchFlag = NULL;
    keyValuePair_t *keyPairQuery_fetchFlag = 0;
    if (fetchFlag)
    {
        keyQuery_fetchFlag = strdup("fetchFlag");
        valueQuery_fetchFlag = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_fetchFlag, MAX_NUMBER_LENGTH, "%d", *fetchFlag);
        keyPairQuery_fetchFlag = keyValuePair_create(keyQuery_fetchFlag, valueQuery_fetchFlag);
        list_addElement(localVarQueryParameters,keyPairQuery_fetchFlag);
    }

    // query parameters
    char *keyQuery_callback = NULL;
    char * valueQuery_callback = NULL;
    keyValuePair_t *keyPairQuery_callback = 0;
    if (callback)
    {
        keyQuery_callback = strdup("callback");
        valueQuery_callback = strdup((callback));
        keyPairQuery_callback = keyValuePair_create(keyQuery_callback, valueQuery_callback);
        list_addElement(localVarQueryParameters,keyPairQuery_callback);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "POST");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    orson_ai_voice_canvas_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *OrsonAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = orson_ai_voice_canvas_response_parseFromJSON(OrsonAPIlocalVarJSON);
        cJSON_Delete(OrsonAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_thirdPartyAccountId){
        free(keyQuery_thirdPartyAccountId);
        keyQuery_thirdPartyAccountId = NULL;
    }
    if(valueQuery_thirdPartyAccountId){
        free(valueQuery_thirdPartyAccountId);
        valueQuery_thirdPartyAccountId = NULL;
    }
    if(keyPairQuery_thirdPartyAccountId){
        keyValuePair_free(keyPairQuery_thirdPartyAccountId);
        keyPairQuery_thirdPartyAccountId = NULL;
    }
    if(keyQuery_dimensions){
        free(keyQuery_dimensions);
        keyQuery_dimensions = NULL;
    }
    if(valueQuery_dimensions){
        free(valueQuery_dimensions);
        valueQuery_dimensions = NULL;
    }
    if(keyPairQuery_dimensions){
        keyValuePair_free(keyPairQuery_dimensions);
        keyPairQuery_dimensions = NULL;
    }
    if(keyQuery_text){
        free(keyQuery_text);
        keyQuery_text = NULL;
    }
    if(valueQuery_text){
        free(valueQuery_text);
        valueQuery_text = NULL;
    }
    if(keyPairQuery_text){
        keyValuePair_free(keyPairQuery_text);
        keyPairQuery_text = NULL;
    }
    if(keyQuery_file){
        free(keyQuery_file);
        keyQuery_file = NULL;
    }
    if(keyPairQuery_file){
        keyValuePair_free(keyPairQuery_file);
        keyPairQuery_file = NULL;
    }
    if(keyQuery_url){
        free(keyQuery_url);
        keyQuery_url = NULL;
    }
    if(valueQuery_url){
        free(valueQuery_url);
        valueQuery_url = NULL;
    }
    if(keyPairQuery_url){
        keyValuePair_free(keyPairQuery_url);
        keyPairQuery_url = NULL;
    }
    if(keyQuery_parseFlag){
        free(keyQuery_parseFlag);
        keyQuery_parseFlag = NULL;
    }
    if(valueQuery_parseFlag){
        free(valueQuery_parseFlag);
        valueQuery_parseFlag = NULL;
    }
    if(keyPairQuery_parseFlag){
        keyValuePair_free(keyPairQuery_parseFlag);
        keyPairQuery_parseFlag = NULL;
    }
    if(keyQuery_fetchFlag){
        free(keyQuery_fetchFlag);
        keyQuery_fetchFlag = NULL;
    }
    if(valueQuery_fetchFlag){
        free(valueQuery_fetchFlag);
        valueQuery_fetchFlag = NULL;
    }
    if(keyPairQuery_fetchFlag){
        keyValuePair_free(keyPairQuery_fetchFlag);
        keyPairQuery_fetchFlag = NULL;
    }
    if(keyQuery_callback){
        free(keyQuery_callback);
        keyQuery_callback = NULL;
    }
    if(valueQuery_callback){
        free(valueQuery_callback);
        valueQuery_callback = NULL;
    }
    if(keyPairQuery_callback){
        keyValuePair_free(keyPairQuery_callback);
        keyPairQuery_callback = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Detect emotions
//
// Detects emotions in an audio or video recording.
//
orson_ai_emotions_response_t*
OrsonAPI_emotion(apiClient_t *apiClient, long accountId, char *thirdPartyAccountId, binary_t* file, char *url, char *callback)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/orson/ai/emotion");





    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }

    // query parameters
    char *keyQuery_thirdPartyAccountId = NULL;
    char * valueQuery_thirdPartyAccountId = NULL;
    keyValuePair_t *keyPairQuery_thirdPartyAccountId = 0;
    if (thirdPartyAccountId)
    {
        keyQuery_thirdPartyAccountId = strdup("thirdPartyAccountId");
        valueQuery_thirdPartyAccountId = strdup((thirdPartyAccountId));
        keyPairQuery_thirdPartyAccountId = keyValuePair_create(keyQuery_thirdPartyAccountId, valueQuery_thirdPartyAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_thirdPartyAccountId);
    }

    // query parameters
    char *keyQuery_file = NULL;
    binary_t* valueQuery_file ;
    keyValuePair_t *keyPairQuery_file = 0;
    if (file)
    {
        keyQuery_file = strdup("file");
        valueQuery_file = (file);
        keyPairQuery_file = keyValuePair_create(keyQuery_file, &valueQuery_file);
        list_addElement(localVarQueryParameters,keyPairQuery_file);
    }

    // query parameters
    char *keyQuery_url = NULL;
    char * valueQuery_url = NULL;
    keyValuePair_t *keyPairQuery_url = 0;
    if (url)
    {
        keyQuery_url = strdup("url");
        valueQuery_url = strdup((url));
        keyPairQuery_url = keyValuePair_create(keyQuery_url, valueQuery_url);
        list_addElement(localVarQueryParameters,keyPairQuery_url);
    }

    // query parameters
    char *keyQuery_callback = NULL;
    char * valueQuery_callback = NULL;
    keyValuePair_t *keyPairQuery_callback = 0;
    if (callback)
    {
        keyQuery_callback = strdup("callback");
        valueQuery_callback = strdup((callback));
        keyPairQuery_callback = keyValuePair_create(keyQuery_callback, valueQuery_callback);
        list_addElement(localVarQueryParameters,keyPairQuery_callback);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "POST");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    orson_ai_emotions_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *OrsonAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = orson_ai_emotions_response_parseFromJSON(OrsonAPIlocalVarJSON);
        cJSON_Delete(OrsonAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_thirdPartyAccountId){
        free(keyQuery_thirdPartyAccountId);
        keyQuery_thirdPartyAccountId = NULL;
    }
    if(valueQuery_thirdPartyAccountId){
        free(valueQuery_thirdPartyAccountId);
        valueQuery_thirdPartyAccountId = NULL;
    }
    if(keyPairQuery_thirdPartyAccountId){
        keyValuePair_free(keyPairQuery_thirdPartyAccountId);
        keyPairQuery_thirdPartyAccountId = NULL;
    }
    if(keyQuery_file){
        free(keyQuery_file);
        keyQuery_file = NULL;
    }
    if(keyPairQuery_file){
        keyValuePair_free(keyPairQuery_file);
        keyPairQuery_file = NULL;
    }
    if(keyQuery_url){
        free(keyQuery_url);
        keyQuery_url = NULL;
    }
    if(valueQuery_url){
        free(valueQuery_url);
        valueQuery_url = NULL;
    }
    if(keyPairQuery_url){
        keyValuePair_free(keyPairQuery_url);
        keyPairQuery_url = NULL;
    }
    if(keyQuery_callback){
        free(keyQuery_callback);
        keyQuery_callback = NULL;
    }
    if(valueQuery_callback){
        free(valueQuery_callback);
        valueQuery_callback = NULL;
    }
    if(keyPairQuery_callback){
        keyValuePair_free(keyPairQuery_callback);
        keyPairQuery_callback = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Add Movie Result
//
// Get the result of an in progress Add Movie request from an earlier POST.
//
orson_ai_add_movie_response_t*
OrsonAPI_getAddMovieResult(apiClient_t *apiClient, char *requestId, long accountId)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/orson/ai/addMovie/{requestId}");

    if(!requestId)
        goto end;


    // Path Params
    long sizeOfPathParams_requestId = strlen(requestId)+3 + sizeof("{ requestId }") - 1;
    if(requestId == NULL) {
        goto end;
    }
    char* localVarToReplace_requestId = malloc(sizeOfPathParams_requestId);
    sprintf(localVarToReplace_requestId, "{%s}", "requestId");

    localVarPath = strReplace(localVarPath, localVarToReplace_requestId, requestId);



    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    orson_ai_add_movie_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *OrsonAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = orson_ai_add_movie_response_parseFromJSON(OrsonAPIlocalVarJSON);
        cJSON_Delete(OrsonAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_requestId);
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Batch Analysis Results
//
// Gets the completed Video Batch results, if done, or an error or status update if not.
//
orson_ai_batch_response_t*
OrsonAPI_getBatch(apiClient_t *apiClient, char *requestId, long accountId)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/orson/ai/batch/{requestId}");

    if(!requestId)
        goto end;


    // Path Params
    long sizeOfPathParams_requestId = strlen(requestId)+3 + sizeof("{ requestId }") - 1;
    if(requestId == NULL) {
        goto end;
    }
    char* localVarToReplace_requestId = malloc(sizeOfPathParams_requestId);
    sprintf(localVarToReplace_requestId, "{%s}", "requestId");

    localVarPath = strReplace(localVarPath, localVarToReplace_requestId, requestId);



    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    orson_ai_batch_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *OrsonAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = orson_ai_batch_response_parseFromJSON(OrsonAPIlocalVarJSON);
        cJSON_Delete(OrsonAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_requestId);
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Emotion Results
//
// Checks the Emotion analysis and returns in progress, results, or error.
//
orson_ai_emotions_response_t*
OrsonAPI_getEmotion(apiClient_t *apiClient, char *requestId, long accountId)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/orson/ai/emotion/{requestId}");

    if(!requestId)
        goto end;


    // Path Params
    long sizeOfPathParams_requestId = strlen(requestId)+3 + sizeof("{ requestId }") - 1;
    if(requestId == NULL) {
        goto end;
    }
    char* localVarToReplace_requestId = malloc(sizeOfPathParams_requestId);
    sprintf(localVarToReplace_requestId, "{%s}", "requestId");

    localVarPath = strReplace(localVarPath, localVarToReplace_requestId, requestId);



    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    orson_ai_emotions_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *OrsonAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = orson_ai_emotions_response_parseFromJSON(OrsonAPIlocalVarJSON);
        cJSON_Delete(OrsonAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_requestId);
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Check episode status
//
// Gets a summary of the episode's status, including any renders.
//
orson_episode_response_t*
OrsonAPI_getEpisodeStatus(apiClient_t *apiClient, long episodeId, long accountId)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/orson/stories/episodes/{episodeId}/status");



    // Path Params
    long sizeOfPathParams_episodeId = sizeof(episodeId)+3 + sizeof("{ episodeId }") - 1;
    if(episodeId == 0){
        goto end;
    }
    char* localVarToReplace_episodeId = malloc(sizeOfPathParams_episodeId);
    snprintf(localVarToReplace_episodeId, sizeOfPathParams_episodeId, "{%s}", "episodeId");

    char localVarBuff_episodeId[256];
    snprintf(localVarBuff_episodeId, sizeof localVarBuff_episodeId, "%ld", episodeId);

    localVarPath = strReplace(localVarPath, localVarToReplace_episodeId, localVarBuff_episodeId);




    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    orson_episode_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *OrsonAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = orson_episode_response_parseFromJSON(OrsonAPIlocalVarJSON);
        cJSON_Delete(OrsonAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_episodeId);
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Check episode status
//
// Gets a summary of the episode's status, including any renders.
//
orson_render_response_t*
OrsonAPI_getRenderStatus(apiClient_t *apiClient, char *renderId, long accountId)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/orson/stories/renders/{renderId}/status");

    if(!renderId)
        goto end;


    // Path Params
    long sizeOfPathParams_renderId = strlen(renderId)+3 + sizeof("{ renderId }") - 1;
    if(renderId == NULL) {
        goto end;
    }
    char* localVarToReplace_renderId = malloc(sizeOfPathParams_renderId);
    sprintf(localVarToReplace_renderId, "{%s}", "renderId");

    localVarPath = strReplace(localVarPath, localVarToReplace_renderId, renderId);



    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    orson_render_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *OrsonAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = orson_render_response_parseFromJSON(OrsonAPIlocalVarJSON);
        cJSON_Delete(OrsonAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_renderId);
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Speach to Text Result
//
// The results of the video transcription and optional translation.
//
orson_ai_stt_response_t*
OrsonAPI_getSTT(apiClient_t *apiClient, char *requestId, long accountId)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/orson/ai/stt/{requestId}");

    if(!requestId)
        goto end;


    // Path Params
    long sizeOfPathParams_requestId = strlen(requestId)+3 + sizeof("{ requestId }") - 1;
    if(requestId == NULL) {
        goto end;
    }
    char* localVarToReplace_requestId = malloc(sizeOfPathParams_requestId);
    sprintf(localVarToReplace_requestId, "{%s}", "requestId");

    localVarPath = strReplace(localVarPath, localVarToReplace_requestId, requestId);



    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    orson_ai_stt_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *OrsonAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = orson_ai_stt_response_parseFromJSON(OrsonAPIlocalVarJSON);
        cJSON_Delete(OrsonAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_requestId);
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Text to Speach Result
//
// Check the status of an in progress Text-to-Speech call or download the result.
//
orson_ai_tts_response_t*
OrsonAPI_getTTS(apiClient_t *apiClient, char *requestId, long accountId)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/orson/ai/tts/{requestId}");

    if(!requestId)
        goto end;


    // Path Params
    long sizeOfPathParams_requestId = strlen(requestId)+3 + sizeof("{ requestId }") - 1;
    if(requestId == NULL) {
        goto end;
    }
    char* localVarToReplace_requestId = malloc(sizeOfPathParams_requestId);
    sprintf(localVarToReplace_requestId, "{%s}", "requestId");

    localVarPath = strReplace(localVarPath, localVarToReplace_requestId, requestId);



    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    orson_ai_tts_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *OrsonAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = orson_ai_tts_response_parseFromJSON(OrsonAPIlocalVarJSON);
        cJSON_Delete(OrsonAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_requestId);
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get TechTune Results
//
// Get a result or continue waiting for a pending request for TechTune analysis.
//
orson_ai_tech_tune_response_t*
OrsonAPI_getTechTune(apiClient_t *apiClient, char *requestId, long accountId)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/orson/ai/techTune/{requestId}");

    if(!requestId)
        goto end;


    // Path Params
    long sizeOfPathParams_requestId = strlen(requestId)+3 + sizeof("{ requestId }") - 1;
    if(requestId == NULL) {
        goto end;
    }
    char* localVarToReplace_requestId = malloc(sizeOfPathParams_requestId);
    sprintf(localVarToReplace_requestId, "{%s}", "requestId");

    localVarPath = strReplace(localVarPath, localVarToReplace_requestId, requestId);



    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    orson_ai_tech_tune_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *OrsonAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = orson_ai_tech_tune_response_parseFromJSON(OrsonAPIlocalVarJSON);
        cJSON_Delete(OrsonAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_requestId);
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Topics
//
// Get the result of an in progress Topics Analysis from an earlier POST.
//
orson_ai_topics_response_t*
OrsonAPI_getTopics(apiClient_t *apiClient, char *requestId, long accountId)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/orson/ai/topics/{requestId}");

    if(!requestId)
        goto end;


    // Path Params
    long sizeOfPathParams_requestId = strlen(requestId)+3 + sizeof("{ requestId }") - 1;
    if(requestId == NULL) {
        goto end;
    }
    char* localVarToReplace_requestId = malloc(sizeOfPathParams_requestId);
    sprintf(localVarToReplace_requestId, "{%s}", "requestId");

    localVarPath = strReplace(localVarPath, localVarToReplace_requestId, requestId);



    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    orson_ai_topics_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *OrsonAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = orson_ai_topics_response_parseFromJSON(OrsonAPIlocalVarJSON);
        cJSON_Delete(OrsonAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_requestId);
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get VoiceCanvas images
//
// Get a result or continue waiting for a pending request for VoiceCanvas Images.
//
orson_ai_voice_canvas_response_t*
OrsonAPI_getVoiceCanvas(apiClient_t *apiClient, char *requestId, long accountId)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/orson/ai/voiceCanvas/{requestId}");

    if(!requestId)
        goto end;


    // Path Params
    long sizeOfPathParams_requestId = strlen(requestId)+3 + sizeof("{ requestId }") - 1;
    if(requestId == NULL) {
        goto end;
    }
    char* localVarToReplace_requestId = malloc(sizeOfPathParams_requestId);
    sprintf(localVarToReplace_requestId, "{%s}", "requestId");

    localVarPath = strReplace(localVarPath, localVarToReplace_requestId, requestId);



    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    orson_ai_voice_canvas_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *OrsonAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = orson_ai_voice_canvas_response_parseFromJSON(OrsonAPIlocalVarJSON);
        cJSON_Delete(OrsonAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_requestId);
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Starts a StoryStitch video render
//
// Starts a StoryStitch video render to produce your final video, returning the status details.
//
orson_render_response_t*
OrsonAPI_startVideoRender(apiClient_t *apiClient, long accountId, char *data)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/orson/stories/renders");





    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }

    // query parameters
    char *keyQuery_data = NULL;
    char * valueQuery_data = NULL;
    keyValuePair_t *keyPairQuery_data = 0;
    if (data)
    {
        keyQuery_data = strdup("data");
        valueQuery_data = strdup((data));
        keyPairQuery_data = keyValuePair_create(keyQuery_data, valueQuery_data);
        list_addElement(localVarQueryParameters,keyPairQuery_data);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "POST");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    orson_render_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *OrsonAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = orson_render_response_parseFromJSON(OrsonAPIlocalVarJSON);
        cJSON_Delete(OrsonAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_data){
        free(keyQuery_data);
        keyQuery_data = NULL;
    }
    if(valueQuery_data){
        free(valueQuery_data);
        valueQuery_data = NULL;
    }
    if(keyPairQuery_data){
        keyValuePair_free(keyPairQuery_data);
        keyPairQuery_data = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Speach to Text
//
// Accepts a movie URL or uploaded file and transcribes it. You also have the option to translate it into one of our additional supported languages.
//
orson_ai_stt_response_t*
OrsonAPI_stt(apiClient_t *apiClient, long accountId, char *thirdPartyAccountId, char *sourceLanguage, char *targetLanguage, binary_t* file, char *url, char *callback)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/orson/ai/stt");





    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }

    // query parameters
    char *keyQuery_thirdPartyAccountId = NULL;
    char * valueQuery_thirdPartyAccountId = NULL;
    keyValuePair_t *keyPairQuery_thirdPartyAccountId = 0;
    if (thirdPartyAccountId)
    {
        keyQuery_thirdPartyAccountId = strdup("thirdPartyAccountId");
        valueQuery_thirdPartyAccountId = strdup((thirdPartyAccountId));
        keyPairQuery_thirdPartyAccountId = keyValuePair_create(keyQuery_thirdPartyAccountId, valueQuery_thirdPartyAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_thirdPartyAccountId);
    }

    // query parameters
    char *keyQuery_sourceLanguage = NULL;
    char * valueQuery_sourceLanguage = NULL;
    keyValuePair_t *keyPairQuery_sourceLanguage = 0;
    if (sourceLanguage)
    {
        keyQuery_sourceLanguage = strdup("sourceLanguage");
        valueQuery_sourceLanguage = strdup((sourceLanguage));
        keyPairQuery_sourceLanguage = keyValuePair_create(keyQuery_sourceLanguage, valueQuery_sourceLanguage);
        list_addElement(localVarQueryParameters,keyPairQuery_sourceLanguage);
    }

    // query parameters
    char *keyQuery_targetLanguage = NULL;
    char * valueQuery_targetLanguage = NULL;
    keyValuePair_t *keyPairQuery_targetLanguage = 0;
    if (targetLanguage)
    {
        keyQuery_targetLanguage = strdup("targetLanguage");
        valueQuery_targetLanguage = strdup((targetLanguage));
        keyPairQuery_targetLanguage = keyValuePair_create(keyQuery_targetLanguage, valueQuery_targetLanguage);
        list_addElement(localVarQueryParameters,keyPairQuery_targetLanguage);
    }

    // query parameters
    char *keyQuery_file = NULL;
    binary_t* valueQuery_file ;
    keyValuePair_t *keyPairQuery_file = 0;
    if (file)
    {
        keyQuery_file = strdup("file");
        valueQuery_file = (file);
        keyPairQuery_file = keyValuePair_create(keyQuery_file, &valueQuery_file);
        list_addElement(localVarQueryParameters,keyPairQuery_file);
    }

    // query parameters
    char *keyQuery_url = NULL;
    char * valueQuery_url = NULL;
    keyValuePair_t *keyPairQuery_url = 0;
    if (url)
    {
        keyQuery_url = strdup("url");
        valueQuery_url = strdup((url));
        keyPairQuery_url = keyValuePair_create(keyQuery_url, valueQuery_url);
        list_addElement(localVarQueryParameters,keyPairQuery_url);
    }

    // query parameters
    char *keyQuery_callback = NULL;
    char * valueQuery_callback = NULL;
    keyValuePair_t *keyPairQuery_callback = 0;
    if (callback)
    {
        keyQuery_callback = strdup("callback");
        valueQuery_callback = strdup((callback));
        keyPairQuery_callback = keyValuePair_create(keyQuery_callback, valueQuery_callback);
        list_addElement(localVarQueryParameters,keyPairQuery_callback);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "POST");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    orson_ai_stt_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *OrsonAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = orson_ai_stt_response_parseFromJSON(OrsonAPIlocalVarJSON);
        cJSON_Delete(OrsonAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_thirdPartyAccountId){
        free(keyQuery_thirdPartyAccountId);
        keyQuery_thirdPartyAccountId = NULL;
    }
    if(valueQuery_thirdPartyAccountId){
        free(valueQuery_thirdPartyAccountId);
        valueQuery_thirdPartyAccountId = NULL;
    }
    if(keyPairQuery_thirdPartyAccountId){
        keyValuePair_free(keyPairQuery_thirdPartyAccountId);
        keyPairQuery_thirdPartyAccountId = NULL;
    }
    if(keyQuery_sourceLanguage){
        free(keyQuery_sourceLanguage);
        keyQuery_sourceLanguage = NULL;
    }
    if(valueQuery_sourceLanguage){
        free(valueQuery_sourceLanguage);
        valueQuery_sourceLanguage = NULL;
    }
    if(keyPairQuery_sourceLanguage){
        keyValuePair_free(keyPairQuery_sourceLanguage);
        keyPairQuery_sourceLanguage = NULL;
    }
    if(keyQuery_targetLanguage){
        free(keyQuery_targetLanguage);
        keyQuery_targetLanguage = NULL;
    }
    if(valueQuery_targetLanguage){
        free(valueQuery_targetLanguage);
        valueQuery_targetLanguage = NULL;
    }
    if(keyPairQuery_targetLanguage){
        keyValuePair_free(keyPairQuery_targetLanguage);
        keyPairQuery_targetLanguage = NULL;
    }
    if(keyQuery_file){
        free(keyQuery_file);
        keyQuery_file = NULL;
    }
    if(keyPairQuery_file){
        keyValuePair_free(keyPairQuery_file);
        keyPairQuery_file = NULL;
    }
    if(keyQuery_url){
        free(keyQuery_url);
        keyQuery_url = NULL;
    }
    if(valueQuery_url){
        free(valueQuery_url);
        valueQuery_url = NULL;
    }
    if(keyPairQuery_url){
        keyValuePair_free(keyPairQuery_url);
        keyPairQuery_url = NULL;
    }
    if(keyQuery_callback){
        free(keyQuery_callback);
        keyQuery_callback = NULL;
    }
    if(valueQuery_callback){
        free(valueQuery_callback);
        valueQuery_callback = NULL;
    }
    if(keyPairQuery_callback){
        keyValuePair_free(keyPairQuery_callback);
        keyPairQuery_callback = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Summarize Topics
//
// Takes in a string of text sentences (also known as a document) and returns a list of associated topics and their proximity score.
//
orson_ai_topics_response_t*
OrsonAPI_summarizeTopics(apiClient_t *apiClient, long accountId, char *thirdPartyAccountId, char *doc, binary_t* file, char *url, int *limit, int *offset, char *callback)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/orson/ai/topics");





    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }

    // query parameters
    char *keyQuery_thirdPartyAccountId = NULL;
    char * valueQuery_thirdPartyAccountId = NULL;
    keyValuePair_t *keyPairQuery_thirdPartyAccountId = 0;
    if (thirdPartyAccountId)
    {
        keyQuery_thirdPartyAccountId = strdup("thirdPartyAccountId");
        valueQuery_thirdPartyAccountId = strdup((thirdPartyAccountId));
        keyPairQuery_thirdPartyAccountId = keyValuePair_create(keyQuery_thirdPartyAccountId, valueQuery_thirdPartyAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_thirdPartyAccountId);
    }

    // query parameters
    char *keyQuery_doc = NULL;
    char * valueQuery_doc = NULL;
    keyValuePair_t *keyPairQuery_doc = 0;
    if (doc)
    {
        keyQuery_doc = strdup("doc");
        valueQuery_doc = strdup((doc));
        keyPairQuery_doc = keyValuePair_create(keyQuery_doc, valueQuery_doc);
        list_addElement(localVarQueryParameters,keyPairQuery_doc);
    }

    // query parameters
    char *keyQuery_file = NULL;
    binary_t* valueQuery_file ;
    keyValuePair_t *keyPairQuery_file = 0;
    if (file)
    {
        keyQuery_file = strdup("file");
        valueQuery_file = (file);
        keyPairQuery_file = keyValuePair_create(keyQuery_file, &valueQuery_file);
        list_addElement(localVarQueryParameters,keyPairQuery_file);
    }

    // query parameters
    char *keyQuery_url = NULL;
    char * valueQuery_url = NULL;
    keyValuePair_t *keyPairQuery_url = 0;
    if (url)
    {
        keyQuery_url = strdup("url");
        valueQuery_url = strdup((url));
        keyPairQuery_url = keyValuePair_create(keyQuery_url, valueQuery_url);
        list_addElement(localVarQueryParameters,keyPairQuery_url);
    }

    // query parameters
    char *keyQuery_limit = NULL;
    char * valueQuery_limit = NULL;
    keyValuePair_t *keyPairQuery_limit = 0;
    if (limit)
    {
        keyQuery_limit = strdup("limit");
        valueQuery_limit = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_limit, MAX_NUMBER_LENGTH, "%d", *limit);
        keyPairQuery_limit = keyValuePair_create(keyQuery_limit, valueQuery_limit);
        list_addElement(localVarQueryParameters,keyPairQuery_limit);
    }

    // query parameters
    char *keyQuery_offset = NULL;
    char * valueQuery_offset = NULL;
    keyValuePair_t *keyPairQuery_offset = 0;
    if (offset)
    {
        keyQuery_offset = strdup("offset");
        valueQuery_offset = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_offset, MAX_NUMBER_LENGTH, "%d", *offset);
        keyPairQuery_offset = keyValuePair_create(keyQuery_offset, valueQuery_offset);
        list_addElement(localVarQueryParameters,keyPairQuery_offset);
    }

    // query parameters
    char *keyQuery_callback = NULL;
    char * valueQuery_callback = NULL;
    keyValuePair_t *keyPairQuery_callback = 0;
    if (callback)
    {
        keyQuery_callback = strdup("callback");
        valueQuery_callback = strdup((callback));
        keyPairQuery_callback = keyValuePair_create(keyQuery_callback, valueQuery_callback);
        list_addElement(localVarQueryParameters,keyPairQuery_callback);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "POST");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    orson_ai_topics_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *OrsonAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = orson_ai_topics_response_parseFromJSON(OrsonAPIlocalVarJSON);
        cJSON_Delete(OrsonAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_thirdPartyAccountId){
        free(keyQuery_thirdPartyAccountId);
        keyQuery_thirdPartyAccountId = NULL;
    }
    if(valueQuery_thirdPartyAccountId){
        free(valueQuery_thirdPartyAccountId);
        valueQuery_thirdPartyAccountId = NULL;
    }
    if(keyPairQuery_thirdPartyAccountId){
        keyValuePair_free(keyPairQuery_thirdPartyAccountId);
        keyPairQuery_thirdPartyAccountId = NULL;
    }
    if(keyQuery_doc){
        free(keyQuery_doc);
        keyQuery_doc = NULL;
    }
    if(valueQuery_doc){
        free(valueQuery_doc);
        valueQuery_doc = NULL;
    }
    if(keyPairQuery_doc){
        keyValuePair_free(keyPairQuery_doc);
        keyPairQuery_doc = NULL;
    }
    if(keyQuery_file){
        free(keyQuery_file);
        keyQuery_file = NULL;
    }
    if(keyPairQuery_file){
        keyValuePair_free(keyPairQuery_file);
        keyPairQuery_file = NULL;
    }
    if(keyQuery_url){
        free(keyQuery_url);
        keyQuery_url = NULL;
    }
    if(valueQuery_url){
        free(valueQuery_url);
        valueQuery_url = NULL;
    }
    if(keyPairQuery_url){
        keyValuePair_free(keyPairQuery_url);
        keyPairQuery_url = NULL;
    }
    if(keyQuery_limit){
        free(keyQuery_limit);
        keyQuery_limit = NULL;
    }
    if(valueQuery_limit){
        free(valueQuery_limit);
        valueQuery_limit = NULL;
    }
    if(keyPairQuery_limit){
        keyValuePair_free(keyPairQuery_limit);
        keyPairQuery_limit = NULL;
    }
    if(keyQuery_offset){
        free(keyQuery_offset);
        keyQuery_offset = NULL;
    }
    if(valueQuery_offset){
        free(valueQuery_offset);
        valueQuery_offset = NULL;
    }
    if(keyPairQuery_offset){
        keyValuePair_free(keyPairQuery_offset);
        keyPairQuery_offset = NULL;
    }
    if(keyQuery_callback){
        free(keyQuery_callback);
        keyQuery_callback = NULL;
    }
    if(valueQuery_callback){
        free(valueQuery_callback);
        valueQuery_callback = NULL;
    }
    if(keyPairQuery_callback){
        keyValuePair_free(keyPairQuery_callback);
        keyPairQuery_callback = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Detect Technical Issues
//
// Analyses a movie file to detect technical issues, such as too few people in frame.
//
orson_ai_tech_tune_response_t*
OrsonAPI_techTune(apiClient_t *apiClient, long accountId, int *numFacesExpected, char *thirdPartyAccountId, binary_t* file, char *url, char *callback)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/orson/ai/techTune");





    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }

    // query parameters
    char *keyQuery_thirdPartyAccountId = NULL;
    char * valueQuery_thirdPartyAccountId = NULL;
    keyValuePair_t *keyPairQuery_thirdPartyAccountId = 0;
    if (thirdPartyAccountId)
    {
        keyQuery_thirdPartyAccountId = strdup("thirdPartyAccountId");
        valueQuery_thirdPartyAccountId = strdup((thirdPartyAccountId));
        keyPairQuery_thirdPartyAccountId = keyValuePair_create(keyQuery_thirdPartyAccountId, valueQuery_thirdPartyAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_thirdPartyAccountId);
    }

    // query parameters
    char *keyQuery_numFacesExpected = NULL;
    char * valueQuery_numFacesExpected = NULL;
    keyValuePair_t *keyPairQuery_numFacesExpected = 0;
    if (numFacesExpected)
    {
        keyQuery_numFacesExpected = strdup("numFacesExpected");
        valueQuery_numFacesExpected = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_numFacesExpected, MAX_NUMBER_LENGTH, "%d", *numFacesExpected);
        keyPairQuery_numFacesExpected = keyValuePair_create(keyQuery_numFacesExpected, valueQuery_numFacesExpected);
        list_addElement(localVarQueryParameters,keyPairQuery_numFacesExpected);
    }

    // query parameters
    char *keyQuery_file = NULL;
    binary_t* valueQuery_file ;
    keyValuePair_t *keyPairQuery_file = 0;
    if (file)
    {
        keyQuery_file = strdup("file");
        valueQuery_file = (file);
        keyPairQuery_file = keyValuePair_create(keyQuery_file, &valueQuery_file);
        list_addElement(localVarQueryParameters,keyPairQuery_file);
    }

    // query parameters
    char *keyQuery_url = NULL;
    char * valueQuery_url = NULL;
    keyValuePair_t *keyPairQuery_url = 0;
    if (url)
    {
        keyQuery_url = strdup("url");
        valueQuery_url = strdup((url));
        keyPairQuery_url = keyValuePair_create(keyQuery_url, valueQuery_url);
        list_addElement(localVarQueryParameters,keyPairQuery_url);
    }

    // query parameters
    char *keyQuery_callback = NULL;
    char * valueQuery_callback = NULL;
    keyValuePair_t *keyPairQuery_callback = 0;
    if (callback)
    {
        keyQuery_callback = strdup("callback");
        valueQuery_callback = strdup((callback));
        keyPairQuery_callback = keyValuePair_create(keyQuery_callback, valueQuery_callback);
        list_addElement(localVarQueryParameters,keyPairQuery_callback);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "POST");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    orson_ai_tech_tune_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *OrsonAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = orson_ai_tech_tune_response_parseFromJSON(OrsonAPIlocalVarJSON);
        cJSON_Delete(OrsonAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_thirdPartyAccountId){
        free(keyQuery_thirdPartyAccountId);
        keyQuery_thirdPartyAccountId = NULL;
    }
    if(valueQuery_thirdPartyAccountId){
        free(valueQuery_thirdPartyAccountId);
        valueQuery_thirdPartyAccountId = NULL;
    }
    if(keyPairQuery_thirdPartyAccountId){
        keyValuePair_free(keyPairQuery_thirdPartyAccountId);
        keyPairQuery_thirdPartyAccountId = NULL;
    }
    if(keyQuery_numFacesExpected){
        free(keyQuery_numFacesExpected);
        keyQuery_numFacesExpected = NULL;
    }
    if(valueQuery_numFacesExpected){
        free(valueQuery_numFacesExpected);
        valueQuery_numFacesExpected = NULL;
    }
    if(keyPairQuery_numFacesExpected){
        keyValuePair_free(keyPairQuery_numFacesExpected);
        keyPairQuery_numFacesExpected = NULL;
    }
    if(keyQuery_file){
        free(keyQuery_file);
        keyQuery_file = NULL;
    }
    if(keyPairQuery_file){
        keyValuePair_free(keyPairQuery_file);
        keyPairQuery_file = NULL;
    }
    if(keyQuery_url){
        free(keyQuery_url);
        keyQuery_url = NULL;
    }
    if(valueQuery_url){
        free(valueQuery_url);
        valueQuery_url = NULL;
    }
    if(keyPairQuery_url){
        keyValuePair_free(keyPairQuery_url);
        keyPairQuery_url = NULL;
    }
    if(keyQuery_callback){
        free(keyQuery_callback);
        keyQuery_callback = NULL;
    }
    if(valueQuery_callback){
        free(valueQuery_callback);
        valueQuery_callback = NULL;
    }
    if(keyPairQuery_callback){
        keyValuePair_free(keyPairQuery_callback);
        keyPairQuery_callback = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Text to Speach
//
// Creates an audio file for the given text, with the option of language and voice selection.
//
orson_ai_tts_response_t*
OrsonAPI_tts(apiClient_t *apiClient, long accountId, char *text, char *thirdPartyAccountId, char *language, char *voice, char *callback)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/orson/ai/tts");





    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }

    // query parameters
    char *keyQuery_thirdPartyAccountId = NULL;
    char * valueQuery_thirdPartyAccountId = NULL;
    keyValuePair_t *keyPairQuery_thirdPartyAccountId = 0;
    if (thirdPartyAccountId)
    {
        keyQuery_thirdPartyAccountId = strdup("thirdPartyAccountId");
        valueQuery_thirdPartyAccountId = strdup((thirdPartyAccountId));
        keyPairQuery_thirdPartyAccountId = keyValuePair_create(keyQuery_thirdPartyAccountId, valueQuery_thirdPartyAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_thirdPartyAccountId);
    }

    // query parameters
    char *keyQuery_text = NULL;
    char * valueQuery_text = NULL;
    keyValuePair_t *keyPairQuery_text = 0;
    if (text)
    {
        keyQuery_text = strdup("text");
        valueQuery_text = strdup((text));
        keyPairQuery_text = keyValuePair_create(keyQuery_text, valueQuery_text);
        list_addElement(localVarQueryParameters,keyPairQuery_text);
    }

    // query parameters
    char *keyQuery_language = NULL;
    char * valueQuery_language = NULL;
    keyValuePair_t *keyPairQuery_language = 0;
    if (language)
    {
        keyQuery_language = strdup("language");
        valueQuery_language = strdup((language));
        keyPairQuery_language = keyValuePair_create(keyQuery_language, valueQuery_language);
        list_addElement(localVarQueryParameters,keyPairQuery_language);
    }

    // query parameters
    char *keyQuery_voice = NULL;
    char * valueQuery_voice = NULL;
    keyValuePair_t *keyPairQuery_voice = 0;
    if (voice)
    {
        keyQuery_voice = strdup("voice");
        valueQuery_voice = strdup((voice));
        keyPairQuery_voice = keyValuePair_create(keyQuery_voice, valueQuery_voice);
        list_addElement(localVarQueryParameters,keyPairQuery_voice);
    }

    // query parameters
    char *keyQuery_callback = NULL;
    char * valueQuery_callback = NULL;
    keyValuePair_t *keyPairQuery_callback = 0;
    if (callback)
    {
        keyQuery_callback = strdup("callback");
        valueQuery_callback = strdup((callback));
        keyPairQuery_callback = keyValuePair_create(keyQuery_callback, valueQuery_callback);
        list_addElement(localVarQueryParameters,keyPairQuery_callback);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "POST");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    orson_ai_tts_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *OrsonAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = orson_ai_tts_response_parseFromJSON(OrsonAPIlocalVarJSON);
        cJSON_Delete(OrsonAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_thirdPartyAccountId){
        free(keyQuery_thirdPartyAccountId);
        keyQuery_thirdPartyAccountId = NULL;
    }
    if(valueQuery_thirdPartyAccountId){
        free(valueQuery_thirdPartyAccountId);
        valueQuery_thirdPartyAccountId = NULL;
    }
    if(keyPairQuery_thirdPartyAccountId){
        keyValuePair_free(keyPairQuery_thirdPartyAccountId);
        keyPairQuery_thirdPartyAccountId = NULL;
    }
    if(keyQuery_text){
        free(keyQuery_text);
        keyQuery_text = NULL;
    }
    if(valueQuery_text){
        free(valueQuery_text);
        valueQuery_text = NULL;
    }
    if(keyPairQuery_text){
        keyValuePair_free(keyPairQuery_text);
        keyPairQuery_text = NULL;
    }
    if(keyQuery_language){
        free(keyQuery_language);
        keyQuery_language = NULL;
    }
    if(valueQuery_language){
        free(valueQuery_language);
        valueQuery_language = NULL;
    }
    if(keyPairQuery_language){
        keyValuePair_free(keyPairQuery_language);
        keyPairQuery_language = NULL;
    }
    if(keyQuery_voice){
        free(keyQuery_voice);
        keyQuery_voice = NULL;
    }
    if(valueQuery_voice){
        free(valueQuery_voice);
        valueQuery_voice = NULL;
    }
    if(keyPairQuery_voice){
        keyValuePair_free(keyPairQuery_voice);
        keyPairQuery_voice = NULL;
    }
    if(keyQuery_callback){
        free(keyQuery_callback);
        keyQuery_callback = NULL;
    }
    if(valueQuery_callback){
        free(valueQuery_callback);
        valueQuery_callback = NULL;
    }
    if(keyPairQuery_callback){
        keyValuePair_free(keyPairQuery_callback);
        keyPairQuery_callback = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

