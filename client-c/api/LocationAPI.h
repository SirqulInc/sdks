#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/coords_response.h"
#include "../model/geo_point_response.h"
#include "../model/location_search_response.h"
#include "../model/sirqul_response.h"
#include "../model/trilat_cache_request.h"


// Create Trilateration Data with File
//
// Creates trilateration samples for a source device (i.e. a router).
//
sirqul_response_t*
LocationAPI_cacheTrilaterationData(apiClient_t *apiClient, double version, char *udid, long sourceTime, int *minimumSampleSize, char *data, binary_t* dataFile);


// Create Trilateration Data with Rest
//
// Creates trilateration samples for a source device (i.e. a router).
//
sirqul_response_t*
LocationAPI_cacheTrilaterationDataGzip(apiClient_t *apiClient, double version, trilat_cache_request_t *body);


// Get Location by IP
//
// Get location information based on an IP address.
//
coords_response_t*
LocationAPI_getLocationByIp(apiClient_t *apiClient, double version, char *ip);


// Get Location by Trilateration
//
// Send in device data and calculate a position based on signal strengths.
//
geo_point_response_t*
LocationAPI_getLocationByTrilateration(apiClient_t *apiClient, double version, long accountId, double latitude, double longitude, char *data, char *responseFilters);


// Search Regions or Postal Codes
//
// Searches geographic locations by proximity via address or keyword.
//
location_search_response_t*
LocationAPI_getLocations(apiClient_t *apiClient, double version, char *deviceId, long accountId, double currentlatitude, double currentlongitude, double currentLatitude, double currentLongitude, char *query, char *zipcode, char *zipCode, double selectedMaplatitude, double selectedMaplongitude, double selectedMapLatitude, double selectedMapLongitude, double searchRange, int *useGeocode, int *_i, int *start, int *_l, int *limit);


