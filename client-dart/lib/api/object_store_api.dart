//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ObjectStoreApi {
  ObjectStoreApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Field
  ///
  /// Add a field to a specific object.  The field name should be camel   case with the first letter lower case, for example: myFieldName.  Duplicate   field names are not allowed.   The field name cannot be any of the following   reserved words: ACCESSIBLE, ADD, ALL, ALTER, ANALYZE, AND, AS, ASC, ASENSITIVE,   BEFORE, BETWEEN, BIGINT, BINARY, BLOB, BOTH, BY, CALL, CASCADE, CASE, CHANGE,   CHAR, CHARACTER, CHECK, COLLATE, COLUMN, CONDITION, CONSTRAINT, CONTINUE,   CONVERT, CREATE, CROSS, CURRENT_, ATE, CURRENT_TIME, CURRENT_TIMESTAMP,   CURRENT_USER, CURSOR, DATABASE, DATABASES, DAY_HOUR, DAY_MICROSECOND, DAY_MINUTE,   DAY_SECOND, DEC, DECIMAL, DECLARE, DEFAULT, DELAYED, DELETE, DESC, DESCRIBE,   DETERMINISTIC, DISTINCT, DISTINCTROW, DIV, DOUBLE, DROP, DUAL, EACH, ELSE,   ELSEIF, ENCLOSED, ESCAPED, EXISTS, EXIT, EXPLAIN, FALSE, FETCH, FLOAT, FLOAT4,   FLOAT8, FOR, FORCE, FOREIGN, FROM, FULLTEXT, GRANT, GROUP, HAVING, HIGH_PRIORITY,   HOUR_MICROSECOND, HOUR_MINUTE, HOUR_SECOND, IF, IGNORE, IN, INDEX, INFILE,   INNER, INOUT, INSENSITIVE, INSERT, INT, INT1, INT2, INT3, INT4, INT8, INTEGER,   INTERVAL, INTO, IS, ITERATE, JOIN, KEY, KEYS, KILL, LEADING, LEAVE, LEFT,   LIKE, LIMIT, LINEAR, LINES, LOAD, LOCALTIME, LOCALTIMESTAMP, LOCK, LONG,   LONGBLOB, LONGT, XT, LOOP, LOW_PRIORITY, MASTER_SSL_VERIFY_SERVER_CERT,   MATCH, MAXVALUE, MEDIUMBLOB, MEDIUMINT, MEDIUMTEXT, MIDDLEINT, MINUTE_MICROSECOND,   MINUTE_SECOND, MOD, MODIFIES, NATURAL, NOT, NO_WRITE_TO_BINLOG, NULL, NUMERIC,   ON, OPTIMIZE, OPTION, OPTIONALLY, OR, ORDER, OUT, OUTER, OUTFILE, PRECISION,   PRIMARY, PROCEDURE, PURGE, RANGE, READ, READS, READ_WRITE, REAL, REFERENCES,   REGEXP, RELEASE, RENAME, REPEAT, REPLACE, REQUIRE, RESIGNAL, RESTRICT, RETURN,   REVOKE, RIGHT, RLIKE, SCHEMA, SCHEMAS, SECOND_MICROSECOND, SELECT, SENSITIVE,   SEPARATOR, SET, SHOW, SIGNAL, SMALLINT, SPATIAL, SPECIFIC, SQL, SQLEXCEPTION,   SQLSTATE, SQLWARNING, SQL_BIG_RESULT, SQL_CALC_FOUND_ROWS, SQL_SMALL_RESULT,   SSL, STARTING, STRAIGHT_JOIN, TABLE, TERMINATED, THEN, TINYBLOB, TINYINT,   TINYTEXT, TO, TRAILING, TRIGGER, TRUE, NDO, UNION, UNIQUE, UNLOCK, UNSIGNED,   UPDATE, USAGE, USE, USING, UTC_DATE, UTC_TIME, UTC_TIMESTAMP, VALUES, VARBINARY,   VARCHAR, VARCHARACTER, VARYING, WHEN, WHERE, WHILE, WITH, WRITE, XOR, YEAR_MONTH,   ZEROFILL, GENERAL, IGNORE_SERVER_IDS, MASTER_HEARTBEAT_PERIOD, SLOW.     The following field names are reserved (cannot be used directly) and are automatically   included during object creation: ID, OBJECTID, CREATED, UPDATED, DELETED.   Additionally the field names must start with a letter or number.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account id of the logged in user
  ///
  /// * [String] appKey (required):
  ///   The application key for updating an existing application
  ///
  /// * [String] objectName (required):
  ///   The name of the object to add the field to
  ///
  /// * [String] fieldName (required):
  ///   field name The name of the field to add.
  ///
  /// * [String] fieldType (required):
  ///   field type The field type to create, supported types are: STRING, DATE, NUMBER, BOOLEAN, IDENTITY
  Future<Response> addFieldWithHttpInfo(int accountId, String appKey, String objectName, String fieldName, String fieldType,) async {
    // ignore: prefer_const_declarations
    final path = r'/object/field/add';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
      queryParams.addAll(_queryParams('', 'objectName', objectName));
      queryParams.addAll(_queryParams('', 'fieldName', fieldName));
      queryParams.addAll(_queryParams('', 'fieldType', fieldType));

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

  /// Create Field
  ///
  /// Add a field to a specific object.  The field name should be camel   case with the first letter lower case, for example: myFieldName.  Duplicate   field names are not allowed.   The field name cannot be any of the following   reserved words: ACCESSIBLE, ADD, ALL, ALTER, ANALYZE, AND, AS, ASC, ASENSITIVE,   BEFORE, BETWEEN, BIGINT, BINARY, BLOB, BOTH, BY, CALL, CASCADE, CASE, CHANGE,   CHAR, CHARACTER, CHECK, COLLATE, COLUMN, CONDITION, CONSTRAINT, CONTINUE,   CONVERT, CREATE, CROSS, CURRENT_, ATE, CURRENT_TIME, CURRENT_TIMESTAMP,   CURRENT_USER, CURSOR, DATABASE, DATABASES, DAY_HOUR, DAY_MICROSECOND, DAY_MINUTE,   DAY_SECOND, DEC, DECIMAL, DECLARE, DEFAULT, DELAYED, DELETE, DESC, DESCRIBE,   DETERMINISTIC, DISTINCT, DISTINCTROW, DIV, DOUBLE, DROP, DUAL, EACH, ELSE,   ELSEIF, ENCLOSED, ESCAPED, EXISTS, EXIT, EXPLAIN, FALSE, FETCH, FLOAT, FLOAT4,   FLOAT8, FOR, FORCE, FOREIGN, FROM, FULLTEXT, GRANT, GROUP, HAVING, HIGH_PRIORITY,   HOUR_MICROSECOND, HOUR_MINUTE, HOUR_SECOND, IF, IGNORE, IN, INDEX, INFILE,   INNER, INOUT, INSENSITIVE, INSERT, INT, INT1, INT2, INT3, INT4, INT8, INTEGER,   INTERVAL, INTO, IS, ITERATE, JOIN, KEY, KEYS, KILL, LEADING, LEAVE, LEFT,   LIKE, LIMIT, LINEAR, LINES, LOAD, LOCALTIME, LOCALTIMESTAMP, LOCK, LONG,   LONGBLOB, LONGT, XT, LOOP, LOW_PRIORITY, MASTER_SSL_VERIFY_SERVER_CERT,   MATCH, MAXVALUE, MEDIUMBLOB, MEDIUMINT, MEDIUMTEXT, MIDDLEINT, MINUTE_MICROSECOND,   MINUTE_SECOND, MOD, MODIFIES, NATURAL, NOT, NO_WRITE_TO_BINLOG, NULL, NUMERIC,   ON, OPTIMIZE, OPTION, OPTIONALLY, OR, ORDER, OUT, OUTER, OUTFILE, PRECISION,   PRIMARY, PROCEDURE, PURGE, RANGE, READ, READS, READ_WRITE, REAL, REFERENCES,   REGEXP, RELEASE, RENAME, REPEAT, REPLACE, REQUIRE, RESIGNAL, RESTRICT, RETURN,   REVOKE, RIGHT, RLIKE, SCHEMA, SCHEMAS, SECOND_MICROSECOND, SELECT, SENSITIVE,   SEPARATOR, SET, SHOW, SIGNAL, SMALLINT, SPATIAL, SPECIFIC, SQL, SQLEXCEPTION,   SQLSTATE, SQLWARNING, SQL_BIG_RESULT, SQL_CALC_FOUND_ROWS, SQL_SMALL_RESULT,   SSL, STARTING, STRAIGHT_JOIN, TABLE, TERMINATED, THEN, TINYBLOB, TINYINT,   TINYTEXT, TO, TRAILING, TRIGGER, TRUE, NDO, UNION, UNIQUE, UNLOCK, UNSIGNED,   UPDATE, USAGE, USE, USING, UTC_DATE, UTC_TIME, UTC_TIMESTAMP, VALUES, VARBINARY,   VARCHAR, VARCHARACTER, VARYING, WHEN, WHERE, WHILE, WITH, WRITE, XOR, YEAR_MONTH,   ZEROFILL, GENERAL, IGNORE_SERVER_IDS, MASTER_HEARTBEAT_PERIOD, SLOW.     The following field names are reserved (cannot be used directly) and are automatically   included during object creation: ID, OBJECTID, CREATED, UPDATED, DELETED.   Additionally the field names must start with a letter or number.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account id of the logged in user
  ///
  /// * [String] appKey (required):
  ///   The application key for updating an existing application
  ///
  /// * [String] objectName (required):
  ///   The name of the object to add the field to
  ///
  /// * [String] fieldName (required):
  ///   field name The name of the field to add.
  ///
  /// * [String] fieldType (required):
  ///   field type The field type to create, supported types are: STRING, DATE, NUMBER, BOOLEAN, IDENTITY
  Future<ObjectStoreResponse?> addField(int accountId, String appKey, String objectName, String fieldName, String fieldType,) async {
    final response = await addFieldWithHttpInfo(accountId, appKey, objectName, fieldName, fieldType,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ObjectStoreResponse',) as ObjectStoreResponse;
    
    }
    return null;
  }

  /// Create Data
  ///
  /// Create a record for the specified object.  If the object does not exist then a new one will be created prior to inserting the record.  If any of the fields included does not exist for the object then they are added to the object. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] objectName (required):
  ///   the name of the object to create data for
  ///
  /// * [int] accountId:
  ///   the account id
  ///
  /// * [String] body:
  Future<Response> createDataWithHttpInfo(String objectName, { int? accountId, String? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/object/data/{objectName}'
      .replaceAll('{objectName}', objectName);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }

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

  /// Create Data
  ///
  /// Create a record for the specified object.  If the object does not exist then a new one will be created prior to inserting the record.  If any of the fields included does not exist for the object then they are added to the object. 
  ///
  /// Parameters:
  ///
  /// * [String] objectName (required):
  ///   the name of the object to create data for
  ///
  /// * [int] accountId:
  ///   the account id
  ///
  /// * [String] body:
  Future<ObjectStoreResponse?> createData(String objectName, { int? accountId, String? body, }) async {
    final response = await createDataWithHttpInfo(objectName,  accountId: accountId, body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ObjectStoreResponse',) as ObjectStoreResponse;
    
    }
    return null;
  }

  /// Create Object
  ///
  /// Create an Object Store table.  By default tables will have the columns: id, created, updated, deleted.  Names og objects should be camel case with the first letter capitalized, for example: MyTableName.   Duplicate object names are not allowed.   The object name cannot be any of the following reserved words: ACCESSIBLE, ADD, ALL, ALTER, ANALYZE, AND, AS, ASC, ASENSITIVE, BEFORE, BETWEEN, BIGINT, BINARY, BLOB, BOTH, BY, CALL, CASCADE, CASE, CHANGE, CHAR, CHARACTER, CHECK, COLLATE, COLUMN, CONDITION, CONSTRAINT, CONTINUE, CONVERT, CREATE, CROSS, CURRENT_, ATE, CURRENT_TIME, CURRENT_TIMESTAMP, CURRENT_USER, CURSOR, DATABASE, DATABASES, DAY_HOUR, DAY_MICROSECOND, DAY_MINUTE, DAY_SECOND, DEC, DECIMAL, DECLARE, DEFAULT, DELAYED, DELETE, DESC, DESCRIBE, DETERMINISTIC, DISTINCT, DISTINCTROW, DIV, DOUBLE, DROP, DUAL, EACH, ELSE, ELSEIF, ENCLOSED, ESCAPED, EXISTS, EXIT, EXPLAIN, FALSE, FETCH, FLOAT, FLOAT4, FLOAT8, FOR, FORCE, FOREIGN, FROM, FULLTEXT, GRANT, GROUP, HAVING, HIGH_PRIORITY, HOUR_MICROSECOND, HOUR_MINUTE, HOUR_SECOND, IF, IGNORE, IN, INDEX, INFILE, INNER, INOUT, INSENSITIVE, INSERT, INT, INT1, INT2, INT3, INT4, INT8, INTEGER, INTERVAL, INTO, IS, ITERATE, JOIN, KEY, KEYS, KILL, LEADING, LEAVE, LEFT, LIKE, LIMIT, LINEAR, LINES, LOAD, LOCALTIME, LOCALTIMESTAMP, LOCK, LONG, LONGBLOB, LONGT, XT, LOOP, LOW_PRIORITY, MASTER_SSL_VERIFY_SERVER_CERT, MATCH, MAXVALUE, MEDIUMBLOB, MEDIUMINT, MEDIUMTEXT, MIDDLEINT, MINUTE_MICROSECOND, MINUTE_SECOND, MOD, MODIFIES, NATURAL, NOT, NO_WRITE_TO_BINLOG, NULL, NUMERIC, ON, OPTIMIZE, OPTION, OPTIONALLY, OR, ORDER, OUT, OUTER, OUTFILE, PRECISION, PRIMARY, PROCEDURE, PURGE, RANGE, READ, READS, READ_WRITE, REAL, REFERENCES, REGEXP, RELEASE, RENAME, REPEAT, REPLACE, REQUIRE, RESIGNAL, RESTRICT, RETURN, REVOKE, RIGHT, RLIKE, SCHEMA, SCHEMAS, SECOND_MICROSECOND, SELECT, SENSITIVE, SEPARATOR, SET, SHOW, SIGNAL, SMALLINT, SPATIAL, SPECIFIC, SQL, SQLEXCEPTION, SQLSTATE, SQLWARNING, SQL_BIG_RESULT, SQL_CALC_FOUND_ROWS, SQL_SMALL_RESULT, SSL, STARTING, STRAIGHT_JOIN, TABLE, TERMINATED, THEN, TINYBLOB, TINYINT, TINYTEXT, TO, TRAILING, TRIGGER, TRUE, NDO, UNION, UNIQUE, UNLOCK, UNSIGNED, UPDATE, USAGE, USE, USING, UTC_DATE, UTC_TIME, UTC_TIMESTAMP, VALUES, VARBINARY, VARCHAR, VARCHARACTER, VARYING, WHEN, WHERE, WHILE, WITH, WRITE, XOR, YEAR_MONTH, ZEROFILL, GENERAL, IGNORE_SERVER_IDS, MASTER_HEARTBEAT_PERIOD, SLOW. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account id of the logged in user
  ///
  /// * [String] appKey (required):
  ///   The application key for updating an existing application
  ///
  /// * [String] objectName (required):
  ///   The name of the object to create
  Future<Response> createObjectWithHttpInfo(int accountId, String appKey, String objectName,) async {
    // ignore: prefer_const_declarations
    final path = r'/object/create';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
      queryParams.addAll(_queryParams('', 'objectName', objectName));

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

  /// Create Object
  ///
  /// Create an Object Store table.  By default tables will have the columns: id, created, updated, deleted.  Names og objects should be camel case with the first letter capitalized, for example: MyTableName.   Duplicate object names are not allowed.   The object name cannot be any of the following reserved words: ACCESSIBLE, ADD, ALL, ALTER, ANALYZE, AND, AS, ASC, ASENSITIVE, BEFORE, BETWEEN, BIGINT, BINARY, BLOB, BOTH, BY, CALL, CASCADE, CASE, CHANGE, CHAR, CHARACTER, CHECK, COLLATE, COLUMN, CONDITION, CONSTRAINT, CONTINUE, CONVERT, CREATE, CROSS, CURRENT_, ATE, CURRENT_TIME, CURRENT_TIMESTAMP, CURRENT_USER, CURSOR, DATABASE, DATABASES, DAY_HOUR, DAY_MICROSECOND, DAY_MINUTE, DAY_SECOND, DEC, DECIMAL, DECLARE, DEFAULT, DELAYED, DELETE, DESC, DESCRIBE, DETERMINISTIC, DISTINCT, DISTINCTROW, DIV, DOUBLE, DROP, DUAL, EACH, ELSE, ELSEIF, ENCLOSED, ESCAPED, EXISTS, EXIT, EXPLAIN, FALSE, FETCH, FLOAT, FLOAT4, FLOAT8, FOR, FORCE, FOREIGN, FROM, FULLTEXT, GRANT, GROUP, HAVING, HIGH_PRIORITY, HOUR_MICROSECOND, HOUR_MINUTE, HOUR_SECOND, IF, IGNORE, IN, INDEX, INFILE, INNER, INOUT, INSENSITIVE, INSERT, INT, INT1, INT2, INT3, INT4, INT8, INTEGER, INTERVAL, INTO, IS, ITERATE, JOIN, KEY, KEYS, KILL, LEADING, LEAVE, LEFT, LIKE, LIMIT, LINEAR, LINES, LOAD, LOCALTIME, LOCALTIMESTAMP, LOCK, LONG, LONGBLOB, LONGT, XT, LOOP, LOW_PRIORITY, MASTER_SSL_VERIFY_SERVER_CERT, MATCH, MAXVALUE, MEDIUMBLOB, MEDIUMINT, MEDIUMTEXT, MIDDLEINT, MINUTE_MICROSECOND, MINUTE_SECOND, MOD, MODIFIES, NATURAL, NOT, NO_WRITE_TO_BINLOG, NULL, NUMERIC, ON, OPTIMIZE, OPTION, OPTIONALLY, OR, ORDER, OUT, OUTER, OUTFILE, PRECISION, PRIMARY, PROCEDURE, PURGE, RANGE, READ, READS, READ_WRITE, REAL, REFERENCES, REGEXP, RELEASE, RENAME, REPEAT, REPLACE, REQUIRE, RESIGNAL, RESTRICT, RETURN, REVOKE, RIGHT, RLIKE, SCHEMA, SCHEMAS, SECOND_MICROSECOND, SELECT, SENSITIVE, SEPARATOR, SET, SHOW, SIGNAL, SMALLINT, SPATIAL, SPECIFIC, SQL, SQLEXCEPTION, SQLSTATE, SQLWARNING, SQL_BIG_RESULT, SQL_CALC_FOUND_ROWS, SQL_SMALL_RESULT, SSL, STARTING, STRAIGHT_JOIN, TABLE, TERMINATED, THEN, TINYBLOB, TINYINT, TINYTEXT, TO, TRAILING, TRIGGER, TRUE, NDO, UNION, UNIQUE, UNLOCK, UNSIGNED, UPDATE, USAGE, USE, USING, UTC_DATE, UTC_TIME, UTC_TIMESTAMP, VALUES, VARBINARY, VARCHAR, VARCHARACTER, VARYING, WHEN, WHERE, WHILE, WITH, WRITE, XOR, YEAR_MONTH, ZEROFILL, GENERAL, IGNORE_SERVER_IDS, MASTER_HEARTBEAT_PERIOD, SLOW. 
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account id of the logged in user
  ///
  /// * [String] appKey (required):
  ///   The application key for updating an existing application
  ///
  /// * [String] objectName (required):
  ///   The name of the object to create
  Future<ObjectStoreResponse?> createObject(int accountId, String appKey, String objectName,) async {
    final response = await createObjectWithHttpInfo(accountId, appKey, objectName,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ObjectStoreResponse',) as ObjectStoreResponse;
    
    }
    return null;
  }

  /// Delete Data
  ///
  /// Delete a record for the specified object. Cannot be undone so use only when abolutely sure.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] objectName (required):
  ///   The name of the object to search upon
  ///
  /// * [String] objectId (required):
  ///   objectId The id of the record to return
  ///
  /// * [int] accountId:
  ///   The account id of the logged in user
  Future<Response> deleteDataWithHttpInfo(String objectName, String objectId, { int? accountId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/object/data/{objectName}/{objectId}'
      .replaceAll('{objectName}', objectName)
      .replaceAll('{objectId}', objectId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete Data
  ///
  /// Delete a record for the specified object. Cannot be undone so use only when abolutely sure.
  ///
  /// Parameters:
  ///
  /// * [String] objectName (required):
  ///   The name of the object to search upon
  ///
  /// * [String] objectId (required):
  ///   objectId The id of the record to return
  ///
  /// * [int] accountId:
  ///   The account id of the logged in user
  Future<ObjectStoreResponse?> deleteData(String objectName, String objectId, { int? accountId, }) async {
    final response = await deleteDataWithHttpInfo(objectName, objectId,  accountId: accountId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ObjectStoreResponse',) as ObjectStoreResponse;
    
    }
    return null;
  }

  /// Delete Field
  ///
  /// Delete a field from an object.  This will remove the field, indexes,   and foreign keys associated with the field.   The following field names   are reserved and cannot be removed from the object: ID, OBJECTID, CREATED,   UPDATED, DELETED
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account id of the logged in user
  ///
  /// * [String] appKey (required):
  ///   The application key for updating an existing application
  ///
  /// * [String] objectName (required):
  ///   The name of the object to remove the field from
  ///
  /// * [String] fieldName (required):
  ///   field name The name of the field to remove.
  Future<Response> deleteFieldWithHttpInfo(int accountId, String appKey, String objectName, String fieldName,) async {
    // ignore: prefer_const_declarations
    final path = r'/object/field/delete';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
      queryParams.addAll(_queryParams('', 'objectName', objectName));
      queryParams.addAll(_queryParams('', 'fieldName', fieldName));

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

  /// Delete Field
  ///
  /// Delete a field from an object.  This will remove the field, indexes,   and foreign keys associated with the field.   The following field names   are reserved and cannot be removed from the object: ID, OBJECTID, CREATED,   UPDATED, DELETED
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account id of the logged in user
  ///
  /// * [String] appKey (required):
  ///   The application key for updating an existing application
  ///
  /// * [String] objectName (required):
  ///   The name of the object to remove the field from
  ///
  /// * [String] fieldName (required):
  ///   field name The name of the field to remove.
  Future<ObjectStoreResponse?> deleteField(int accountId, String appKey, String objectName, String fieldName,) async {
    final response = await deleteFieldWithHttpInfo(accountId, appKey, objectName, fieldName,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ObjectStoreResponse',) as ObjectStoreResponse;
    
    }
    return null;
  }

  /// Delete Object
  ///
  /// Delete and Object in the store.  This will delete the table and clean up and foreign keys referencing it. Cannot be undone so use only when abolutely sure.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the id of the logged in user
  ///
  /// * [String] appKey (required):
  ///   the application key
  ///
  /// * [String] objectName (required):
  ///   the name of the object to delete
  Future<Response> deleteObjectWithHttpInfo(int accountId, String appKey, String objectName,) async {
    // ignore: prefer_const_declarations
    final path = r'/object/delete';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
      queryParams.addAll(_queryParams('', 'objectName', objectName));

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

  /// Delete Object
  ///
  /// Delete and Object in the store.  This will delete the table and clean up and foreign keys referencing it. Cannot be undone so use only when abolutely sure.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the id of the logged in user
  ///
  /// * [String] appKey (required):
  ///   the application key
  ///
  /// * [String] objectName (required):
  ///   the name of the object to delete
  Future<ObjectStoreResponse?> deleteObject(int accountId, String appKey, String objectName,) async {
    final response = await deleteObjectWithHttpInfo(accountId, appKey, objectName,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ObjectStoreResponse',) as ObjectStoreResponse;
    
    }
    return null;
  }

  /// Get Data
  ///
  /// Get a specific record from a specified object.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] objectName (required):
  ///   The name of the object to search upon
  ///
  /// * [String] objectId (required):
  ///   objectId The id of the record to return
  ///
  /// * [int] accountId:
  ///   The account id of the logged in user
  ///
  /// * [String] include:
  ///   
  Future<Response> getDataWithHttpInfo(String objectName, String objectId, { int? accountId, String? include, }) async {
    // ignore: prefer_const_declarations
    final path = r'/object/data/{objectName}/{objectId}'
      .replaceAll('{objectName}', objectName)
      .replaceAll('{objectId}', objectId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
    if (include != null) {
      queryParams.addAll(_queryParams('', 'include', include));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Data
  ///
  /// Get a specific record from a specified object.
  ///
  /// Parameters:
  ///
  /// * [String] objectName (required):
  ///   The name of the object to search upon
  ///
  /// * [String] objectId (required):
  ///   objectId The id of the record to return
  ///
  /// * [int] accountId:
  ///   The account id of the logged in user
  ///
  /// * [String] include:
  ///   
  Future<ObjectStoreResponse?> getData(String objectName, String objectId, { int? accountId, String? include, }) async {
    final response = await getDataWithHttpInfo(objectName, objectId,  accountId: accountId, include: include, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ObjectStoreResponse',) as ObjectStoreResponse;
    
    }
    return null;
  }

  /// Get Object
  ///
  /// Get the definition of an Object. Returns all field names, types, and current size. The types supported are: STRING, DATE, NUMBER, BOOLEAN, IDENTITY.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account id of the logged in user
  ///
  /// * [String] appKey (required):
  ///   The application key for updating an existing application
  ///
  /// * [String] objectName (required):
  ///   The name of the object to get the definition for
  Future<Response> getObjectWithHttpInfo(int accountId, String appKey, String objectName,) async {
    // ignore: prefer_const_declarations
    final path = r'/object/get';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
      queryParams.addAll(_queryParams('', 'objectName', objectName));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Object
  ///
  /// Get the definition of an Object. Returns all field names, types, and current size. The types supported are: STRING, DATE, NUMBER, BOOLEAN, IDENTITY.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account id of the logged in user
  ///
  /// * [String] appKey (required):
  ///   The application key for updating an existing application
  ///
  /// * [String] objectName (required):
  ///   The name of the object to get the definition for
  Future<ObjectStoreResponse?> getObject(int accountId, String appKey, String objectName,) async {
    final response = await getObjectWithHttpInfo(accountId, appKey, objectName,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ObjectStoreResponse',) as ObjectStoreResponse;
    
    }
    return null;
  }

  /// Search Data
  ///
  /// Search for records given the specified criteria.  The criteria is a defined set of json values used to build a query
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] objectName (required):
  ///   The name of the object to search upon
  ///
  /// * [bool] count (required):
  ///   If true just return the record count of the search. False (default) will return the actual records
  ///
  /// * [int] start (required):
  ///   The start of the pagination
  ///
  /// * [int] limit (required):
  ///   The limit of the pagination
  ///
  /// * [int] accountId:
  ///   The account id of the logged in user
  ///
  /// * [String] criteria:
  ///   The search criteria
  ///
  /// * [String] order:
  ///   The order of results; comma seperated list of field names. Illegal field names will be ignored. Direction by defualt is ascending. Prepend a minus to the field name to make that field descending.
  ///
  /// * [String] include:
  ///   
  Future<Response> searchDataWithHttpInfo(String objectName, bool count, int start, int limit, { int? accountId, String? criteria, String? order, String? include, }) async {
    // ignore: prefer_const_declarations
    final path = r'/object/data/{objectName}'
      .replaceAll('{objectName}', objectName);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
    if (criteria != null) {
      queryParams.addAll(_queryParams('', 'criteria', criteria));
    }
      queryParams.addAll(_queryParams('', 'count', count));
      queryParams.addAll(_queryParams('', 'start', start));
      queryParams.addAll(_queryParams('', 'limit', limit));
    if (order != null) {
      queryParams.addAll(_queryParams('', 'order', order));
    }
    if (include != null) {
      queryParams.addAll(_queryParams('', 'include', include));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Search Data
  ///
  /// Search for records given the specified criteria.  The criteria is a defined set of json values used to build a query
  ///
  /// Parameters:
  ///
  /// * [String] objectName (required):
  ///   The name of the object to search upon
  ///
  /// * [bool] count (required):
  ///   If true just return the record count of the search. False (default) will return the actual records
  ///
  /// * [int] start (required):
  ///   The start of the pagination
  ///
  /// * [int] limit (required):
  ///   The limit of the pagination
  ///
  /// * [int] accountId:
  ///   The account id of the logged in user
  ///
  /// * [String] criteria:
  ///   The search criteria
  ///
  /// * [String] order:
  ///   The order of results; comma seperated list of field names. Illegal field names will be ignored. Direction by defualt is ascending. Prepend a minus to the field name to make that field descending.
  ///
  /// * [String] include:
  ///   
  Future<ObjectStoreResponse?> searchData(String objectName, bool count, int start, int limit, { int? accountId, String? criteria, String? order, String? include, }) async {
    final response = await searchDataWithHttpInfo(objectName, count, start, limit,  accountId: accountId, criteria: criteria, order: order, include: include, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ObjectStoreResponse',) as ObjectStoreResponse;
    
    }
    return null;
  }

  /// Search Objects
  ///
  /// Search for Objects and return the list of names found.  Use this in conjunction with the object get service to present the current data model defined.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account id of the logged in user
  ///
  /// * [String] appKey (required):
  ///   The application key for updating an existing application
  ///
  /// * [int] start (required):
  ///   The start of the pagination
  ///
  /// * [int] limit (required):
  ///   The limit of the pagination
  ///
  /// * [String] keyword:
  ///   The name of the object(s) to search for, can be a partial match
  Future<Response> searchObjectWithHttpInfo(int accountId, String appKey, int start, int limit, { String? keyword, }) async {
    // ignore: prefer_const_declarations
    final path = r'/object/search';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
      queryParams.addAll(_queryParams('', 'start', start));
      queryParams.addAll(_queryParams('', 'limit', limit));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Search Objects
  ///
  /// Search for Objects and return the list of names found.  Use this in conjunction with the object get service to present the current data model defined.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The account id of the logged in user
  ///
  /// * [String] appKey (required):
  ///   The application key for updating an existing application
  ///
  /// * [int] start (required):
  ///   The start of the pagination
  ///
  /// * [int] limit (required):
  ///   The limit of the pagination
  ///
  /// * [String] keyword:
  ///   The name of the object(s) to search for, can be a partial match
  Future<ObjectStoreResponse?> searchObject(int accountId, String appKey, int start, int limit, { String? keyword, }) async {
    final response = await searchObjectWithHttpInfo(accountId, appKey, start, limit,  keyword: keyword, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ObjectStoreResponse',) as ObjectStoreResponse;
    
    }
    return null;
  }

  /// Update Data
  ///
  /// Update a record for the specified object.  If the object does not exist the request will be rejected, use the data create service for the first entry. If any of the fields included does not exist for the object then they are added to the object.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] objectName (required):
  ///   The name of the object to search upon
  ///
  /// * [String] objectId (required):
  ///   objectId The id of the record to return
  ///
  /// * [int] accountId:
  ///   The account id of the logged in user
  ///
  /// * [String] body:
  Future<Response> updateDataWithHttpInfo(String objectName, String objectId, { int? accountId, String? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/object/data/{objectName}/{objectId}'
      .replaceAll('{objectName}', objectName)
      .replaceAll('{objectId}', objectId);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update Data
  ///
  /// Update a record for the specified object.  If the object does not exist the request will be rejected, use the data create service for the first entry. If any of the fields included does not exist for the object then they are added to the object.
  ///
  /// Parameters:
  ///
  /// * [String] objectName (required):
  ///   The name of the object to search upon
  ///
  /// * [String] objectId (required):
  ///   objectId The id of the record to return
  ///
  /// * [int] accountId:
  ///   The account id of the logged in user
  ///
  /// * [String] body:
  Future<ObjectStoreResponse?> updateData(String objectName, String objectId, { int? accountId, String? body, }) async {
    final response = await updateDataWithHttpInfo(objectName, objectId,  accountId: accountId, body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ObjectStoreResponse',) as ObjectStoreResponse;
    
    }
    return null;
  }
}
