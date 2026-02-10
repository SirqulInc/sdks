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
import org.openapitools.client.api.QuestionResponse
import org.openapitools.client.api.SirqulResponse

object QuestionApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createQuestion(host: String, version: BigDecimal, accountId: Long, question: String, answers: String, active: Boolean, allocateTickets: Boolean, ticketCount: Long, tags: String, videoURL: String, assetId: Long, ticketType: String, points: Long)(implicit accountIdQuery: QueryParam[Long], questionQuery: QueryParam[String], answersQuery: QueryParam[String], tagsQuery: QueryParam[String], videoURLQuery: QueryParam[String], assetIdQuery: QueryParam[Long], activeQuery: QueryParam[Boolean], allocateTicketsQuery: QueryParam[Boolean], ticketCountQuery: QueryParam[Long], ticketTypeQuery: QueryParam[String], pointsQuery: QueryParam[Long]): Task[QuestionResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[QuestionResponse] = jsonOf[QuestionResponse]

    val path = "/api/{version}/game/question/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("question", Some(questionQuery.toParamString(question))), ("answers", Some(answersQuery.toParamString(answers))), ("tags", Some(tagsQuery.toParamString(tags))), ("videoURL", Some(videoURLQuery.toParamString(videoURL))), ("assetId", Some(assetIdQuery.toParamString(assetId))), ("active", Some(activeQuery.toParamString(active))), ("allocateTickets", Some(allocateTicketsQuery.toParamString(allocateTickets))), ("ticketCount", Some(ticketCountQuery.toParamString(ticketCount))), ("ticketType", Some(ticketTypeQuery.toParamString(ticketType))), ("points", Some(pointsQuery.toParamString(points))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[QuestionResponse](req)

    } yield resp
  }

  def deleteQuestion(host: String, version: BigDecimal, questionId: Long, accountId: Long)(implicit questionIdQuery: QueryParam[Long], accountIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/game/question/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("questionId", Some(questionIdQuery.toParamString(questionId))), ("accountId", Some(accountIdQuery.toParamString(accountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getQuestion(host: String, version: BigDecimal, questionId: Long, accountId: Long)(implicit questionIdQuery: QueryParam[Long], accountIdQuery: QueryParam[Long]): Task[QuestionResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[QuestionResponse] = jsonOf[QuestionResponse]

    val path = "/api/{version}/game/question/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("questionId", Some(questionIdQuery.toParamString(questionId))), ("accountId", Some(accountIdQuery.toParamString(accountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[QuestionResponse](req)

    } yield resp
  }

  def searchQuestions(host: String, version: BigDecimal, accountId: Long, sortField: String, descending: Boolean, activeOnly: Boolean, start: Integer, limit: Integer, keyword: String)(implicit accountIdQuery: QueryParam[Long], keywordQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], activeOnlyQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[List[QuestionResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[QuestionResponse]] = jsonOf[List[QuestionResponse]]

    val path = "/api/{version}/game/question/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

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
      resp          <- client.expect[List[QuestionResponse]](req)

    } yield resp
  }

  def updateQuestion(host: String, version: BigDecimal, questionId: Long, accountId: Long, ticketCount: Long, question: String, answers: String, tags: String, videoURL: String, assetId: Long, active: Boolean, allocateTickets: Boolean, ticketType: String, points: Long)(implicit questionIdQuery: QueryParam[Long], accountIdQuery: QueryParam[Long], questionQuery: QueryParam[String], answersQuery: QueryParam[String], tagsQuery: QueryParam[String], videoURLQuery: QueryParam[String], assetIdQuery: QueryParam[Long], activeQuery: QueryParam[Boolean], allocateTicketsQuery: QueryParam[Boolean], ticketCountQuery: QueryParam[Long], ticketTypeQuery: QueryParam[String], pointsQuery: QueryParam[Long]): Task[QuestionResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[QuestionResponse] = jsonOf[QuestionResponse]

    val path = "/api/{version}/game/question/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("questionId", Some(questionIdQuery.toParamString(questionId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("question", Some(questionQuery.toParamString(question))), ("answers", Some(answersQuery.toParamString(answers))), ("tags", Some(tagsQuery.toParamString(tags))), ("videoURL", Some(videoURLQuery.toParamString(videoURL))), ("assetId", Some(assetIdQuery.toParamString(assetId))), ("active", Some(activeQuery.toParamString(active))), ("allocateTickets", Some(allocateTicketsQuery.toParamString(allocateTickets))), ("ticketCount", Some(ticketCountQuery.toParamString(ticketCount))), ("ticketType", Some(ticketTypeQuery.toParamString(ticketType))), ("points", Some(pointsQuery.toParamString(points))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[QuestionResponse](req)

    } yield resp
  }

}

class HttpServiceQuestionApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createQuestion(version: BigDecimal, accountId: Long, question: String, answers: String, active: Boolean, allocateTickets: Boolean, ticketCount: Long, tags: String, videoURL: String, assetId: Long, ticketType: String, points: Long)(implicit accountIdQuery: QueryParam[Long], questionQuery: QueryParam[String], answersQuery: QueryParam[String], tagsQuery: QueryParam[String], videoURLQuery: QueryParam[String], assetIdQuery: QueryParam[Long], activeQuery: QueryParam[Boolean], allocateTicketsQuery: QueryParam[Boolean], ticketCountQuery: QueryParam[Long], ticketTypeQuery: QueryParam[String], pointsQuery: QueryParam[Long]): Task[QuestionResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[QuestionResponse] = jsonOf[QuestionResponse]

    val path = "/api/{version}/game/question/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("question", Some(questionQuery.toParamString(question))), ("answers", Some(answersQuery.toParamString(answers))), ("tags", Some(tagsQuery.toParamString(tags))), ("videoURL", Some(videoURLQuery.toParamString(videoURL))), ("assetId", Some(assetIdQuery.toParamString(assetId))), ("active", Some(activeQuery.toParamString(active))), ("allocateTickets", Some(allocateTicketsQuery.toParamString(allocateTickets))), ("ticketCount", Some(ticketCountQuery.toParamString(ticketCount))), ("ticketType", Some(ticketTypeQuery.toParamString(ticketType))), ("points", Some(pointsQuery.toParamString(points))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[QuestionResponse](req)

    } yield resp
  }

  def deleteQuestion(version: BigDecimal, questionId: Long, accountId: Long)(implicit questionIdQuery: QueryParam[Long], accountIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/game/question/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("questionId", Some(questionIdQuery.toParamString(questionId))), ("accountId", Some(accountIdQuery.toParamString(accountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getQuestion(version: BigDecimal, questionId: Long, accountId: Long)(implicit questionIdQuery: QueryParam[Long], accountIdQuery: QueryParam[Long]): Task[QuestionResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[QuestionResponse] = jsonOf[QuestionResponse]

    val path = "/api/{version}/game/question/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("questionId", Some(questionIdQuery.toParamString(questionId))), ("accountId", Some(accountIdQuery.toParamString(accountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[QuestionResponse](req)

    } yield resp
  }

  def searchQuestions(version: BigDecimal, accountId: Long, sortField: String, descending: Boolean, activeOnly: Boolean, start: Integer, limit: Integer, keyword: String)(implicit accountIdQuery: QueryParam[Long], keywordQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], activeOnlyQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[List[QuestionResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[QuestionResponse]] = jsonOf[List[QuestionResponse]]

    val path = "/api/{version}/game/question/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

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
      resp          <- client.expect[List[QuestionResponse]](req)

    } yield resp
  }

  def updateQuestion(version: BigDecimal, questionId: Long, accountId: Long, ticketCount: Long, question: String, answers: String, tags: String, videoURL: String, assetId: Long, active: Boolean, allocateTickets: Boolean, ticketType: String, points: Long)(implicit questionIdQuery: QueryParam[Long], accountIdQuery: QueryParam[Long], questionQuery: QueryParam[String], answersQuery: QueryParam[String], tagsQuery: QueryParam[String], videoURLQuery: QueryParam[String], assetIdQuery: QueryParam[Long], activeQuery: QueryParam[Boolean], allocateTicketsQuery: QueryParam[Boolean], ticketCountQuery: QueryParam[Long], ticketTypeQuery: QueryParam[String], pointsQuery: QueryParam[Long]): Task[QuestionResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[QuestionResponse] = jsonOf[QuestionResponse]

    val path = "/api/{version}/game/question/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("questionId", Some(questionIdQuery.toParamString(questionId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("question", Some(questionQuery.toParamString(question))), ("answers", Some(answersQuery.toParamString(answers))), ("tags", Some(tagsQuery.toParamString(tags))), ("videoURL", Some(videoURLQuery.toParamString(videoURL))), ("assetId", Some(assetIdQuery.toParamString(assetId))), ("active", Some(activeQuery.toParamString(active))), ("allocateTickets", Some(allocateTicketsQuery.toParamString(allocateTickets))), ("ticketCount", Some(ticketCountQuery.toParamString(ticketCount))), ("ticketType", Some(ticketTypeQuery.toParamString(ticketType))), ("points", Some(pointsQuery.toParamString(points))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[QuestionResponse](req)

    } yield resp
  }

}
