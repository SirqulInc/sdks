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
import org.openapitools.client.api.PathingResponse

object PathingApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def computePath(host: String, version: BigDecimal, data: String, units: String, reducePath: Boolean, directions: Boolean)(implicit dataQuery: QueryParam[String], unitsQuery: QueryParam[String], reducePathQuery: QueryParam[Boolean], directionsQuery: QueryParam[Boolean]): Task[PathingResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[PathingResponse] = jsonOf[PathingResponse]

    val path = "/api/{version}/pathing/compute".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("data", Some(dataQuery.toParamString(data))), ("units", Some(unitsQuery.toParamString(units))), ("reducePath", Some(reducePathQuery.toParamString(reducePath))), ("directions", Some(directionsQuery.toParamString(directions))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PathingResponse](req)

    } yield resp
  }

}

class HttpServicePathingApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def computePath(version: BigDecimal, data: String, units: String, reducePath: Boolean, directions: Boolean)(implicit dataQuery: QueryParam[String], unitsQuery: QueryParam[String], reducePathQuery: QueryParam[Boolean], directionsQuery: QueryParam[Boolean]): Task[PathingResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[PathingResponse] = jsonOf[PathingResponse]

    val path = "/api/{version}/pathing/compute".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("data", Some(dataQuery.toParamString(data))), ("units", Some(unitsQuery.toParamString(units))), ("reducePath", Some(reducePathQuery.toParamString(reducePath))), ("directions", Some(directionsQuery.toParamString(directions))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PathingResponse](req)

    } yield resp
  }

}
