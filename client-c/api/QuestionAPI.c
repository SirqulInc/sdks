#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "QuestionAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21


// Create Question
//
// Create a question and related answers by the given params.
//
question_response_t*
QuestionAPI_createQuestion(apiClient_t *apiClient, double version, long accountId, char *question, char *answers, int *active, int *allocateTickets, long ticketCount, char *tags, char *videoURL, long assetId, char *ticketType, long points)
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
    char *localVarPath = strdup("/api/{version}/game/question/create");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



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
    char *keyQuery_question = NULL;
    char * valueQuery_question = NULL;
    keyValuePair_t *keyPairQuery_question = 0;
    if (question)
    {
        keyQuery_question = strdup("question");
        valueQuery_question = strdup((question));
        keyPairQuery_question = keyValuePair_create(keyQuery_question, valueQuery_question);
        list_addElement(localVarQueryParameters,keyPairQuery_question);
    }

    // query parameters
    char *keyQuery_answers = NULL;
    char * valueQuery_answers = NULL;
    keyValuePair_t *keyPairQuery_answers = 0;
    if (answers)
    {
        keyQuery_answers = strdup("answers");
        valueQuery_answers = strdup((answers));
        keyPairQuery_answers = keyValuePair_create(keyQuery_answers, valueQuery_answers);
        list_addElement(localVarQueryParameters,keyPairQuery_answers);
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
    char *keyQuery_videoURL = NULL;
    char * valueQuery_videoURL = NULL;
    keyValuePair_t *keyPairQuery_videoURL = 0;
    if (videoURL)
    {
        keyQuery_videoURL = strdup("videoURL");
        valueQuery_videoURL = strdup((videoURL));
        keyPairQuery_videoURL = keyValuePair_create(keyQuery_videoURL, valueQuery_videoURL);
        list_addElement(localVarQueryParameters,keyPairQuery_videoURL);
    }

    // query parameters
    char *keyQuery_assetId = NULL;
    char * valueQuery_assetId ;
    keyValuePair_t *keyPairQuery_assetId = 0;
    {
        keyQuery_assetId = strdup("assetId");
        valueQuery_assetId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_assetId, MAX_NUMBER_LENGTH_LONG, "%d", assetId);
        keyPairQuery_assetId = keyValuePair_create(keyQuery_assetId, valueQuery_assetId);
        list_addElement(localVarQueryParameters,keyPairQuery_assetId);
    }

    // query parameters
    char *keyQuery_active = NULL;
    char * valueQuery_active = NULL;
    keyValuePair_t *keyPairQuery_active = 0;
    if (active)
    {
        keyQuery_active = strdup("active");
        valueQuery_active = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_active, MAX_NUMBER_LENGTH, "%d", *active);
        keyPairQuery_active = keyValuePair_create(keyQuery_active, valueQuery_active);
        list_addElement(localVarQueryParameters,keyPairQuery_active);
    }

    // query parameters
    char *keyQuery_allocateTickets = NULL;
    char * valueQuery_allocateTickets = NULL;
    keyValuePair_t *keyPairQuery_allocateTickets = 0;
    if (allocateTickets)
    {
        keyQuery_allocateTickets = strdup("allocateTickets");
        valueQuery_allocateTickets = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_allocateTickets, MAX_NUMBER_LENGTH, "%d", *allocateTickets);
        keyPairQuery_allocateTickets = keyValuePair_create(keyQuery_allocateTickets, valueQuery_allocateTickets);
        list_addElement(localVarQueryParameters,keyPairQuery_allocateTickets);
    }

    // query parameters
    char *keyQuery_ticketCount = NULL;
    char * valueQuery_ticketCount ;
    keyValuePair_t *keyPairQuery_ticketCount = 0;
    {
        keyQuery_ticketCount = strdup("ticketCount");
        valueQuery_ticketCount = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_ticketCount, MAX_NUMBER_LENGTH_LONG, "%d", ticketCount);
        keyPairQuery_ticketCount = keyValuePair_create(keyQuery_ticketCount, valueQuery_ticketCount);
        list_addElement(localVarQueryParameters,keyPairQuery_ticketCount);
    }

    // query parameters
    char *keyQuery_ticketType = NULL;
    char * valueQuery_ticketType = NULL;
    keyValuePair_t *keyPairQuery_ticketType = 0;
    if (ticketType)
    {
        keyQuery_ticketType = strdup("ticketType");
        valueQuery_ticketType = strdup((ticketType));
        keyPairQuery_ticketType = keyValuePair_create(keyQuery_ticketType, valueQuery_ticketType);
        list_addElement(localVarQueryParameters,keyPairQuery_ticketType);
    }

    // query parameters
    char *keyQuery_points = NULL;
    char * valueQuery_points ;
    keyValuePair_t *keyPairQuery_points = 0;
    {
        keyQuery_points = strdup("points");
        valueQuery_points = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_points, MAX_NUMBER_LENGTH_LONG, "%d", points);
        keyPairQuery_points = keyValuePair_create(keyQuery_points, valueQuery_points);
        list_addElement(localVarQueryParameters,keyPairQuery_points);
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
    question_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *QuestionAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = question_response_parseFromJSON(QuestionAPIlocalVarJSON);
        cJSON_Delete(QuestionAPIlocalVarJSON);
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
    free(localVarToReplace_version);
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_question){
        free(keyQuery_question);
        keyQuery_question = NULL;
    }
    if(valueQuery_question){
        free(valueQuery_question);
        valueQuery_question = NULL;
    }
    if(keyPairQuery_question){
        keyValuePair_free(keyPairQuery_question);
        keyPairQuery_question = NULL;
    }
    if(keyQuery_answers){
        free(keyQuery_answers);
        keyQuery_answers = NULL;
    }
    if(valueQuery_answers){
        free(valueQuery_answers);
        valueQuery_answers = NULL;
    }
    if(keyPairQuery_answers){
        keyValuePair_free(keyPairQuery_answers);
        keyPairQuery_answers = NULL;
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
    if(keyQuery_videoURL){
        free(keyQuery_videoURL);
        keyQuery_videoURL = NULL;
    }
    if(valueQuery_videoURL){
        free(valueQuery_videoURL);
        valueQuery_videoURL = NULL;
    }
    if(keyPairQuery_videoURL){
        keyValuePair_free(keyPairQuery_videoURL);
        keyPairQuery_videoURL = NULL;
    }
    if(keyQuery_assetId){
        free(keyQuery_assetId);
        keyQuery_assetId = NULL;
    }
    if(keyPairQuery_assetId){
        keyValuePair_free(keyPairQuery_assetId);
        keyPairQuery_assetId = NULL;
    }
    if(keyQuery_active){
        free(keyQuery_active);
        keyQuery_active = NULL;
    }
    if(valueQuery_active){
        free(valueQuery_active);
        valueQuery_active = NULL;
    }
    if(keyPairQuery_active){
        keyValuePair_free(keyPairQuery_active);
        keyPairQuery_active = NULL;
    }
    if(keyQuery_allocateTickets){
        free(keyQuery_allocateTickets);
        keyQuery_allocateTickets = NULL;
    }
    if(valueQuery_allocateTickets){
        free(valueQuery_allocateTickets);
        valueQuery_allocateTickets = NULL;
    }
    if(keyPairQuery_allocateTickets){
        keyValuePair_free(keyPairQuery_allocateTickets);
        keyPairQuery_allocateTickets = NULL;
    }
    if(keyQuery_ticketCount){
        free(keyQuery_ticketCount);
        keyQuery_ticketCount = NULL;
    }
    if(keyPairQuery_ticketCount){
        keyValuePair_free(keyPairQuery_ticketCount);
        keyPairQuery_ticketCount = NULL;
    }
    if(keyQuery_ticketType){
        free(keyQuery_ticketType);
        keyQuery_ticketType = NULL;
    }
    if(valueQuery_ticketType){
        free(valueQuery_ticketType);
        valueQuery_ticketType = NULL;
    }
    if(keyPairQuery_ticketType){
        keyValuePair_free(keyPairQuery_ticketType);
        keyPairQuery_ticketType = NULL;
    }
    if(keyQuery_points){
        free(keyQuery_points);
        keyQuery_points = NULL;
    }
    if(keyPairQuery_points){
        keyValuePair_free(keyPairQuery_points);
        keyPairQuery_points = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Delete Question
//
// Delete a question by the given questionId. The accountId given needs to be the owner or executive to delete.
//
sirqul_response_t*
QuestionAPI_deleteQuestion(apiClient_t *apiClient, double version, long questionId, long accountId)
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
    char *localVarPath = strdup("/api/{version}/game/question/delete");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



    // query parameters
    char *keyQuery_questionId = NULL;
    char * valueQuery_questionId ;
    keyValuePair_t *keyPairQuery_questionId = 0;
    {
        keyQuery_questionId = strdup("questionId");
        valueQuery_questionId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_questionId, MAX_NUMBER_LENGTH_LONG, "%d", questionId);
        keyPairQuery_questionId = keyValuePair_create(keyQuery_questionId, valueQuery_questionId);
        list_addElement(localVarQueryParameters,keyPairQuery_questionId);
    }

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
                    "POST");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    sirqul_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *QuestionAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(QuestionAPIlocalVarJSON);
        cJSON_Delete(QuestionAPIlocalVarJSON);
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
    free(localVarToReplace_version);
    if(keyQuery_questionId){
        free(keyQuery_questionId);
        keyQuery_questionId = NULL;
    }
    if(keyPairQuery_questionId){
        keyValuePair_free(keyPairQuery_questionId);
        keyPairQuery_questionId = NULL;
    }
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

// Get Question
//
// Get a question by the given id.
//
question_response_t*
QuestionAPI_getQuestion(apiClient_t *apiClient, double version, long questionId, long accountId)
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
    char *localVarPath = strdup("/api/{version}/game/question/get");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



    // query parameters
    char *keyQuery_questionId = NULL;
    char * valueQuery_questionId ;
    keyValuePair_t *keyPairQuery_questionId = 0;
    {
        keyQuery_questionId = strdup("questionId");
        valueQuery_questionId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_questionId, MAX_NUMBER_LENGTH_LONG, "%d", questionId);
        keyPairQuery_questionId = keyValuePair_create(keyQuery_questionId, valueQuery_questionId);
        list_addElement(localVarQueryParameters,keyPairQuery_questionId);
    }

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
    question_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *QuestionAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = question_response_parseFromJSON(QuestionAPIlocalVarJSON);
        cJSON_Delete(QuestionAPIlocalVarJSON);
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
    free(localVarToReplace_version);
    if(keyQuery_questionId){
        free(keyQuery_questionId);
        keyQuery_questionId = NULL;
    }
    if(keyPairQuery_questionId){
        keyValuePair_free(keyPairQuery_questionId);
        keyPairQuery_questionId = NULL;
    }
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

// Search Questions
//
// Search for questions by the given params.
//
list_t*
QuestionAPI_searchQuestions(apiClient_t *apiClient, double version, long accountId, char *sortField, int *descending, int *activeOnly, int *start, int *limit, char *keyword)
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
    char *localVarPath = strdup("/api/{version}/game/question/search");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



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
    char *keyQuery_keyword = NULL;
    char * valueQuery_keyword = NULL;
    keyValuePair_t *keyPairQuery_keyword = 0;
    if (keyword)
    {
        keyQuery_keyword = strdup("keyword");
        valueQuery_keyword = strdup((keyword));
        keyPairQuery_keyword = keyValuePair_create(keyQuery_keyword, valueQuery_keyword);
        list_addElement(localVarQueryParameters,keyPairQuery_keyword);
    }

    // query parameters
    char *keyQuery_sortField = NULL;
    char * valueQuery_sortField = NULL;
    keyValuePair_t *keyPairQuery_sortField = 0;
    if (sortField)
    {
        keyQuery_sortField = strdup("sortField");
        valueQuery_sortField = strdup((sortField));
        keyPairQuery_sortField = keyValuePair_create(keyQuery_sortField, valueQuery_sortField);
        list_addElement(localVarQueryParameters,keyPairQuery_sortField);
    }

    // query parameters
    char *keyQuery_descending = NULL;
    char * valueQuery_descending = NULL;
    keyValuePair_t *keyPairQuery_descending = 0;
    if (descending)
    {
        keyQuery_descending = strdup("descending");
        valueQuery_descending = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_descending, MAX_NUMBER_LENGTH, "%d", *descending);
        keyPairQuery_descending = keyValuePair_create(keyQuery_descending, valueQuery_descending);
        list_addElement(localVarQueryParameters,keyPairQuery_descending);
    }

    // query parameters
    char *keyQuery_activeOnly = NULL;
    char * valueQuery_activeOnly = NULL;
    keyValuePair_t *keyPairQuery_activeOnly = 0;
    if (activeOnly)
    {
        keyQuery_activeOnly = strdup("activeOnly");
        valueQuery_activeOnly = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_activeOnly, MAX_NUMBER_LENGTH, "%d", *activeOnly);
        keyPairQuery_activeOnly = keyValuePair_create(keyQuery_activeOnly, valueQuery_activeOnly);
        list_addElement(localVarQueryParameters,keyPairQuery_activeOnly);
    }

    // query parameters
    char *keyQuery_start = NULL;
    char * valueQuery_start = NULL;
    keyValuePair_t *keyPairQuery_start = 0;
    if (start)
    {
        keyQuery_start = strdup("start");
        valueQuery_start = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_start, MAX_NUMBER_LENGTH, "%d", *start);
        keyPairQuery_start = keyValuePair_create(keyQuery_start, valueQuery_start);
        list_addElement(localVarQueryParameters,keyPairQuery_start);
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
    list_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *QuestionAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(QuestionAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, QuestionAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( QuestionAPIlocalVarJSON);
        cJSON_Delete( VarJSON);
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
    free(localVarToReplace_version);
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_keyword){
        free(keyQuery_keyword);
        keyQuery_keyword = NULL;
    }
    if(valueQuery_keyword){
        free(valueQuery_keyword);
        valueQuery_keyword = NULL;
    }
    if(keyPairQuery_keyword){
        keyValuePair_free(keyPairQuery_keyword);
        keyPairQuery_keyword = NULL;
    }
    if(keyQuery_sortField){
        free(keyQuery_sortField);
        keyQuery_sortField = NULL;
    }
    if(valueQuery_sortField){
        free(valueQuery_sortField);
        valueQuery_sortField = NULL;
    }
    if(keyPairQuery_sortField){
        keyValuePair_free(keyPairQuery_sortField);
        keyPairQuery_sortField = NULL;
    }
    if(keyQuery_descending){
        free(keyQuery_descending);
        keyQuery_descending = NULL;
    }
    if(valueQuery_descending){
        free(valueQuery_descending);
        valueQuery_descending = NULL;
    }
    if(keyPairQuery_descending){
        keyValuePair_free(keyPairQuery_descending);
        keyPairQuery_descending = NULL;
    }
    if(keyQuery_activeOnly){
        free(keyQuery_activeOnly);
        keyQuery_activeOnly = NULL;
    }
    if(valueQuery_activeOnly){
        free(valueQuery_activeOnly);
        valueQuery_activeOnly = NULL;
    }
    if(keyPairQuery_activeOnly){
        keyValuePair_free(keyPairQuery_activeOnly);
        keyPairQuery_activeOnly = NULL;
    }
    if(keyQuery_start){
        free(keyQuery_start);
        keyQuery_start = NULL;
    }
    if(valueQuery_start){
        free(valueQuery_start);
        valueQuery_start = NULL;
    }
    if(keyPairQuery_start){
        keyValuePair_free(keyPairQuery_start);
        keyPairQuery_start = NULL;
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Update Question
//
// Update a question and related answers.
//
question_response_t*
QuestionAPI_updateQuestion(apiClient_t *apiClient, double version, long questionId, long accountId, long ticketCount, char *question, char *answers, char *tags, char *videoURL, long assetId, int *active, int *allocateTickets, char *ticketType, long points)
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
    char *localVarPath = strdup("/api/{version}/game/question/update");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



    // query parameters
    char *keyQuery_questionId = NULL;
    char * valueQuery_questionId ;
    keyValuePair_t *keyPairQuery_questionId = 0;
    {
        keyQuery_questionId = strdup("questionId");
        valueQuery_questionId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_questionId, MAX_NUMBER_LENGTH_LONG, "%d", questionId);
        keyPairQuery_questionId = keyValuePair_create(keyQuery_questionId, valueQuery_questionId);
        list_addElement(localVarQueryParameters,keyPairQuery_questionId);
    }

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
    char *keyQuery_question = NULL;
    char * valueQuery_question = NULL;
    keyValuePair_t *keyPairQuery_question = 0;
    if (question)
    {
        keyQuery_question = strdup("question");
        valueQuery_question = strdup((question));
        keyPairQuery_question = keyValuePair_create(keyQuery_question, valueQuery_question);
        list_addElement(localVarQueryParameters,keyPairQuery_question);
    }

    // query parameters
    char *keyQuery_answers = NULL;
    char * valueQuery_answers = NULL;
    keyValuePair_t *keyPairQuery_answers = 0;
    if (answers)
    {
        keyQuery_answers = strdup("answers");
        valueQuery_answers = strdup((answers));
        keyPairQuery_answers = keyValuePair_create(keyQuery_answers, valueQuery_answers);
        list_addElement(localVarQueryParameters,keyPairQuery_answers);
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
    char *keyQuery_videoURL = NULL;
    char * valueQuery_videoURL = NULL;
    keyValuePair_t *keyPairQuery_videoURL = 0;
    if (videoURL)
    {
        keyQuery_videoURL = strdup("videoURL");
        valueQuery_videoURL = strdup((videoURL));
        keyPairQuery_videoURL = keyValuePair_create(keyQuery_videoURL, valueQuery_videoURL);
        list_addElement(localVarQueryParameters,keyPairQuery_videoURL);
    }

    // query parameters
    char *keyQuery_assetId = NULL;
    char * valueQuery_assetId ;
    keyValuePair_t *keyPairQuery_assetId = 0;
    {
        keyQuery_assetId = strdup("assetId");
        valueQuery_assetId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_assetId, MAX_NUMBER_LENGTH_LONG, "%d", assetId);
        keyPairQuery_assetId = keyValuePair_create(keyQuery_assetId, valueQuery_assetId);
        list_addElement(localVarQueryParameters,keyPairQuery_assetId);
    }

    // query parameters
    char *keyQuery_active = NULL;
    char * valueQuery_active = NULL;
    keyValuePair_t *keyPairQuery_active = 0;
    if (active)
    {
        keyQuery_active = strdup("active");
        valueQuery_active = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_active, MAX_NUMBER_LENGTH, "%d", *active);
        keyPairQuery_active = keyValuePair_create(keyQuery_active, valueQuery_active);
        list_addElement(localVarQueryParameters,keyPairQuery_active);
    }

    // query parameters
    char *keyQuery_allocateTickets = NULL;
    char * valueQuery_allocateTickets = NULL;
    keyValuePair_t *keyPairQuery_allocateTickets = 0;
    if (allocateTickets)
    {
        keyQuery_allocateTickets = strdup("allocateTickets");
        valueQuery_allocateTickets = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_allocateTickets, MAX_NUMBER_LENGTH, "%d", *allocateTickets);
        keyPairQuery_allocateTickets = keyValuePair_create(keyQuery_allocateTickets, valueQuery_allocateTickets);
        list_addElement(localVarQueryParameters,keyPairQuery_allocateTickets);
    }

    // query parameters
    char *keyQuery_ticketCount = NULL;
    char * valueQuery_ticketCount ;
    keyValuePair_t *keyPairQuery_ticketCount = 0;
    {
        keyQuery_ticketCount = strdup("ticketCount");
        valueQuery_ticketCount = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_ticketCount, MAX_NUMBER_LENGTH_LONG, "%d", ticketCount);
        keyPairQuery_ticketCount = keyValuePair_create(keyQuery_ticketCount, valueQuery_ticketCount);
        list_addElement(localVarQueryParameters,keyPairQuery_ticketCount);
    }

    // query parameters
    char *keyQuery_ticketType = NULL;
    char * valueQuery_ticketType = NULL;
    keyValuePair_t *keyPairQuery_ticketType = 0;
    if (ticketType)
    {
        keyQuery_ticketType = strdup("ticketType");
        valueQuery_ticketType = strdup((ticketType));
        keyPairQuery_ticketType = keyValuePair_create(keyQuery_ticketType, valueQuery_ticketType);
        list_addElement(localVarQueryParameters,keyPairQuery_ticketType);
    }

    // query parameters
    char *keyQuery_points = NULL;
    char * valueQuery_points ;
    keyValuePair_t *keyPairQuery_points = 0;
    {
        keyQuery_points = strdup("points");
        valueQuery_points = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_points, MAX_NUMBER_LENGTH_LONG, "%d", points);
        keyPairQuery_points = keyValuePair_create(keyQuery_points, valueQuery_points);
        list_addElement(localVarQueryParameters,keyPairQuery_points);
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
    question_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *QuestionAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = question_response_parseFromJSON(QuestionAPIlocalVarJSON);
        cJSON_Delete(QuestionAPIlocalVarJSON);
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
    free(localVarToReplace_version);
    if(keyQuery_questionId){
        free(keyQuery_questionId);
        keyQuery_questionId = NULL;
    }
    if(keyPairQuery_questionId){
        keyValuePair_free(keyPairQuery_questionId);
        keyPairQuery_questionId = NULL;
    }
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_question){
        free(keyQuery_question);
        keyQuery_question = NULL;
    }
    if(valueQuery_question){
        free(valueQuery_question);
        valueQuery_question = NULL;
    }
    if(keyPairQuery_question){
        keyValuePair_free(keyPairQuery_question);
        keyPairQuery_question = NULL;
    }
    if(keyQuery_answers){
        free(keyQuery_answers);
        keyQuery_answers = NULL;
    }
    if(valueQuery_answers){
        free(valueQuery_answers);
        valueQuery_answers = NULL;
    }
    if(keyPairQuery_answers){
        keyValuePair_free(keyPairQuery_answers);
        keyPairQuery_answers = NULL;
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
    if(keyQuery_videoURL){
        free(keyQuery_videoURL);
        keyQuery_videoURL = NULL;
    }
    if(valueQuery_videoURL){
        free(valueQuery_videoURL);
        valueQuery_videoURL = NULL;
    }
    if(keyPairQuery_videoURL){
        keyValuePair_free(keyPairQuery_videoURL);
        keyPairQuery_videoURL = NULL;
    }
    if(keyQuery_assetId){
        free(keyQuery_assetId);
        keyQuery_assetId = NULL;
    }
    if(keyPairQuery_assetId){
        keyValuePair_free(keyPairQuery_assetId);
        keyPairQuery_assetId = NULL;
    }
    if(keyQuery_active){
        free(keyQuery_active);
        keyQuery_active = NULL;
    }
    if(valueQuery_active){
        free(valueQuery_active);
        valueQuery_active = NULL;
    }
    if(keyPairQuery_active){
        keyValuePair_free(keyPairQuery_active);
        keyPairQuery_active = NULL;
    }
    if(keyQuery_allocateTickets){
        free(keyQuery_allocateTickets);
        keyQuery_allocateTickets = NULL;
    }
    if(valueQuery_allocateTickets){
        free(valueQuery_allocateTickets);
        valueQuery_allocateTickets = NULL;
    }
    if(keyPairQuery_allocateTickets){
        keyValuePair_free(keyPairQuery_allocateTickets);
        keyPairQuery_allocateTickets = NULL;
    }
    if(keyQuery_ticketCount){
        free(keyQuery_ticketCount);
        keyQuery_ticketCount = NULL;
    }
    if(keyPairQuery_ticketCount){
        keyValuePair_free(keyPairQuery_ticketCount);
        keyPairQuery_ticketCount = NULL;
    }
    if(keyQuery_ticketType){
        free(keyQuery_ticketType);
        keyQuery_ticketType = NULL;
    }
    if(valueQuery_ticketType){
        free(valueQuery_ticketType);
        valueQuery_ticketType = NULL;
    }
    if(keyPairQuery_ticketType){
        keyValuePair_free(keyPairQuery_ticketType);
        keyPairQuery_ticketType = NULL;
    }
    if(keyQuery_points){
        free(keyQuery_points);
        keyQuery_points = NULL;
    }
    if(keyPairQuery_points){
        keyValuePair_free(keyPairQuery_points);
        keyPairQuery_points = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

