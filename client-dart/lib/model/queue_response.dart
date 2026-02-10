//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class QueueResponse {
  /// Returns a new [QueueResponse] instance.
  QueueResponse({
    this.queueId,
    this.name,
    this.host,
    this.port,
    this.username,
    this.password,
    this.virtualHost,
    this.workers,
    this.exchanger,
    this.exchangerType,
    this.handleDelivery,
    this.dataMapping,
    this.analyticTags,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? queueId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? host;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? port;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? username;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? password;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? virtualHost;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? workers;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? exchanger;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? exchangerType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? handleDelivery;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dataMapping;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? analyticTags;

  @override
  bool operator ==(Object other) => identical(this, other) || other is QueueResponse &&
    other.queueId == queueId &&
    other.name == name &&
    other.host == host &&
    other.port == port &&
    other.username == username &&
    other.password == password &&
    other.virtualHost == virtualHost &&
    other.workers == workers &&
    other.exchanger == exchanger &&
    other.exchangerType == exchangerType &&
    other.handleDelivery == handleDelivery &&
    other.dataMapping == dataMapping &&
    other.analyticTags == analyticTags;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (queueId == null ? 0 : queueId!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (host == null ? 0 : host!.hashCode) +
    (port == null ? 0 : port!.hashCode) +
    (username == null ? 0 : username!.hashCode) +
    (password == null ? 0 : password!.hashCode) +
    (virtualHost == null ? 0 : virtualHost!.hashCode) +
    (workers == null ? 0 : workers!.hashCode) +
    (exchanger == null ? 0 : exchanger!.hashCode) +
    (exchangerType == null ? 0 : exchangerType!.hashCode) +
    (handleDelivery == null ? 0 : handleDelivery!.hashCode) +
    (dataMapping == null ? 0 : dataMapping!.hashCode) +
    (analyticTags == null ? 0 : analyticTags!.hashCode);

  @override
  String toString() => 'QueueResponse[queueId=$queueId, name=$name, host=$host, port=$port, username=$username, password=$password, virtualHost=$virtualHost, workers=$workers, exchanger=$exchanger, exchangerType=$exchangerType, handleDelivery=$handleDelivery, dataMapping=$dataMapping, analyticTags=$analyticTags]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.queueId != null) {
      json[r'queueId'] = this.queueId;
    } else {
      json[r'queueId'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.host != null) {
      json[r'host'] = this.host;
    } else {
      json[r'host'] = null;
    }
    if (this.port != null) {
      json[r'port'] = this.port;
    } else {
      json[r'port'] = null;
    }
    if (this.username != null) {
      json[r'username'] = this.username;
    } else {
      json[r'username'] = null;
    }
    if (this.password != null) {
      json[r'password'] = this.password;
    } else {
      json[r'password'] = null;
    }
    if (this.virtualHost != null) {
      json[r'virtualHost'] = this.virtualHost;
    } else {
      json[r'virtualHost'] = null;
    }
    if (this.workers != null) {
      json[r'workers'] = this.workers;
    } else {
      json[r'workers'] = null;
    }
    if (this.exchanger != null) {
      json[r'exchanger'] = this.exchanger;
    } else {
      json[r'exchanger'] = null;
    }
    if (this.exchangerType != null) {
      json[r'exchangerType'] = this.exchangerType;
    } else {
      json[r'exchangerType'] = null;
    }
    if (this.handleDelivery != null) {
      json[r'handleDelivery'] = this.handleDelivery;
    } else {
      json[r'handleDelivery'] = null;
    }
    if (this.dataMapping != null) {
      json[r'dataMapping'] = this.dataMapping;
    } else {
      json[r'dataMapping'] = null;
    }
    if (this.analyticTags != null) {
      json[r'analyticTags'] = this.analyticTags;
    } else {
      json[r'analyticTags'] = null;
    }
    return json;
  }

  /// Returns a new [QueueResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static QueueResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "QueueResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "QueueResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return QueueResponse(
        queueId: mapValueOfType<int>(json, r'queueId'),
        name: mapValueOfType<String>(json, r'name'),
        host: mapValueOfType<String>(json, r'host'),
        port: mapValueOfType<int>(json, r'port'),
        username: mapValueOfType<String>(json, r'username'),
        password: mapValueOfType<String>(json, r'password'),
        virtualHost: mapValueOfType<String>(json, r'virtualHost'),
        workers: mapValueOfType<int>(json, r'workers'),
        exchanger: mapValueOfType<String>(json, r'exchanger'),
        exchangerType: mapValueOfType<String>(json, r'exchangerType'),
        handleDelivery: mapValueOfType<bool>(json, r'handleDelivery'),
        dataMapping: mapValueOfType<String>(json, r'dataMapping'),
        analyticTags: mapValueOfType<String>(json, r'analyticTags'),
      );
    }
    return null;
  }

  static List<QueueResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <QueueResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = QueueResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, QueueResponse> mapFromJson(dynamic json) {
    final map = <String, QueueResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = QueueResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of QueueResponse-objects as value to a dart map
  static Map<String, List<QueueResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<QueueResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = QueueResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

