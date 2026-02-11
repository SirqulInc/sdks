#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/sirqul_response.h"


// Create Stripe Checkout Session
//
// Create a Stripe checkout session
//
sirqul_response_t*
StripeAPI_createStripeCheckoutSession(apiClient_t *apiClient, char *appKey, char *stripeParameters);


