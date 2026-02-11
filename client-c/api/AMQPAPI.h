#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/queue_response.h"
#include "../model/sirqul_response.h"


// Create Consumer
//
// Create a connection to an existing amqp queue and register as a consumer.
//
queue_response_t*
AMQPAPI_consumerCreate(apiClient_t *apiClient, char *appKey, char *name, char *hostname, char *username, char *password, char *dataMapping, char *deviceId, long accountId, int *port, char *virtualHost, char *exchanger, char *exchangerType, int *workers, int *useSSL);


// Update Consumer
//
// Update an existing amqp queue's data mapping.
//
queue_response_t*
AMQPAPI_consumerUpdate(apiClient_t *apiClient, char *appKey, long queueId, char *dataMapping, char *deviceId, long accountId, int *useSSL);


// Create Queue
//
// Create a basic AMQP queue. If the username and password and virtual host is not sepcified, the queue will be created on the virtual host assigned to the application.
//
queue_response_t*
AMQPAPI_queueCreate(apiClient_t *apiClient, char *appKey, char *name, char *deviceId, long accountId, int *workers, char *analyticTags, char *hostname, int *port, char *username, char *password, char *virtualHost, int *useSSL);


// Delete Queue
//
// Delete the stored queue record and close any active connections to the AMQP servers.
//
sirqul_response_t*
AMQPAPI_queueDelete(apiClient_t *apiClient, long queueId, char *deviceId, long accountId);


// Get Queue
//
// Get the stored queue record. Must supply the queueId, or the name and hostname and virtualHost, or the name and appKey to find the record.
//
queue_response_t*
AMQPAPI_queueGet(apiClient_t *apiClient, char *deviceId, long accountId, long queueId, char *appKey, char *name, char *hostname, char *virtualHost);


// Publish Queue
//
// Publish a message to a stored queue. Must supply the queueId, or the name and hostname and virtualHost, or the name and appKey to find the record.
//
sirqul_response_t*
AMQPAPI_queuePublish(apiClient_t *apiClient, char *message, long queueId, char *appKey, char *name, char *hostname, char *virtualHost);


// Search Queue
//
// Get the queues setup for the BillableEntity's applications.
//
queue_response_t*
AMQPAPI_queueSearch(apiClient_t *apiClient, long queueId, char *deviceId, long accountId, char *name, int *start, int *limit);


// Update Queue
//
// Update the basic AMQP queue.
//
queue_response_t*
AMQPAPI_queueUpdate(apiClient_t *apiClient, long queueId, char *deviceId, long accountId, char *appKey, int *workers, char *analyticTags, char *hostname, int *port, char *username, char *password, char *virtualHost, int *useSSL);


