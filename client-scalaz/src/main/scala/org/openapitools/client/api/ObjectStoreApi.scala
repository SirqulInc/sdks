package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import java.io.File
import java.net.URLEncoder
import java.util.UUID

import org.http4s._
import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.http4s.client._
import org.http4s.client.blaze.PooledHttp1Client
import org.http4s.headers._

import org.joda.time.DateTime

import scalaz.concurrent.Task

import HelperCodecs._

import org.openapitools.client.api.BigDecimal
import org.openapitools.client.api.ObjectStoreResponse

object ObjectStoreApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def addField(host: String, version: BigDecimal, accountId: Long, appKey: String, objectName: String, fieldName: String, fieldType: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], objectNameQuery: QueryParam[String], fieldNameQuery: QueryParam[String], fieldTypeQuery: QueryParam[String]): Task[ObjectStoreResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ObjectStoreResponse] = jsonOf[ObjectStoreResponse]

    val path = "/api/{version}/object/field/add".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("objectName", Some(objectNameQuery.toParamString(objectName))), ("fieldName", Some(fieldNameQuery.toParamString(fieldName))), ("fieldType", Some(fieldTypeQuery.toParamString(fieldType))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ObjectStoreResponse](req)

    } yield resp
  }

  def createData(host: String, version: BigDecimal, objectName: String, accountId: Long, body: String)(implicit accountIdQuery: QueryParam[Long]): Task[ObjectStoreResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ObjectStoreResponse] = jsonOf[ObjectStoreResponse]

    val path = "/api/{version}/object/data/{objectName}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "objectName" + "\\}",escape(objectName.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(body)
      resp          <- client.expect[ObjectStoreResponse](req)

    } yield resp
  }

  def createObject(host: String, version: BigDecimal, accountId: Long, appKey: String, objectName: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], objectNameQuery: QueryParam[String]): Task[ObjectStoreResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ObjectStoreResponse] = jsonOf[ObjectStoreResponse]

    val path = "/api/{version}/object/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("objectName", Some(objectNameQuery.toParamString(objectName))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ObjectStoreResponse](req)

    } yield resp
  }

  def deleteData(host: String, version: BigDecimal, objectName: String, objectId: String, accountId: Long)(implicit accountIdQuery: QueryParam[Long]): Task[ObjectStoreResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ObjectStoreResponse] = jsonOf[ObjectStoreResponse]

    val path = "/api/{version}/object/data/{objectName}/{objectId}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "objectName" + "\\}",escape(objectName.toString)).replaceAll("\\{" + "objectId" + "\\}",escape(objectId.toString))

    val httpMethod = Method.DELETE
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ObjectStoreResponse](req)

    } yield resp
  }

  def deleteField(host: String, version: BigDecimal, accountId: Long, appKey: String, objectName: String, fieldName: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], objectNameQuery: QueryParam[String], fieldNameQuery: QueryParam[String]): Task[ObjectStoreResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ObjectStoreResponse] = jsonOf[ObjectStoreResponse]

    val path = "/api/{version}/object/field/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("objectName", Some(objectNameQuery.toParamString(objectName))), ("fieldName", Some(fieldNameQuery.toParamString(fieldName))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ObjectStoreResponse](req)

    } yield resp
  }

  def deleteObject(host: String, version: BigDecimal, accountId: Long, appKey: String, objectName: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], objectNameQuery: QueryParam[String]): Task[ObjectStoreResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ObjectStoreResponse] = jsonOf[ObjectStoreResponse]

    val path = "/api/{version}/object/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("objectName", Some(objectNameQuery.toParamString(objectName))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ObjectStoreResponse](req)

    } yield resp
  }

  def getData(host: String, version: BigDecimal, objectName: String, objectId: String, accountId: Long, include: String)(implicit accountIdQuery: QueryParam[Long], includeQuery: QueryParam[String]): Task[ObjectStoreResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ObjectStoreResponse] = jsonOf[ObjectStoreResponse]

    val path = "/api/{version}/object/data/{objectName}/{objectId}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "objectName" + "\\}",escape(objectName.toString)).replaceAll("\\{" + "objectId" + "\\}",escape(objectId.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("include", Some(includeQuery.toParamString(include))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ObjectStoreResponse](req)

    } yield resp
  }

  def getObject(host: String, version: BigDecimal, accountId: Long, appKey: String, objectName: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], objectNameQuery: QueryParam[String]): Task[ObjectStoreResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ObjectStoreResponse] = jsonOf[ObjectStoreResponse]

    val path = "/api/{version}/object/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("objectName", Some(objectNameQuery.toParamString(objectName))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ObjectStoreResponse](req)

    } yield resp
  }

  def searchData(host: String, version: BigDecimal, objectName: String, count: Boolean, start: Long, limit: Long, accountId: Long, criteria: String, order: String, include: String)(implicit accountIdQuery: QueryParam[Long], criteriaQuery: QueryParam[String], countQuery: QueryParam[Boolean], startQuery: QueryParam[Long], limitQuery: QueryParam[Long], orderQuery: QueryParam[String], includeQuery: QueryParam[String]): Task[ObjectStoreResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ObjectStoreResponse] = jsonOf[ObjectStoreResponse]

    val path = "/api/{version}/object/data/{objectName}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "objectName" + "\\}",escape(objectName.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("criteria", Some(criteriaQuery.toParamString(criteria))), ("count", Some(countQuery.toParamString(count))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("order", Some(orderQuery.toParamString(order))), ("include", Some(includeQuery.toParamString(include))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ObjectStoreResponse](req)

    } yield resp
  }

  def searchObject(host: String, version: BigDecimal, accountId: Long, appKey: String, start: Long, limit: Long, keyword: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], keywordQuery: QueryParam[String], startQuery: QueryParam[Long], limitQuery: QueryParam[Long]): Task[ObjectStoreResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ObjectStoreResponse] = jsonOf[ObjectStoreResponse]

    val path = "/api/{version}/object/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ObjectStoreResponse](req)

    } yield resp
  }

  def updateData(host: String, version: BigDecimal, objectName: String, objectId: String, accountId: Long, body: String)(implicit accountIdQuery: QueryParam[Long]): Task[ObjectStoreResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ObjectStoreResponse] = jsonOf[ObjectStoreResponse]

    val path = "/api/{version}/object/data/{objectName}/{objectId}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "objectName" + "\\}",escape(objectName.toString)).replaceAll("\\{" + "objectId" + "\\}",escape(objectId.toString))

    val httpMethod = Method.PUT
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(body)
      resp          <- client.expect[ObjectStoreResponse](req)

    } yield resp
  }

}

class HttpServiceObjectStoreApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def addField(version: BigDecimal, accountId: Long, appKey: String, objectName: String, fieldName: String, fieldType: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], objectNameQuery: QueryParam[String], fieldNameQuery: QueryParam[String], fieldTypeQuery: QueryParam[String]): Task[ObjectStoreResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ObjectStoreResponse] = jsonOf[ObjectStoreResponse]

    val path = "/api/{version}/object/field/add".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("objectName", Some(objectNameQuery.toParamString(objectName))), ("fieldName", Some(fieldNameQuery.toParamString(fieldName))), ("fieldType", Some(fieldTypeQuery.toParamString(fieldType))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ObjectStoreResponse](req)

    } yield resp
  }

  def createData(version: BigDecimal, objectName: String, accountId: Long, body: String)(implicit accountIdQuery: QueryParam[Long]): Task[ObjectStoreResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ObjectStoreResponse] = jsonOf[ObjectStoreResponse]

    val path = "/api/{version}/object/data/{objectName}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "objectName" + "\\}",escape(objectName.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(body)
      resp          <- client.expect[ObjectStoreResponse](req)

    } yield resp
  }

  def createObject(version: BigDecimal, accountId: Long, appKey: String, objectName: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], objectNameQuery: QueryParam[String]): Task[ObjectStoreResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ObjectStoreResponse] = jsonOf[ObjectStoreResponse]

    val path = "/api/{version}/object/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("objectName", Some(objectNameQuery.toParamString(objectName))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ObjectStoreResponse](req)

    } yield resp
  }

  def deleteData(version: BigDecimal, objectName: String, objectId: String, accountId: Long)(implicit accountIdQuery: QueryParam[Long]): Task[ObjectStoreResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ObjectStoreResponse] = jsonOf[ObjectStoreResponse]

    val path = "/api/{version}/object/data/{objectName}/{objectId}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "objectName" + "\\}",escape(objectName.toString)).replaceAll("\\{" + "objectId" + "\\}",escape(objectId.toString))

    val httpMethod = Method.DELETE
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ObjectStoreResponse](req)

    } yield resp
  }

  def deleteField(version: BigDecimal, accountId: Long, appKey: String, objectName: String, fieldName: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], objectNameQuery: QueryParam[String], fieldNameQuery: QueryParam[String]): Task[ObjectStoreResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ObjectStoreResponse] = jsonOf[ObjectStoreResponse]

    val path = "/api/{version}/object/field/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("objectName", Some(objectNameQuery.toParamString(objectName))), ("fieldName", Some(fieldNameQuery.toParamString(fieldName))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ObjectStoreResponse](req)

    } yield resp
  }

  def deleteObject(version: BigDecimal, accountId: Long, appKey: String, objectName: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], objectNameQuery: QueryParam[String]): Task[ObjectStoreResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ObjectStoreResponse] = jsonOf[ObjectStoreResponse]

    val path = "/api/{version}/object/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("objectName", Some(objectNameQuery.toParamString(objectName))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ObjectStoreResponse](req)

    } yield resp
  }

  def getData(version: BigDecimal, objectName: String, objectId: String, accountId: Long, include: String)(implicit accountIdQuery: QueryParam[Long], includeQuery: QueryParam[String]): Task[ObjectStoreResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ObjectStoreResponse] = jsonOf[ObjectStoreResponse]

    val path = "/api/{version}/object/data/{objectName}/{objectId}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "objectName" + "\\}",escape(objectName.toString)).replaceAll("\\{" + "objectId" + "\\}",escape(objectId.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("include", Some(includeQuery.toParamString(include))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ObjectStoreResponse](req)

    } yield resp
  }

  def getObject(version: BigDecimal, accountId: Long, appKey: String, objectName: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], objectNameQuery: QueryParam[String]): Task[ObjectStoreResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ObjectStoreResponse] = jsonOf[ObjectStoreResponse]

    val path = "/api/{version}/object/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("objectName", Some(objectNameQuery.toParamString(objectName))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ObjectStoreResponse](req)

    } yield resp
  }

  def searchData(version: BigDecimal, objectName: String, count: Boolean, start: Long, limit: Long, accountId: Long, criteria: String, order: String, include: String)(implicit accountIdQuery: QueryParam[Long], criteriaQuery: QueryParam[String], countQuery: QueryParam[Boolean], startQuery: QueryParam[Long], limitQuery: QueryParam[Long], orderQuery: QueryParam[String], includeQuery: QueryParam[String]): Task[ObjectStoreResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ObjectStoreResponse] = jsonOf[ObjectStoreResponse]

    val path = "/api/{version}/object/data/{objectName}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "objectName" + "\\}",escape(objectName.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("criteria", Some(criteriaQuery.toParamString(criteria))), ("count", Some(countQuery.toParamString(count))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("order", Some(orderQuery.toParamString(order))), ("include", Some(includeQuery.toParamString(include))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ObjectStoreResponse](req)

    } yield resp
  }

  def searchObject(version: BigDecimal, accountId: Long, appKey: String, start: Long, limit: Long, keyword: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], keywordQuery: QueryParam[String], startQuery: QueryParam[Long], limitQuery: QueryParam[Long]): Task[ObjectStoreResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ObjectStoreResponse] = jsonOf[ObjectStoreResponse]

    val path = "/api/{version}/object/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ObjectStoreResponse](req)

    } yield resp
  }

  def updateData(version: BigDecimal, objectName: String, objectId: String, accountId: Long, body: String)(implicit accountIdQuery: QueryParam[Long]): Task[ObjectStoreResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ObjectStoreResponse] = jsonOf[ObjectStoreResponse]

    val path = "/api/{version}/object/data/{objectName}/{objectId}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "objectName" + "\\}",escape(objectName.toString)).replaceAll("\\{" + "objectId" + "\\}",escape(objectId.toString))

    val httpMethod = Method.PUT
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(body)
      resp          <- client.expect[ObjectStoreResponse](req)

    } yield resp
  }

}
