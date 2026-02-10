#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "wordz_word_response.h"



static wordz_word_response_t *wordz_word_response_create_internal(
    long id,
    char *word,
    char *definition,
    score_list_response_t *scores,
    asset_short_response_t *icon,
    asset_short_response_t *image,
    char *author_override,
    long updated_date,
    long start_date,
    long end_date,
    long created_date,
    int active,
    int allocate_tickets,
    char *ticket_type,
    long ticket_count,
    long points
    ) {
    wordz_word_response_t *wordz_word_response_local_var = malloc(sizeof(wordz_word_response_t));
    if (!wordz_word_response_local_var) {
        return NULL;
    }
    wordz_word_response_local_var->id = id;
    wordz_word_response_local_var->word = word;
    wordz_word_response_local_var->definition = definition;
    wordz_word_response_local_var->scores = scores;
    wordz_word_response_local_var->icon = icon;
    wordz_word_response_local_var->image = image;
    wordz_word_response_local_var->author_override = author_override;
    wordz_word_response_local_var->updated_date = updated_date;
    wordz_word_response_local_var->start_date = start_date;
    wordz_word_response_local_var->end_date = end_date;
    wordz_word_response_local_var->created_date = created_date;
    wordz_word_response_local_var->active = active;
    wordz_word_response_local_var->allocate_tickets = allocate_tickets;
    wordz_word_response_local_var->ticket_type = ticket_type;
    wordz_word_response_local_var->ticket_count = ticket_count;
    wordz_word_response_local_var->points = points;

    wordz_word_response_local_var->_library_owned = 1;
    return wordz_word_response_local_var;
}

__attribute__((deprecated)) wordz_word_response_t *wordz_word_response_create(
    long id,
    char *word,
    char *definition,
    score_list_response_t *scores,
    asset_short_response_t *icon,
    asset_short_response_t *image,
    char *author_override,
    long updated_date,
    long start_date,
    long end_date,
    long created_date,
    int active,
    int allocate_tickets,
    char *ticket_type,
    long ticket_count,
    long points
    ) {
    return wordz_word_response_create_internal (
        id,
        word,
        definition,
        scores,
        icon,
        image,
        author_override,
        updated_date,
        start_date,
        end_date,
        created_date,
        active,
        allocate_tickets,
        ticket_type,
        ticket_count,
        points
        );
}

void wordz_word_response_free(wordz_word_response_t *wordz_word_response) {
    if(NULL == wordz_word_response){
        return ;
    }
    if(wordz_word_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "wordz_word_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (wordz_word_response->word) {
        free(wordz_word_response->word);
        wordz_word_response->word = NULL;
    }
    if (wordz_word_response->definition) {
        free(wordz_word_response->definition);
        wordz_word_response->definition = NULL;
    }
    if (wordz_word_response->scores) {
        score_list_response_free(wordz_word_response->scores);
        wordz_word_response->scores = NULL;
    }
    if (wordz_word_response->icon) {
        asset_short_response_free(wordz_word_response->icon);
        wordz_word_response->icon = NULL;
    }
    if (wordz_word_response->image) {
        asset_short_response_free(wordz_word_response->image);
        wordz_word_response->image = NULL;
    }
    if (wordz_word_response->author_override) {
        free(wordz_word_response->author_override);
        wordz_word_response->author_override = NULL;
    }
    if (wordz_word_response->ticket_type) {
        free(wordz_word_response->ticket_type);
        wordz_word_response->ticket_type = NULL;
    }
    free(wordz_word_response);
}

cJSON *wordz_word_response_convertToJSON(wordz_word_response_t *wordz_word_response) {
    cJSON *item = cJSON_CreateObject();

    // wordz_word_response->id
    if(wordz_word_response->id) {
    if(cJSON_AddNumberToObject(item, "id", wordz_word_response->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // wordz_word_response->word
    if(wordz_word_response->word) {
    if(cJSON_AddStringToObject(item, "word", wordz_word_response->word) == NULL) {
    goto fail; //String
    }
    }


    // wordz_word_response->definition
    if(wordz_word_response->definition) {
    if(cJSON_AddStringToObject(item, "definition", wordz_word_response->definition) == NULL) {
    goto fail; //String
    }
    }


    // wordz_word_response->scores
    if(wordz_word_response->scores) {
    cJSON *scores_local_JSON = score_list_response_convertToJSON(wordz_word_response->scores);
    if(scores_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "scores", scores_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // wordz_word_response->icon
    if(wordz_word_response->icon) {
    cJSON *icon_local_JSON = asset_short_response_convertToJSON(wordz_word_response->icon);
    if(icon_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "icon", icon_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // wordz_word_response->image
    if(wordz_word_response->image) {
    cJSON *image_local_JSON = asset_short_response_convertToJSON(wordz_word_response->image);
    if(image_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "image", image_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // wordz_word_response->author_override
    if(wordz_word_response->author_override) {
    if(cJSON_AddStringToObject(item, "authorOverride", wordz_word_response->author_override) == NULL) {
    goto fail; //String
    }
    }


    // wordz_word_response->updated_date
    if(wordz_word_response->updated_date) {
    if(cJSON_AddNumberToObject(item, "updatedDate", wordz_word_response->updated_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // wordz_word_response->start_date
    if(wordz_word_response->start_date) {
    if(cJSON_AddNumberToObject(item, "startDate", wordz_word_response->start_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // wordz_word_response->end_date
    if(wordz_word_response->end_date) {
    if(cJSON_AddNumberToObject(item, "endDate", wordz_word_response->end_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // wordz_word_response->created_date
    if(wordz_word_response->created_date) {
    if(cJSON_AddNumberToObject(item, "createdDate", wordz_word_response->created_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // wordz_word_response->active
    if(wordz_word_response->active) {
    if(cJSON_AddBoolToObject(item, "active", wordz_word_response->active) == NULL) {
    goto fail; //Bool
    }
    }


    // wordz_word_response->allocate_tickets
    if(wordz_word_response->allocate_tickets) {
    if(cJSON_AddBoolToObject(item, "allocateTickets", wordz_word_response->allocate_tickets) == NULL) {
    goto fail; //Bool
    }
    }


    // wordz_word_response->ticket_type
    if(wordz_word_response->ticket_type) {
    if(cJSON_AddStringToObject(item, "ticketType", wordz_word_response->ticket_type) == NULL) {
    goto fail; //String
    }
    }


    // wordz_word_response->ticket_count
    if(wordz_word_response->ticket_count) {
    if(cJSON_AddNumberToObject(item, "ticketCount", wordz_word_response->ticket_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // wordz_word_response->points
    if(wordz_word_response->points) {
    if(cJSON_AddNumberToObject(item, "points", wordz_word_response->points) == NULL) {
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

wordz_word_response_t *wordz_word_response_parseFromJSON(cJSON *wordz_word_responseJSON){

    wordz_word_response_t *wordz_word_response_local_var = NULL;

    // define the local variable for wordz_word_response->scores
    score_list_response_t *scores_local_nonprim = NULL;

    // define the local variable for wordz_word_response->icon
    asset_short_response_t *icon_local_nonprim = NULL;

    // define the local variable for wordz_word_response->image
    asset_short_response_t *image_local_nonprim = NULL;

    // wordz_word_response->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(wordz_word_responseJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // wordz_word_response->word
    cJSON *word = cJSON_GetObjectItemCaseSensitive(wordz_word_responseJSON, "word");
    if (cJSON_IsNull(word)) {
        word = NULL;
    }
    if (word) { 
    if(!cJSON_IsString(word) && !cJSON_IsNull(word))
    {
    goto end; //String
    }
    }

    // wordz_word_response->definition
    cJSON *definition = cJSON_GetObjectItemCaseSensitive(wordz_word_responseJSON, "definition");
    if (cJSON_IsNull(definition)) {
        definition = NULL;
    }
    if (definition) { 
    if(!cJSON_IsString(definition) && !cJSON_IsNull(definition))
    {
    goto end; //String
    }
    }

    // wordz_word_response->scores
    cJSON *scores = cJSON_GetObjectItemCaseSensitive(wordz_word_responseJSON, "scores");
    if (cJSON_IsNull(scores)) {
        scores = NULL;
    }
    if (scores) { 
    scores_local_nonprim = score_list_response_parseFromJSON(scores); //nonprimitive
    }

    // wordz_word_response->icon
    cJSON *icon = cJSON_GetObjectItemCaseSensitive(wordz_word_responseJSON, "icon");
    if (cJSON_IsNull(icon)) {
        icon = NULL;
    }
    if (icon) { 
    icon_local_nonprim = asset_short_response_parseFromJSON(icon); //nonprimitive
    }

    // wordz_word_response->image
    cJSON *image = cJSON_GetObjectItemCaseSensitive(wordz_word_responseJSON, "image");
    if (cJSON_IsNull(image)) {
        image = NULL;
    }
    if (image) { 
    image_local_nonprim = asset_short_response_parseFromJSON(image); //nonprimitive
    }

    // wordz_word_response->author_override
    cJSON *author_override = cJSON_GetObjectItemCaseSensitive(wordz_word_responseJSON, "authorOverride");
    if (cJSON_IsNull(author_override)) {
        author_override = NULL;
    }
    if (author_override) { 
    if(!cJSON_IsString(author_override) && !cJSON_IsNull(author_override))
    {
    goto end; //String
    }
    }

    // wordz_word_response->updated_date
    cJSON *updated_date = cJSON_GetObjectItemCaseSensitive(wordz_word_responseJSON, "updatedDate");
    if (cJSON_IsNull(updated_date)) {
        updated_date = NULL;
    }
    if (updated_date) { 
    if(!cJSON_IsNumber(updated_date))
    {
    goto end; //Numeric
    }
    }

    // wordz_word_response->start_date
    cJSON *start_date = cJSON_GetObjectItemCaseSensitive(wordz_word_responseJSON, "startDate");
    if (cJSON_IsNull(start_date)) {
        start_date = NULL;
    }
    if (start_date) { 
    if(!cJSON_IsNumber(start_date))
    {
    goto end; //Numeric
    }
    }

    // wordz_word_response->end_date
    cJSON *end_date = cJSON_GetObjectItemCaseSensitive(wordz_word_responseJSON, "endDate");
    if (cJSON_IsNull(end_date)) {
        end_date = NULL;
    }
    if (end_date) { 
    if(!cJSON_IsNumber(end_date))
    {
    goto end; //Numeric
    }
    }

    // wordz_word_response->created_date
    cJSON *created_date = cJSON_GetObjectItemCaseSensitive(wordz_word_responseJSON, "createdDate");
    if (cJSON_IsNull(created_date)) {
        created_date = NULL;
    }
    if (created_date) { 
    if(!cJSON_IsNumber(created_date))
    {
    goto end; //Numeric
    }
    }

    // wordz_word_response->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(wordz_word_responseJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // wordz_word_response->allocate_tickets
    cJSON *allocate_tickets = cJSON_GetObjectItemCaseSensitive(wordz_word_responseJSON, "allocateTickets");
    if (cJSON_IsNull(allocate_tickets)) {
        allocate_tickets = NULL;
    }
    if (allocate_tickets) { 
    if(!cJSON_IsBool(allocate_tickets))
    {
    goto end; //Bool
    }
    }

    // wordz_word_response->ticket_type
    cJSON *ticket_type = cJSON_GetObjectItemCaseSensitive(wordz_word_responseJSON, "ticketType");
    if (cJSON_IsNull(ticket_type)) {
        ticket_type = NULL;
    }
    if (ticket_type) { 
    if(!cJSON_IsString(ticket_type) && !cJSON_IsNull(ticket_type))
    {
    goto end; //String
    }
    }

    // wordz_word_response->ticket_count
    cJSON *ticket_count = cJSON_GetObjectItemCaseSensitive(wordz_word_responseJSON, "ticketCount");
    if (cJSON_IsNull(ticket_count)) {
        ticket_count = NULL;
    }
    if (ticket_count) { 
    if(!cJSON_IsNumber(ticket_count))
    {
    goto end; //Numeric
    }
    }

    // wordz_word_response->points
    cJSON *points = cJSON_GetObjectItemCaseSensitive(wordz_word_responseJSON, "points");
    if (cJSON_IsNull(points)) {
        points = NULL;
    }
    if (points) { 
    if(!cJSON_IsNumber(points))
    {
    goto end; //Numeric
    }
    }


    wordz_word_response_local_var = wordz_word_response_create_internal (
        id ? id->valuedouble : 0,
        word && !cJSON_IsNull(word) ? strdup(word->valuestring) : NULL,
        definition && !cJSON_IsNull(definition) ? strdup(definition->valuestring) : NULL,
        scores ? scores_local_nonprim : NULL,
        icon ? icon_local_nonprim : NULL,
        image ? image_local_nonprim : NULL,
        author_override && !cJSON_IsNull(author_override) ? strdup(author_override->valuestring) : NULL,
        updated_date ? updated_date->valuedouble : 0,
        start_date ? start_date->valuedouble : 0,
        end_date ? end_date->valuedouble : 0,
        created_date ? created_date->valuedouble : 0,
        active ? active->valueint : 0,
        allocate_tickets ? allocate_tickets->valueint : 0,
        ticket_type && !cJSON_IsNull(ticket_type) ? strdup(ticket_type->valuestring) : NULL,
        ticket_count ? ticket_count->valuedouble : 0,
        points ? points->valuedouble : 0
        );

    return wordz_word_response_local_var;
end:
    if (scores_local_nonprim) {
        score_list_response_free(scores_local_nonprim);
        scores_local_nonprim = NULL;
    }
    if (icon_local_nonprim) {
        asset_short_response_free(icon_local_nonprim);
        icon_local_nonprim = NULL;
    }
    if (image_local_nonprim) {
        asset_short_response_free(image_local_nonprim);
        image_local_nonprim = NULL;
    }
    return NULL;

}
