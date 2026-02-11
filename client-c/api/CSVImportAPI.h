#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/csv_import_response.h"
#include "../model/sirqul_response.h"

// Enum RESPONSEGROUP for CSVImportAPI_getStatusCSV
typedef enum  { sirqul_iot_platform_getStatusCSV_RESPONSEGROUP_NULL = 0, sirqul_iot_platform_getStatusCSV_RESPONSEGROUP_SUMMARY, sirqul_iot_platform_getStatusCSV_RESPONSEGROUP_DETAILS, sirqul_iot_platform_getStatusCSV_RESPONSEGROUP_ERRORS, sirqul_iot_platform_getStatusCSV_RESPONSEGROUP_ALL } sirqul_iot_platform_getStatusCSV_responseGroup_e;

// Enum UPLOADTYPE for CSVImportAPI_uploadCSV
typedef enum  { sirqul_iot_platform_uploadCSV_UPLOADTYPE_NULL = 0, sirqul_iot_platform_uploadCSV_UPLOADTYPE_OFFERS, sirqul_iot_platform_uploadCSV_UPLOADTYPE_RETAILERS, sirqul_iot_platform_uploadCSV_UPLOADTYPE_RETAILERLOCATIONS, sirqul_iot_platform_uploadCSV_UPLOADTYPE_CATEGORIES, sirqul_iot_platform_uploadCSV_UPLOADTYPE_FILTERS } sirqul_iot_platform_uploadCSV_uploadType_e;

// Enum FILEFORMAT for CSVImportAPI_uploadCSV
typedef enum  { sirqul_iot_platform_uploadCSV_FILEFORMAT_NULL = 0, sirqul_iot_platform_uploadCSV_FILEFORMAT_EXCEL, sirqul_iot_platform_uploadCSV_FILEFORMAT_MYSQL, sirqul_iot_platform_uploadCSV_FILEFORMAT_RFC4180, sirqul_iot_platform_uploadCSV_FILEFORMAT_TDF } sirqul_iot_platform_uploadCSV_fileFormat_e;


// Detail Status
//
sirqul_response_t*
CSVImportAPI_getStatusCSV(apiClient_t *apiClient, long accountId, long batchId, sirqul_iot_platform_getStatusCSV_responseGroup_e responseGroup, long start, long limit);


// Search Status
//
// Retrieves batches for a user.
//
csv_import_response_t*
CSVImportAPI_listStatusCSV(apiClient_t *apiClient, long accountId, int *start, int *limit);


// Batch Status
//
// Checks status of batch upload.
//
csv_import_response_t*
CSVImportAPI_statusCSV(apiClient_t *apiClient, long accountId, long batchId);


// Upload CSV
//
// Uploads a CSV import file.
//
csv_import_response_t*
CSVImportAPI_uploadCSV(apiClient_t *apiClient, long accountId, sirqul_iot_platform_uploadCSV_uploadType_e uploadType, binary_t* importFile, sirqul_iot_platform_uploadCSV_fileFormat_e fileFormat, char *appKey);


