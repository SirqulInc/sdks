#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "orson_ai_topic_response.h"



static orson_ai_topic_response_t *orson_ai_topic_response_create_internal(
    char *word,
    double score
    ) {
    orson_ai_topic_response_t *orson_ai_topic_response_local_var = malloc(sizeof(orson_ai_topic_response_t));
    if (!orson_ai_topic_response_local_var) {
        return NULL;
    }
    orson_ai_topic_response_local_var->word = word;
    orson_ai_topic_response_local_var->score = score;

    orson_ai_topic_response_local_var->_library_owned = 1;
    return orson_ai_topic_response_local_var;
}

__attribute__((deprecated)) orson_ai_topic_response_t *orson_ai_topic_response_create(
    char *word,
    double score
    ) {
    return orson_ai_topic_response_create_internal (
        word,
        score
        );
}

void orson_ai_topic_response_free(orson_ai_topic_response_t *orson_ai_topic_response) {
    if(NULL == orson_ai_topic_response){
        return ;
    }
    if(orson_ai_topic_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "orson_ai_topic_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (orson_ai_topic_response->word) {
        free(orson_ai_topic_response->word);
        orson_ai_topic_response->word = NULL;
    }
    free(orson_ai_topic_response);
}

cJSON *orson_ai_topic_response_convertToJSON(orson_ai_topic_response_t *orson_ai_topic_response) {
    cJSON *item = cJSON_CreateObject();

    // orson_ai_topic_response->word
    if(orson_ai_topic_response->word) {
    if(cJSON_AddStringToObject(item, "word", orson_ai_topic_response->word) == NULL) {
    goto fail; //String
    }
    }


    // orson_ai_topic_response->score
    if(orson_ai_topic_response->score) {
    if(cJSON_AddNumberToObject(item, "score", orson_ai_topic_response->score) == NULL) {
    goto fail; //Numeric
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

orson_ai_topic_response_t *orson_ai_topic_response_parseFromJSON(cJSON *orson_ai_topic_responseJSON){

    orson_ai_topic_response_t *orson_ai_topic_response_local_var = NULL;

    // orson_ai_topic_response->word
    cJSON *word = cJSON_GetObjectItemCaseSensitive(orson_ai_topic_responseJSON, "word");
    if (cJSON_IsNull(word)) {
        word = NULL;
    }
    if (word) { 
    if(!cJSON_IsString(word) && !cJSON_IsNull(word))
    {
    goto end; //String
    }
    }

    // orson_ai_topic_response->score
    cJSON *score = cJSON_GetObjectItemCaseSensitive(orson_ai_topic_responseJSON, "score");
    if (cJSON_IsNull(score)) {
        score = NULL;
    }
    if (score) { 
    if(!cJSON_IsNumber(score))
    {
    goto end; //Numeric
    }
    }


    orson_ai_topic_response_local_var = orson_ai_topic_response_create_internal (
        word && !cJSON_IsNull(word) ? strdup(word->valuestring) : NULL,
        score ? score->valuedouble : 0
        );

    return orson_ai_topic_response_local_var;
end:
    return NULL;

}
