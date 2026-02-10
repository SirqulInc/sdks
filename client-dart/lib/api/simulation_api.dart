//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class SimulationApi {
  SimulationApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Routing Simulation
  ///
  /// Simulates routing requests.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] data (required):
  ///   JSON string in the following format: ```json {   \"startDate\": 1474268400000,   \"endDate\": 1474268700000,   \"checkoutStops\": [     {       \"latitude\": 25.060453943481615,       \"longitude\": 121.57487118216957     }   ],   \"requests\": [     {       \"vehicles\": [         {           \"id\": \"customer1\",           \"name\": \"Customer 1\",           \"depot\": {             \"latitude\": 25.060453943481615,             \"longitude\": 121.57487118216957           },           \"startWindow\": 1474268464537         }       ],       \"items\": [         {           \"id\": 152712,           \"name\": \"Appliance Product\",           \"pickup\": {             \"latitude\": 25.060306635544144,             \"longitude\": 121.5750770690688           }         },         {           \"id\": 152711,           \"name\": \"TV product\",           \"pickup\": {             \"latitude\": 25.060126352576326,             \"longitude\": 121.57505023621624           }         }       ]     }   ],   \"featuredItems\": [],   \"floorPlan\": {     \"metersPerX\": 0.81493109028875,     \"metersPerY\": 1.8525267552262,     \"width\": 75,     \"height\": 50,     \"exclusions\": [       { \"x\": 14, \"y\": 49 }     ],     \"southwest\": {       \"x\": 0,       \"y\": 0,       \"latitude\": 25.05961539530497,       \"longitude\": 121.57487591737885     }   } } ``` 
  ///
  /// * [bool] realTime (required):
  ///   determines whether to run the simulation and return the results in the same request
  Future<Response> simulationWithHttpInfo(num version, String data, bool realTime,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/simulation/routing'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'data', data));
      queryParams.addAll(_queryParams('', 'realTime', realTime));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Routing Simulation
  ///
  /// Simulates routing requests.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [String] data (required):
  ///   JSON string in the following format: ```json {   \"startDate\": 1474268400000,   \"endDate\": 1474268700000,   \"checkoutStops\": [     {       \"latitude\": 25.060453943481615,       \"longitude\": 121.57487118216957     }   ],   \"requests\": [     {       \"vehicles\": [         {           \"id\": \"customer1\",           \"name\": \"Customer 1\",           \"depot\": {             \"latitude\": 25.060453943481615,             \"longitude\": 121.57487118216957           },           \"startWindow\": 1474268464537         }       ],       \"items\": [         {           \"id\": 152712,           \"name\": \"Appliance Product\",           \"pickup\": {             \"latitude\": 25.060306635544144,             \"longitude\": 121.5750770690688           }         },         {           \"id\": 152711,           \"name\": \"TV product\",           \"pickup\": {             \"latitude\": 25.060126352576326,             \"longitude\": 121.57505023621624           }         }       ]     }   ],   \"featuredItems\": [],   \"floorPlan\": {     \"metersPerX\": 0.81493109028875,     \"metersPerY\": 1.8525267552262,     \"width\": 75,     \"height\": 50,     \"exclusions\": [       { \"x\": 14, \"y\": 49 }     ],     \"southwest\": {       \"x\": 0,       \"y\": 0,       \"latitude\": 25.05961539530497,       \"longitude\": 121.57487591737885     }   } } ``` 
  ///
  /// * [bool] realTime (required):
  ///   determines whether to run the simulation and return the results in the same request
  Future<SirqulResponse?> simulation(num version, String data, bool realTime,) async {
    final response = await simulationWithHttpInfo(version, data, realTime,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SirqulResponse',) as SirqulResponse;
    
    }
    return null;
  }
}
