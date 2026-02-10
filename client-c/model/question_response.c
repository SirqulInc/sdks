#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "question_response.h"



static question_response_t *question_response_create_internal(
    long id,
    char *question,
    asset_short_response_t *image,
    char *video_url,
    int active,
    list_t *answers,
    score_list_response_t *scores,
    ticket_list_response_t *tickets,
    account_short_response_t *owner,
    asset_short_response_t *icon,
    char *author_override,
    long updated_date,
    long start_date,
    long end_date,
    long created_date,
    char *tags,
    int allocate_tickets,
    char *ticket_type,
    long ticket_count,
    long points
    ) {
    question_response_t *question_response_local_var = malloc(sizeof(question_response_t));
    if (!question_response_local_var) {
        return NULL;
    }
    question_response_local_var->id = id;
    question_response_local_var->question = question;
    question_response_local_var->image = image;
    question_response_local_var->video_url = video_url;
    question_response_local_var->active = active;
    question_response_local_var->answers = answers;
    question_response_local_var->scores = scores;
    question_response_local_var->tickets = tickets;
    question_response_local_var->owner = owner;
    question_response_local_var->icon = icon;
    question_response_local_var->author_override = author_override;
    question_response_local_var->updated_date = updated_date;
    question_response_local_var->start_date = start_date;
    question_response_local_var->end_date = end_date;
    question_response_local_var->created_date = created_date;
    question_response_local_var->tags = tags;
    question_response_local_var->allocate_tickets = allocate_tickets;
    question_response_local_var->ticket_type = ticket_type;
    question_response_local_var->ticket_count = ticket_count;
    question_response_local_var->points = points;

    question_response_local_var->_library_owned = 1;
    return question_response_local_var;
}

__attribute__((deprecated)) question_response_t *question_response_create(
    long id,
    char *question,
    asset_short_response_t *image,
    char *video_url,
    int active,
    list_t *answers,
    score_list_response_t *scores,
    ticket_list_response_t *tickets,
    account_short_response_t *owner,
    asset_short_response_t *icon,
    char *author_override,
    long updated_date,
    long start_date,
    long end_date,
    long created_date,
    char *tags,
    int allocate_tickets,
    char *ticket_type,
    long ticket_count,
    long points
    ) {
    return question_response_create_internal (
        id,
        question,
        image,
        video_url,
        active,
        answers,
        scores,
        tickets,
        owner,
        icon,
        author_override,
        updated_date,
        start_date,
        end_date,
        created_date,
        tags,
        allocate_tickets,
        ticket_type,
        ticket_count,
        points
        );
}

void question_response_free(question_response_t *question_response) {
    if(NULL == question_response){
        return ;
    }
    if(question_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "question_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (question_response->question) {
        free(question_response->question);
        question_response->question = NULL;
    }
    if (question_response->image) {
        asset_short_response_free(question_response->image);
        question_response->image = NULL;
    }
    if (question_response->video_url) {
        free(question_response->video_url);
        question_response->video_url = NULL;
    }
    if (question_response->answers) {
        list_ForEach(listEntry, question_response->answers) {
            answer_response_free(listEntry->data);
        }
        list_freeList(question_response->answers);
        question_response->answers = NULL;
    }
    if (question_response->scores) {
        score_list_response_free(question_response->scores);
        question_response->scores = NULL;
    }
    if (question_response->tickets) {
        ticket_list_response_free(question_response->tickets);
        question_response->tickets = NULL;
    }
    if (question_response->owner) {
        account_short_response_free(question_response->owner);
        question_response->owner = NULL;
    }
    if (question_response->icon) {
        asset_short_response_free(question_response->icon);
        question_response->icon = NULL;
    }
    if (question_response->author_override) {
        free(question_response->author_override);
        question_response->author_override = NULL;
    }
    if (question_response->tags) {
        free(question_response->tags);
        question_response->tags = NULL;
    }
    if (question_response->ticket_type) {
        free(question_response->ticket_type);
        question_response->ticket_type = NULL;
    }
    free(question_response);
}

cJSON *question_response_convertToJSON(question_response_t *question_response) {
    cJSON *item = cJSON_CreateObject();

    // question_response->id
    if(question_response->id) {
    if(cJSON_AddNumberToObject(item, "id", question_response->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // question_response->question
    if(question_response->question) {
    if(cJSON_AddStringToObject(item, "question", question_response->question) == NULL) {
    goto fail; //String
    }
    }


    // question_response->image
    if(question_response->image) {
    cJSON *image_local_JSON = asset_short_response_convertToJSON(question_response->image);
    if(image_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "image", image_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // question_response->video_url
    if(question_response->video_url) {
    if(cJSON_AddStringToObject(item, "videoURL", question_response->video_url) == NULL) {
    goto fail; //String
    }
    }


    // question_response->active
    if(question_response->active) {
    if(cJSON_AddBoolToObject(item, "active", question_response->active) == NULL) {
    goto fail; //Bool
    }
    }


    // question_response->answers
    if(question_response->answers) {
    cJSON *answers = cJSON_AddArrayToObject(item, "answers");
    if(answers == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *answersListEntry;
    if (question_response->answers) {
    list_ForEach(answersListEntry, question_response->answers) {
    cJSON *itemLocal = answer_response_convertToJSON(answersListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(answers, itemLocal);
    }
    }
    }


    // question_response->scores
    if(question_response->scores) {
    cJSON *scores_local_JSON = score_list_response_convertToJSON(question_response->scores);
    if(scores_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "scores", scores_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // question_response->tickets
    if(question_response->tickets) {
    cJSON *tickets_local_JSON = ticket_list_response_convertToJSON(question_response->tickets);
    if(tickets_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "tickets", tickets_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // question_response->owner
    if(question_response->owner) {
    cJSON *owner_local_JSON = account_short_response_convertToJSON(question_response->owner);
    if(owner_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "owner", owner_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // question_response->icon
    if(question_response->icon) {
    cJSON *icon_local_JSON = asset_short_response_convertToJSON(question_response->icon);
    if(icon_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "icon", icon_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // question_response->author_override
    if(question_response->author_override) {
    if(cJSON_AddStringToObject(item, "authorOverride", question_response->author_override) == NULL) {
    goto fail; //String
    }
    }


    // question_response->updated_date
    if(question_response->updated_date) {
    if(cJSON_AddNumberToObject(item, "updatedDate", question_response->updated_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // question_response->start_date
    if(question_response->start_date) {
    if(cJSON_AddNumberToObject(item, "startDate", question_response->start_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // question_response->end_date
    if(question_response->end_date) {
    if(cJSON_AddNumberToObject(item, "endDate", question_response->end_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // question_response->created_date
    if(question_response->created_date) {
    if(cJSON_AddNumberToObject(item, "createdDate", question_response->created_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // question_response->tags
    if(question_response->tags) {
    if(cJSON_AddStringToObject(item, "tags", question_response->tags) == NULL) {
    goto fail; //String
    }
    }


    // question_response->allocate_tickets
    if(question_response->allocate_tickets) {
    if(cJSON_AddBoolToObject(item, "allocateTickets", question_response->allocate_tickets) == NULL) {
    goto fail; //Bool
    }
    }


    // question_response->ticket_type
    if(question_response->ticket_type) {
    if(cJSON_AddStringToObject(item, "ticketType", question_response->ticket_type) == NULL) {
    goto fail; //String
    }
    }


    // question_response->ticket_count
    if(question_response->ticket_count) {
    if(cJSON_AddNumberToObject(item, "ticketCount", question_response->ticket_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // question_response->points
    if(question_response->points) {
    if(cJSON_AddNumberToObject(item, "points", question_response->points) == NULL) {
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

question_response_t *question_response_parseFromJSON(cJSON *question_responseJSON){

    question_response_t *question_response_local_var = NULL;

    // define the local variable for question_response->image
    asset_short_response_t *image_local_nonprim = NULL;

    // define the local list for question_response->answers
    list_t *answersList = NULL;

    // define the local variable for question_response->scores
    score_list_response_t *scores_local_nonprim = NULL;

    // define the local variable for question_response->tickets
    ticket_list_response_t *tickets_local_nonprim = NULL;

    // define the local variable for question_response->owner
    account_short_response_t *owner_local_nonprim = NULL;

    // define the local variable for question_response->icon
    asset_short_response_t *icon_local_nonprim = NULL;

    // question_response->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(question_responseJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // question_response->question
    cJSON *question = cJSON_GetObjectItemCaseSensitive(question_responseJSON, "question");
    if (cJSON_IsNull(question)) {
        question = NULL;
    }
    if (question) { 
    if(!cJSON_IsString(question) && !cJSON_IsNull(question))
    {
    goto end; //String
    }
    }

    // question_response->image
    cJSON *image = cJSON_GetObjectItemCaseSensitive(question_responseJSON, "image");
    if (cJSON_IsNull(image)) {
        image = NULL;
    }
    if (image) { 
    image_local_nonprim = asset_short_response_parseFromJSON(image); //nonprimitive
    }

    // question_response->video_url
    cJSON *video_url = cJSON_GetObjectItemCaseSensitive(question_responseJSON, "videoURL");
    if (cJSON_IsNull(video_url)) {
        video_url = NULL;
    }
    if (video_url) { 
    if(!cJSON_IsString(video_url) && !cJSON_IsNull(video_url))
    {
    goto end; //String
    }
    }

    // question_response->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(question_responseJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // question_response->answers
    cJSON *answers = cJSON_GetObjectItemCaseSensitive(question_responseJSON, "answers");
    if (cJSON_IsNull(answers)) {
        answers = NULL;
    }
    if (answers) { 
    cJSON *answers_local_nonprimitive = NULL;
    if(!cJSON_IsArray(answers)){
        goto end; //nonprimitive container
    }

    answersList = list_createList();

    cJSON_ArrayForEach(answers_local_nonprimitive,answers )
    {
        if(!cJSON_IsObject(answers_local_nonprimitive)){
            goto end;
        }
        answer_response_t *answersItem = answer_response_parseFromJSON(answers_local_nonprimitive);

        list_addElement(answersList, answersItem);
    }
    }

    // question_response->scores
    cJSON *scores = cJSON_GetObjectItemCaseSensitive(question_responseJSON, "scores");
    if (cJSON_IsNull(scores)) {
        scores = NULL;
    }
    if (scores) { 
    scores_local_nonprim = score_list_response_parseFromJSON(scores); //nonprimitive
    }

    // question_response->tickets
    cJSON *tickets = cJSON_GetObjectItemCaseSensitive(question_responseJSON, "tickets");
    if (cJSON_IsNull(tickets)) {
        tickets = NULL;
    }
    if (tickets) { 
    tickets_local_nonprim = ticket_list_response_parseFromJSON(tickets); //nonprimitive
    }

    // question_response->owner
    cJSON *owner = cJSON_GetObjectItemCaseSensitive(question_responseJSON, "owner");
    if (cJSON_IsNull(owner)) {
        owner = NULL;
    }
    if (owner) { 
    owner_local_nonprim = account_short_response_parseFromJSON(owner); //nonprimitive
    }

    // question_response->icon
    cJSON *icon = cJSON_GetObjectItemCaseSensitive(question_responseJSON, "icon");
    if (cJSON_IsNull(icon)) {
        icon = NULL;
    }
    if (icon) { 
    icon_local_nonprim = asset_short_response_parseFromJSON(icon); //nonprimitive
    }

    // question_response->author_override
    cJSON *author_override = cJSON_GetObjectItemCaseSensitive(question_responseJSON, "authorOverride");
    if (cJSON_IsNull(author_override)) {
        author_override = NULL;
    }
    if (author_override) { 
    if(!cJSON_IsString(author_override) && !cJSON_IsNull(author_override))
    {
    goto end; //String
    }
    }

    // question_response->updated_date
    cJSON *updated_date = cJSON_GetObjectItemCaseSensitive(question_responseJSON, "updatedDate");
    if (cJSON_IsNull(updated_date)) {
        updated_date = NULL;
    }
    if (updated_date) { 
    if(!cJSON_IsNumber(updated_date))
    {
    goto end; //Numeric
    }
    }

    // question_response->start_date
    cJSON *start_date = cJSON_GetObjectItemCaseSensitive(question_responseJSON, "startDate");
    if (cJSON_IsNull(start_date)) {
        start_date = NULL;
    }
    if (start_date) { 
    if(!cJSON_IsNumber(start_date))
    {
    goto end; //Numeric
    }
    }

    // question_response->end_date
    cJSON *end_date = cJSON_GetObjectItemCaseSensitive(question_responseJSON, "endDate");
    if (cJSON_IsNull(end_date)) {
        end_date = NULL;
    }
    if (end_date) { 
    if(!cJSON_IsNumber(end_date))
    {
    goto end; //Numeric
    }
    }

    // question_response->created_date
    cJSON *created_date = cJSON_GetObjectItemCaseSensitive(question_responseJSON, "createdDate");
    if (cJSON_IsNull(created_date)) {
        created_date = NULL;
    }
    if (created_date) { 
    if(!cJSON_IsNumber(created_date))
    {
    goto end; //Numeric
    }
    }

    // question_response->tags
    cJSON *tags = cJSON_GetObjectItemCaseSensitive(question_responseJSON, "tags");
    if (cJSON_IsNull(tags)) {
        tags = NULL;
    }
    if (tags) { 
    if(!cJSON_IsString(tags) && !cJSON_IsNull(tags))
    {
    goto end; //String
    }
    }

    // question_response->allocate_tickets
    cJSON *allocate_tickets = cJSON_GetObjectItemCaseSensitive(question_responseJSON, "allocateTickets");
    if (cJSON_IsNull(allocate_tickets)) {
        allocate_tickets = NULL;
    }
    if (allocate_tickets) { 
    if(!cJSON_IsBool(allocate_tickets))
    {
    goto end; //Bool
    }
    }

    // question_response->ticket_type
    cJSON *ticket_type = cJSON_GetObjectItemCaseSensitive(question_responseJSON, "ticketType");
    if (cJSON_IsNull(ticket_type)) {
        ticket_type = NULL;
    }
    if (ticket_type) { 
    if(!cJSON_IsString(ticket_type) && !cJSON_IsNull(ticket_type))
    {
    goto end; //String
    }
    }

    // question_response->ticket_count
    cJSON *ticket_count = cJSON_GetObjectItemCaseSensitive(question_responseJSON, "ticketCount");
    if (cJSON_IsNull(ticket_count)) {
        ticket_count = NULL;
    }
    if (ticket_count) { 
    if(!cJSON_IsNumber(ticket_count))
    {
    goto end; //Numeric
    }
    }

    // question_response->points
    cJSON *points = cJSON_GetObjectItemCaseSensitive(question_responseJSON, "points");
    if (cJSON_IsNull(points)) {
        points = NULL;
    }
    if (points) { 
    if(!cJSON_IsNumber(points))
    {
    goto end; //Numeric
    }
    }


    question_response_local_var = question_response_create_internal (
        id ? id->valuedouble : 0,
        question && !cJSON_IsNull(question) ? strdup(question->valuestring) : NULL,
        image ? image_local_nonprim : NULL,
        video_url && !cJSON_IsNull(video_url) ? strdup(video_url->valuestring) : NULL,
        active ? active->valueint : 0,
        answers ? answersList : NULL,
        scores ? scores_local_nonprim : NULL,
        tickets ? tickets_local_nonprim : NULL,
        owner ? owner_local_nonprim : NULL,
        icon ? icon_local_nonprim : NULL,
        author_override && !cJSON_IsNull(author_override) ? strdup(author_override->valuestring) : NULL,
        updated_date ? updated_date->valuedouble : 0,
        start_date ? start_date->valuedouble : 0,
        end_date ? end_date->valuedouble : 0,
        created_date ? created_date->valuedouble : 0,
        tags && !cJSON_IsNull(tags) ? strdup(tags->valuestring) : NULL,
        allocate_tickets ? allocate_tickets->valueint : 0,
        ticket_type && !cJSON_IsNull(ticket_type) ? strdup(ticket_type->valuestring) : NULL,
        ticket_count ? ticket_count->valuedouble : 0,
        points ? points->valuedouble : 0
        );

    return question_response_local_var;
end:
    if (image_local_nonprim) {
        asset_short_response_free(image_local_nonprim);
        image_local_nonprim = NULL;
    }
    if (answersList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, answersList) {
            answer_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(answersList);
        answersList = NULL;
    }
    if (scores_local_nonprim) {
        score_list_response_free(scores_local_nonprim);
        scores_local_nonprim = NULL;
    }
    if (tickets_local_nonprim) {
        ticket_list_response_free(tickets_local_nonprim);
        tickets_local_nonprim = NULL;
    }
    if (owner_local_nonprim) {
        account_short_response_free(owner_local_nonprim);
        owner_local_nonprim = NULL;
    }
    if (icon_local_nonprim) {
        asset_short_response_free(icon_local_nonprim);
        icon_local_nonprim = NULL;
    }
    return NULL;

}
