#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/twi_ml_response.h"


// Buy Offer by SMS
//
// Recieve an SMS payload from Twillio to purchase an offer.
//
twi_ml_response_t*
TwilioAPI_smsBuyOffer(apiClient_t *apiClient, double version, char *appKey, char *Body, char *From, char *currencyType);


