#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/region_leg_summary.h"
#include "../model/report_batch_response.h"
#include "../model/report_region_leg_summary_batch_response.h"
#include "../model/report_response.h"
#include "../model/sirqul_response.h"

// Enum STATUS for ReportingAPI_createBatch
typedef enum  { sirqul_iot_platform_createBatch_STATUS_NULL = 0, sirqul_iot_platform_createBatch_STATUS__NEW, sirqul_iot_platform_createBatch_STATUS_ERROR, sirqul_iot_platform_createBatch_STATUS_COMPLETE, sirqul_iot_platform_createBatch_STATUS_PARSE_ERROR, sirqul_iot_platform_createBatch_STATUS_PROCESSING, sirqul_iot_platform_createBatch_STATUS_DUPLICATE, sirqul_iot_platform_createBatch_STATUS_SAVEONLY } sirqul_iot_platform_createBatch_status_e;

// Enum RESPONSEFORMAT for ReportingAPI_runReport
typedef enum  { sirqul_iot_platform_runReport_RESPONSEFORMAT_NULL = 0, sirqul_iot_platform_runReport_RESPONSEFORMAT_HTML, sirqul_iot_platform_runReport_RESPONSEFORMAT_XML, sirqul_iot_platform_runReport_RESPONSEFORMAT_JSON, sirqul_iot_platform_runReport_RESPONSEFORMAT_CSV } sirqul_iot_platform_runReport_responseFormat_e;

// Enum STATUS for ReportingAPI_searchBatch
typedef enum  { sirqul_iot_platform_searchBatch_STATUS_NULL = 0, sirqul_iot_platform_searchBatch_STATUS__NEW, sirqul_iot_platform_searchBatch_STATUS_ERROR, sirqul_iot_platform_searchBatch_STATUS_COMPLETE, sirqul_iot_platform_searchBatch_STATUS_PARSE_ERROR, sirqul_iot_platform_searchBatch_STATUS_PROCESSING, sirqul_iot_platform_searchBatch_STATUS_DUPLICATE, sirqul_iot_platform_searchBatch_STATUS_SAVEONLY } sirqul_iot_platform_searchBatch_status_e;


// Create Offline Report
//
// Create an entry for the batch for offline report
//
report_batch_response_t*
ReportingAPI_createBatch(apiClient_t *apiClient, long accountId, sirqul_iot_platform_createBatch_status_e status, int *previewLimit, char *appKey, char *endpoint, char *parameters, char *name, long startDate, long endDate, char *description, char *pageUrl);


// Create Offline Report
//
// Create an entry for the batch for offline report
//
report_region_leg_summary_batch_response_t*
ReportingAPI_createRegionLegSummaryBatch(apiClient_t *apiClient, list_t *body);


// Delete Offline Report
//
// Deletes a batch report.
//
sirqul_response_t*
ReportingAPI_deleteBatch(apiClient_t *apiClient, long accountId, long batchId);


// Get Offline Report
//
// Checks status of batch report.
//
report_batch_response_t*
ReportingAPI_getReportBatch(apiClient_t *apiClient, long accountId, long batchId, int *allResults);


// Run Report
//
//  This endpoint allows you to run a set of predefined reports that can be used to understand your users' behavior as well as trends within your application.
//
report_response_t*
ReportingAPI_runReport(apiClient_t *apiClient, int *desc, long accountId, char *query, char *parameters, char *order, long start, long limit, sirqul_iot_platform_runReport_responseFormat_e responseFormat);


// Search Offline Reports
//
// Retrieves batches for a user..
//
list_t*
ReportingAPI_searchBatch(apiClient_t *apiClient, long accountId, int *start, int *limit, char *names, char *appKey, sirqul_iot_platform_searchBatch_status_e status, int *globalAppSearch, long startDate, long endDate);


