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

object VatomApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createFollowing(host: String, version: BigDecimal, accountId: Long, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/me/rels/following/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("vatomParameters", Some(vatomParametersQuery.toParamString(vatomParameters))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def createSpace(host: String, version: BigDecimal, accountId: Long, appKey: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/spaces/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("vatomParameters", Some(vatomParametersQuery.toParamString(vatomParameters))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def createVatomEvent(host: String, version: BigDecimal, accountId: Long, appKey: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/events/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("vatomParameters", Some(vatomParametersQuery.toParamString(vatomParameters))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def deleteFollowing(host: String, version: BigDecimal, accountId: Long, vatomRelsKey: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomRelsKeyQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/me/rels/following/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("vatomRelsKey", Some(vatomRelsKeyQuery.toParamString(vatomRelsKey))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def deletePointsBalance(host: String, version: BigDecimal, accountId: Long, appKey: String, vatomCampaignId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomCampaignIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/campaign/points/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("vatomCampaignId", Some(vatomCampaignIdQuery.toParamString(vatomCampaignId))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def deleteSpace(host: String, version: BigDecimal, accountId: Long, appKey: String, vatomSpaceId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomSpaceIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/spaces/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("vatomSpaceId", Some(vatomSpaceIdQuery.toParamString(vatomSpaceId))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def deleteVatomEvent(host: String, version: BigDecimal, accountId: Long, appKey: String, vatomEventId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomEventIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/events/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("vatomEventId", Some(vatomEventIdQuery.toParamString(vatomEventId))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def deleteVatomNFT(host: String, version: BigDecimal, accountId: Long, vatomId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/vatoms/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("vatomId", Some(vatomIdQuery.toParamString(vatomId))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def executeActionOnNFT(host: String, version: BigDecimal, accountId: Long, vatomId: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomIdQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/vatoms/execute-action".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("vatomId", Some(vatomIdQuery.toParamString(vatomId))), ("vatomParameters", Some(vatomParametersQuery.toParamString(vatomParameters))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def geomapSearch(host: String, version: BigDecimal, accountId: Long, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/vatoms/geo-map/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("vatomParameters", Some(vatomParametersQuery.toParamString(vatomParameters))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getBusinessBehaviors(host: String, version: BigDecimal, accountId: Long, appKey: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/behaviors".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getBusinessCoinsBalance(host: String, version: BigDecimal, accountId: Long, appKey: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/coins/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getBusinessIds(host: String, version: BigDecimal, accountId: Long, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/me/businesses".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getBusinessInfo(host: String, version: BigDecimal, accountId: Long, appKey: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("vatomParameters", Some(vatomParametersQuery.toParamString(vatomParameters))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getBusinessUsers(host: String, version: BigDecimal, accountId: Long, appKey: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/users".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getCampaignGroupEntities(host: String, version: BigDecimal, accountId: Long, appKey: String, vatomCampaignId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomCampaignIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/campaign-groups/entities".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("vatomCampaignId", Some(vatomCampaignIdQuery.toParamString(vatomCampaignId))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getCampaignGroupRules(host: String, version: BigDecimal, accountId: Long, appKey: String, vatomCampaignId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomCampaignIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/campaign-groups/rules".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("vatomCampaignId", Some(vatomCampaignIdQuery.toParamString(vatomCampaignId))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getCampaignGroupStats(host: String, version: BigDecimal, accountId: Long, appKey: String, vatomCampaignId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomCampaignIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/campaign-groups/stats".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("vatomCampaignId", Some(vatomCampaignIdQuery.toParamString(vatomCampaignId))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getCampaignInfo(host: String, version: BigDecimal, accountId: Long, appKey: String, vatomCampaignId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomCampaignIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/campaign-groups/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("vatomCampaignId", Some(vatomCampaignIdQuery.toParamString(vatomCampaignId))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getEventGuestList(host: String, version: BigDecimal, accountId: Long, appKey: String, vatomEventId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomEventIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/events/guests/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("vatomEventId", Some(vatomEventIdQuery.toParamString(vatomEventId))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getInventory(host: String, version: BigDecimal, accountId: Long, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/me/inventory".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("vatomParameters", Some(vatomParametersQuery.toParamString(vatomParameters))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getMyFollowing(host: String, version: BigDecimal, accountId: Long, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/me/rels/following".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getPointsBalance(host: String, version: BigDecimal, accountId: Long, vatomUserId: String, vatomCampaignId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomUserIdQuery: QueryParam[String], vatomCampaignIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/u/campaign/points/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("vatomUserId", Some(vatomUserIdQuery.toParamString(vatomUserId))), ("vatomCampaignId", Some(vatomCampaignIdQuery.toParamString(vatomCampaignId))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getPointsBalanceAsBusiness(host: String, version: BigDecimal, accountId: Long, appKey: String, vatomUserId: String, vatomCampaignId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomUserIdQuery: QueryParam[String], vatomCampaignIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/campaign/u/points/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("vatomUserId", Some(vatomUserIdQuery.toParamString(vatomUserId))), ("vatomCampaignId", Some(vatomCampaignIdQuery.toParamString(vatomCampaignId))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getSpace(host: String, version: BigDecimal, accountId: Long, appKey: String, vatomSpaceId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomSpaceIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/spaces/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("vatomSpaceId", Some(vatomSpaceIdQuery.toParamString(vatomSpaceId))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getUserCoinsAsBusiness(host: String, version: BigDecimal, accountId: Long, vatomUserId: String, appKey: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomUserIdQuery: QueryParam[String], appKeyQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/users/coins/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("vatomUserId", Some(vatomUserIdQuery.toParamString(vatomUserId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getUserCoinsBalance(host: String, version: BigDecimal, accountId: Long, vatomUserId: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomUserIdQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/u/coins/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("vatomUserId", Some(vatomUserIdQuery.toParamString(vatomUserId))), ("vatomParameters", Some(vatomParametersQuery.toParamString(vatomParameters))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getUserFollowers(host: String, version: BigDecimal, accountId: Long, vatomUserId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomUserIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/users/rels/followers".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("vatomUserId", Some(vatomUserIdQuery.toParamString(vatomUserId))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getUserFollowing(host: String, version: BigDecimal, accountId: Long, vatomUserId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomUserIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/users/rels/following".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("vatomUserId", Some(vatomUserIdQuery.toParamString(vatomUserId))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getUserInfo(host: String, version: BigDecimal, accountId: Long, vatomUserId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomUserIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/user/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("vatomUserId", Some(vatomUserIdQuery.toParamString(vatomUserId))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getUserProfile(host: String, version: BigDecimal, accountId: Long, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/me/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getVatomEvent(host: String, version: BigDecimal, accountId: Long, appKey: String, vatomEventId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomEventIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/events/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("vatomEventId", Some(vatomEventIdQuery.toParamString(vatomEventId))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getVatomNFT(host: String, version: BigDecimal, accountId: Long, vatomId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/vatoms/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("vatomId", Some(vatomIdQuery.toParamString(vatomId))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def listCommunities(host: String, version: BigDecimal, accountId: Long, appKey: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/communities/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("vatomParameters", Some(vatomParametersQuery.toParamString(vatomParameters))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def listEvents(host: String, version: BigDecimal, accountId: Long, appKey: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/events/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("vatomParameters", Some(vatomParametersQuery.toParamString(vatomParameters))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def listSpaces(host: String, version: BigDecimal, accountId: Long, appKey: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/spaces/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("vatomParameters", Some(vatomParametersQuery.toParamString(vatomParameters))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def listUserCoinTransactions(host: String, version: BigDecimal, accountId: Long, vatomUserId: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomUserIdQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/u/coins/txns/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("vatomUserId", Some(vatomUserIdQuery.toParamString(vatomUserId))), ("vatomParameters", Some(vatomParametersQuery.toParamString(vatomParameters))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def listUserCoinTransactionsAsBusiness(host: String, version: BigDecimal, accountId: Long, vatomUserId: String, appKey: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomUserIdQuery: QueryParam[String], appKeyQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/users/coins/txns/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("vatomUserId", Some(vatomUserIdQuery.toParamString(vatomUserId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("vatomParameters", Some(vatomParametersQuery.toParamString(vatomParameters))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def performActionOnNFT(host: String, version: BigDecimal, accountId: Long, vatomId: String, vatomAction: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomIdQuery: QueryParam[String], vatomActionQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/me/vatoms/actions".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("vatomId", Some(vatomIdQuery.toParamString(vatomId))), ("vatomAction", Some(vatomActionQuery.toParamString(vatomAction))), ("vatomParameters", Some(vatomParametersQuery.toParamString(vatomParameters))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def redeemNFT(host: String, version: BigDecimal, accountId: Long, appKey: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/redemptions".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("vatomParameters", Some(vatomParametersQuery.toParamString(vatomParameters))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def redeemUserCoinsAsBusiness(host: String, version: BigDecimal, accountId: Long, vatomUserId: String, appKey: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomUserIdQuery: QueryParam[String], appKeyQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/users/coins/redeem".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("vatomUserId", Some(vatomUserIdQuery.toParamString(vatomUserId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("vatomParameters", Some(vatomParametersQuery.toParamString(vatomParameters))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def searchBusinesses(host: String, version: BigDecimal, accountId: Long, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("vatomParameters", Some(vatomParametersQuery.toParamString(vatomParameters))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def searchCampaignGroups(host: String, version: BigDecimal, accountId: Long, appKey: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/campaign-groups/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def searchIdentities(host: String, version: BigDecimal, accountId: Long, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/me/identities/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def searchInventory(host: String, version: BigDecimal, accountId: Long, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/user-inventory/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("vatomParameters", Some(vatomParametersQuery.toParamString(vatomParameters))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def sendNFT(host: String, version: BigDecimal, accountId: Long, appKey: String, vatomCampaignId: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomCampaignIdQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/campaigns/send".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("vatomCampaignId", Some(vatomCampaignIdQuery.toParamString(vatomCampaignId))), ("vatomParameters", Some(vatomParametersQuery.toParamString(vatomParameters))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def setPointsBalanceAsBusiness(host: String, version: BigDecimal, accountId: Long, appKey: String, vatomUserId: String, vatomCampaignId: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomUserIdQuery: QueryParam[String], vatomCampaignIdQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/campaign/u/points/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("vatomUserId", Some(vatomUserIdQuery.toParamString(vatomUserId))), ("vatomCampaignId", Some(vatomCampaignIdQuery.toParamString(vatomCampaignId))), ("vatomParameters", Some(vatomParametersQuery.toParamString(vatomParameters))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def transferUserCoins(host: String, version: BigDecimal, accountId: Long, vatomUserId: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomUserIdQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/u/coins/transfer".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("vatomUserId", Some(vatomUserIdQuery.toParamString(vatomUserId))), ("vatomParameters", Some(vatomParametersQuery.toParamString(vatomParameters))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def updateBusinessCoins(host: String, version: BigDecimal, accountId: Long, appKey: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/coins/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("vatomParameters", Some(vatomParametersQuery.toParamString(vatomParameters))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def updateEventGuestList(host: String, version: BigDecimal, accountId: Long, appKey: String, vatomEventId: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomEventIdQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/events/guests/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("vatomEventId", Some(vatomEventIdQuery.toParamString(vatomEventId))), ("vatomParameters", Some(vatomParametersQuery.toParamString(vatomParameters))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def updateSpace(host: String, version: BigDecimal, accountId: Long, appKey: String, vatomSpaceId: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomSpaceIdQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/spaces/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("vatomSpaceId", Some(vatomSpaceIdQuery.toParamString(vatomSpaceId))), ("vatomParameters", Some(vatomParametersQuery.toParamString(vatomParameters))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def updateUserCoinsAsBusiness(host: String, version: BigDecimal, accountId: Long, vatomUserId: String, appKey: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomUserIdQuery: QueryParam[String], appKeyQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/users/coins/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("vatomUserId", Some(vatomUserIdQuery.toParamString(vatomUserId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("vatomParameters", Some(vatomParametersQuery.toParamString(vatomParameters))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def updateUserProfile(host: String, version: BigDecimal, accountId: Long, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/me/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("vatomParameters", Some(vatomParametersQuery.toParamString(vatomParameters))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def updateVatomEvent(host: String, version: BigDecimal, accountId: Long, appKey: String, vatomEventId: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomEventIdQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/events/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("vatomEventId", Some(vatomEventIdQuery.toParamString(vatomEventId))), ("vatomParameters", Some(vatomParametersQuery.toParamString(vatomParameters))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

}

class HttpServiceVatomApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createFollowing(version: BigDecimal, accountId: Long, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/me/rels/following/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("vatomParameters", Some(vatomParametersQuery.toParamString(vatomParameters))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def createSpace(version: BigDecimal, accountId: Long, appKey: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/spaces/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("vatomParameters", Some(vatomParametersQuery.toParamString(vatomParameters))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def createVatomEvent(version: BigDecimal, accountId: Long, appKey: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/events/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("vatomParameters", Some(vatomParametersQuery.toParamString(vatomParameters))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def deleteFollowing(version: BigDecimal, accountId: Long, vatomRelsKey: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomRelsKeyQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/me/rels/following/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("vatomRelsKey", Some(vatomRelsKeyQuery.toParamString(vatomRelsKey))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def deletePointsBalance(version: BigDecimal, accountId: Long, appKey: String, vatomCampaignId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomCampaignIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/campaign/points/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("vatomCampaignId", Some(vatomCampaignIdQuery.toParamString(vatomCampaignId))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def deleteSpace(version: BigDecimal, accountId: Long, appKey: String, vatomSpaceId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomSpaceIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/spaces/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("vatomSpaceId", Some(vatomSpaceIdQuery.toParamString(vatomSpaceId))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def deleteVatomEvent(version: BigDecimal, accountId: Long, appKey: String, vatomEventId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomEventIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/events/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("vatomEventId", Some(vatomEventIdQuery.toParamString(vatomEventId))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def deleteVatomNFT(version: BigDecimal, accountId: Long, vatomId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/vatoms/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("vatomId", Some(vatomIdQuery.toParamString(vatomId))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def executeActionOnNFT(version: BigDecimal, accountId: Long, vatomId: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomIdQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/vatoms/execute-action".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("vatomId", Some(vatomIdQuery.toParamString(vatomId))), ("vatomParameters", Some(vatomParametersQuery.toParamString(vatomParameters))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def geomapSearch(version: BigDecimal, accountId: Long, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/vatoms/geo-map/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("vatomParameters", Some(vatomParametersQuery.toParamString(vatomParameters))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getBusinessBehaviors(version: BigDecimal, accountId: Long, appKey: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/behaviors".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getBusinessCoinsBalance(version: BigDecimal, accountId: Long, appKey: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/coins/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getBusinessIds(version: BigDecimal, accountId: Long, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/me/businesses".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getBusinessInfo(version: BigDecimal, accountId: Long, appKey: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("vatomParameters", Some(vatomParametersQuery.toParamString(vatomParameters))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getBusinessUsers(version: BigDecimal, accountId: Long, appKey: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/users".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getCampaignGroupEntities(version: BigDecimal, accountId: Long, appKey: String, vatomCampaignId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomCampaignIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/campaign-groups/entities".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("vatomCampaignId", Some(vatomCampaignIdQuery.toParamString(vatomCampaignId))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getCampaignGroupRules(version: BigDecimal, accountId: Long, appKey: String, vatomCampaignId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomCampaignIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/campaign-groups/rules".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("vatomCampaignId", Some(vatomCampaignIdQuery.toParamString(vatomCampaignId))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getCampaignGroupStats(version: BigDecimal, accountId: Long, appKey: String, vatomCampaignId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomCampaignIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/campaign-groups/stats".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("vatomCampaignId", Some(vatomCampaignIdQuery.toParamString(vatomCampaignId))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getCampaignInfo(version: BigDecimal, accountId: Long, appKey: String, vatomCampaignId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomCampaignIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/campaign-groups/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("vatomCampaignId", Some(vatomCampaignIdQuery.toParamString(vatomCampaignId))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getEventGuestList(version: BigDecimal, accountId: Long, appKey: String, vatomEventId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomEventIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/events/guests/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("vatomEventId", Some(vatomEventIdQuery.toParamString(vatomEventId))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getInventory(version: BigDecimal, accountId: Long, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/me/inventory".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("vatomParameters", Some(vatomParametersQuery.toParamString(vatomParameters))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getMyFollowing(version: BigDecimal, accountId: Long, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/me/rels/following".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getPointsBalance(version: BigDecimal, accountId: Long, vatomUserId: String, vatomCampaignId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomUserIdQuery: QueryParam[String], vatomCampaignIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/u/campaign/points/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("vatomUserId", Some(vatomUserIdQuery.toParamString(vatomUserId))), ("vatomCampaignId", Some(vatomCampaignIdQuery.toParamString(vatomCampaignId))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getPointsBalanceAsBusiness(version: BigDecimal, accountId: Long, appKey: String, vatomUserId: String, vatomCampaignId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomUserIdQuery: QueryParam[String], vatomCampaignIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/campaign/u/points/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("vatomUserId", Some(vatomUserIdQuery.toParamString(vatomUserId))), ("vatomCampaignId", Some(vatomCampaignIdQuery.toParamString(vatomCampaignId))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getSpace(version: BigDecimal, accountId: Long, appKey: String, vatomSpaceId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomSpaceIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/spaces/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("vatomSpaceId", Some(vatomSpaceIdQuery.toParamString(vatomSpaceId))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getUserCoinsAsBusiness(version: BigDecimal, accountId: Long, vatomUserId: String, appKey: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomUserIdQuery: QueryParam[String], appKeyQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/users/coins/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("vatomUserId", Some(vatomUserIdQuery.toParamString(vatomUserId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getUserCoinsBalance(version: BigDecimal, accountId: Long, vatomUserId: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomUserIdQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/u/coins/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("vatomUserId", Some(vatomUserIdQuery.toParamString(vatomUserId))), ("vatomParameters", Some(vatomParametersQuery.toParamString(vatomParameters))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getUserFollowers(version: BigDecimal, accountId: Long, vatomUserId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomUserIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/users/rels/followers".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("vatomUserId", Some(vatomUserIdQuery.toParamString(vatomUserId))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getUserFollowing(version: BigDecimal, accountId: Long, vatomUserId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomUserIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/users/rels/following".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("vatomUserId", Some(vatomUserIdQuery.toParamString(vatomUserId))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getUserInfo(version: BigDecimal, accountId: Long, vatomUserId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomUserIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/user/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("vatomUserId", Some(vatomUserIdQuery.toParamString(vatomUserId))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getUserProfile(version: BigDecimal, accountId: Long, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/me/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getVatomEvent(version: BigDecimal, accountId: Long, appKey: String, vatomEventId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomEventIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/events/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("vatomEventId", Some(vatomEventIdQuery.toParamString(vatomEventId))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getVatomNFT(version: BigDecimal, accountId: Long, vatomId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/vatoms/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("vatomId", Some(vatomIdQuery.toParamString(vatomId))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def listCommunities(version: BigDecimal, accountId: Long, appKey: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/communities/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("vatomParameters", Some(vatomParametersQuery.toParamString(vatomParameters))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def listEvents(version: BigDecimal, accountId: Long, appKey: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/events/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("vatomParameters", Some(vatomParametersQuery.toParamString(vatomParameters))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def listSpaces(version: BigDecimal, accountId: Long, appKey: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/spaces/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("vatomParameters", Some(vatomParametersQuery.toParamString(vatomParameters))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def listUserCoinTransactions(version: BigDecimal, accountId: Long, vatomUserId: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomUserIdQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/u/coins/txns/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("vatomUserId", Some(vatomUserIdQuery.toParamString(vatomUserId))), ("vatomParameters", Some(vatomParametersQuery.toParamString(vatomParameters))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def listUserCoinTransactionsAsBusiness(version: BigDecimal, accountId: Long, vatomUserId: String, appKey: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomUserIdQuery: QueryParam[String], appKeyQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/users/coins/txns/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("vatomUserId", Some(vatomUserIdQuery.toParamString(vatomUserId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("vatomParameters", Some(vatomParametersQuery.toParamString(vatomParameters))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def performActionOnNFT(version: BigDecimal, accountId: Long, vatomId: String, vatomAction: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomIdQuery: QueryParam[String], vatomActionQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/me/vatoms/actions".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("vatomId", Some(vatomIdQuery.toParamString(vatomId))), ("vatomAction", Some(vatomActionQuery.toParamString(vatomAction))), ("vatomParameters", Some(vatomParametersQuery.toParamString(vatomParameters))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def redeemNFT(version: BigDecimal, accountId: Long, appKey: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/redemptions".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("vatomParameters", Some(vatomParametersQuery.toParamString(vatomParameters))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def redeemUserCoinsAsBusiness(version: BigDecimal, accountId: Long, vatomUserId: String, appKey: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomUserIdQuery: QueryParam[String], appKeyQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/users/coins/redeem".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("vatomUserId", Some(vatomUserIdQuery.toParamString(vatomUserId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("vatomParameters", Some(vatomParametersQuery.toParamString(vatomParameters))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def searchBusinesses(version: BigDecimal, accountId: Long, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("vatomParameters", Some(vatomParametersQuery.toParamString(vatomParameters))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def searchCampaignGroups(version: BigDecimal, accountId: Long, appKey: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/campaign-groups/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def searchIdentities(version: BigDecimal, accountId: Long, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/me/identities/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def searchInventory(version: BigDecimal, accountId: Long, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/user-inventory/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("vatomParameters", Some(vatomParametersQuery.toParamString(vatomParameters))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def sendNFT(version: BigDecimal, accountId: Long, appKey: String, vatomCampaignId: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomCampaignIdQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/campaigns/send".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("vatomCampaignId", Some(vatomCampaignIdQuery.toParamString(vatomCampaignId))), ("vatomParameters", Some(vatomParametersQuery.toParamString(vatomParameters))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def setPointsBalanceAsBusiness(version: BigDecimal, accountId: Long, appKey: String, vatomUserId: String, vatomCampaignId: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomUserIdQuery: QueryParam[String], vatomCampaignIdQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/campaign/u/points/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("vatomUserId", Some(vatomUserIdQuery.toParamString(vatomUserId))), ("vatomCampaignId", Some(vatomCampaignIdQuery.toParamString(vatomCampaignId))), ("vatomParameters", Some(vatomParametersQuery.toParamString(vatomParameters))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def transferUserCoins(version: BigDecimal, accountId: Long, vatomUserId: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomUserIdQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/u/coins/transfer".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("vatomUserId", Some(vatomUserIdQuery.toParamString(vatomUserId))), ("vatomParameters", Some(vatomParametersQuery.toParamString(vatomParameters))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def updateBusinessCoins(version: BigDecimal, accountId: Long, appKey: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/coins/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("vatomParameters", Some(vatomParametersQuery.toParamString(vatomParameters))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def updateEventGuestList(version: BigDecimal, accountId: Long, appKey: String, vatomEventId: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomEventIdQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/events/guests/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("vatomEventId", Some(vatomEventIdQuery.toParamString(vatomEventId))), ("vatomParameters", Some(vatomParametersQuery.toParamString(vatomParameters))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def updateSpace(version: BigDecimal, accountId: Long, appKey: String, vatomSpaceId: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomSpaceIdQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/spaces/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("vatomSpaceId", Some(vatomSpaceIdQuery.toParamString(vatomSpaceId))), ("vatomParameters", Some(vatomParametersQuery.toParamString(vatomParameters))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def updateUserCoinsAsBusiness(version: BigDecimal, accountId: Long, vatomUserId: String, appKey: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomUserIdQuery: QueryParam[String], appKeyQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/users/coins/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("vatomUserId", Some(vatomUserIdQuery.toParamString(vatomUserId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("vatomParameters", Some(vatomParametersQuery.toParamString(vatomParameters))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def updateUserProfile(version: BigDecimal, accountId: Long, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/me/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("vatomParameters", Some(vatomParametersQuery.toParamString(vatomParameters))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def updateVatomEvent(version: BigDecimal, accountId: Long, appKey: String, vatomEventId: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomEventIdQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/api/{version}/vatom/b/events/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("vatomEventId", Some(vatomEventIdQuery.toParamString(vatomEventId))), ("vatomParameters", Some(vatomParametersQuery.toParamString(vatomParameters))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

}
