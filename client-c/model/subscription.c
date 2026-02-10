#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "subscription.h"


char* subscription_message_ToString(sirqul_iot_platform_subscription_MESSAGE_e message) {
    char* messageArray[] =  { "NULL", "_400", "_403", "_500", "_600", "_1000", "_1001", "_1002", "_1003", "_1004", "_1005", "_1006", "_1007", "_1008", "_1009", "_1010", "_1011", "_1012", "_1013", "_1014", "_1015", "_1016", "_1017", "_1018", "_1019", "_1020", "_1021", "_1022", "_1023", "_1024", "_1025", "_1026", "_1027", "_1028", "_1029", "_1030", "_1031", "_1032", "_1033", "_1034", "_1035", "_1036", "_1037", "_1038", "_1100", "_1101", "_1102", "_1103", "_1104", "_1105", "_1106", "_1107", "_1108", "_1109", "_1110", "_2000", "_2001", "_2002", "_2003", "_2004", "_2005", "_2006", "_2007", "_2008", "_2009", "_2010", "_2011", "_2012", "_2013", "_2100", "_2101", "_2102", "_2103", "_2200", "_2201", "_2202", "_2203", "_2204", "_2205", "_2206", "_2207", "_2208", "_2209", "_2210", "_2211", "_2212", "_2300", "_2301", "_2302", "_2303", "_2400", "_2401", "_2402", "_2500", "_2501", "_2502", "_2503", "_2504", "_2505", "_2506", "_2507", "_2508", "_2509", "_2510", "_2511", "_2512", "_2513", "_2514", "_2515", "_2600", "_2601", "_2602", "_2603", "_2604", "_2700", "_2701", "_2702", "_2703", "_2704", "_2705", "_2800", "_2801", "_2900", "_2901", "_2902", "_2903", "_2904", "_2905", "_2906", "_3000", "_3001", "_3002", "_3100", "_3101", "_3102", "_3103", "_3104", "_3200", "_3201", "_3300", "_3301", "_3302", "_3303", "_3304", "_3305", "_3306", "_3307", "_3308", "_3309", "_3310", "_3311", "_3312", "_3313", "_3314", "_3315", "_3316", "_3400", "_3401", "_3500", "_3501", "_3502", "_3503", "_3504", "_3505", "_3506", "_3507", "_3508", "_3600", "_3601", "_3602", "_3603", "_3700", "_3701", "_3702", "_3703", "_3800", "_3801", "_3802", "_3803", "_3804", "_3805", "_3806", "_3807", "_3900", "_3901", "_3902", "_3903", "_3904", "_3905", "_4000", "_4001", "_4002", "_4100", "_4101", "_4102", "_4103", "_4200", "_4201", "_4202", "_4203", "_4204", "_4205", "_4300", "_4301", "_4302", "_4303", "_4304", "_4400", "_4401", "_4500", "_4501", "_4502", "_4503", "_4504", "_4505", "_4600", "_4700", "_4701", "_4702", "_4800", "_4801", "_4900", "_4901", "_4902", "_4903", "_4904", "_4905", "_4906", "_5000", "_5001", "_5002", "_5003", "_5100", "_5101", "_5102", "_5103", "_5104", "_5200", "_5300", "_5301", "_5302", "_5303", "_5400", "_5500", "_5501", "_5600", "_5601", "_5602", "_5603", "_5604", "_5606", "_5607", "_5608", "_5609", "_5700", "_5701", "_5702", "_5703", "_5704", "_5705", "_5800", "_5801", "_5802", "_5803", "_5804", "_5805", "_5806", "_5807", "_5900", "_5901", "_5902", "_5903", "_5904", "_5905", "_5906", "_5907", "_5908", "_5909", "_5910", "_5911", "_5912", "_5913", "_5914", "_5915", "_5916", "_6000", "_6001", "_6100", "_6101", "_6102", "_6103", "_6200", "_6201", "_6202", "_6300", "_6301", "_6302", "_6303", "_6304", "_6305", "_6306", "_6307", "_6308", "_6309", "_6310", "_6311", "_6312", "_6400", "_6401", "_6402", "_6403", "_6404", "_6500", "_6501", "_6502", "_6600", "_6601", "_6602", "_6603", "_6700", "_6701", "_6702", "_6703", "_6704", "_6705", "_6706", "_6707", "_6708", "_6709", "_6800", "_6801", "_6802", "_6803", "_6900", "_6901", "_6902", "_6903", "_7000", "_7100", "_7101", "_7102", "_7200", "_7201", "_7300", "_7301", "_7302", "_7303", "_7400", "_7401", "_7402", "_7403", "_7404", "_7405", "_7500", "_7501", "_7600", "_7601", "_7602", "_7603", "_7604", "_7605", "_7606", "_7700", "_7701", "_7702", "_7703", "_7704", "_7705", "_7706", "_7707", "_7800", "_7801", "_7802", "_7803", "_7804", "_7805", "_7806", "_7807", "_7808", "_7809", "_7810", "_7811", "_7812", "_7813", "_7814", "_7815", "_7817", "_7818", "_7819", "_7900", "_7901", "_7902", "_7903", "_7904", "_7905", "_7906", "_8000", "_8001", "_8100", "_8101", "_8102", "_8103", "_8104", "_8105", "_8107", "_8108", "_8200", "_8201", "_10000", "_10001", "_10002", "_10003", "_10004", "_10005", "_10006", "_10020", "_10021", "_10022", "_10040", "_10041", "_10042", "_10043", "_11000", "_11001", "_11002", "_11003", "_11004", "_11005", "_12000", "_12001", "_12002", "_12003", "_12004", "_12005", "_13000", "_13001", "_13002", "_14000", "_14001", "_14002", "_14003", "_14004", "_14005", "_14006", "_14007", "_14008", "_14009", "_14010", "_14011", "_14012" };
    return messageArray[message];
}

sirqul_iot_platform_subscription_MESSAGE_e subscription_message_FromString(char* message){
    int stringToReturn = 0;
    char *messageArray[] =  { "NULL", "_400", "_403", "_500", "_600", "_1000", "_1001", "_1002", "_1003", "_1004", "_1005", "_1006", "_1007", "_1008", "_1009", "_1010", "_1011", "_1012", "_1013", "_1014", "_1015", "_1016", "_1017", "_1018", "_1019", "_1020", "_1021", "_1022", "_1023", "_1024", "_1025", "_1026", "_1027", "_1028", "_1029", "_1030", "_1031", "_1032", "_1033", "_1034", "_1035", "_1036", "_1037", "_1038", "_1100", "_1101", "_1102", "_1103", "_1104", "_1105", "_1106", "_1107", "_1108", "_1109", "_1110", "_2000", "_2001", "_2002", "_2003", "_2004", "_2005", "_2006", "_2007", "_2008", "_2009", "_2010", "_2011", "_2012", "_2013", "_2100", "_2101", "_2102", "_2103", "_2200", "_2201", "_2202", "_2203", "_2204", "_2205", "_2206", "_2207", "_2208", "_2209", "_2210", "_2211", "_2212", "_2300", "_2301", "_2302", "_2303", "_2400", "_2401", "_2402", "_2500", "_2501", "_2502", "_2503", "_2504", "_2505", "_2506", "_2507", "_2508", "_2509", "_2510", "_2511", "_2512", "_2513", "_2514", "_2515", "_2600", "_2601", "_2602", "_2603", "_2604", "_2700", "_2701", "_2702", "_2703", "_2704", "_2705", "_2800", "_2801", "_2900", "_2901", "_2902", "_2903", "_2904", "_2905", "_2906", "_3000", "_3001", "_3002", "_3100", "_3101", "_3102", "_3103", "_3104", "_3200", "_3201", "_3300", "_3301", "_3302", "_3303", "_3304", "_3305", "_3306", "_3307", "_3308", "_3309", "_3310", "_3311", "_3312", "_3313", "_3314", "_3315", "_3316", "_3400", "_3401", "_3500", "_3501", "_3502", "_3503", "_3504", "_3505", "_3506", "_3507", "_3508", "_3600", "_3601", "_3602", "_3603", "_3700", "_3701", "_3702", "_3703", "_3800", "_3801", "_3802", "_3803", "_3804", "_3805", "_3806", "_3807", "_3900", "_3901", "_3902", "_3903", "_3904", "_3905", "_4000", "_4001", "_4002", "_4100", "_4101", "_4102", "_4103", "_4200", "_4201", "_4202", "_4203", "_4204", "_4205", "_4300", "_4301", "_4302", "_4303", "_4304", "_4400", "_4401", "_4500", "_4501", "_4502", "_4503", "_4504", "_4505", "_4600", "_4700", "_4701", "_4702", "_4800", "_4801", "_4900", "_4901", "_4902", "_4903", "_4904", "_4905", "_4906", "_5000", "_5001", "_5002", "_5003", "_5100", "_5101", "_5102", "_5103", "_5104", "_5200", "_5300", "_5301", "_5302", "_5303", "_5400", "_5500", "_5501", "_5600", "_5601", "_5602", "_5603", "_5604", "_5606", "_5607", "_5608", "_5609", "_5700", "_5701", "_5702", "_5703", "_5704", "_5705", "_5800", "_5801", "_5802", "_5803", "_5804", "_5805", "_5806", "_5807", "_5900", "_5901", "_5902", "_5903", "_5904", "_5905", "_5906", "_5907", "_5908", "_5909", "_5910", "_5911", "_5912", "_5913", "_5914", "_5915", "_5916", "_6000", "_6001", "_6100", "_6101", "_6102", "_6103", "_6200", "_6201", "_6202", "_6300", "_6301", "_6302", "_6303", "_6304", "_6305", "_6306", "_6307", "_6308", "_6309", "_6310", "_6311", "_6312", "_6400", "_6401", "_6402", "_6403", "_6404", "_6500", "_6501", "_6502", "_6600", "_6601", "_6602", "_6603", "_6700", "_6701", "_6702", "_6703", "_6704", "_6705", "_6706", "_6707", "_6708", "_6709", "_6800", "_6801", "_6802", "_6803", "_6900", "_6901", "_6902", "_6903", "_7000", "_7100", "_7101", "_7102", "_7200", "_7201", "_7300", "_7301", "_7302", "_7303", "_7400", "_7401", "_7402", "_7403", "_7404", "_7405", "_7500", "_7501", "_7600", "_7601", "_7602", "_7603", "_7604", "_7605", "_7606", "_7700", "_7701", "_7702", "_7703", "_7704", "_7705", "_7706", "_7707", "_7800", "_7801", "_7802", "_7803", "_7804", "_7805", "_7806", "_7807", "_7808", "_7809", "_7810", "_7811", "_7812", "_7813", "_7814", "_7815", "_7817", "_7818", "_7819", "_7900", "_7901", "_7902", "_7903", "_7904", "_7905", "_7906", "_8000", "_8001", "_8100", "_8101", "_8102", "_8103", "_8104", "_8105", "_8107", "_8108", "_8200", "_8201", "_10000", "_10001", "_10002", "_10003", "_10004", "_10005", "_10006", "_10020", "_10021", "_10022", "_10040", "_10041", "_10042", "_10043", "_11000", "_11001", "_11002", "_11003", "_11004", "_11005", "_12000", "_12001", "_12002", "_12003", "_12004", "_12005", "_13000", "_13001", "_13002", "_14000", "_14001", "_14002", "_14003", "_14004", "_14005", "_14006", "_14007", "_14008", "_14009", "_14010", "_14011", "_14012" };
    size_t sizeofArray = sizeof(messageArray) / sizeof(messageArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(message, messageArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static subscription_t *subscription_create_internal(
    long id,
    int active,
    int valid,
    subscription_plan_t *subscription_plan,
    char *remote_subscription_id,
    char *promo_code,
    int failed,
    sirqul_iot_platform_subscription_MESSAGE_e message
    ) {
    subscription_t *subscription_local_var = malloc(sizeof(subscription_t));
    if (!subscription_local_var) {
        return NULL;
    }
    subscription_local_var->id = id;
    subscription_local_var->active = active;
    subscription_local_var->valid = valid;
    subscription_local_var->subscription_plan = subscription_plan;
    subscription_local_var->remote_subscription_id = remote_subscription_id;
    subscription_local_var->promo_code = promo_code;
    subscription_local_var->failed = failed;
    subscription_local_var->message = message;

    subscription_local_var->_library_owned = 1;
    return subscription_local_var;
}

__attribute__((deprecated)) subscription_t *subscription_create(
    long id,
    int active,
    int valid,
    subscription_plan_t *subscription_plan,
    char *remote_subscription_id,
    char *promo_code,
    int failed,
    sirqul_iot_platform_subscription_MESSAGE_e message
    ) {
    return subscription_create_internal (
        id,
        active,
        valid,
        subscription_plan,
        remote_subscription_id,
        promo_code,
        failed,
        message
        );
}

void subscription_free(subscription_t *subscription) {
    if(NULL == subscription){
        return ;
    }
    if(subscription->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "subscription_free");
        return ;
    }
    listEntry_t *listEntry;
    if (subscription->subscription_plan) {
        subscription_plan_free(subscription->subscription_plan);
        subscription->subscription_plan = NULL;
    }
    if (subscription->remote_subscription_id) {
        free(subscription->remote_subscription_id);
        subscription->remote_subscription_id = NULL;
    }
    if (subscription->promo_code) {
        free(subscription->promo_code);
        subscription->promo_code = NULL;
    }
    free(subscription);
}

cJSON *subscription_convertToJSON(subscription_t *subscription) {
    cJSON *item = cJSON_CreateObject();

    // subscription->id
    if(subscription->id) {
    if(cJSON_AddNumberToObject(item, "id", subscription->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // subscription->active
    if(subscription->active) {
    if(cJSON_AddBoolToObject(item, "active", subscription->active) == NULL) {
    goto fail; //Bool
    }
    }


    // subscription->valid
    if(subscription->valid) {
    if(cJSON_AddBoolToObject(item, "valid", subscription->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // subscription->subscription_plan
    if(subscription->subscription_plan) {
    cJSON *subscription_plan_local_JSON = subscription_plan_convertToJSON(subscription->subscription_plan);
    if(subscription_plan_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "subscriptionPlan", subscription_plan_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // subscription->remote_subscription_id
    if(subscription->remote_subscription_id) {
    if(cJSON_AddStringToObject(item, "remoteSubscriptionId", subscription->remote_subscription_id) == NULL) {
    goto fail; //String
    }
    }


    // subscription->promo_code
    if(subscription->promo_code) {
    if(cJSON_AddStringToObject(item, "promoCode", subscription->promo_code) == NULL) {
    goto fail; //String
    }
    }


    // subscription->failed
    if(subscription->failed) {
    if(cJSON_AddBoolToObject(item, "failed", subscription->failed) == NULL) {
    goto fail; //Bool
    }
    }


    // subscription->message
    if(subscription->message != sirqul_iot_platform_subscription_MESSAGE_NULL) {
    if(cJSON_AddStringToObject(item, "message", subscription_message_ToString(subscription->message)) == NULL)
    {
    goto fail; //Enum
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

subscription_t *subscription_parseFromJSON(cJSON *subscriptionJSON){

    subscription_t *subscription_local_var = NULL;

    // define the local variable for subscription->subscription_plan
    subscription_plan_t *subscription_plan_local_nonprim = NULL;

    // subscription->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(subscriptionJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // subscription->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(subscriptionJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // subscription->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(subscriptionJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // subscription->subscription_plan
    cJSON *subscription_plan = cJSON_GetObjectItemCaseSensitive(subscriptionJSON, "subscriptionPlan");
    if (cJSON_IsNull(subscription_plan)) {
        subscription_plan = NULL;
    }
    if (subscription_plan) { 
    subscription_plan_local_nonprim = subscription_plan_parseFromJSON(subscription_plan); //nonprimitive
    }

    // subscription->remote_subscription_id
    cJSON *remote_subscription_id = cJSON_GetObjectItemCaseSensitive(subscriptionJSON, "remoteSubscriptionId");
    if (cJSON_IsNull(remote_subscription_id)) {
        remote_subscription_id = NULL;
    }
    if (remote_subscription_id) { 
    if(!cJSON_IsString(remote_subscription_id) && !cJSON_IsNull(remote_subscription_id))
    {
    goto end; //String
    }
    }

    // subscription->promo_code
    cJSON *promo_code = cJSON_GetObjectItemCaseSensitive(subscriptionJSON, "promoCode");
    if (cJSON_IsNull(promo_code)) {
        promo_code = NULL;
    }
    if (promo_code) { 
    if(!cJSON_IsString(promo_code) && !cJSON_IsNull(promo_code))
    {
    goto end; //String
    }
    }

    // subscription->failed
    cJSON *failed = cJSON_GetObjectItemCaseSensitive(subscriptionJSON, "failed");
    if (cJSON_IsNull(failed)) {
        failed = NULL;
    }
    if (failed) { 
    if(!cJSON_IsBool(failed))
    {
    goto end; //Bool
    }
    }

    // subscription->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(subscriptionJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    sirqul_iot_platform_subscription_MESSAGE_e messageVariable;
    if (message) { 
    if(!cJSON_IsString(message))
    {
    goto end; //Enum
    }
    messageVariable = subscription_message_FromString(message->valuestring);
    }


    subscription_local_var = subscription_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        subscription_plan ? subscription_plan_local_nonprim : NULL,
        remote_subscription_id && !cJSON_IsNull(remote_subscription_id) ? strdup(remote_subscription_id->valuestring) : NULL,
        promo_code && !cJSON_IsNull(promo_code) ? strdup(promo_code->valuestring) : NULL,
        failed ? failed->valueint : 0,
        message ? messageVariable : sirqul_iot_platform_subscription_MESSAGE_NULL
        );

    return subscription_local_var;
end:
    if (subscription_plan_local_nonprim) {
        subscription_plan_free(subscription_plan_local_nonprim);
        subscription_plan_local_nonprim = NULL;
    }
    return NULL;

}
