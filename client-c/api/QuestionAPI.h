#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/question_response.h"
#include "../model/sirqul_response.h"


// Create Question
//
// Create a question and related answers by the given params.
//
question_response_t*
QuestionAPI_createQuestion(apiClient_t *apiClient, double version, long accountId, char *question, char *answers, int *active, int *allocateTickets, long ticketCount, char *tags, char *videoURL, long assetId, char *ticketType, long points);


// Delete Question
//
// Delete a question by the given questionId. The accountId given needs to be the owner or executive to delete.
//
sirqul_response_t*
QuestionAPI_deleteQuestion(apiClient_t *apiClient, double version, long questionId, long accountId);


// Get Question
//
// Get a question by the given id.
//
question_response_t*
QuestionAPI_getQuestion(apiClient_t *apiClient, double version, long questionId, long accountId);


// Search Questions
//
// Search for questions by the given params.
//
list_t*
QuestionAPI_searchQuestions(apiClient_t *apiClient, double version, long accountId, char *sortField, int *descending, int *activeOnly, int *start, int *limit, char *keyword);


// Update Question
//
// Update a question and related answers.
//
question_response_t*
QuestionAPI_updateQuestion(apiClient_t *apiClient, double version, long questionId, long accountId, long ticketCount, char *question, char *answers, char *tags, char *videoURL, long assetId, int *active, int *allocateTickets, char *ticketType, long points);


