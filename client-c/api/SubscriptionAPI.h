#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/application_usage_response.h"
#include "../model/sirqul_response.h"
#include "../model/subscription_plan_response.h"
#include "../model/subscription_response.h"


// Create Subscription
//
// Create a subscription for a billable entity.  Provide a planId, if not provided then the base plan will be assigned.
//
subscription_response_t*
SubscriptionAPI_createSubscription(apiClient_t *apiClient, long accountId, long planId, char *promoCode);


// Delete Subscription
//
// Suspend the current subscription for the billable entity managed by the account.  The account must be the responsible manager to perform this action
//
sirqul_response_t*
SubscriptionAPI_deleteSubscription(apiClient_t *apiClient, long accountId);


// Get Subscription
//
// Use the accountId to determine the associated BillableEntity.  Then get the subscription.
//
subscription_response_t*
SubscriptionAPI_getSubscription(apiClient_t *apiClient, long accountId);


// Get Subscription Plan
//
// Get the matched subscription plan
//
subscription_plan_response_t*
SubscriptionAPI_getSubscriptionPlan(apiClient_t *apiClient, long planId);


// List Subscription Plans
//
// Get the matched subscription plan
//
list_t*
SubscriptionAPI_getSubscriptionPlans(apiClient_t *apiClient, int *visible, char *role);


// Get Subscription Usage
//
// Use the accountId to determine the associated BillableEntity.  Then get the application usage.
//
application_usage_response_t*
SubscriptionAPI_getSubscriptionUsage(apiClient_t *apiClient, long accountId, long applicationId, long start, long end);


// Update Subscription
//
// Updates the subscription for the billable entity for an account
//
subscription_response_t*
SubscriptionAPI_updateSubscription(apiClient_t *apiClient, long accountId, long planId, char *promoCode, int *active);


