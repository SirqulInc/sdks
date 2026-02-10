#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/preview_persona_response.h"
#include "../model/sirqul_response.h"


// Create Persona
//
// Creates a new persona. If the given params are null those attributes will be override by null.
//
preview_persona_response_t*
PreviewPersonaAPI_createPersona(apiClient_t *apiClient, double version, long accountId, char *title, char *previewAccounts, long date, int *age, char *gender, char *gameExperienceLevel, double latitude, double longitude);


// Delete Persona
//
// Mark the persona for deletion.
//
sirqul_response_t*
PreviewPersonaAPI_deletePersona(apiClient_t *apiClient, double version, long accountId, long personaId);


// Get Persona
//
// Get the persona by the given persona ID. If the persona cannot be found, a invalid response is returned.
//
preview_persona_response_t*
PreviewPersonaAPI_getPersonaList(apiClient_t *apiClient, double version, long accountId, long personaId);


// Search Personas
//
// Search for persona that the account owns by the given account ID.
//
preview_persona_response_t*
PreviewPersonaAPI_searchPersona(apiClient_t *apiClient, double version, long accountId, int *start, int *limit);


// Update Persona
//
// Update the persona by the given personaId. If the given params are null those attributes will be override by null. If active is assigned, all other params will be ignored.
//
preview_persona_response_t*
PreviewPersonaAPI_updatePersona(apiClient_t *apiClient, double version, long accountId, long personaId, char *title, char *previewAccounts, int *active, long date, int *age, char *gender, char *gameExperienceLevel, double latitude, double longitude);


