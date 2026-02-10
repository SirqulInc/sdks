#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/program.h"


// Create Program
//
// Create a new program
//
program_t*
ProgramAPI_createProgram(apiClient_t *apiClient, double version, program_t *body);


// Delete Program
//
// Delete an existing program
//
void
ProgramAPI_deleteProgram(apiClient_t *apiClient, double version, long id);


// Get Program
//
// Get an existing program
//
program_t*
ProgramAPI_getProgram(apiClient_t *apiClient, double version, long id);


// Update Program
//
// Update an existing program
//
program_t*
ProgramAPI_postProgram(apiClient_t *apiClient, double version, long id, program_t *body);


// Update Program
//
// Update an existing program
//
program_t*
ProgramAPI_putProgram(apiClient_t *apiClient, double version, long id, program_t *body);


// Search Programs
//
// Search for programs
//
list_t*
ProgramAPI_searchPrograms(apiClient_t *apiClient, double version, char *sortField, int *descending, int *start, int *limit, int *activeOnly, char *keyword);


