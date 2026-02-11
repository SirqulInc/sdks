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

import org.openapitools.client.api.SirqulResponse
import org.openapitools.client.api.WordzWordResponse

object WordApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createWord(host: String, accountId: Long, word: String, definition: String, active: Boolean = false, allocateTickets: Boolean = false, ticketCount: Long = 0, assetId: Long, ticketType: String, points: Long)(implicit accountIdQuery: QueryParam[Long], wordQuery: QueryParam[String], definitionQuery: QueryParam[String], assetIdQuery: QueryParam[Long], activeQuery: QueryParam[Boolean], allocateTicketsQuery: QueryParam[Boolean], ticketCountQuery: QueryParam[Long], ticketTypeQuery: QueryParam[String], pointsQuery: QueryParam[Long]): Task[WordzWordResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[WordzWordResponse] = jsonOf[WordzWordResponse]

    val path = "/game/word/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("word", Some(wordQuery.toParamString(word))), ("definition", Some(definitionQuery.toParamString(definition))), ("assetId", Some(assetIdQuery.toParamString(assetId))), ("active", Some(activeQuery.toParamString(active))), ("allocateTickets", Some(allocateTicketsQuery.toParamString(allocateTickets))), ("ticketCount", Some(ticketCountQuery.toParamString(ticketCount))), ("ticketType", Some(ticketTypeQuery.toParamString(ticketType))), ("points", Some(pointsQuery.toParamString(points))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[WordzWordResponse](req)

    } yield resp
  }

  def deleteWord(host: String, wordId: Long, accountId: Long)(implicit wordIdQuery: QueryParam[Long], accountIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/game/word/delete"

    val httpMethod = Method.DELETE
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("wordId", Some(wordIdQuery.toParamString(wordId))), ("accountId", Some(accountIdQuery.toParamString(accountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getWord(host: String, wordId: Long, accountId: Long)(implicit wordIdQuery: QueryParam[Long], accountIdQuery: QueryParam[Long]): Task[WordzWordResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[WordzWordResponse] = jsonOf[WordzWordResponse]

    val path = "/game/word/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("wordId", Some(wordIdQuery.toParamString(wordId))), ("accountId", Some(accountIdQuery.toParamString(accountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[WordzWordResponse](req)

    } yield resp
  }

  def getWords(host: String, accountId: Long, sortField: String = id, descending: Boolean = false, activeOnly: Boolean = false, start: Integer = 0, limit: Integer = 20, keyword: String)(implicit accountIdQuery: QueryParam[Long], keywordQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], activeOnlyQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[List[WordzWordResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[WordzWordResponse]] = jsonOf[List[WordzWordResponse]]

    val path = "/game/word/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[WordzWordResponse]](req)

    } yield resp
  }

  def updateWord(host: String, wordId: Long, accountId: Long, ticketCount: Long = 0, wordText: String, definition: String, assetId: Long, active: Boolean, allocateTickets: Boolean, ticketType: String, points: Long)(implicit wordIdQuery: QueryParam[Long], accountIdQuery: QueryParam[Long], wordTextQuery: QueryParam[String], definitionQuery: QueryParam[String], assetIdQuery: QueryParam[Long], activeQuery: QueryParam[Boolean], allocateTicketsQuery: QueryParam[Boolean], ticketCountQuery: QueryParam[Long], ticketTypeQuery: QueryParam[String], pointsQuery: QueryParam[Long]): Task[WordzWordResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[WordzWordResponse] = jsonOf[WordzWordResponse]

    val path = "/game/word/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("wordId", Some(wordIdQuery.toParamString(wordId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("wordText", Some(wordTextQuery.toParamString(wordText))), ("definition", Some(definitionQuery.toParamString(definition))), ("assetId", Some(assetIdQuery.toParamString(assetId))), ("active", Some(activeQuery.toParamString(active))), ("allocateTickets", Some(allocateTicketsQuery.toParamString(allocateTickets))), ("ticketCount", Some(ticketCountQuery.toParamString(ticketCount))), ("ticketType", Some(ticketTypeQuery.toParamString(ticketType))), ("points", Some(pointsQuery.toParamString(points))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[WordzWordResponse](req)

    } yield resp
  }

}

class HttpServiceWordApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createWord(accountId: Long, word: String, definition: String, active: Boolean = false, allocateTickets: Boolean = false, ticketCount: Long = 0, assetId: Long, ticketType: String, points: Long)(implicit accountIdQuery: QueryParam[Long], wordQuery: QueryParam[String], definitionQuery: QueryParam[String], assetIdQuery: QueryParam[Long], activeQuery: QueryParam[Boolean], allocateTicketsQuery: QueryParam[Boolean], ticketCountQuery: QueryParam[Long], ticketTypeQuery: QueryParam[String], pointsQuery: QueryParam[Long]): Task[WordzWordResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[WordzWordResponse] = jsonOf[WordzWordResponse]

    val path = "/game/word/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("word", Some(wordQuery.toParamString(word))), ("definition", Some(definitionQuery.toParamString(definition))), ("assetId", Some(assetIdQuery.toParamString(assetId))), ("active", Some(activeQuery.toParamString(active))), ("allocateTickets", Some(allocateTicketsQuery.toParamString(allocateTickets))), ("ticketCount", Some(ticketCountQuery.toParamString(ticketCount))), ("ticketType", Some(ticketTypeQuery.toParamString(ticketType))), ("points", Some(pointsQuery.toParamString(points))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[WordzWordResponse](req)

    } yield resp
  }

  def deleteWord(wordId: Long, accountId: Long)(implicit wordIdQuery: QueryParam[Long], accountIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/game/word/delete"

    val httpMethod = Method.DELETE
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("wordId", Some(wordIdQuery.toParamString(wordId))), ("accountId", Some(accountIdQuery.toParamString(accountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getWord(wordId: Long, accountId: Long)(implicit wordIdQuery: QueryParam[Long], accountIdQuery: QueryParam[Long]): Task[WordzWordResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[WordzWordResponse] = jsonOf[WordzWordResponse]

    val path = "/game/word/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("wordId", Some(wordIdQuery.toParamString(wordId))), ("accountId", Some(accountIdQuery.toParamString(accountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[WordzWordResponse](req)

    } yield resp
  }

  def getWords(accountId: Long, sortField: String = id, descending: Boolean = false, activeOnly: Boolean = false, start: Integer = 0, limit: Integer = 20, keyword: String)(implicit accountIdQuery: QueryParam[Long], keywordQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], activeOnlyQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[List[WordzWordResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[WordzWordResponse]] = jsonOf[List[WordzWordResponse]]

    val path = "/game/word/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[WordzWordResponse]](req)

    } yield resp
  }

  def updateWord(wordId: Long, accountId: Long, ticketCount: Long = 0, wordText: String, definition: String, assetId: Long, active: Boolean, allocateTickets: Boolean, ticketType: String, points: Long)(implicit wordIdQuery: QueryParam[Long], accountIdQuery: QueryParam[Long], wordTextQuery: QueryParam[String], definitionQuery: QueryParam[String], assetIdQuery: QueryParam[Long], activeQuery: QueryParam[Boolean], allocateTicketsQuery: QueryParam[Boolean], ticketCountQuery: QueryParam[Long], ticketTypeQuery: QueryParam[String], pointsQuery: QueryParam[Long]): Task[WordzWordResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[WordzWordResponse] = jsonOf[WordzWordResponse]

    val path = "/game/word/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("wordId", Some(wordIdQuery.toParamString(wordId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("wordText", Some(wordTextQuery.toParamString(wordText))), ("definition", Some(definitionQuery.toParamString(definition))), ("assetId", Some(assetIdQuery.toParamString(assetId))), ("active", Some(activeQuery.toParamString(active))), ("allocateTickets", Some(allocateTicketsQuery.toParamString(allocateTickets))), ("ticketCount", Some(ticketCountQuery.toParamString(ticketCount))), ("ticketType", Some(ticketTypeQuery.toParamString(ticketType))), ("points", Some(pointsQuery.toParamString(points))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[WordzWordResponse](req)

    } yield resp
  }

}
