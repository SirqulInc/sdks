//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WeatherResponse {
  /// Returns a new [WeatherResponse] instance.
  WeatherResponse({
    this.id,
    this.cloudcover,
    this.humidity,
    this.observationTime,
    this.precipMM,
    this.pressure,
    this.tempC,
    this.tempF,
    this.visibility,
    this.weatherCode,
    this.weatherDesc,
    this.weatherIconUrl,
    this.winddir16Point,
    this.winddirDegree,
    this.windspeedKmph,
    this.windspeedMiles,
    this.forecasts = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? cloudcover;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? humidity;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? observationTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? precipMM;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pressure;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? tempC;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? tempF;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? visibility;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? weatherCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? weatherDesc;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? weatherIconUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? winddir16Point;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? winddirDegree;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? windspeedKmph;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? windspeedMiles;

  List<WeatherForecastResponse> forecasts;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WeatherResponse &&
    other.id == id &&
    other.cloudcover == cloudcover &&
    other.humidity == humidity &&
    other.observationTime == observationTime &&
    other.precipMM == precipMM &&
    other.pressure == pressure &&
    other.tempC == tempC &&
    other.tempF == tempF &&
    other.visibility == visibility &&
    other.weatherCode == weatherCode &&
    other.weatherDesc == weatherDesc &&
    other.weatherIconUrl == weatherIconUrl &&
    other.winddir16Point == winddir16Point &&
    other.winddirDegree == winddirDegree &&
    other.windspeedKmph == windspeedKmph &&
    other.windspeedMiles == windspeedMiles &&
    _deepEquality.equals(other.forecasts, forecasts);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (cloudcover == null ? 0 : cloudcover!.hashCode) +
    (humidity == null ? 0 : humidity!.hashCode) +
    (observationTime == null ? 0 : observationTime!.hashCode) +
    (precipMM == null ? 0 : precipMM!.hashCode) +
    (pressure == null ? 0 : pressure!.hashCode) +
    (tempC == null ? 0 : tempC!.hashCode) +
    (tempF == null ? 0 : tempF!.hashCode) +
    (visibility == null ? 0 : visibility!.hashCode) +
    (weatherCode == null ? 0 : weatherCode!.hashCode) +
    (weatherDesc == null ? 0 : weatherDesc!.hashCode) +
    (weatherIconUrl == null ? 0 : weatherIconUrl!.hashCode) +
    (winddir16Point == null ? 0 : winddir16Point!.hashCode) +
    (winddirDegree == null ? 0 : winddirDegree!.hashCode) +
    (windspeedKmph == null ? 0 : windspeedKmph!.hashCode) +
    (windspeedMiles == null ? 0 : windspeedMiles!.hashCode) +
    (forecasts.hashCode);

  @override
  String toString() => 'WeatherResponse[id=$id, cloudcover=$cloudcover, humidity=$humidity, observationTime=$observationTime, precipMM=$precipMM, pressure=$pressure, tempC=$tempC, tempF=$tempF, visibility=$visibility, weatherCode=$weatherCode, weatherDesc=$weatherDesc, weatherIconUrl=$weatherIconUrl, winddir16Point=$winddir16Point, winddirDegree=$winddirDegree, windspeedKmph=$windspeedKmph, windspeedMiles=$windspeedMiles, forecasts=$forecasts]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.cloudcover != null) {
      json[r'cloudcover'] = this.cloudcover;
    } else {
      json[r'cloudcover'] = null;
    }
    if (this.humidity != null) {
      json[r'humidity'] = this.humidity;
    } else {
      json[r'humidity'] = null;
    }
    if (this.observationTime != null) {
      json[r'observationTime'] = this.observationTime;
    } else {
      json[r'observationTime'] = null;
    }
    if (this.precipMM != null) {
      json[r'precipMM'] = this.precipMM;
    } else {
      json[r'precipMM'] = null;
    }
    if (this.pressure != null) {
      json[r'pressure'] = this.pressure;
    } else {
      json[r'pressure'] = null;
    }
    if (this.tempC != null) {
      json[r'temp_C'] = this.tempC;
    } else {
      json[r'temp_C'] = null;
    }
    if (this.tempF != null) {
      json[r'temp_F'] = this.tempF;
    } else {
      json[r'temp_F'] = null;
    }
    if (this.visibility != null) {
      json[r'visibility'] = this.visibility;
    } else {
      json[r'visibility'] = null;
    }
    if (this.weatherCode != null) {
      json[r'weatherCode'] = this.weatherCode;
    } else {
      json[r'weatherCode'] = null;
    }
    if (this.weatherDesc != null) {
      json[r'weatherDesc'] = this.weatherDesc;
    } else {
      json[r'weatherDesc'] = null;
    }
    if (this.weatherIconUrl != null) {
      json[r'weatherIconUrl'] = this.weatherIconUrl;
    } else {
      json[r'weatherIconUrl'] = null;
    }
    if (this.winddir16Point != null) {
      json[r'winddir16Point'] = this.winddir16Point;
    } else {
      json[r'winddir16Point'] = null;
    }
    if (this.winddirDegree != null) {
      json[r'winddirDegree'] = this.winddirDegree;
    } else {
      json[r'winddirDegree'] = null;
    }
    if (this.windspeedKmph != null) {
      json[r'windspeedKmph'] = this.windspeedKmph;
    } else {
      json[r'windspeedKmph'] = null;
    }
    if (this.windspeedMiles != null) {
      json[r'windspeedMiles'] = this.windspeedMiles;
    } else {
      json[r'windspeedMiles'] = null;
    }
      json[r'forecasts'] = this.forecasts;
    return json;
  }

  /// Returns a new [WeatherResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WeatherResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WeatherResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WeatherResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WeatherResponse(
        id: mapValueOfType<int>(json, r'id'),
        cloudcover: mapValueOfType<int>(json, r'cloudcover'),
        humidity: mapValueOfType<int>(json, r'humidity'),
        observationTime: mapValueOfType<int>(json, r'observationTime'),
        precipMM: mapValueOfType<double>(json, r'precipMM'),
        pressure: mapValueOfType<int>(json, r'pressure'),
        tempC: mapValueOfType<int>(json, r'temp_C'),
        tempF: mapValueOfType<int>(json, r'temp_F'),
        visibility: mapValueOfType<int>(json, r'visibility'),
        weatherCode: mapValueOfType<int>(json, r'weatherCode'),
        weatherDesc: mapValueOfType<String>(json, r'weatherDesc'),
        weatherIconUrl: mapValueOfType<String>(json, r'weatherIconUrl'),
        winddir16Point: mapValueOfType<String>(json, r'winddir16Point'),
        winddirDegree: mapValueOfType<int>(json, r'winddirDegree'),
        windspeedKmph: mapValueOfType<int>(json, r'windspeedKmph'),
        windspeedMiles: mapValueOfType<int>(json, r'windspeedMiles'),
        forecasts: WeatherForecastResponse.listFromJson(json[r'forecasts']),
      );
    }
    return null;
  }

  static List<WeatherResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WeatherResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WeatherResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WeatherResponse> mapFromJson(dynamic json) {
    final map = <String, WeatherResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WeatherResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WeatherResponse-objects as value to a dart map
  static Map<String, List<WeatherResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WeatherResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WeatherResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

