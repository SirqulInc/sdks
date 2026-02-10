//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BillableEntity {
  /// Returns a new [BillableEntity] instance.
  BillableEntity({
    this.id,
    this.active,
    this.valid,
    this.name,
    this.contactInfo,
    this.responsible,
    this.retailers = const [],
    this.managers = const [],
    this.categories = const [],
    this.filters = const [],
    this.media = const [],
    this.mediaAlbum,
    this.subscription,
    this.disbursementIntrospect,
    this.authorizeNetTransactionKey,
    this.authorizeNetApiKey,
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
  bool? active;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? valid;

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
  ContactInfo? contactInfo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Account? responsible;

  List<Retailer> retailers;

  List<Account> managers;

  List<Category> categories;

  List<Filter> filters;

  List<Asset> media;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Album? mediaAlbum;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Subscription? subscription;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ThirdPartyNetwork? disbursementIntrospect;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? authorizeNetTransactionKey;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? authorizeNetApiKey;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BillableEntity &&
    other.id == id &&
    other.active == active &&
    other.valid == valid &&
    other.name == name &&
    other.contactInfo == contactInfo &&
    other.responsible == responsible &&
    _deepEquality.equals(other.retailers, retailers) &&
    _deepEquality.equals(other.managers, managers) &&
    _deepEquality.equals(other.categories, categories) &&
    _deepEquality.equals(other.filters, filters) &&
    _deepEquality.equals(other.media, media) &&
    other.mediaAlbum == mediaAlbum &&
    other.subscription == subscription &&
    other.disbursementIntrospect == disbursementIntrospect &&
    other.authorizeNetTransactionKey == authorizeNetTransactionKey &&
    other.authorizeNetApiKey == authorizeNetApiKey;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (valid == null ? 0 : valid!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (contactInfo == null ? 0 : contactInfo!.hashCode) +
    (responsible == null ? 0 : responsible!.hashCode) +
    (retailers.hashCode) +
    (managers.hashCode) +
    (categories.hashCode) +
    (filters.hashCode) +
    (media.hashCode) +
    (mediaAlbum == null ? 0 : mediaAlbum!.hashCode) +
    (subscription == null ? 0 : subscription!.hashCode) +
    (disbursementIntrospect == null ? 0 : disbursementIntrospect!.hashCode) +
    (authorizeNetTransactionKey == null ? 0 : authorizeNetTransactionKey!.hashCode) +
    (authorizeNetApiKey == null ? 0 : authorizeNetApiKey!.hashCode);

  @override
  String toString() => 'BillableEntity[id=$id, active=$active, valid=$valid, name=$name, contactInfo=$contactInfo, responsible=$responsible, retailers=$retailers, managers=$managers, categories=$categories, filters=$filters, media=$media, mediaAlbum=$mediaAlbum, subscription=$subscription, disbursementIntrospect=$disbursementIntrospect, authorizeNetTransactionKey=$authorizeNetTransactionKey, authorizeNetApiKey=$authorizeNetApiKey]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
    }
    if (this.valid != null) {
      json[r'valid'] = this.valid;
    } else {
      json[r'valid'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.contactInfo != null) {
      json[r'contactInfo'] = this.contactInfo;
    } else {
      json[r'contactInfo'] = null;
    }
    if (this.responsible != null) {
      json[r'responsible'] = this.responsible;
    } else {
      json[r'responsible'] = null;
    }
      json[r'retailers'] = this.retailers;
      json[r'managers'] = this.managers;
      json[r'categories'] = this.categories;
      json[r'filters'] = this.filters;
      json[r'media'] = this.media;
    if (this.mediaAlbum != null) {
      json[r'mediaAlbum'] = this.mediaAlbum;
    } else {
      json[r'mediaAlbum'] = null;
    }
    if (this.subscription != null) {
      json[r'subscription'] = this.subscription;
    } else {
      json[r'subscription'] = null;
    }
    if (this.disbursementIntrospect != null) {
      json[r'disbursementIntrospect'] = this.disbursementIntrospect;
    } else {
      json[r'disbursementIntrospect'] = null;
    }
    if (this.authorizeNetTransactionKey != null) {
      json[r'authorizeNetTransactionKey'] = this.authorizeNetTransactionKey;
    } else {
      json[r'authorizeNetTransactionKey'] = null;
    }
    if (this.authorizeNetApiKey != null) {
      json[r'authorizeNetApiKey'] = this.authorizeNetApiKey;
    } else {
      json[r'authorizeNetApiKey'] = null;
    }
    return json;
  }

  /// Returns a new [BillableEntity] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BillableEntity? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BillableEntity[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BillableEntity[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BillableEntity(
        id: mapValueOfType<int>(json, r'id'),
        active: mapValueOfType<bool>(json, r'active'),
        valid: mapValueOfType<bool>(json, r'valid'),
        name: mapValueOfType<String>(json, r'name'),
        contactInfo: ContactInfo.fromJson(json[r'contactInfo']),
        responsible: Account.fromJson(json[r'responsible']),
        retailers: Retailer.listFromJson(json[r'retailers']),
        managers: Account.listFromJson(json[r'managers']),
        categories: Category.listFromJson(json[r'categories']),
        filters: Filter.listFromJson(json[r'filters']),
        media: Asset.listFromJson(json[r'media']),
        mediaAlbum: Album.fromJson(json[r'mediaAlbum']),
        subscription: Subscription.fromJson(json[r'subscription']),
        disbursementIntrospect: ThirdPartyNetwork.fromJson(json[r'disbursementIntrospect']),
        authorizeNetTransactionKey: mapValueOfType<String>(json, r'authorizeNetTransactionKey'),
        authorizeNetApiKey: mapValueOfType<String>(json, r'authorizeNetApiKey'),
      );
    }
    return null;
  }

  static List<BillableEntity> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BillableEntity>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BillableEntity.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BillableEntity> mapFromJson(dynamic json) {
    final map = <String, BillableEntity>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BillableEntity.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BillableEntity-objects as value to a dart map
  static Map<String, List<BillableEntity>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BillableEntity>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BillableEntity.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

