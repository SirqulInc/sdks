#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/sirqul_response.h"
#include "../model/wordz_word_response.h"


// Create Word
//
// Create a word by the given params.
//
wordz_word_response_t*
WordAPI_createWord(apiClient_t *apiClient, long accountId, char *word, char *definition, int *active, int *allocateTickets, long ticketCount, long assetId, char *ticketType, long points);


// Delete Word
//
// Delete a word by the given id. The accountId given needs to be the owner or executive to delete.
//
sirqul_response_t*
WordAPI_deleteWord(apiClient_t *apiClient, long wordId, long accountId);


// Get Word
//
// Get a word by the given id.
//
wordz_word_response_t*
WordAPI_getWord(apiClient_t *apiClient, long wordId, long accountId);


// Search Words
//
// Search for words by the given params.
//
list_t*
WordAPI_getWords(apiClient_t *apiClient, long accountId, char *sortField, int *descending, int *activeOnly, int *start, int *limit, char *keyword);


// Update Word
//
// Update a word by the given params.
//
wordz_word_response_t*
WordAPI_updateWord(apiClient_t *apiClient, long wordId, long accountId, long ticketCount, char *wordText, char *definition, long assetId, int *active, int *allocateTickets, char *ticketType, long points);


