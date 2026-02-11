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

import org.openapitools.client.api.RouteSettings

object RouteSettingApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createRouteSettings(host: String, body: RouteSettings): Task[RouteSettings] = {
    implicit val returnTypeDecoder: EntityDecoder[RouteSettings] = jsonOf[RouteSettings]

    val path = "/route/setting"

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
      resp          <- client.expect[RouteSettings](req)

    } yield resp
  }

  def deleteRouteSettings(host: String, routeSettingsId: Long): Task[Any] = {
    implicit val returnTypeDecoder: EntityDecoder[Any] = jsonOf[Any]

    val path = "/route/setting/{routeSettingsId}".replaceAll("\\{" + "routeSettingsId" + "\\}",escape(routeSettingsId.toString))

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
      resp          <- client.expect[Any](req)

    } yield resp
  }

  def getRouteSettings(host: String, routeSettingsId: Long): Task[RouteSettings] = {
    implicit val returnTypeDecoder: EntityDecoder[RouteSettings] = jsonOf[RouteSettings]

    val path = "/route/setting/{routeSettingsId}".replaceAll("\\{" + "routeSettingsId" + "\\}",escape(routeSettingsId.toString))

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
      resp          <- client.expect[RouteSettings](req)

    } yield resp
  }

  def searchRouteSettings(host: String, sortField: String, descending: Boolean, start: Integer, limit: Integer, activeOnly: Boolean, hubId: Long, programId: Long, keyword: String)(implicit hubIdQuery: QueryParam[Long], programIdQuery: QueryParam[Long], keywordQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean]): Task[List[RouteSettings]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[RouteSettings]] = jsonOf[List[RouteSettings]]

    val path = "/route/setting"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("hubId", Some(hubIdQuery.toParamString(hubId))), ("programId", Some(programIdQuery.toParamString(programId))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[RouteSettings]](req)

    } yield resp
  }

  def updateRouteSettings(host: String, routeSettingsId: Long, body: RouteSettings): Task[RouteSettings] = {
    implicit val returnTypeDecoder: EntityDecoder[RouteSettings] = jsonOf[RouteSettings]

    val path = "/route/setting/{routeSettingsId}".replaceAll("\\{" + "routeSettingsId" + "\\}",escape(routeSettingsId.toString))

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
      resp          <- client.expect[RouteSettings](req)

    } yield resp
  }

}

class HttpServiceRouteSettingApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createRouteSettings(body: RouteSettings): Task[RouteSettings] = {
    implicit val returnTypeDecoder: EntityDecoder[RouteSettings] = jsonOf[RouteSettings]

    val path = "/route/setting"

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
      resp          <- client.expect[RouteSettings](req)

    } yield resp
  }

  def deleteRouteSettings(routeSettingsId: Long): Task[Any] = {
    implicit val returnTypeDecoder: EntityDecoder[Any] = jsonOf[Any]

    val path = "/route/setting/{routeSettingsId}".replaceAll("\\{" + "routeSettingsId" + "\\}",escape(routeSettingsId.toString))

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
      resp          <- client.expect[Any](req)

    } yield resp
  }

  def getRouteSettings(routeSettingsId: Long): Task[RouteSettings] = {
    implicit val returnTypeDecoder: EntityDecoder[RouteSettings] = jsonOf[RouteSettings]

    val path = "/route/setting/{routeSettingsId}".replaceAll("\\{" + "routeSettingsId" + "\\}",escape(routeSettingsId.toString))

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
      resp          <- client.expect[RouteSettings](req)

    } yield resp
  }

  def searchRouteSettings(sortField: String, descending: Boolean, start: Integer, limit: Integer, activeOnly: Boolean, hubId: Long, programId: Long, keyword: String)(implicit hubIdQuery: QueryParam[Long], programIdQuery: QueryParam[Long], keywordQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean]): Task[List[RouteSettings]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[RouteSettings]] = jsonOf[List[RouteSettings]]

    val path = "/route/setting"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("hubId", Some(hubIdQuery.toParamString(hubId))), ("programId", Some(programIdQuery.toParamString(programId))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[RouteSettings]](req)

    } yield resp
  }

  def updateRouteSettings(routeSettingsId: Long, body: RouteSettings): Task[RouteSettings] = {
    implicit val returnTypeDecoder: EntityDecoder[RouteSettings] = jsonOf[RouteSettings]

    val path = "/route/setting/{routeSettingsId}".replaceAll("\\{" + "routeSettingsId" + "\\}",escape(routeSettingsId.toString))

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
      resp          <- client.expect[RouteSettings](req)

    } yield resp
  }

}
