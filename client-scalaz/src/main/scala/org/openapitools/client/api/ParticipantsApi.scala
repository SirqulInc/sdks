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
import java.io.File
import org.openapitools.client.api.SirqulResponse

object ParticipantsApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def processAllParticipants(host: String, version: BigDecimal, accountId: Long, appKey: String, useShortNameAsID: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], useShortNameAsIDQuery: QueryParam[Boolean]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/participant/process/all".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("useShortNameAsID", Some(useShortNameAsIDQuery.toParamString(useShortNameAsID))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def processParticipants(host: String, version: BigDecimal, accountId: Long, league: String, appKey: String, useShortNameAsID: Boolean, file: File)(implicit accountIdQuery: QueryParam[Long], leagueQuery: QueryParam[String], appKeyQuery: QueryParam[String], useShortNameAsIDQuery: QueryParam[Boolean], fileQuery: QueryParam[File]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/participant/process".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("league", Some(leagueQuery.toParamString(league))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("useShortNameAsID", Some(useShortNameAsIDQuery.toParamString(useShortNameAsID))), ("file", Some(fileQuery.toParamString(file))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

}

class HttpServiceParticipantsApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def processAllParticipants(version: BigDecimal, accountId: Long, appKey: String, useShortNameAsID: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], useShortNameAsIDQuery: QueryParam[Boolean]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/participant/process/all".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("useShortNameAsID", Some(useShortNameAsIDQuery.toParamString(useShortNameAsID))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def processParticipants(version: BigDecimal, accountId: Long, league: String, appKey: String, useShortNameAsID: Boolean, file: File)(implicit accountIdQuery: QueryParam[Long], leagueQuery: QueryParam[String], appKeyQuery: QueryParam[String], useShortNameAsIDQuery: QueryParam[Boolean], fileQuery: QueryParam[File]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/participant/process".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("league", Some(leagueQuery.toParamString(league))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("useShortNameAsID", Some(useShortNameAsIDQuery.toParamString(useShortNameAsID))), ("file", Some(fileQuery.toParamString(file))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

}
