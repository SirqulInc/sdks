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

import org.openapitools.client.api.CreativeResponse
import org.openapitools.client.api.MissionResponse
import org.openapitools.client.api.SirqulResponse

object CreativeApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def addPreview(host: String, accountId: Long, creativeId: Long)(implicit accountIdQuery: QueryParam[Long], creativeIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/creative/addpreview"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("creativeId", Some(creativeIdQuery.toParamString(creativeId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def adsFind(host: String, appKey: String, randomize: Boolean, targetedAdsOnly: Boolean, `type`: String, accountId: Long, appVersion: String, latitude: Double, longitude: Double, device: String, deviceIdentifier: Long, deviceVersion: String, start: Integer, limit: Integer, includeAudiences: Boolean, allocatesTickets: Boolean, missionIds: String)(implicit appKeyQuery: QueryParam[String], `type`Query: QueryParam[String], accountIdQuery: QueryParam[Long], appVersionQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], deviceQuery: QueryParam[String], deviceIdentifierQuery: QueryParam[Long], deviceVersionQuery: QueryParam[String], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], includeAudiencesQuery: QueryParam[Boolean], allocatesTicketsQuery: QueryParam[Boolean], randomizeQuery: QueryParam[Boolean], targetedAdsOnlyQuery: QueryParam[Boolean], missionIdsQuery: QueryParam[String]): Task[List[MissionResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[MissionResponse]] = jsonOf[List[MissionResponse]]

    val path = "/ads/find"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("appKey", Some(appKeyQuery.toParamString(appKey))), ("`type`", Some(typeQuery.toParamString(type))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appVersion", Some(appVersionQuery.toParamString(appVersion))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("device", Some(deviceQuery.toParamString(device))), ("deviceIdentifier", Some(deviceIdentifierQuery.toParamString(deviceIdentifier))), ("deviceVersion", Some(deviceVersionQuery.toParamString(deviceVersion))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("includeAudiences", Some(includeAudiencesQuery.toParamString(includeAudiences))), ("allocatesTickets", Some(allocatesTicketsQuery.toParamString(allocatesTickets))), ("randomize", Some(randomizeQuery.toParamString(randomize))), ("targetedAdsOnly", Some(targetedAdsOnlyQuery.toParamString(targetedAdsOnly))), ("missionIds", Some(missionIdsQuery.toParamString(missionIds))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[MissionResponse]](req)

    } yield resp
  }

  def createCreative(host: String, accountId: Long, name: String, active: Boolean, waitForAsset: Boolean, description: String, assetImageId: Long, action: String, data: String, suffix: String, `type`: String, balance: Double, referenceId: Long, appVersion: String, missionId: Long, offerId: Long)(implicit accountIdQuery: QueryParam[Long], nameQuery: QueryParam[String], descriptionQuery: QueryParam[String], assetImageIdQuery: QueryParam[Long], actionQuery: QueryParam[String], dataQuery: QueryParam[String], suffixQuery: QueryParam[String], `type`Query: QueryParam[String], balanceQuery: QueryParam[Double], activeQuery: QueryParam[Boolean], referenceIdQuery: QueryParam[Long], appVersionQuery: QueryParam[String], missionIdQuery: QueryParam[Long], offerIdQuery: QueryParam[Long], waitForAssetQuery: QueryParam[Boolean]): Task[CreativeResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[CreativeResponse] = jsonOf[CreativeResponse]

    val path = "/creative/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("name", Some(nameQuery.toParamString(name))), ("description", Some(descriptionQuery.toParamString(description))), ("assetImageId", Some(assetImageIdQuery.toParamString(assetImageId))), ("action", Some(actionQuery.toParamString(action))), ("data", Some(dataQuery.toParamString(data))), ("suffix", Some(suffixQuery.toParamString(suffix))), ("`type`", Some(typeQuery.toParamString(type))), ("balance", Some(balanceQuery.toParamString(balance))), ("active", Some(activeQuery.toParamString(active))), ("referenceId", Some(referenceIdQuery.toParamString(referenceId))), ("appVersion", Some(appVersionQuery.toParamString(appVersion))), ("missionId", Some(missionIdQuery.toParamString(missionId))), ("offerId", Some(offerIdQuery.toParamString(offerId))), ("waitForAsset", Some(waitForAssetQuery.toParamString(waitForAsset))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[CreativeResponse](req)

    } yield resp
  }

  def deleteCreative(host: String, accountId: Long, creativeId: Long)(implicit accountIdQuery: QueryParam[Long], creativeIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/creative/delete"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("creativeId", Some(creativeIdQuery.toParamString(creativeId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getCreative(host: String, accountId: Long, creativeId: Long)(implicit accountIdQuery: QueryParam[Long], creativeIdQuery: QueryParam[Long]): Task[CreativeResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[CreativeResponse] = jsonOf[CreativeResponse]

    val path = "/creative/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("creativeId", Some(creativeIdQuery.toParamString(creativeId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[CreativeResponse](req)

    } yield resp
  }

  def getCreativesByApplication(host: String, accountId: Long, appKey: String, start: Integer, limit: Integer, missionId: Long, keyword: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], missionIdQuery: QueryParam[Long], keywordQuery: QueryParam[String], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[List[CreativeResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[CreativeResponse]] = jsonOf[List[CreativeResponse]]

    val path = "/creative/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("missionId", Some(missionIdQuery.toParamString(missionId))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[CreativeResponse]](req)

    } yield resp
  }

  def removePreview(host: String, accountId: Long, creativeId: Long)(implicit accountIdQuery: QueryParam[Long], creativeIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/creative/removepreview"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("creativeId", Some(creativeIdQuery.toParamString(creativeId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def updateCreative(host: String, accountId: Long, creativeId: Long, name: String, description: String, assetImageId: Long, action: String, data: String, suffix: String, `type`: String, balance: Double, active: Boolean, referenceId: Long, appVersion: String, missionId: Long)(implicit accountIdQuery: QueryParam[Long], creativeIdQuery: QueryParam[Long], nameQuery: QueryParam[String], descriptionQuery: QueryParam[String], assetImageIdQuery: QueryParam[Long], actionQuery: QueryParam[String], dataQuery: QueryParam[String], suffixQuery: QueryParam[String], `type`Query: QueryParam[String], balanceQuery: QueryParam[Double], activeQuery: QueryParam[Boolean], referenceIdQuery: QueryParam[Long], appVersionQuery: QueryParam[String], missionIdQuery: QueryParam[Long]): Task[CreativeResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[CreativeResponse] = jsonOf[CreativeResponse]

    val path = "/creative/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("creativeId", Some(creativeIdQuery.toParamString(creativeId))), ("name", Some(nameQuery.toParamString(name))), ("description", Some(descriptionQuery.toParamString(description))), ("assetImageId", Some(assetImageIdQuery.toParamString(assetImageId))), ("action", Some(actionQuery.toParamString(action))), ("data", Some(dataQuery.toParamString(data))), ("suffix", Some(suffixQuery.toParamString(suffix))), ("`type`", Some(typeQuery.toParamString(type))), ("balance", Some(balanceQuery.toParamString(balance))), ("active", Some(activeQuery.toParamString(active))), ("referenceId", Some(referenceIdQuery.toParamString(referenceId))), ("appVersion", Some(appVersionQuery.toParamString(appVersion))), ("missionId", Some(missionIdQuery.toParamString(missionId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[CreativeResponse](req)

    } yield resp
  }

}

class HttpServiceCreativeApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def addPreview(accountId: Long, creativeId: Long)(implicit accountIdQuery: QueryParam[Long], creativeIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/creative/addpreview"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("creativeId", Some(creativeIdQuery.toParamString(creativeId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def adsFind(appKey: String, randomize: Boolean, targetedAdsOnly: Boolean, `type`: String, accountId: Long, appVersion: String, latitude: Double, longitude: Double, device: String, deviceIdentifier: Long, deviceVersion: String, start: Integer, limit: Integer, includeAudiences: Boolean, allocatesTickets: Boolean, missionIds: String)(implicit appKeyQuery: QueryParam[String], `type`Query: QueryParam[String], accountIdQuery: QueryParam[Long], appVersionQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], deviceQuery: QueryParam[String], deviceIdentifierQuery: QueryParam[Long], deviceVersionQuery: QueryParam[String], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], includeAudiencesQuery: QueryParam[Boolean], allocatesTicketsQuery: QueryParam[Boolean], randomizeQuery: QueryParam[Boolean], targetedAdsOnlyQuery: QueryParam[Boolean], missionIdsQuery: QueryParam[String]): Task[List[MissionResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[MissionResponse]] = jsonOf[List[MissionResponse]]

    val path = "/ads/find"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("appKey", Some(appKeyQuery.toParamString(appKey))), ("`type`", Some(typeQuery.toParamString(type))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appVersion", Some(appVersionQuery.toParamString(appVersion))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("device", Some(deviceQuery.toParamString(device))), ("deviceIdentifier", Some(deviceIdentifierQuery.toParamString(deviceIdentifier))), ("deviceVersion", Some(deviceVersionQuery.toParamString(deviceVersion))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("includeAudiences", Some(includeAudiencesQuery.toParamString(includeAudiences))), ("allocatesTickets", Some(allocatesTicketsQuery.toParamString(allocatesTickets))), ("randomize", Some(randomizeQuery.toParamString(randomize))), ("targetedAdsOnly", Some(targetedAdsOnlyQuery.toParamString(targetedAdsOnly))), ("missionIds", Some(missionIdsQuery.toParamString(missionIds))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[MissionResponse]](req)

    } yield resp
  }

  def createCreative(accountId: Long, name: String, active: Boolean, waitForAsset: Boolean, description: String, assetImageId: Long, action: String, data: String, suffix: String, `type`: String, balance: Double, referenceId: Long, appVersion: String, missionId: Long, offerId: Long)(implicit accountIdQuery: QueryParam[Long], nameQuery: QueryParam[String], descriptionQuery: QueryParam[String], assetImageIdQuery: QueryParam[Long], actionQuery: QueryParam[String], dataQuery: QueryParam[String], suffixQuery: QueryParam[String], `type`Query: QueryParam[String], balanceQuery: QueryParam[Double], activeQuery: QueryParam[Boolean], referenceIdQuery: QueryParam[Long], appVersionQuery: QueryParam[String], missionIdQuery: QueryParam[Long], offerIdQuery: QueryParam[Long], waitForAssetQuery: QueryParam[Boolean]): Task[CreativeResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[CreativeResponse] = jsonOf[CreativeResponse]

    val path = "/creative/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("name", Some(nameQuery.toParamString(name))), ("description", Some(descriptionQuery.toParamString(description))), ("assetImageId", Some(assetImageIdQuery.toParamString(assetImageId))), ("action", Some(actionQuery.toParamString(action))), ("data", Some(dataQuery.toParamString(data))), ("suffix", Some(suffixQuery.toParamString(suffix))), ("`type`", Some(typeQuery.toParamString(type))), ("balance", Some(balanceQuery.toParamString(balance))), ("active", Some(activeQuery.toParamString(active))), ("referenceId", Some(referenceIdQuery.toParamString(referenceId))), ("appVersion", Some(appVersionQuery.toParamString(appVersion))), ("missionId", Some(missionIdQuery.toParamString(missionId))), ("offerId", Some(offerIdQuery.toParamString(offerId))), ("waitForAsset", Some(waitForAssetQuery.toParamString(waitForAsset))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[CreativeResponse](req)

    } yield resp
  }

  def deleteCreative(accountId: Long, creativeId: Long)(implicit accountIdQuery: QueryParam[Long], creativeIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/creative/delete"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("creativeId", Some(creativeIdQuery.toParamString(creativeId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getCreative(accountId: Long, creativeId: Long)(implicit accountIdQuery: QueryParam[Long], creativeIdQuery: QueryParam[Long]): Task[CreativeResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[CreativeResponse] = jsonOf[CreativeResponse]

    val path = "/creative/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("creativeId", Some(creativeIdQuery.toParamString(creativeId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[CreativeResponse](req)

    } yield resp
  }

  def getCreativesByApplication(accountId: Long, appKey: String, start: Integer, limit: Integer, missionId: Long, keyword: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], missionIdQuery: QueryParam[Long], keywordQuery: QueryParam[String], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[List[CreativeResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[CreativeResponse]] = jsonOf[List[CreativeResponse]]

    val path = "/creative/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("missionId", Some(missionIdQuery.toParamString(missionId))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[CreativeResponse]](req)

    } yield resp
  }

  def removePreview(accountId: Long, creativeId: Long)(implicit accountIdQuery: QueryParam[Long], creativeIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/creative/removepreview"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("creativeId", Some(creativeIdQuery.toParamString(creativeId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def updateCreative(accountId: Long, creativeId: Long, name: String, description: String, assetImageId: Long, action: String, data: String, suffix: String, `type`: String, balance: Double, active: Boolean, referenceId: Long, appVersion: String, missionId: Long)(implicit accountIdQuery: QueryParam[Long], creativeIdQuery: QueryParam[Long], nameQuery: QueryParam[String], descriptionQuery: QueryParam[String], assetImageIdQuery: QueryParam[Long], actionQuery: QueryParam[String], dataQuery: QueryParam[String], suffixQuery: QueryParam[String], `type`Query: QueryParam[String], balanceQuery: QueryParam[Double], activeQuery: QueryParam[Boolean], referenceIdQuery: QueryParam[Long], appVersionQuery: QueryParam[String], missionIdQuery: QueryParam[Long]): Task[CreativeResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[CreativeResponse] = jsonOf[CreativeResponse]

    val path = "/creative/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("creativeId", Some(creativeIdQuery.toParamString(creativeId))), ("name", Some(nameQuery.toParamString(name))), ("description", Some(descriptionQuery.toParamString(description))), ("assetImageId", Some(assetImageIdQuery.toParamString(assetImageId))), ("action", Some(actionQuery.toParamString(action))), ("data", Some(dataQuery.toParamString(data))), ("suffix", Some(suffixQuery.toParamString(suffix))), ("`type`", Some(typeQuery.toParamString(type))), ("balance", Some(balanceQuery.toParamString(balance))), ("active", Some(activeQuery.toParamString(active))), ("referenceId", Some(referenceIdQuery.toParamString(referenceId))), ("appVersion", Some(appVersionQuery.toParamString(appVersion))), ("missionId", Some(missionIdQuery.toParamString(missionId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[CreativeResponse](req)

    } yield resp
  }

}
