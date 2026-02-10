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
import org.openapitools.client.api.OrsonAiAddMovieResponse
import org.openapitools.client.api.OrsonAiBatchResponse
import org.openapitools.client.api.OrsonAiEmotionsResponse
import org.openapitools.client.api.OrsonAiProtoResponse
import org.openapitools.client.api.OrsonAiSTTResponse
import org.openapitools.client.api.OrsonAiTTSResponse
import org.openapitools.client.api.OrsonAiTechTuneResponse
import org.openapitools.client.api.OrsonAiTopicsResponse
import org.openapitools.client.api.OrsonAiVoiceCanvasResponse
import org.openapitools.client.api.OrsonEpisodeResponse
import org.openapitools.client.api.OrsonRenderResponse

object OrsonApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def addMovie(host: String, version: BigDecimal, accountId: Long, movieName: String, thirdPartyAccountId: String, tags: String, file: File, url: String, callback: String)(implicit accountIdQuery: QueryParam[Long], thirdPartyAccountIdQuery: QueryParam[String], tagsQuery: QueryParam[String], movieNameQuery: QueryParam[String], fileQuery: QueryParam[File], urlQuery: QueryParam[String], callbackQuery: QueryParam[String]): Task[OrsonAiAddMovieResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiAddMovieResponse] = jsonOf[OrsonAiAddMovieResponse]

    val path = "/api/{version}/orson/ai/addMovie".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("thirdPartyAccountId", Some(thirdPartyAccountIdQuery.toParamString(thirdPartyAccountId))), ("tags", Some(tagsQuery.toParamString(tags))), ("movieName", Some(movieNameQuery.toParamString(movieName))), ("file", Some(fileQuery.toParamString(file))), ("url", Some(urlQuery.toParamString(url))), ("callback", Some(callbackQuery.toParamString(callback))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OrsonAiAddMovieResponse](req)

    } yield resp
  }

  def aiDocs(host: String, version: BigDecimal, accountId: Long, doc: String, returnTopics: Boolean, limit: Integer, offset: Integer)(implicit accountIdQuery: QueryParam[Long], docQuery: QueryParam[String], returnTopicsQuery: QueryParam[Boolean], limitQuery: QueryParam[Integer], offsetQuery: QueryParam[Integer]): Task[OrsonAiProtoResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiProtoResponse] = jsonOf[OrsonAiProtoResponse]

    val path = "/api/{version}/orson/ai/docs".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("doc", Some(docQuery.toParamString(doc))), ("returnTopics", Some(return_topicsQuery.toParamString(return_topics))), ("limit", Some(limitQuery.toParamString(limit))), ("offset", Some(offsetQuery.toParamString(offset))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OrsonAiProtoResponse](req)

    } yield resp
  }

  def aiFindImages(host: String, version: BigDecimal, accountId: Long, text: String, parseFlag: String, fetchFlag: String, size: String)(implicit accountIdQuery: QueryParam[Long], textQuery: QueryParam[String], parseFlagQuery: QueryParam[String], fetchFlagQuery: QueryParam[String], sizeQuery: QueryParam[String]): Task[OrsonAiProtoResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiProtoResponse] = jsonOf[OrsonAiProtoResponse]

    val path = "/api/{version}/orson/ai/img".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("text", Some(textQuery.toParamString(text))), ("parseFlag", Some(parse_flagQuery.toParamString(parse_flag))), ("fetchFlag", Some(fetch_flagQuery.toParamString(fetch_flag))), ("size", Some(sizeQuery.toParamString(size))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OrsonAiProtoResponse](req)

    } yield resp
  }

  def aiTags(host: String, version: BigDecimal, accountId: Long, tags: String, conditional: String, limit: Integer, offset: Integer)(implicit accountIdQuery: QueryParam[Long], tagsQuery: QueryParam[String], conditionalQuery: QueryParam[String], limitQuery: QueryParam[Integer], offsetQuery: QueryParam[Integer]): Task[OrsonAiProtoResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiProtoResponse] = jsonOf[OrsonAiProtoResponse]

    val path = "/api/{version}/orson/ai/tags".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("tags", Some(tagsQuery.toParamString(tags))), ("conditional", Some(conditionalQuery.toParamString(conditional))), ("limit", Some(limitQuery.toParamString(limit))), ("offset", Some(offsetQuery.toParamString(offset))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OrsonAiProtoResponse](req)

    } yield resp
  }

  def aiText(host: String, version: BigDecimal, accountId: Long, terms: String, conditional: String, limit: Integer, offset: Integer)(implicit accountIdQuery: QueryParam[Long], termsQuery: QueryParam[String], conditionalQuery: QueryParam[String], limitQuery: QueryParam[Integer], offsetQuery: QueryParam[Integer]): Task[OrsonAiProtoResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiProtoResponse] = jsonOf[OrsonAiProtoResponse]

    val path = "/api/{version}/orson/ai/text".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("terms", Some(termsQuery.toParamString(terms))), ("conditional", Some(conditionalQuery.toParamString(conditional))), ("limit", Some(limitQuery.toParamString(limit))), ("offset", Some(offsetQuery.toParamString(offset))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OrsonAiProtoResponse](req)

    } yield resp
  }

  def batch(host: String, version: BigDecimal, accountId: Long, thirdPartyAccountId: String, limit: Integer, operations: String, file: File, url: String, callback: String)(implicit accountIdQuery: QueryParam[Long], thirdPartyAccountIdQuery: QueryParam[String], limitQuery: QueryParam[Integer], operationsQuery: QueryParam[String], fileQuery: QueryParam[File], urlQuery: QueryParam[String], callbackQuery: QueryParam[String]): Task[OrsonAiBatchResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiBatchResponse] = jsonOf[OrsonAiBatchResponse]

    val path = "/api/{version}/orson/ai/batch".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("thirdPartyAccountId", Some(thirdPartyAccountIdQuery.toParamString(thirdPartyAccountId))), ("limit", Some(limitQuery.toParamString(limit))), ("operations", Some(operationsQuery.toParamString(operations))), ("file", Some(fileQuery.toParamString(file))), ("url", Some(urlQuery.toParamString(url))), ("callback", Some(callbackQuery.toParamString(callback))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OrsonAiBatchResponse](req)

    } yield resp
  }

  def createInstantEpisode(host: String, version: BigDecimal, accountId: Long, data: String)(implicit accountIdQuery: QueryParam[Long], dataQuery: QueryParam[String]): Task[OrsonEpisodeResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonEpisodeResponse] = jsonOf[OrsonEpisodeResponse]

    val path = "/api/{version}/orson/stories/episodes/instant".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("data", Some(dataQuery.toParamString(data))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OrsonEpisodeResponse](req)

    } yield resp
  }

  def createVoiceCanvas(host: String, version: BigDecimal, accountId: Long, dimensions: String, thirdPartyAccountId: String, text: String, file: File, url: String, parseFlag: Boolean, fetchFlag: Boolean, callback: String)(implicit accountIdQuery: QueryParam[Long], thirdPartyAccountIdQuery: QueryParam[String], dimensionsQuery: QueryParam[String], textQuery: QueryParam[String], fileQuery: QueryParam[File], urlQuery: QueryParam[String], parseFlagQuery: QueryParam[Boolean], fetchFlagQuery: QueryParam[Boolean], callbackQuery: QueryParam[String]): Task[OrsonAiVoiceCanvasResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiVoiceCanvasResponse] = jsonOf[OrsonAiVoiceCanvasResponse]

    val path = "/api/{version}/orson/ai/voiceCanvas".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("thirdPartyAccountId", Some(thirdPartyAccountIdQuery.toParamString(thirdPartyAccountId))), ("dimensions", Some(dimensionsQuery.toParamString(dimensions))), ("text", Some(textQuery.toParamString(text))), ("file", Some(fileQuery.toParamString(file))), ("url", Some(urlQuery.toParamString(url))), ("parseFlag", Some(parseFlagQuery.toParamString(parseFlag))), ("fetchFlag", Some(fetchFlagQuery.toParamString(fetchFlag))), ("callback", Some(callbackQuery.toParamString(callback))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OrsonAiVoiceCanvasResponse](req)

    } yield resp
  }

  def emotion(host: String, version: BigDecimal, accountId: Long, thirdPartyAccountId: String, file: File, url: String, callback: String)(implicit accountIdQuery: QueryParam[Long], thirdPartyAccountIdQuery: QueryParam[String], fileQuery: QueryParam[File], urlQuery: QueryParam[String], callbackQuery: QueryParam[String]): Task[OrsonAiEmotionsResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiEmotionsResponse] = jsonOf[OrsonAiEmotionsResponse]

    val path = "/api/{version}/orson/ai/emotion".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("thirdPartyAccountId", Some(thirdPartyAccountIdQuery.toParamString(thirdPartyAccountId))), ("file", Some(fileQuery.toParamString(file))), ("url", Some(urlQuery.toParamString(url))), ("callback", Some(callbackQuery.toParamString(callback))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OrsonAiEmotionsResponse](req)

    } yield resp
  }

  def getAddMovieResult(host: String, version: BigDecimal, requestId: String, accountId: Long)(implicit accountIdQuery: QueryParam[Long]): Task[OrsonAiAddMovieResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiAddMovieResponse] = jsonOf[OrsonAiAddMovieResponse]

    val path = "/api/{version}/orson/ai/addMovie/{requestId}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "requestId" + "\\}",escape(requestId.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OrsonAiAddMovieResponse](req)

    } yield resp
  }

  def getBatch(host: String, version: BigDecimal, requestId: String, accountId: Long)(implicit accountIdQuery: QueryParam[Long]): Task[OrsonAiBatchResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiBatchResponse] = jsonOf[OrsonAiBatchResponse]

    val path = "/api/{version}/orson/ai/batch/{requestId}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "requestId" + "\\}",escape(requestId.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OrsonAiBatchResponse](req)

    } yield resp
  }

  def getEmotion(host: String, version: BigDecimal, requestId: String, accountId: Long)(implicit accountIdQuery: QueryParam[Long]): Task[OrsonAiEmotionsResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiEmotionsResponse] = jsonOf[OrsonAiEmotionsResponse]

    val path = "/api/{version}/orson/ai/emotion/{requestId}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "requestId" + "\\}",escape(requestId.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OrsonAiEmotionsResponse](req)

    } yield resp
  }

  def getEpisodeStatus(host: String, version: BigDecimal, episodeId: Long, accountId: Long)(implicit accountIdQuery: QueryParam[Long]): Task[OrsonEpisodeResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonEpisodeResponse] = jsonOf[OrsonEpisodeResponse]

    val path = "/api/{version}/orson/stories/episodes/{episodeId}/status".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "episodeId" + "\\}",escape(episodeId.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OrsonEpisodeResponse](req)

    } yield resp
  }

  def getRenderStatus(host: String, version: BigDecimal, renderId: String, accountId: Long)(implicit accountIdQuery: QueryParam[Long]): Task[OrsonRenderResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonRenderResponse] = jsonOf[OrsonRenderResponse]

    val path = "/api/{version}/orson/stories/renders/{renderId}/status".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "renderId" + "\\}",escape(renderId.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OrsonRenderResponse](req)

    } yield resp
  }

  def getSTT(host: String, version: BigDecimal, requestId: String, accountId: Long)(implicit accountIdQuery: QueryParam[Long]): Task[OrsonAiSTTResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiSTTResponse] = jsonOf[OrsonAiSTTResponse]

    val path = "/api/{version}/orson/ai/stt/{requestId}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "requestId" + "\\}",escape(requestId.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OrsonAiSTTResponse](req)

    } yield resp
  }

  def getTTS(host: String, version: BigDecimal, requestId: String, accountId: Long)(implicit accountIdQuery: QueryParam[Long]): Task[OrsonAiTTSResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiTTSResponse] = jsonOf[OrsonAiTTSResponse]

    val path = "/api/{version}/orson/ai/tts/{requestId}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "requestId" + "\\}",escape(requestId.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OrsonAiTTSResponse](req)

    } yield resp
  }

  def getTechTune(host: String, version: BigDecimal, requestId: String, accountId: Long)(implicit accountIdQuery: QueryParam[Long]): Task[OrsonAiTechTuneResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiTechTuneResponse] = jsonOf[OrsonAiTechTuneResponse]

    val path = "/api/{version}/orson/ai/techTune/{requestId}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "requestId" + "\\}",escape(requestId.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OrsonAiTechTuneResponse](req)

    } yield resp
  }

  def getTopics(host: String, version: BigDecimal, requestId: String, accountId: Long)(implicit accountIdQuery: QueryParam[Long]): Task[OrsonAiTopicsResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiTopicsResponse] = jsonOf[OrsonAiTopicsResponse]

    val path = "/api/{version}/orson/ai/topics/{requestId}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "requestId" + "\\}",escape(requestId.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OrsonAiTopicsResponse](req)

    } yield resp
  }

  def getVoiceCanvas(host: String, version: BigDecimal, requestId: String, accountId: Long)(implicit accountIdQuery: QueryParam[Long]): Task[OrsonAiVoiceCanvasResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiVoiceCanvasResponse] = jsonOf[OrsonAiVoiceCanvasResponse]

    val path = "/api/{version}/orson/ai/voiceCanvas/{requestId}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "requestId" + "\\}",escape(requestId.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OrsonAiVoiceCanvasResponse](req)

    } yield resp
  }

  def startVideoRender(host: String, version: BigDecimal, accountId: Long, data: String)(implicit accountIdQuery: QueryParam[Long], dataQuery: QueryParam[String]): Task[OrsonRenderResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonRenderResponse] = jsonOf[OrsonRenderResponse]

    val path = "/api/{version}/orson/stories/renders".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("data", Some(dataQuery.toParamString(data))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OrsonRenderResponse](req)

    } yield resp
  }

  def stt(host: String, version: BigDecimal, accountId: Long, thirdPartyAccountId: String, sourceLanguage: String, targetLanguage: String, file: File, url: String, callback: String)(implicit accountIdQuery: QueryParam[Long], thirdPartyAccountIdQuery: QueryParam[String], sourceLanguageQuery: QueryParam[String], targetLanguageQuery: QueryParam[String], fileQuery: QueryParam[File], urlQuery: QueryParam[String], callbackQuery: QueryParam[String]): Task[OrsonAiSTTResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiSTTResponse] = jsonOf[OrsonAiSTTResponse]

    val path = "/api/{version}/orson/ai/stt".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("thirdPartyAccountId", Some(thirdPartyAccountIdQuery.toParamString(thirdPartyAccountId))), ("sourceLanguage", Some(sourceLanguageQuery.toParamString(sourceLanguage))), ("targetLanguage", Some(targetLanguageQuery.toParamString(targetLanguage))), ("file", Some(fileQuery.toParamString(file))), ("url", Some(urlQuery.toParamString(url))), ("callback", Some(callbackQuery.toParamString(callback))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OrsonAiSTTResponse](req)

    } yield resp
  }

  def summarizeTopics(host: String, version: BigDecimal, accountId: Long, thirdPartyAccountId: String, doc: String, file: File, url: String, limit: Integer, offset: Integer, callback: String)(implicit accountIdQuery: QueryParam[Long], thirdPartyAccountIdQuery: QueryParam[String], docQuery: QueryParam[String], fileQuery: QueryParam[File], urlQuery: QueryParam[String], limitQuery: QueryParam[Integer], offsetQuery: QueryParam[Integer], callbackQuery: QueryParam[String]): Task[OrsonAiTopicsResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiTopicsResponse] = jsonOf[OrsonAiTopicsResponse]

    val path = "/api/{version}/orson/ai/topics".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("thirdPartyAccountId", Some(thirdPartyAccountIdQuery.toParamString(thirdPartyAccountId))), ("doc", Some(docQuery.toParamString(doc))), ("file", Some(fileQuery.toParamString(file))), ("url", Some(urlQuery.toParamString(url))), ("limit", Some(limitQuery.toParamString(limit))), ("offset", Some(offsetQuery.toParamString(offset))), ("callback", Some(callbackQuery.toParamString(callback))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OrsonAiTopicsResponse](req)

    } yield resp
  }

  def techTune(host: String, version: BigDecimal, accountId: Long, numFacesExpected: Integer, thirdPartyAccountId: String, file: File, url: String, callback: String)(implicit accountIdQuery: QueryParam[Long], thirdPartyAccountIdQuery: QueryParam[String], numFacesExpectedQuery: QueryParam[Integer], fileQuery: QueryParam[File], urlQuery: QueryParam[String], callbackQuery: QueryParam[String]): Task[OrsonAiTechTuneResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiTechTuneResponse] = jsonOf[OrsonAiTechTuneResponse]

    val path = "/api/{version}/orson/ai/techTune".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("thirdPartyAccountId", Some(thirdPartyAccountIdQuery.toParamString(thirdPartyAccountId))), ("numFacesExpected", Some(numFacesExpectedQuery.toParamString(numFacesExpected))), ("file", Some(fileQuery.toParamString(file))), ("url", Some(urlQuery.toParamString(url))), ("callback", Some(callbackQuery.toParamString(callback))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OrsonAiTechTuneResponse](req)

    } yield resp
  }

  def tts(host: String, version: BigDecimal, accountId: Long, text: String, thirdPartyAccountId: String, language: String, voice: String, callback: String)(implicit accountIdQuery: QueryParam[Long], thirdPartyAccountIdQuery: QueryParam[String], textQuery: QueryParam[String], languageQuery: QueryParam[String], voiceQuery: QueryParam[String], callbackQuery: QueryParam[String]): Task[OrsonAiTTSResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiTTSResponse] = jsonOf[OrsonAiTTSResponse]

    val path = "/api/{version}/orson/ai/tts".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("thirdPartyAccountId", Some(thirdPartyAccountIdQuery.toParamString(thirdPartyAccountId))), ("text", Some(textQuery.toParamString(text))), ("language", Some(languageQuery.toParamString(language))), ("voice", Some(voiceQuery.toParamString(voice))), ("callback", Some(callbackQuery.toParamString(callback))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OrsonAiTTSResponse](req)

    } yield resp
  }

}

class HttpServiceOrsonApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def addMovie(version: BigDecimal, accountId: Long, movieName: String, thirdPartyAccountId: String, tags: String, file: File, url: String, callback: String)(implicit accountIdQuery: QueryParam[Long], thirdPartyAccountIdQuery: QueryParam[String], tagsQuery: QueryParam[String], movieNameQuery: QueryParam[String], fileQuery: QueryParam[File], urlQuery: QueryParam[String], callbackQuery: QueryParam[String]): Task[OrsonAiAddMovieResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiAddMovieResponse] = jsonOf[OrsonAiAddMovieResponse]

    val path = "/api/{version}/orson/ai/addMovie".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("thirdPartyAccountId", Some(thirdPartyAccountIdQuery.toParamString(thirdPartyAccountId))), ("tags", Some(tagsQuery.toParamString(tags))), ("movieName", Some(movieNameQuery.toParamString(movieName))), ("file", Some(fileQuery.toParamString(file))), ("url", Some(urlQuery.toParamString(url))), ("callback", Some(callbackQuery.toParamString(callback))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OrsonAiAddMovieResponse](req)

    } yield resp
  }

  def aiDocs(version: BigDecimal, accountId: Long, doc: String, returnTopics: Boolean, limit: Integer, offset: Integer)(implicit accountIdQuery: QueryParam[Long], docQuery: QueryParam[String], returnTopicsQuery: QueryParam[Boolean], limitQuery: QueryParam[Integer], offsetQuery: QueryParam[Integer]): Task[OrsonAiProtoResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiProtoResponse] = jsonOf[OrsonAiProtoResponse]

    val path = "/api/{version}/orson/ai/docs".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("doc", Some(docQuery.toParamString(doc))), ("returnTopics", Some(return_topicsQuery.toParamString(return_topics))), ("limit", Some(limitQuery.toParamString(limit))), ("offset", Some(offsetQuery.toParamString(offset))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OrsonAiProtoResponse](req)

    } yield resp
  }

  def aiFindImages(version: BigDecimal, accountId: Long, text: String, parseFlag: String, fetchFlag: String, size: String)(implicit accountIdQuery: QueryParam[Long], textQuery: QueryParam[String], parseFlagQuery: QueryParam[String], fetchFlagQuery: QueryParam[String], sizeQuery: QueryParam[String]): Task[OrsonAiProtoResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiProtoResponse] = jsonOf[OrsonAiProtoResponse]

    val path = "/api/{version}/orson/ai/img".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("text", Some(textQuery.toParamString(text))), ("parseFlag", Some(parse_flagQuery.toParamString(parse_flag))), ("fetchFlag", Some(fetch_flagQuery.toParamString(fetch_flag))), ("size", Some(sizeQuery.toParamString(size))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OrsonAiProtoResponse](req)

    } yield resp
  }

  def aiTags(version: BigDecimal, accountId: Long, tags: String, conditional: String, limit: Integer, offset: Integer)(implicit accountIdQuery: QueryParam[Long], tagsQuery: QueryParam[String], conditionalQuery: QueryParam[String], limitQuery: QueryParam[Integer], offsetQuery: QueryParam[Integer]): Task[OrsonAiProtoResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiProtoResponse] = jsonOf[OrsonAiProtoResponse]

    val path = "/api/{version}/orson/ai/tags".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("tags", Some(tagsQuery.toParamString(tags))), ("conditional", Some(conditionalQuery.toParamString(conditional))), ("limit", Some(limitQuery.toParamString(limit))), ("offset", Some(offsetQuery.toParamString(offset))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OrsonAiProtoResponse](req)

    } yield resp
  }

  def aiText(version: BigDecimal, accountId: Long, terms: String, conditional: String, limit: Integer, offset: Integer)(implicit accountIdQuery: QueryParam[Long], termsQuery: QueryParam[String], conditionalQuery: QueryParam[String], limitQuery: QueryParam[Integer], offsetQuery: QueryParam[Integer]): Task[OrsonAiProtoResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiProtoResponse] = jsonOf[OrsonAiProtoResponse]

    val path = "/api/{version}/orson/ai/text".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("terms", Some(termsQuery.toParamString(terms))), ("conditional", Some(conditionalQuery.toParamString(conditional))), ("limit", Some(limitQuery.toParamString(limit))), ("offset", Some(offsetQuery.toParamString(offset))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OrsonAiProtoResponse](req)

    } yield resp
  }

  def batch(version: BigDecimal, accountId: Long, thirdPartyAccountId: String, limit: Integer, operations: String, file: File, url: String, callback: String)(implicit accountIdQuery: QueryParam[Long], thirdPartyAccountIdQuery: QueryParam[String], limitQuery: QueryParam[Integer], operationsQuery: QueryParam[String], fileQuery: QueryParam[File], urlQuery: QueryParam[String], callbackQuery: QueryParam[String]): Task[OrsonAiBatchResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiBatchResponse] = jsonOf[OrsonAiBatchResponse]

    val path = "/api/{version}/orson/ai/batch".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("thirdPartyAccountId", Some(thirdPartyAccountIdQuery.toParamString(thirdPartyAccountId))), ("limit", Some(limitQuery.toParamString(limit))), ("operations", Some(operationsQuery.toParamString(operations))), ("file", Some(fileQuery.toParamString(file))), ("url", Some(urlQuery.toParamString(url))), ("callback", Some(callbackQuery.toParamString(callback))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OrsonAiBatchResponse](req)

    } yield resp
  }

  def createInstantEpisode(version: BigDecimal, accountId: Long, data: String)(implicit accountIdQuery: QueryParam[Long], dataQuery: QueryParam[String]): Task[OrsonEpisodeResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonEpisodeResponse] = jsonOf[OrsonEpisodeResponse]

    val path = "/api/{version}/orson/stories/episodes/instant".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("data", Some(dataQuery.toParamString(data))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OrsonEpisodeResponse](req)

    } yield resp
  }

  def createVoiceCanvas(version: BigDecimal, accountId: Long, dimensions: String, thirdPartyAccountId: String, text: String, file: File, url: String, parseFlag: Boolean, fetchFlag: Boolean, callback: String)(implicit accountIdQuery: QueryParam[Long], thirdPartyAccountIdQuery: QueryParam[String], dimensionsQuery: QueryParam[String], textQuery: QueryParam[String], fileQuery: QueryParam[File], urlQuery: QueryParam[String], parseFlagQuery: QueryParam[Boolean], fetchFlagQuery: QueryParam[Boolean], callbackQuery: QueryParam[String]): Task[OrsonAiVoiceCanvasResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiVoiceCanvasResponse] = jsonOf[OrsonAiVoiceCanvasResponse]

    val path = "/api/{version}/orson/ai/voiceCanvas".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("thirdPartyAccountId", Some(thirdPartyAccountIdQuery.toParamString(thirdPartyAccountId))), ("dimensions", Some(dimensionsQuery.toParamString(dimensions))), ("text", Some(textQuery.toParamString(text))), ("file", Some(fileQuery.toParamString(file))), ("url", Some(urlQuery.toParamString(url))), ("parseFlag", Some(parseFlagQuery.toParamString(parseFlag))), ("fetchFlag", Some(fetchFlagQuery.toParamString(fetchFlag))), ("callback", Some(callbackQuery.toParamString(callback))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OrsonAiVoiceCanvasResponse](req)

    } yield resp
  }

  def emotion(version: BigDecimal, accountId: Long, thirdPartyAccountId: String, file: File, url: String, callback: String)(implicit accountIdQuery: QueryParam[Long], thirdPartyAccountIdQuery: QueryParam[String], fileQuery: QueryParam[File], urlQuery: QueryParam[String], callbackQuery: QueryParam[String]): Task[OrsonAiEmotionsResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiEmotionsResponse] = jsonOf[OrsonAiEmotionsResponse]

    val path = "/api/{version}/orson/ai/emotion".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("thirdPartyAccountId", Some(thirdPartyAccountIdQuery.toParamString(thirdPartyAccountId))), ("file", Some(fileQuery.toParamString(file))), ("url", Some(urlQuery.toParamString(url))), ("callback", Some(callbackQuery.toParamString(callback))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OrsonAiEmotionsResponse](req)

    } yield resp
  }

  def getAddMovieResult(version: BigDecimal, requestId: String, accountId: Long)(implicit accountIdQuery: QueryParam[Long]): Task[OrsonAiAddMovieResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiAddMovieResponse] = jsonOf[OrsonAiAddMovieResponse]

    val path = "/api/{version}/orson/ai/addMovie/{requestId}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "requestId" + "\\}",escape(requestId.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OrsonAiAddMovieResponse](req)

    } yield resp
  }

  def getBatch(version: BigDecimal, requestId: String, accountId: Long)(implicit accountIdQuery: QueryParam[Long]): Task[OrsonAiBatchResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiBatchResponse] = jsonOf[OrsonAiBatchResponse]

    val path = "/api/{version}/orson/ai/batch/{requestId}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "requestId" + "\\}",escape(requestId.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OrsonAiBatchResponse](req)

    } yield resp
  }

  def getEmotion(version: BigDecimal, requestId: String, accountId: Long)(implicit accountIdQuery: QueryParam[Long]): Task[OrsonAiEmotionsResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiEmotionsResponse] = jsonOf[OrsonAiEmotionsResponse]

    val path = "/api/{version}/orson/ai/emotion/{requestId}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "requestId" + "\\}",escape(requestId.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OrsonAiEmotionsResponse](req)

    } yield resp
  }

  def getEpisodeStatus(version: BigDecimal, episodeId: Long, accountId: Long)(implicit accountIdQuery: QueryParam[Long]): Task[OrsonEpisodeResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonEpisodeResponse] = jsonOf[OrsonEpisodeResponse]

    val path = "/api/{version}/orson/stories/episodes/{episodeId}/status".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "episodeId" + "\\}",escape(episodeId.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OrsonEpisodeResponse](req)

    } yield resp
  }

  def getRenderStatus(version: BigDecimal, renderId: String, accountId: Long)(implicit accountIdQuery: QueryParam[Long]): Task[OrsonRenderResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonRenderResponse] = jsonOf[OrsonRenderResponse]

    val path = "/api/{version}/orson/stories/renders/{renderId}/status".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "renderId" + "\\}",escape(renderId.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OrsonRenderResponse](req)

    } yield resp
  }

  def getSTT(version: BigDecimal, requestId: String, accountId: Long)(implicit accountIdQuery: QueryParam[Long]): Task[OrsonAiSTTResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiSTTResponse] = jsonOf[OrsonAiSTTResponse]

    val path = "/api/{version}/orson/ai/stt/{requestId}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "requestId" + "\\}",escape(requestId.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OrsonAiSTTResponse](req)

    } yield resp
  }

  def getTTS(version: BigDecimal, requestId: String, accountId: Long)(implicit accountIdQuery: QueryParam[Long]): Task[OrsonAiTTSResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiTTSResponse] = jsonOf[OrsonAiTTSResponse]

    val path = "/api/{version}/orson/ai/tts/{requestId}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "requestId" + "\\}",escape(requestId.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OrsonAiTTSResponse](req)

    } yield resp
  }

  def getTechTune(version: BigDecimal, requestId: String, accountId: Long)(implicit accountIdQuery: QueryParam[Long]): Task[OrsonAiTechTuneResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiTechTuneResponse] = jsonOf[OrsonAiTechTuneResponse]

    val path = "/api/{version}/orson/ai/techTune/{requestId}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "requestId" + "\\}",escape(requestId.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OrsonAiTechTuneResponse](req)

    } yield resp
  }

  def getTopics(version: BigDecimal, requestId: String, accountId: Long)(implicit accountIdQuery: QueryParam[Long]): Task[OrsonAiTopicsResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiTopicsResponse] = jsonOf[OrsonAiTopicsResponse]

    val path = "/api/{version}/orson/ai/topics/{requestId}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "requestId" + "\\}",escape(requestId.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OrsonAiTopicsResponse](req)

    } yield resp
  }

  def getVoiceCanvas(version: BigDecimal, requestId: String, accountId: Long)(implicit accountIdQuery: QueryParam[Long]): Task[OrsonAiVoiceCanvasResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiVoiceCanvasResponse] = jsonOf[OrsonAiVoiceCanvasResponse]

    val path = "/api/{version}/orson/ai/voiceCanvas/{requestId}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "requestId" + "\\}",escape(requestId.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OrsonAiVoiceCanvasResponse](req)

    } yield resp
  }

  def startVideoRender(version: BigDecimal, accountId: Long, data: String)(implicit accountIdQuery: QueryParam[Long], dataQuery: QueryParam[String]): Task[OrsonRenderResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonRenderResponse] = jsonOf[OrsonRenderResponse]

    val path = "/api/{version}/orson/stories/renders".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("data", Some(dataQuery.toParamString(data))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OrsonRenderResponse](req)

    } yield resp
  }

  def stt(version: BigDecimal, accountId: Long, thirdPartyAccountId: String, sourceLanguage: String, targetLanguage: String, file: File, url: String, callback: String)(implicit accountIdQuery: QueryParam[Long], thirdPartyAccountIdQuery: QueryParam[String], sourceLanguageQuery: QueryParam[String], targetLanguageQuery: QueryParam[String], fileQuery: QueryParam[File], urlQuery: QueryParam[String], callbackQuery: QueryParam[String]): Task[OrsonAiSTTResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiSTTResponse] = jsonOf[OrsonAiSTTResponse]

    val path = "/api/{version}/orson/ai/stt".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("thirdPartyAccountId", Some(thirdPartyAccountIdQuery.toParamString(thirdPartyAccountId))), ("sourceLanguage", Some(sourceLanguageQuery.toParamString(sourceLanguage))), ("targetLanguage", Some(targetLanguageQuery.toParamString(targetLanguage))), ("file", Some(fileQuery.toParamString(file))), ("url", Some(urlQuery.toParamString(url))), ("callback", Some(callbackQuery.toParamString(callback))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OrsonAiSTTResponse](req)

    } yield resp
  }

  def summarizeTopics(version: BigDecimal, accountId: Long, thirdPartyAccountId: String, doc: String, file: File, url: String, limit: Integer, offset: Integer, callback: String)(implicit accountIdQuery: QueryParam[Long], thirdPartyAccountIdQuery: QueryParam[String], docQuery: QueryParam[String], fileQuery: QueryParam[File], urlQuery: QueryParam[String], limitQuery: QueryParam[Integer], offsetQuery: QueryParam[Integer], callbackQuery: QueryParam[String]): Task[OrsonAiTopicsResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiTopicsResponse] = jsonOf[OrsonAiTopicsResponse]

    val path = "/api/{version}/orson/ai/topics".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("thirdPartyAccountId", Some(thirdPartyAccountIdQuery.toParamString(thirdPartyAccountId))), ("doc", Some(docQuery.toParamString(doc))), ("file", Some(fileQuery.toParamString(file))), ("url", Some(urlQuery.toParamString(url))), ("limit", Some(limitQuery.toParamString(limit))), ("offset", Some(offsetQuery.toParamString(offset))), ("callback", Some(callbackQuery.toParamString(callback))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OrsonAiTopicsResponse](req)

    } yield resp
  }

  def techTune(version: BigDecimal, accountId: Long, numFacesExpected: Integer, thirdPartyAccountId: String, file: File, url: String, callback: String)(implicit accountIdQuery: QueryParam[Long], thirdPartyAccountIdQuery: QueryParam[String], numFacesExpectedQuery: QueryParam[Integer], fileQuery: QueryParam[File], urlQuery: QueryParam[String], callbackQuery: QueryParam[String]): Task[OrsonAiTechTuneResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiTechTuneResponse] = jsonOf[OrsonAiTechTuneResponse]

    val path = "/api/{version}/orson/ai/techTune".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("thirdPartyAccountId", Some(thirdPartyAccountIdQuery.toParamString(thirdPartyAccountId))), ("numFacesExpected", Some(numFacesExpectedQuery.toParamString(numFacesExpected))), ("file", Some(fileQuery.toParamString(file))), ("url", Some(urlQuery.toParamString(url))), ("callback", Some(callbackQuery.toParamString(callback))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OrsonAiTechTuneResponse](req)

    } yield resp
  }

  def tts(version: BigDecimal, accountId: Long, text: String, thirdPartyAccountId: String, language: String, voice: String, callback: String)(implicit accountIdQuery: QueryParam[Long], thirdPartyAccountIdQuery: QueryParam[String], textQuery: QueryParam[String], languageQuery: QueryParam[String], voiceQuery: QueryParam[String], callbackQuery: QueryParam[String]): Task[OrsonAiTTSResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiTTSResponse] = jsonOf[OrsonAiTTSResponse]

    val path = "/api/{version}/orson/ai/tts".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("thirdPartyAccountId", Some(thirdPartyAccountIdQuery.toParamString(thirdPartyAccountId))), ("text", Some(textQuery.toParamString(text))), ("language", Some(languageQuery.toParamString(language))), ("voice", Some(voiceQuery.toParamString(voice))), ("callback", Some(callbackQuery.toParamString(callback))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OrsonAiTTSResponse](req)

    } yield resp
  }

}
