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

import org.openapitools.client.api.ObjectStoreResponse

object ObjectStoreApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def addField(host: String, accountId: Long, appKey: String, objectName: String, fieldName: String, fieldType: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], objectNameQuery: QueryParam[String], fieldNameQuery: QueryParam[String], fieldTypeQuery: QueryParam[String]): Task[ObjectStoreResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ObjectStoreResponse] = jsonOf[ObjectStoreResponse]

    val path = "/object/field/add"

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

  def createData(host: String, objectName: String, accountId: Long, body: String)(implicit accountIdQuery: QueryParam[Long]): Task[ObjectStoreResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ObjectStoreResponse] = jsonOf[ObjectStoreResponse]

    val path = "/object/data/{objectName}".replaceAll("\\{" + "objectName" + "\\}",escape(objectName.toString))

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

  def createObject(host: String, accountId: Long, appKey: String, objectName: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], objectNameQuery: QueryParam[String]): Task[ObjectStoreResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ObjectStoreResponse] = jsonOf[ObjectStoreResponse]

    val path = "/object/create"

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

  def deleteData(host: String, objectName: String, objectId: String, accountId: Long)(implicit accountIdQuery: QueryParam[Long]): Task[ObjectStoreResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ObjectStoreResponse] = jsonOf[ObjectStoreResponse]

    val path = "/object/data/{objectName}/{objectId}".replaceAll("\\{" + "objectName" + "\\}",escape(objectName.toString)).replaceAll("\\{" + "objectId" + "\\}",escape(objectId.toString))

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

  def deleteField(host: String, accountId: Long, appKey: String, objectName: String, fieldName: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], objectNameQuery: QueryParam[String], fieldNameQuery: QueryParam[String]): Task[ObjectStoreResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ObjectStoreResponse] = jsonOf[ObjectStoreResponse]

    val path = "/object/field/delete"

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

  def deleteObject(host: String, accountId: Long, appKey: String, objectName: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], objectNameQuery: QueryParam[String]): Task[ObjectStoreResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ObjectStoreResponse] = jsonOf[ObjectStoreResponse]

    val path = "/object/delete"

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

  def getData(host: String, objectName: String, objectId: String, accountId: Long, include: String)(implicit accountIdQuery: QueryParam[Long], includeQuery: QueryParam[String]): Task[ObjectStoreResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ObjectStoreResponse] = jsonOf[ObjectStoreResponse]

    val path = "/object/data/{objectName}/{objectId}".replaceAll("\\{" + "objectName" + "\\}",escape(objectName.toString)).replaceAll("\\{" + "objectId" + "\\}",escape(objectId.toString))

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

  def getObject(host: String, accountId: Long, appKey: String, objectName: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], objectNameQuery: QueryParam[String]): Task[ObjectStoreResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ObjectStoreResponse] = jsonOf[ObjectStoreResponse]

    val path = "/object/get"

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

  def searchData(host: String, objectName: String, count: Boolean, start: Long, limit: Long, accountId: Long, criteria: String, order: String, include: String)(implicit accountIdQuery: QueryParam[Long], criteriaQuery: QueryParam[String], countQuery: QueryParam[Boolean], startQuery: QueryParam[Long], limitQuery: QueryParam[Long], orderQuery: QueryParam[String], includeQuery: QueryParam[String]): Task[ObjectStoreResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ObjectStoreResponse] = jsonOf[ObjectStoreResponse]

    val path = "/object/data/{objectName}".replaceAll("\\{" + "objectName" + "\\}",escape(objectName.toString))

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

  def searchObject(host: String, accountId: Long, appKey: String, start: Long, limit: Long, keyword: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], keywordQuery: QueryParam[String], startQuery: QueryParam[Long], limitQuery: QueryParam[Long]): Task[ObjectStoreResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ObjectStoreResponse] = jsonOf[ObjectStoreResponse]

    val path = "/object/search"

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

  def updateData(host: String, objectName: String, objectId: String, accountId: Long, body: String)(implicit accountIdQuery: QueryParam[Long]): Task[ObjectStoreResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ObjectStoreResponse] = jsonOf[ObjectStoreResponse]

    val path = "/object/data/{objectName}/{objectId}".replaceAll("\\{" + "objectName" + "\\}",escape(objectName.toString)).replaceAll("\\{" + "objectId" + "\\}",escape(objectId.toString))

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

  def addField(accountId: Long, appKey: String, objectName: String, fieldName: String, fieldType: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], objectNameQuery: QueryParam[String], fieldNameQuery: QueryParam[String], fieldTypeQuery: QueryParam[String]): Task[ObjectStoreResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ObjectStoreResponse] = jsonOf[ObjectStoreResponse]

    val path = "/object/field/add"

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

  def createData(objectName: String, accountId: Long, body: String)(implicit accountIdQuery: QueryParam[Long]): Task[ObjectStoreResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ObjectStoreResponse] = jsonOf[ObjectStoreResponse]

    val path = "/object/data/{objectName}".replaceAll("\\{" + "objectName" + "\\}",escape(objectName.toString))

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

  def createObject(accountId: Long, appKey: String, objectName: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], objectNameQuery: QueryParam[String]): Task[ObjectStoreResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ObjectStoreResponse] = jsonOf[ObjectStoreResponse]

    val path = "/object/create"

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

  def deleteData(objectName: String, objectId: String, accountId: Long)(implicit accountIdQuery: QueryParam[Long]): Task[ObjectStoreResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ObjectStoreResponse] = jsonOf[ObjectStoreResponse]

    val path = "/object/data/{objectName}/{objectId}".replaceAll("\\{" + "objectName" + "\\}",escape(objectName.toString)).replaceAll("\\{" + "objectId" + "\\}",escape(objectId.toString))

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

  def deleteField(accountId: Long, appKey: String, objectName: String, fieldName: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], objectNameQuery: QueryParam[String], fieldNameQuery: QueryParam[String]): Task[ObjectStoreResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ObjectStoreResponse] = jsonOf[ObjectStoreResponse]

    val path = "/object/field/delete"

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

  def deleteObject(accountId: Long, appKey: String, objectName: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], objectNameQuery: QueryParam[String]): Task[ObjectStoreResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ObjectStoreResponse] = jsonOf[ObjectStoreResponse]

    val path = "/object/delete"

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

  def getData(objectName: String, objectId: String, accountId: Long, include: String)(implicit accountIdQuery: QueryParam[Long], includeQuery: QueryParam[String]): Task[ObjectStoreResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ObjectStoreResponse] = jsonOf[ObjectStoreResponse]

    val path = "/object/data/{objectName}/{objectId}".replaceAll("\\{" + "objectName" + "\\}",escape(objectName.toString)).replaceAll("\\{" + "objectId" + "\\}",escape(objectId.toString))

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

  def getObject(accountId: Long, appKey: String, objectName: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], objectNameQuery: QueryParam[String]): Task[ObjectStoreResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ObjectStoreResponse] = jsonOf[ObjectStoreResponse]

    val path = "/object/get"

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

  def searchData(objectName: String, count: Boolean, start: Long, limit: Long, accountId: Long, criteria: String, order: String, include: String)(implicit accountIdQuery: QueryParam[Long], criteriaQuery: QueryParam[String], countQuery: QueryParam[Boolean], startQuery: QueryParam[Long], limitQuery: QueryParam[Long], orderQuery: QueryParam[String], includeQuery: QueryParam[String]): Task[ObjectStoreResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ObjectStoreResponse] = jsonOf[ObjectStoreResponse]

    val path = "/object/data/{objectName}".replaceAll("\\{" + "objectName" + "\\}",escape(objectName.toString))

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

  def searchObject(accountId: Long, appKey: String, start: Long, limit: Long, keyword: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], keywordQuery: QueryParam[String], startQuery: QueryParam[Long], limitQuery: QueryParam[Long]): Task[ObjectStoreResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ObjectStoreResponse] = jsonOf[ObjectStoreResponse]

    val path = "/object/search"

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

  def updateData(objectName: String, objectId: String, accountId: Long, body: String)(implicit accountIdQuery: QueryParam[Long]): Task[ObjectStoreResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ObjectStoreResponse] = jsonOf[ObjectStoreResponse]

    val path = "/object/data/{objectName}/{objectId}".replaceAll("\\{" + "objectName" + "\\}",escape(objectName.toString)).replaceAll("\\{" + "objectId" + "\\}",escape(objectId.toString))

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
