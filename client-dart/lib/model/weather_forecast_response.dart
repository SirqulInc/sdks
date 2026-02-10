//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WeatherForecastResponse {
  /// Returns a new [WeatherForecastResponse] instance.
  WeatherForecastResponse({
    this.id,
    this.forecastDate,
    this.precipMM,
    this.tempMaxC,
    this.tempMaxF,
    this.tempMinC,
    this.tempMinF,
    this.weatherCode,
    this.weatherDesc,
    this.weatherIconUrl,
    this.winddir16Point,
    this.winddirDegree,
    this.winddirection,
    this.windspeedKmph,
    this.windspeedMiles,
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
  int? forecastDate;

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
  int? tempMaxC;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? tempMaxF;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? tempMinC;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? tempMinF;

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
  String? winddirection;

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

  @override
  bool operator ==(Object other) => identical(this, other) || other is WeatherForecastResponse &&
    other.id == id &&
    other.forecastDate == forecastDate &&
    other.precipMM == precipMM &&
    other.tempMaxC == tempMaxC &&
    other.tempMaxF == tempMaxF &&
    other.tempMinC == tempMinC &&
    other.tempMinF == tempMinF &&
    other.weatherCode == weatherCode &&
    other.weatherDesc == weatherDesc &&
    other.weatherIconUrl == weatherIconUrl &&
    other.winddir16Point == winddir16Point &&
    other.winddirDegree == winddirDegree &&
    other.winddirection == winddirection &&
    other.windspeedKmph == windspeedKmph &&
    other.windspeedMiles == windspeedMiles;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (forecastDate == null ? 0 : forecastDate!.hashCode) +
    (precipMM == null ? 0 : precipMM!.hashCode) +
    (tempMaxC == null ? 0 : tempMaxC!.hashCode) +
    (tempMaxF == null ? 0 : tempMaxF!.hashCode) +
    (tempMinC == null ? 0 : tempMinC!.hashCode) +
    (tempMinF == null ? 0 : tempMinF!.hashCode) +
    (weatherCode == null ? 0 : weatherCode!.hashCode) +
    (weatherDesc == null ? 0 : weatherDesc!.hashCode) +
    (weatherIconUrl == null ? 0 : weatherIconUrl!.hashCode) +
    (winddir16Point == null ? 0 : winddir16Point!.hashCode) +
    (winddirDegree == null ? 0 : winddirDegree!.hashCode) +
    (winddirection == null ? 0 : winddirection!.hashCode) +
    (windspeedKmph == null ? 0 : windspeedKmph!.hashCode) +
    (windspeedMiles == null ? 0 : windspeedMiles!.hashCode);

  @override
  String toString() => 'WeatherForecastResponse[id=$id, forecastDate=$forecastDate, precipMM=$precipMM, tempMaxC=$tempMaxC, tempMaxF=$tempMaxF, tempMinC=$tempMinC, tempMinF=$tempMinF, weatherCode=$weatherCode, weatherDesc=$weatherDesc, weatherIconUrl=$weatherIconUrl, winddir16Point=$winddir16Point, winddirDegree=$winddirDegree, winddirection=$winddirection, windspeedKmph=$windspeedKmph, windspeedMiles=$windspeedMiles]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.forecastDate != null) {
      json[r'forecastDate'] = this.forecastDate;
    } else {
      json[r'forecastDate'] = null;
    }
    if (this.precipMM != null) {
      json[r'precipMM'] = this.precipMM;
    } else {
      json[r'precipMM'] = null;
    }
    if (this.tempMaxC != null) {
      json[r'tempMaxC'] = this.tempMaxC;
    } else {
      json[r'tempMaxC'] = null;
    }
    if (this.tempMaxF != null) {
      json[r'tempMaxF'] = this.tempMaxF;
    } else {
      json[r'tempMaxF'] = null;
    }
    if (this.tempMinC != null) {
      json[r'tempMinC'] = this.tempMinC;
    } else {
      json[r'tempMinC'] = null;
    }
    if (this.tempMinF != null) {
      json[r'tempMinF'] = this.tempMinF;
    } else {
      json[r'tempMinF'] = null;
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
    if (this.winddirection != null) {
      json[r'winddirection'] = this.winddirection;
    } else {
      json[r'winddirection'] = null;
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
    return json;
  }

  /// Returns a new [WeatherForecastResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WeatherForecastResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WeatherForecastResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WeatherForecastResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WeatherForecastResponse(
        id: mapValueOfType<int>(json, r'id'),
        forecastDate: mapValueOfType<int>(json, r'forecastDate'),
        precipMM: mapValueOfType<double>(json, r'precipMM'),
        tempMaxC: mapValueOfType<int>(json, r'tempMaxC'),
        tempMaxF: mapValueOfType<int>(json, r'tempMaxF'),
        tempMinC: mapValueOfType<int>(json, r'tempMinC'),
        tempMinF: mapValueOfType<int>(json, r'tempMinF'),
        weatherCode: mapValueOfType<int>(json, r'weatherCode'),
        weatherDesc: mapValueOfType<String>(json, r'weatherDesc'),
        weatherIconUrl: mapValueOfType<String>(json, r'weatherIconUrl'),
        winddir16Point: mapValueOfType<String>(json, r'winddir16Point'),
        winddirDegree: mapValueOfType<int>(json, r'winddirDegree'),
        winddirection: mapValueOfType<String>(json, r'winddirection'),
        windspeedKmph: mapValueOfType<int>(json, r'windspeedKmph'),
        windspeedMiles: mapValueOfType<int>(json, r'windspeedMiles'),
      );
    }
    return null;
  }

  static List<WeatherForecastResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WeatherForecastResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WeatherForecastResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WeatherForecastResponse> mapFromJson(dynamic json) {
    final map = <String, WeatherForecastResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WeatherForecastResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WeatherForecastResponse-objects as value to a dart map
  static Map<String, List<WeatherForecastResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WeatherForecastResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WeatherForecastResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

