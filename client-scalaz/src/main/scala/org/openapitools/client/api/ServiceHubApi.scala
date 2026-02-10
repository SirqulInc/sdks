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
import org.openapitools.client.api.ServiceHub

object ServiceHubApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createServiceHub(host: String, version: BigDecimal, body: ServiceHub): Task[ServiceHub] = {
    implicit val returnTypeDecoder: EntityDecoder[ServiceHub] = jsonOf[ServiceHub]

    val path = "/api/{version}/hub".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(body)
      resp          <- client.expect[ServiceHub](req)

    } yield resp
  }

  def deleteServiceHub(host: String, version: BigDecimal, id: Long): Task[Unit] = {
    val path = "/api/{version}/hub/{id}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.DELETE
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getServiceHub(host: String, version: BigDecimal, id: Long): Task[Any] = {
    implicit val returnTypeDecoder: EntityDecoder[Any] = jsonOf[Any]

    val path = "/api/{version}/hub/{id}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[Any](req)

    } yield resp
  }

  def postServiceHub(host: String, version: BigDecimal, id: Long, body: ServiceHub): Task[ServiceHub] = {
    implicit val returnTypeDecoder: EntityDecoder[ServiceHub] = jsonOf[ServiceHub]

    val path = "/api/{version}/hub/{id}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(body)
      resp          <- client.expect[ServiceHub](req)

    } yield resp
  }

  def putServiceHub(host: String, version: BigDecimal, id: Long, body: ServiceHub): Task[ServiceHub] = {
    implicit val returnTypeDecoder: EntityDecoder[ServiceHub] = jsonOf[ServiceHub]

    val path = "/api/{version}/hub/{id}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.PUT
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(body)
      resp          <- client.expect[ServiceHub](req)

    } yield resp
  }

  def searchServiceHubs(host: String, version: BigDecimal, sortField: String, descending: Boolean, start: Integer, limit: Integer, activeOnly: Boolean, keyword: String, retailerId: Long)(implicit keywordQuery: QueryParam[String], retailerIdQuery: QueryParam[Long], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean]): Task[List[ServiceHub]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[ServiceHub]] = jsonOf[List[ServiceHub]]

    val path = "/api/{version}/hub".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("keyword", Some(keywordQuery.toParamString(keyword))), ("retailerId", Some(retailerIdQuery.toParamString(retailerId))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[ServiceHub]](req)

    } yield resp
  }

}

class HttpServiceServiceHubApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createServiceHub(version: BigDecimal, body: ServiceHub): Task[ServiceHub] = {
    implicit val returnTypeDecoder: EntityDecoder[ServiceHub] = jsonOf[ServiceHub]

    val path = "/api/{version}/hub".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(body)
      resp          <- client.expect[ServiceHub](req)

    } yield resp
  }

  def deleteServiceHub(version: BigDecimal, id: Long): Task[Unit] = {
    val path = "/api/{version}/hub/{id}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.DELETE
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getServiceHub(version: BigDecimal, id: Long): Task[Any] = {
    implicit val returnTypeDecoder: EntityDecoder[Any] = jsonOf[Any]

    val path = "/api/{version}/hub/{id}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[Any](req)

    } yield resp
  }

  def postServiceHub(version: BigDecimal, id: Long, body: ServiceHub): Task[ServiceHub] = {
    implicit val returnTypeDecoder: EntityDecoder[ServiceHub] = jsonOf[ServiceHub]

    val path = "/api/{version}/hub/{id}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(body)
      resp          <- client.expect[ServiceHub](req)

    } yield resp
  }

  def putServiceHub(version: BigDecimal, id: Long, body: ServiceHub): Task[ServiceHub] = {
    implicit val returnTypeDecoder: EntityDecoder[ServiceHub] = jsonOf[ServiceHub]

    val path = "/api/{version}/hub/{id}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.PUT
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(body)
      resp          <- client.expect[ServiceHub](req)

    } yield resp
  }

  def searchServiceHubs(version: BigDecimal, sortField: String, descending: Boolean, start: Integer, limit: Integer, activeOnly: Boolean, keyword: String, retailerId: Long)(implicit keywordQuery: QueryParam[String], retailerIdQuery: QueryParam[Long], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean]): Task[List[ServiceHub]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[ServiceHub]] = jsonOf[List[ServiceHub]]

    val path = "/api/{version}/hub".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("keyword", Some(keywordQuery.toParamString(keyword))), ("retailerId", Some(retailerIdQuery.toParamString(retailerId))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[ServiceHub]](req)

    } yield resp
  }

}
