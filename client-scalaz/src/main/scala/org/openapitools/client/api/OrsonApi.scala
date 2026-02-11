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

  def addMovie(host: String, accountId: Long, movieName: String, thirdPartyAccountId: String, tags: String, file: File, url: String, callback: String)(implicit accountIdQuery: QueryParam[Long], thirdPartyAccountIdQuery: QueryParam[String], tagsQuery: QueryParam[String], movieNameQuery: QueryParam[String], fileQuery: QueryParam[File], urlQuery: QueryParam[String], callbackQuery: QueryParam[String]): Task[OrsonAiAddMovieResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiAddMovieResponse] = jsonOf[OrsonAiAddMovieResponse]

    val path = "/orson/ai/addMovie"

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

  def aiDocs(host: String, accountId: Long, doc: String, returnTopics: Boolean, limit: Integer, offset: Integer)(implicit accountIdQuery: QueryParam[Long], docQuery: QueryParam[String], returnTopicsQuery: QueryParam[Boolean], limitQuery: QueryParam[Integer], offsetQuery: QueryParam[Integer]): Task[OrsonAiProtoResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiProtoResponse] = jsonOf[OrsonAiProtoResponse]

    val path = "/orson/ai/docs"

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

  def aiFindImages(host: String, accountId: Long, text: String, parseFlag: String, fetchFlag: String, size: String)(implicit accountIdQuery: QueryParam[Long], textQuery: QueryParam[String], parseFlagQuery: QueryParam[String], fetchFlagQuery: QueryParam[String], sizeQuery: QueryParam[String]): Task[OrsonAiProtoResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiProtoResponse] = jsonOf[OrsonAiProtoResponse]

    val path = "/orson/ai/img"

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

  def aiTags(host: String, accountId: Long, tags: String, conditional: String, limit: Integer, offset: Integer)(implicit accountIdQuery: QueryParam[Long], tagsQuery: QueryParam[String], conditionalQuery: QueryParam[String], limitQuery: QueryParam[Integer], offsetQuery: QueryParam[Integer]): Task[OrsonAiProtoResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiProtoResponse] = jsonOf[OrsonAiProtoResponse]

    val path = "/orson/ai/tags"

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

  def aiText(host: String, accountId: Long, terms: String, conditional: String, limit: Integer, offset: Integer)(implicit accountIdQuery: QueryParam[Long], termsQuery: QueryParam[String], conditionalQuery: QueryParam[String], limitQuery: QueryParam[Integer], offsetQuery: QueryParam[Integer]): Task[OrsonAiProtoResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiProtoResponse] = jsonOf[OrsonAiProtoResponse]

    val path = "/orson/ai/text"

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

  def batch(host: String, accountId: Long, thirdPartyAccountId: String, limit: Integer, operations: String, file: File, url: String, callback: String)(implicit accountIdQuery: QueryParam[Long], thirdPartyAccountIdQuery: QueryParam[String], limitQuery: QueryParam[Integer], operationsQuery: QueryParam[String], fileQuery: QueryParam[File], urlQuery: QueryParam[String], callbackQuery: QueryParam[String]): Task[OrsonAiBatchResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiBatchResponse] = jsonOf[OrsonAiBatchResponse]

    val path = "/orson/ai/batch"

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

  def createInstantEpisode(host: String, accountId: Long, data: String)(implicit accountIdQuery: QueryParam[Long], dataQuery: QueryParam[String]): Task[OrsonEpisodeResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonEpisodeResponse] = jsonOf[OrsonEpisodeResponse]

    val path = "/orson/stories/episodes/instant"

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

  def createVoiceCanvas(host: String, accountId: Long, dimensions: String, thirdPartyAccountId: String, text: String, file: File, url: String, parseFlag: Boolean, fetchFlag: Boolean, callback: String)(implicit accountIdQuery: QueryParam[Long], thirdPartyAccountIdQuery: QueryParam[String], dimensionsQuery: QueryParam[String], textQuery: QueryParam[String], fileQuery: QueryParam[File], urlQuery: QueryParam[String], parseFlagQuery: QueryParam[Boolean], fetchFlagQuery: QueryParam[Boolean], callbackQuery: QueryParam[String]): Task[OrsonAiVoiceCanvasResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiVoiceCanvasResponse] = jsonOf[OrsonAiVoiceCanvasResponse]

    val path = "/orson/ai/voiceCanvas"

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

  def emotion(host: String, accountId: Long, thirdPartyAccountId: String, file: File, url: String, callback: String)(implicit accountIdQuery: QueryParam[Long], thirdPartyAccountIdQuery: QueryParam[String], fileQuery: QueryParam[File], urlQuery: QueryParam[String], callbackQuery: QueryParam[String]): Task[OrsonAiEmotionsResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiEmotionsResponse] = jsonOf[OrsonAiEmotionsResponse]

    val path = "/orson/ai/emotion"

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

  def getAddMovieResult(host: String, requestId: String, accountId: Long)(implicit accountIdQuery: QueryParam[Long]): Task[OrsonAiAddMovieResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiAddMovieResponse] = jsonOf[OrsonAiAddMovieResponse]

    val path = "/orson/ai/addMovie/{requestId}".replaceAll("\\{" + "requestId" + "\\}",escape(requestId.toString))

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

  def getBatch(host: String, requestId: String, accountId: Long)(implicit accountIdQuery: QueryParam[Long]): Task[OrsonAiBatchResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiBatchResponse] = jsonOf[OrsonAiBatchResponse]

    val path = "/orson/ai/batch/{requestId}".replaceAll("\\{" + "requestId" + "\\}",escape(requestId.toString))

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

  def getEmotion(host: String, requestId: String, accountId: Long)(implicit accountIdQuery: QueryParam[Long]): Task[OrsonAiEmotionsResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiEmotionsResponse] = jsonOf[OrsonAiEmotionsResponse]

    val path = "/orson/ai/emotion/{requestId}".replaceAll("\\{" + "requestId" + "\\}",escape(requestId.toString))

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

  def getEpisodeStatus(host: String, episodeId: Long, accountId: Long)(implicit accountIdQuery: QueryParam[Long]): Task[OrsonEpisodeResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonEpisodeResponse] = jsonOf[OrsonEpisodeResponse]

    val path = "/orson/stories/episodes/{episodeId}/status".replaceAll("\\{" + "episodeId" + "\\}",escape(episodeId.toString))

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

  def getRenderStatus(host: String, renderId: String, accountId: Long)(implicit accountIdQuery: QueryParam[Long]): Task[OrsonRenderResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonRenderResponse] = jsonOf[OrsonRenderResponse]

    val path = "/orson/stories/renders/{renderId}/status".replaceAll("\\{" + "renderId" + "\\}",escape(renderId.toString))

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

  def getSTT(host: String, requestId: String, accountId: Long)(implicit accountIdQuery: QueryParam[Long]): Task[OrsonAiSTTResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiSTTResponse] = jsonOf[OrsonAiSTTResponse]

    val path = "/orson/ai/stt/{requestId}".replaceAll("\\{" + "requestId" + "\\}",escape(requestId.toString))

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

  def getTTS(host: String, requestId: String, accountId: Long)(implicit accountIdQuery: QueryParam[Long]): Task[OrsonAiTTSResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiTTSResponse] = jsonOf[OrsonAiTTSResponse]

    val path = "/orson/ai/tts/{requestId}".replaceAll("\\{" + "requestId" + "\\}",escape(requestId.toString))

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

  def getTechTune(host: String, requestId: String, accountId: Long)(implicit accountIdQuery: QueryParam[Long]): Task[OrsonAiTechTuneResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiTechTuneResponse] = jsonOf[OrsonAiTechTuneResponse]

    val path = "/orson/ai/techTune/{requestId}".replaceAll("\\{" + "requestId" + "\\}",escape(requestId.toString))

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

  def getTopics(host: String, requestId: String, accountId: Long)(implicit accountIdQuery: QueryParam[Long]): Task[OrsonAiTopicsResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiTopicsResponse] = jsonOf[OrsonAiTopicsResponse]

    val path = "/orson/ai/topics/{requestId}".replaceAll("\\{" + "requestId" + "\\}",escape(requestId.toString))

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

  def getVoiceCanvas(host: String, requestId: String, accountId: Long)(implicit accountIdQuery: QueryParam[Long]): Task[OrsonAiVoiceCanvasResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiVoiceCanvasResponse] = jsonOf[OrsonAiVoiceCanvasResponse]

    val path = "/orson/ai/voiceCanvas/{requestId}".replaceAll("\\{" + "requestId" + "\\}",escape(requestId.toString))

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

  def startVideoRender(host: String, accountId: Long, data: String)(implicit accountIdQuery: QueryParam[Long], dataQuery: QueryParam[String]): Task[OrsonRenderResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonRenderResponse] = jsonOf[OrsonRenderResponse]

    val path = "/orson/stories/renders"

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

  def stt(host: String, accountId: Long, thirdPartyAccountId: String, sourceLanguage: String, targetLanguage: String, file: File, url: String, callback: String)(implicit accountIdQuery: QueryParam[Long], thirdPartyAccountIdQuery: QueryParam[String], sourceLanguageQuery: QueryParam[String], targetLanguageQuery: QueryParam[String], fileQuery: QueryParam[File], urlQuery: QueryParam[String], callbackQuery: QueryParam[String]): Task[OrsonAiSTTResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiSTTResponse] = jsonOf[OrsonAiSTTResponse]

    val path = "/orson/ai/stt"

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

  def summarizeTopics(host: String, accountId: Long, thirdPartyAccountId: String, doc: String, file: File, url: String, limit: Integer, offset: Integer, callback: String)(implicit accountIdQuery: QueryParam[Long], thirdPartyAccountIdQuery: QueryParam[String], docQuery: QueryParam[String], fileQuery: QueryParam[File], urlQuery: QueryParam[String], limitQuery: QueryParam[Integer], offsetQuery: QueryParam[Integer], callbackQuery: QueryParam[String]): Task[OrsonAiTopicsResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiTopicsResponse] = jsonOf[OrsonAiTopicsResponse]

    val path = "/orson/ai/topics"

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

  def techTune(host: String, accountId: Long, numFacesExpected: Integer, thirdPartyAccountId: String, file: File, url: String, callback: String)(implicit accountIdQuery: QueryParam[Long], thirdPartyAccountIdQuery: QueryParam[String], numFacesExpectedQuery: QueryParam[Integer], fileQuery: QueryParam[File], urlQuery: QueryParam[String], callbackQuery: QueryParam[String]): Task[OrsonAiTechTuneResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiTechTuneResponse] = jsonOf[OrsonAiTechTuneResponse]

    val path = "/orson/ai/techTune"

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

  def tts(host: String, accountId: Long, text: String, thirdPartyAccountId: String, language: String, voice: String, callback: String)(implicit accountIdQuery: QueryParam[Long], thirdPartyAccountIdQuery: QueryParam[String], textQuery: QueryParam[String], languageQuery: QueryParam[String], voiceQuery: QueryParam[String], callbackQuery: QueryParam[String]): Task[OrsonAiTTSResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiTTSResponse] = jsonOf[OrsonAiTTSResponse]

    val path = "/orson/ai/tts"

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

  def addMovie(accountId: Long, movieName: String, thirdPartyAccountId: String, tags: String, file: File, url: String, callback: String)(implicit accountIdQuery: QueryParam[Long], thirdPartyAccountIdQuery: QueryParam[String], tagsQuery: QueryParam[String], movieNameQuery: QueryParam[String], fileQuery: QueryParam[File], urlQuery: QueryParam[String], callbackQuery: QueryParam[String]): Task[OrsonAiAddMovieResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiAddMovieResponse] = jsonOf[OrsonAiAddMovieResponse]

    val path = "/orson/ai/addMovie"

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

  def aiDocs(accountId: Long, doc: String, returnTopics: Boolean, limit: Integer, offset: Integer)(implicit accountIdQuery: QueryParam[Long], docQuery: QueryParam[String], returnTopicsQuery: QueryParam[Boolean], limitQuery: QueryParam[Integer], offsetQuery: QueryParam[Integer]): Task[OrsonAiProtoResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiProtoResponse] = jsonOf[OrsonAiProtoResponse]

    val path = "/orson/ai/docs"

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

  def aiFindImages(accountId: Long, text: String, parseFlag: String, fetchFlag: String, size: String)(implicit accountIdQuery: QueryParam[Long], textQuery: QueryParam[String], parseFlagQuery: QueryParam[String], fetchFlagQuery: QueryParam[String], sizeQuery: QueryParam[String]): Task[OrsonAiProtoResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiProtoResponse] = jsonOf[OrsonAiProtoResponse]

    val path = "/orson/ai/img"

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

  def aiTags(accountId: Long, tags: String, conditional: String, limit: Integer, offset: Integer)(implicit accountIdQuery: QueryParam[Long], tagsQuery: QueryParam[String], conditionalQuery: QueryParam[String], limitQuery: QueryParam[Integer], offsetQuery: QueryParam[Integer]): Task[OrsonAiProtoResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiProtoResponse] = jsonOf[OrsonAiProtoResponse]

    val path = "/orson/ai/tags"

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

  def aiText(accountId: Long, terms: String, conditional: String, limit: Integer, offset: Integer)(implicit accountIdQuery: QueryParam[Long], termsQuery: QueryParam[String], conditionalQuery: QueryParam[String], limitQuery: QueryParam[Integer], offsetQuery: QueryParam[Integer]): Task[OrsonAiProtoResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiProtoResponse] = jsonOf[OrsonAiProtoResponse]

    val path = "/orson/ai/text"

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

  def batch(accountId: Long, thirdPartyAccountId: String, limit: Integer, operations: String, file: File, url: String, callback: String)(implicit accountIdQuery: QueryParam[Long], thirdPartyAccountIdQuery: QueryParam[String], limitQuery: QueryParam[Integer], operationsQuery: QueryParam[String], fileQuery: QueryParam[File], urlQuery: QueryParam[String], callbackQuery: QueryParam[String]): Task[OrsonAiBatchResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiBatchResponse] = jsonOf[OrsonAiBatchResponse]

    val path = "/orson/ai/batch"

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

  def createInstantEpisode(accountId: Long, data: String)(implicit accountIdQuery: QueryParam[Long], dataQuery: QueryParam[String]): Task[OrsonEpisodeResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonEpisodeResponse] = jsonOf[OrsonEpisodeResponse]

    val path = "/orson/stories/episodes/instant"

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

  def createVoiceCanvas(accountId: Long, dimensions: String, thirdPartyAccountId: String, text: String, file: File, url: String, parseFlag: Boolean, fetchFlag: Boolean, callback: String)(implicit accountIdQuery: QueryParam[Long], thirdPartyAccountIdQuery: QueryParam[String], dimensionsQuery: QueryParam[String], textQuery: QueryParam[String], fileQuery: QueryParam[File], urlQuery: QueryParam[String], parseFlagQuery: QueryParam[Boolean], fetchFlagQuery: QueryParam[Boolean], callbackQuery: QueryParam[String]): Task[OrsonAiVoiceCanvasResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiVoiceCanvasResponse] = jsonOf[OrsonAiVoiceCanvasResponse]

    val path = "/orson/ai/voiceCanvas"

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

  def emotion(accountId: Long, thirdPartyAccountId: String, file: File, url: String, callback: String)(implicit accountIdQuery: QueryParam[Long], thirdPartyAccountIdQuery: QueryParam[String], fileQuery: QueryParam[File], urlQuery: QueryParam[String], callbackQuery: QueryParam[String]): Task[OrsonAiEmotionsResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiEmotionsResponse] = jsonOf[OrsonAiEmotionsResponse]

    val path = "/orson/ai/emotion"

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

  def getAddMovieResult(requestId: String, accountId: Long)(implicit accountIdQuery: QueryParam[Long]): Task[OrsonAiAddMovieResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiAddMovieResponse] = jsonOf[OrsonAiAddMovieResponse]

    val path = "/orson/ai/addMovie/{requestId}".replaceAll("\\{" + "requestId" + "\\}",escape(requestId.toString))

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

  def getBatch(requestId: String, accountId: Long)(implicit accountIdQuery: QueryParam[Long]): Task[OrsonAiBatchResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiBatchResponse] = jsonOf[OrsonAiBatchResponse]

    val path = "/orson/ai/batch/{requestId}".replaceAll("\\{" + "requestId" + "\\}",escape(requestId.toString))

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

  def getEmotion(requestId: String, accountId: Long)(implicit accountIdQuery: QueryParam[Long]): Task[OrsonAiEmotionsResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiEmotionsResponse] = jsonOf[OrsonAiEmotionsResponse]

    val path = "/orson/ai/emotion/{requestId}".replaceAll("\\{" + "requestId" + "\\}",escape(requestId.toString))

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

  def getEpisodeStatus(episodeId: Long, accountId: Long)(implicit accountIdQuery: QueryParam[Long]): Task[OrsonEpisodeResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonEpisodeResponse] = jsonOf[OrsonEpisodeResponse]

    val path = "/orson/stories/episodes/{episodeId}/status".replaceAll("\\{" + "episodeId" + "\\}",escape(episodeId.toString))

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

  def getRenderStatus(renderId: String, accountId: Long)(implicit accountIdQuery: QueryParam[Long]): Task[OrsonRenderResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonRenderResponse] = jsonOf[OrsonRenderResponse]

    val path = "/orson/stories/renders/{renderId}/status".replaceAll("\\{" + "renderId" + "\\}",escape(renderId.toString))

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

  def getSTT(requestId: String, accountId: Long)(implicit accountIdQuery: QueryParam[Long]): Task[OrsonAiSTTResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiSTTResponse] = jsonOf[OrsonAiSTTResponse]

    val path = "/orson/ai/stt/{requestId}".replaceAll("\\{" + "requestId" + "\\}",escape(requestId.toString))

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

  def getTTS(requestId: String, accountId: Long)(implicit accountIdQuery: QueryParam[Long]): Task[OrsonAiTTSResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiTTSResponse] = jsonOf[OrsonAiTTSResponse]

    val path = "/orson/ai/tts/{requestId}".replaceAll("\\{" + "requestId" + "\\}",escape(requestId.toString))

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

  def getTechTune(requestId: String, accountId: Long)(implicit accountIdQuery: QueryParam[Long]): Task[OrsonAiTechTuneResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiTechTuneResponse] = jsonOf[OrsonAiTechTuneResponse]

    val path = "/orson/ai/techTune/{requestId}".replaceAll("\\{" + "requestId" + "\\}",escape(requestId.toString))

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

  def getTopics(requestId: String, accountId: Long)(implicit accountIdQuery: QueryParam[Long]): Task[OrsonAiTopicsResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiTopicsResponse] = jsonOf[OrsonAiTopicsResponse]

    val path = "/orson/ai/topics/{requestId}".replaceAll("\\{" + "requestId" + "\\}",escape(requestId.toString))

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

  def getVoiceCanvas(requestId: String, accountId: Long)(implicit accountIdQuery: QueryParam[Long]): Task[OrsonAiVoiceCanvasResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiVoiceCanvasResponse] = jsonOf[OrsonAiVoiceCanvasResponse]

    val path = "/orson/ai/voiceCanvas/{requestId}".replaceAll("\\{" + "requestId" + "\\}",escape(requestId.toString))

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

  def startVideoRender(accountId: Long, data: String)(implicit accountIdQuery: QueryParam[Long], dataQuery: QueryParam[String]): Task[OrsonRenderResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonRenderResponse] = jsonOf[OrsonRenderResponse]

    val path = "/orson/stories/renders"

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

  def stt(accountId: Long, thirdPartyAccountId: String, sourceLanguage: String, targetLanguage: String, file: File, url: String, callback: String)(implicit accountIdQuery: QueryParam[Long], thirdPartyAccountIdQuery: QueryParam[String], sourceLanguageQuery: QueryParam[String], targetLanguageQuery: QueryParam[String], fileQuery: QueryParam[File], urlQuery: QueryParam[String], callbackQuery: QueryParam[String]): Task[OrsonAiSTTResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiSTTResponse] = jsonOf[OrsonAiSTTResponse]

    val path = "/orson/ai/stt"

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

  def summarizeTopics(accountId: Long, thirdPartyAccountId: String, doc: String, file: File, url: String, limit: Integer, offset: Integer, callback: String)(implicit accountIdQuery: QueryParam[Long], thirdPartyAccountIdQuery: QueryParam[String], docQuery: QueryParam[String], fileQuery: QueryParam[File], urlQuery: QueryParam[String], limitQuery: QueryParam[Integer], offsetQuery: QueryParam[Integer], callbackQuery: QueryParam[String]): Task[OrsonAiTopicsResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiTopicsResponse] = jsonOf[OrsonAiTopicsResponse]

    val path = "/orson/ai/topics"

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

  def techTune(accountId: Long, numFacesExpected: Integer, thirdPartyAccountId: String, file: File, url: String, callback: String)(implicit accountIdQuery: QueryParam[Long], thirdPartyAccountIdQuery: QueryParam[String], numFacesExpectedQuery: QueryParam[Integer], fileQuery: QueryParam[File], urlQuery: QueryParam[String], callbackQuery: QueryParam[String]): Task[OrsonAiTechTuneResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiTechTuneResponse] = jsonOf[OrsonAiTechTuneResponse]

    val path = "/orson/ai/techTune"

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

  def tts(accountId: Long, text: String, thirdPartyAccountId: String, language: String, voice: String, callback: String)(implicit accountIdQuery: QueryParam[Long], thirdPartyAccountIdQuery: QueryParam[String], textQuery: QueryParam[String], languageQuery: QueryParam[String], voiceQuery: QueryParam[String], callbackQuery: QueryParam[String]): Task[OrsonAiTTSResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrsonAiTTSResponse] = jsonOf[OrsonAiTTSResponse]

    val path = "/orson/ai/tts"

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
