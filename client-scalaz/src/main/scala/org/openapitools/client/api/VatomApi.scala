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


object VatomApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createFollowing(host: String, accountId: Long, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/me/rels/following/create"

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

  def createSpace(host: String, accountId: Long, appKey: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/spaces/create"

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

  def createVatomEvent(host: String, accountId: Long, appKey: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/events/create"

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

  def deleteFollowing(host: String, accountId: Long, vatomRelsKey: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomRelsKeyQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/me/rels/following/delete"

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

  def deletePointsBalance(host: String, accountId: Long, appKey: String, vatomCampaignId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomCampaignIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/campaign/points/delete"

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

  def deleteSpace(host: String, accountId: Long, appKey: String, vatomSpaceId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomSpaceIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/spaces/delete"

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

  def deleteVatomEvent(host: String, accountId: Long, appKey: String, vatomEventId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomEventIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/events/delete"

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

  def deleteVatomNFT(host: String, accountId: Long, vatomId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/vatoms/delete"

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

  def executeActionOnNFT(host: String, accountId: Long, vatomId: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomIdQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/vatoms/execute-action"

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

  def geomapSearch(host: String, accountId: Long, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/vatoms/geo-map/search"

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

  def getBusinessBehaviors(host: String, accountId: Long, appKey: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/behaviors"

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

  def getBusinessCoinsBalance(host: String, accountId: Long, appKey: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/coins/get"

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

  def getBusinessIds(host: String, accountId: Long, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/me/businesses"

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

  def getBusinessInfo(host: String, accountId: Long, appKey: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/get"

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

  def getBusinessUsers(host: String, accountId: Long, appKey: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/users"

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

  def getCampaignGroupEntities(host: String, accountId: Long, appKey: String, vatomCampaignId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomCampaignIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/campaign-groups/entities"

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

  def getCampaignGroupRules(host: String, accountId: Long, appKey: String, vatomCampaignId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomCampaignIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/campaign-groups/rules"

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

  def getCampaignGroupStats(host: String, accountId: Long, appKey: String, vatomCampaignId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomCampaignIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/campaign-groups/stats"

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

  def getCampaignInfo(host: String, accountId: Long, appKey: String, vatomCampaignId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomCampaignIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/campaign-groups/get"

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

  def getEventGuestList(host: String, accountId: Long, appKey: String, vatomEventId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomEventIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/events/guests/get"

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

  def getInventory(host: String, accountId: Long, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/me/inventory"

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

  def getMyFollowing(host: String, accountId: Long, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/me/rels/following"

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

  def getPointsBalance(host: String, accountId: Long, vatomUserId: String, vatomCampaignId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomUserIdQuery: QueryParam[String], vatomCampaignIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/u/campaign/points/get"

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

  def getPointsBalanceAsBusiness(host: String, accountId: Long, appKey: String, vatomUserId: String, vatomCampaignId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomUserIdQuery: QueryParam[String], vatomCampaignIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/campaign/u/points/get"

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

  def getSpace(host: String, accountId: Long, appKey: String, vatomSpaceId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomSpaceIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/spaces/get"

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

  def getUserCoinsAsBusiness(host: String, accountId: Long, vatomUserId: String, appKey: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomUserIdQuery: QueryParam[String], appKeyQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/users/coins/get"

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

  def getUserCoinsBalance(host: String, accountId: Long, vatomUserId: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomUserIdQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/u/coins/get"

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

  def getUserFollowers(host: String, accountId: Long, vatomUserId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomUserIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/users/rels/followers"

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

  def getUserFollowing(host: String, accountId: Long, vatomUserId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomUserIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/users/rels/following"

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

  def getUserInfo(host: String, accountId: Long, vatomUserId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomUserIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/user/get"

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

  def getUserProfile(host: String, accountId: Long, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/me/get"

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

  def getVatomEvent(host: String, accountId: Long, appKey: String, vatomEventId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomEventIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/events/get"

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

  def getVatomNFT(host: String, accountId: Long, vatomId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/vatoms/get"

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

  def listCommunities(host: String, accountId: Long, appKey: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/communities/search"

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

  def listEvents(host: String, accountId: Long, appKey: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/events/search"

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

  def listSpaces(host: String, accountId: Long, appKey: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/spaces/search"

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

  def listUserCoinTransactions(host: String, accountId: Long, vatomUserId: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomUserIdQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/u/coins/txns/search"

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

  def listUserCoinTransactionsAsBusiness(host: String, accountId: Long, vatomUserId: String, appKey: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomUserIdQuery: QueryParam[String], appKeyQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/users/coins/txns/search"

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

  def performActionOnNFT(host: String, accountId: Long, vatomId: String, vatomAction: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomIdQuery: QueryParam[String], vatomActionQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/me/vatoms/actions"

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

  def redeemNFT(host: String, accountId: Long, appKey: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/redemptions"

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

  def redeemUserCoinsAsBusiness(host: String, accountId: Long, vatomUserId: String, appKey: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomUserIdQuery: QueryParam[String], appKeyQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/users/coins/redeem"

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

  def searchBusinesses(host: String, accountId: Long, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/search"

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

  def searchCampaignGroups(host: String, accountId: Long, appKey: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/campaign-groups/search"

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

  def searchIdentities(host: String, accountId: Long, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/me/identities/search"

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

  def searchInventory(host: String, accountId: Long, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/user-inventory/search"

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

  def sendNFT(host: String, accountId: Long, appKey: String, vatomCampaignId: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomCampaignIdQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/campaigns/send"

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

  def setPointsBalanceAsBusiness(host: String, accountId: Long, appKey: String, vatomUserId: String, vatomCampaignId: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomUserIdQuery: QueryParam[String], vatomCampaignIdQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/campaign/u/points/update"

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

  def transferUserCoins(host: String, accountId: Long, vatomUserId: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomUserIdQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/u/coins/transfer"

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

  def updateBusinessCoins(host: String, accountId: Long, appKey: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/coins/update"

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

  def updateEventGuestList(host: String, accountId: Long, appKey: String, vatomEventId: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomEventIdQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/events/guests/update"

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

  def updateSpace(host: String, accountId: Long, appKey: String, vatomSpaceId: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomSpaceIdQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/spaces/update"

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

  def updateUserCoinsAsBusiness(host: String, accountId: Long, vatomUserId: String, appKey: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomUserIdQuery: QueryParam[String], appKeyQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/users/coins/update"

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

  def updateUserProfile(host: String, accountId: Long, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/me/update"

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

  def updateVatomEvent(host: String, accountId: Long, appKey: String, vatomEventId: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomEventIdQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/events/update"

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

  def createFollowing(accountId: Long, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/me/rels/following/create"

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

  def createSpace(accountId: Long, appKey: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/spaces/create"

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

  def createVatomEvent(accountId: Long, appKey: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/events/create"

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

  def deleteFollowing(accountId: Long, vatomRelsKey: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomRelsKeyQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/me/rels/following/delete"

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

  def deletePointsBalance(accountId: Long, appKey: String, vatomCampaignId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomCampaignIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/campaign/points/delete"

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

  def deleteSpace(accountId: Long, appKey: String, vatomSpaceId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomSpaceIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/spaces/delete"

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

  def deleteVatomEvent(accountId: Long, appKey: String, vatomEventId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomEventIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/events/delete"

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

  def deleteVatomNFT(accountId: Long, vatomId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/vatoms/delete"

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

  def executeActionOnNFT(accountId: Long, vatomId: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomIdQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/vatoms/execute-action"

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

  def geomapSearch(accountId: Long, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/vatoms/geo-map/search"

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

  def getBusinessBehaviors(accountId: Long, appKey: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/behaviors"

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

  def getBusinessCoinsBalance(accountId: Long, appKey: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/coins/get"

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

  def getBusinessIds(accountId: Long, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/me/businesses"

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

  def getBusinessInfo(accountId: Long, appKey: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/get"

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

  def getBusinessUsers(accountId: Long, appKey: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/users"

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

  def getCampaignGroupEntities(accountId: Long, appKey: String, vatomCampaignId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomCampaignIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/campaign-groups/entities"

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

  def getCampaignGroupRules(accountId: Long, appKey: String, vatomCampaignId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomCampaignIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/campaign-groups/rules"

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

  def getCampaignGroupStats(accountId: Long, appKey: String, vatomCampaignId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomCampaignIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/campaign-groups/stats"

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

  def getCampaignInfo(accountId: Long, appKey: String, vatomCampaignId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomCampaignIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/campaign-groups/get"

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

  def getEventGuestList(accountId: Long, appKey: String, vatomEventId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomEventIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/events/guests/get"

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

  def getInventory(accountId: Long, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/me/inventory"

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

  def getMyFollowing(accountId: Long, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/me/rels/following"

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

  def getPointsBalance(accountId: Long, vatomUserId: String, vatomCampaignId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomUserIdQuery: QueryParam[String], vatomCampaignIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/u/campaign/points/get"

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

  def getPointsBalanceAsBusiness(accountId: Long, appKey: String, vatomUserId: String, vatomCampaignId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomUserIdQuery: QueryParam[String], vatomCampaignIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/campaign/u/points/get"

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

  def getSpace(accountId: Long, appKey: String, vatomSpaceId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomSpaceIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/spaces/get"

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

  def getUserCoinsAsBusiness(accountId: Long, vatomUserId: String, appKey: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomUserIdQuery: QueryParam[String], appKeyQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/users/coins/get"

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

  def getUserCoinsBalance(accountId: Long, vatomUserId: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomUserIdQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/u/coins/get"

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

  def getUserFollowers(accountId: Long, vatomUserId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomUserIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/users/rels/followers"

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

  def getUserFollowing(accountId: Long, vatomUserId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomUserIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/users/rels/following"

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

  def getUserInfo(accountId: Long, vatomUserId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomUserIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/user/get"

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

  def getUserProfile(accountId: Long, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/me/get"

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

  def getVatomEvent(accountId: Long, appKey: String, vatomEventId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomEventIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/events/get"

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

  def getVatomNFT(accountId: Long, vatomId: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomIdQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/vatoms/get"

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

  def listCommunities(accountId: Long, appKey: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/communities/search"

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

  def listEvents(accountId: Long, appKey: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/events/search"

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

  def listSpaces(accountId: Long, appKey: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/spaces/search"

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

  def listUserCoinTransactions(accountId: Long, vatomUserId: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomUserIdQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/u/coins/txns/search"

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

  def listUserCoinTransactionsAsBusiness(accountId: Long, vatomUserId: String, appKey: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomUserIdQuery: QueryParam[String], appKeyQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/users/coins/txns/search"

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

  def performActionOnNFT(accountId: Long, vatomId: String, vatomAction: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomIdQuery: QueryParam[String], vatomActionQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/me/vatoms/actions"

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

  def redeemNFT(accountId: Long, appKey: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/redemptions"

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

  def redeemUserCoinsAsBusiness(accountId: Long, vatomUserId: String, appKey: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomUserIdQuery: QueryParam[String], appKeyQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/users/coins/redeem"

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

  def searchBusinesses(accountId: Long, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/search"

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

  def searchCampaignGroups(accountId: Long, appKey: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/campaign-groups/search"

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

  def searchIdentities(accountId: Long, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/me/identities/search"

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

  def searchInventory(accountId: Long, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/user-inventory/search"

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

  def sendNFT(accountId: Long, appKey: String, vatomCampaignId: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomCampaignIdQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/campaigns/send"

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

  def setPointsBalanceAsBusiness(accountId: Long, appKey: String, vatomUserId: String, vatomCampaignId: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomUserIdQuery: QueryParam[String], vatomCampaignIdQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/campaign/u/points/update"

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

  def transferUserCoins(accountId: Long, vatomUserId: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomUserIdQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/u/coins/transfer"

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

  def updateBusinessCoins(accountId: Long, appKey: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/coins/update"

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

  def updateEventGuestList(accountId: Long, appKey: String, vatomEventId: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomEventIdQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/events/guests/update"

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

  def updateSpace(accountId: Long, appKey: String, vatomSpaceId: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomSpaceIdQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/spaces/update"

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

  def updateUserCoinsAsBusiness(accountId: Long, vatomUserId: String, appKey: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomUserIdQuery: QueryParam[String], appKeyQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/users/coins/update"

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

  def updateUserProfile(accountId: Long, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/me/update"

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

  def updateVatomEvent(accountId: Long, appKey: String, vatomEventId: String, vatomParameters: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], vatomEventIdQuery: QueryParam[String], vatomParametersQuery: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/vatom/b/events/update"

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
