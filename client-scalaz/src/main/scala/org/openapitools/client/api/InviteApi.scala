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

import org.openapitools.client.api.ConsumerInviteResponse
import org.openapitools.client.api.InviteResponse
import org.openapitools.client.api.SirqulResponse

object InviteApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def acceptInvite(host: String, token: String, accountId: Long, albumId: Long, missionId: Long, albumContestId: Long, offerId: Long, offerLocationId: Long, retailerLocationId: Long, appKey: String, autoFriend: Boolean = true, autoAttendEvent: Boolean = false, autoFavoriteOffer: Boolean = false, autoFavoriteOfferLocation: Boolean = false, autoFavoriteRetailerLocation: Boolean = false)(implicit tokenQuery: QueryParam[String], accountIdQuery: QueryParam[Long], albumIdQuery: QueryParam[Long], missionIdQuery: QueryParam[Long], albumContestIdQuery: QueryParam[Long], offerIdQuery: QueryParam[Long], offerLocationIdQuery: QueryParam[Long], retailerLocationIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], autoFriendQuery: QueryParam[Boolean], autoAttendEventQuery: QueryParam[Boolean], autoFavoriteOfferQuery: QueryParam[Boolean], autoFavoriteOfferLocationQuery: QueryParam[Boolean], autoFavoriteRetailerLocationQuery: QueryParam[Boolean]): Task[ConsumerInviteResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ConsumerInviteResponse] = jsonOf[ConsumerInviteResponse]

    val path = "/invite/accept"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("token", Some(tokenQuery.toParamString(token))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("albumId", Some(albumIdQuery.toParamString(albumId))), ("missionId", Some(missionIdQuery.toParamString(missionId))), ("albumContestId", Some(albumContestIdQuery.toParamString(albumContestId))), ("offerId", Some(offerIdQuery.toParamString(offerId))), ("offerLocationId", Some(offerLocationIdQuery.toParamString(offerLocationId))), ("retailerLocationId", Some(retailerLocationIdQuery.toParamString(retailerLocationId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("autoFriend", Some(autoFriendQuery.toParamString(autoFriend))), ("autoAttendEvent", Some(autoAttendEventQuery.toParamString(autoAttendEvent))), ("autoFavoriteOffer", Some(autoFavoriteOfferQuery.toParamString(autoFavoriteOffer))), ("autoFavoriteOfferLocation", Some(autoFavoriteOfferLocationQuery.toParamString(autoFavoriteOfferLocation))), ("autoFavoriteRetailerLocation", Some(autoFavoriteRetailerLocationQuery.toParamString(autoFavoriteRetailerLocation))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ConsumerInviteResponse](req)

    } yield resp
  }

  def albumContestInvite(host: String, deviceId: String, accountId: Long, appId: Long, appKey: String, albumContestId: Long, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], albumContestIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[InviteResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[InviteResponse] = jsonOf[InviteResponse]

    val path = "/invite/albumContest"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appId", Some(appIdQuery.toParamString(appId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("albumContestId", Some(albumContestIdQuery.toParamString(albumContestId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[InviteResponse](req)

    } yield resp
  }

  def albumInvite(host: String, deviceId: String, accountId: Long, appId: Long, appKey: String, albumId: Long, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], albumIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[InviteResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[InviteResponse] = jsonOf[InviteResponse]

    val path = "/invite/album"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appId", Some(appIdQuery.toParamString(appId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("albumId", Some(albumIdQuery.toParamString(albumId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[InviteResponse](req)

    } yield resp
  }

  def eventInvite(host: String, accountId: Long, appKey: String, listingId: Long, receiverAccountIds: String, retailerLocationId: Long)(implicit accountIdQuery: QueryParam[Long], receiverAccountIdsQuery: QueryParam[String], appKeyQuery: QueryParam[String], listingIdQuery: QueryParam[Long], retailerLocationIdQuery: QueryParam[Long]): Task[InviteResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[InviteResponse] = jsonOf[InviteResponse]

    val path = "/invite/event"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("receiverAccountIds", Some(receiverAccountIdsQuery.toParamString(receiverAccountIds))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("listingId", Some(listingIdQuery.toParamString(listingId))), ("retailerLocationId", Some(retailerLocationIdQuery.toParamString(retailerLocationId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[InviteResponse](req)

    } yield resp
  }

  def gameInvite(host: String, deviceId: String, accountId: Long, appId: Long, appKey: String, gameLevelId: Long, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], gameLevelIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[InviteResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[InviteResponse] = jsonOf[InviteResponse]

    val path = "/invite/gameLevel"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appId", Some(appIdQuery.toParamString(appId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("gameLevelId", Some(gameLevelIdQuery.toParamString(gameLevelId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[InviteResponse](req)

    } yield resp
  }

  def getInvite(host: String, accountId: Long, token: String, albumId: Long, missionId: Long, albumContestId: Long, offerId: Long, offerLocationId: Long, retailerLocationId: Long, appKey: String)(implicit accountIdQuery: QueryParam[Long], tokenQuery: QueryParam[String], albumIdQuery: QueryParam[Long], missionIdQuery: QueryParam[Long], albumContestIdQuery: QueryParam[Long], offerIdQuery: QueryParam[Long], offerLocationIdQuery: QueryParam[Long], retailerLocationIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/invite/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("token", Some(tokenQuery.toParamString(token))), ("albumId", Some(albumIdQuery.toParamString(albumId))), ("missionId", Some(missionIdQuery.toParamString(missionId))), ("albumContestId", Some(albumContestIdQuery.toParamString(albumContestId))), ("offerId", Some(offerIdQuery.toParamString(offerId))), ("offerLocationId", Some(offerLocationIdQuery.toParamString(offerLocationId))), ("retailerLocationId", Some(retailerLocationIdQuery.toParamString(retailerLocationId))), ("appKey", Some(appKeyQuery.toParamString(appKey))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def missionInvite(host: String, deviceId: String, accountId: Long, appId: Long, appKey: String, missionId: Long, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], missionIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[InviteResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[InviteResponse] = jsonOf[InviteResponse]

    val path = "/invite/mission"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appId", Some(appIdQuery.toParamString(appId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("missionId", Some(missionIdQuery.toParamString(missionId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[InviteResponse](req)

    } yield resp
  }

  def offerInvite(host: String, accountId: Long, appKey: String, offerId: Long)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], offerIdQuery: QueryParam[Long]): Task[InviteResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[InviteResponse] = jsonOf[InviteResponse]

    val path = "/invite/offer"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("offerId", Some(offerIdQuery.toParamString(offerId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[InviteResponse](req)

    } yield resp
  }

  def offerLocationInvite(host: String, accountId: Long, appKey: String, offerLocationId: Long)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], offerLocationIdQuery: QueryParam[Long]): Task[InviteResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[InviteResponse] = jsonOf[InviteResponse]

    val path = "/invite/offerLocation"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("offerLocationId", Some(offerLocationIdQuery.toParamString(offerLocationId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[InviteResponse](req)

    } yield resp
  }

  def retailerLocationInvite(host: String, accountId: Long, appKey: String, retailerLocationId: Long, albumId: Long)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], retailerLocationIdQuery: QueryParam[Long], albumIdQuery: QueryParam[Long]): Task[InviteResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[InviteResponse] = jsonOf[InviteResponse]

    val path = "/invite/retailerLocation"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("retailerLocationId", Some(retailerLocationIdQuery.toParamString(retailerLocationId))), ("albumId", Some(albumIdQuery.toParamString(albumId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[InviteResponse](req)

    } yield resp
  }

}

class HttpServiceInviteApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def acceptInvite(token: String, accountId: Long, albumId: Long, missionId: Long, albumContestId: Long, offerId: Long, offerLocationId: Long, retailerLocationId: Long, appKey: String, autoFriend: Boolean = true, autoAttendEvent: Boolean = false, autoFavoriteOffer: Boolean = false, autoFavoriteOfferLocation: Boolean = false, autoFavoriteRetailerLocation: Boolean = false)(implicit tokenQuery: QueryParam[String], accountIdQuery: QueryParam[Long], albumIdQuery: QueryParam[Long], missionIdQuery: QueryParam[Long], albumContestIdQuery: QueryParam[Long], offerIdQuery: QueryParam[Long], offerLocationIdQuery: QueryParam[Long], retailerLocationIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], autoFriendQuery: QueryParam[Boolean], autoAttendEventQuery: QueryParam[Boolean], autoFavoriteOfferQuery: QueryParam[Boolean], autoFavoriteOfferLocationQuery: QueryParam[Boolean], autoFavoriteRetailerLocationQuery: QueryParam[Boolean]): Task[ConsumerInviteResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ConsumerInviteResponse] = jsonOf[ConsumerInviteResponse]

    val path = "/invite/accept"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("token", Some(tokenQuery.toParamString(token))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("albumId", Some(albumIdQuery.toParamString(albumId))), ("missionId", Some(missionIdQuery.toParamString(missionId))), ("albumContestId", Some(albumContestIdQuery.toParamString(albumContestId))), ("offerId", Some(offerIdQuery.toParamString(offerId))), ("offerLocationId", Some(offerLocationIdQuery.toParamString(offerLocationId))), ("retailerLocationId", Some(retailerLocationIdQuery.toParamString(retailerLocationId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("autoFriend", Some(autoFriendQuery.toParamString(autoFriend))), ("autoAttendEvent", Some(autoAttendEventQuery.toParamString(autoAttendEvent))), ("autoFavoriteOffer", Some(autoFavoriteOfferQuery.toParamString(autoFavoriteOffer))), ("autoFavoriteOfferLocation", Some(autoFavoriteOfferLocationQuery.toParamString(autoFavoriteOfferLocation))), ("autoFavoriteRetailerLocation", Some(autoFavoriteRetailerLocationQuery.toParamString(autoFavoriteRetailerLocation))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ConsumerInviteResponse](req)

    } yield resp
  }

  def albumContestInvite(deviceId: String, accountId: Long, appId: Long, appKey: String, albumContestId: Long, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], albumContestIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[InviteResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[InviteResponse] = jsonOf[InviteResponse]

    val path = "/invite/albumContest"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appId", Some(appIdQuery.toParamString(appId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("albumContestId", Some(albumContestIdQuery.toParamString(albumContestId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[InviteResponse](req)

    } yield resp
  }

  def albumInvite(deviceId: String, accountId: Long, appId: Long, appKey: String, albumId: Long, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], albumIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[InviteResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[InviteResponse] = jsonOf[InviteResponse]

    val path = "/invite/album"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appId", Some(appIdQuery.toParamString(appId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("albumId", Some(albumIdQuery.toParamString(albumId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[InviteResponse](req)

    } yield resp
  }

  def eventInvite(accountId: Long, appKey: String, listingId: Long, receiverAccountIds: String, retailerLocationId: Long)(implicit accountIdQuery: QueryParam[Long], receiverAccountIdsQuery: QueryParam[String], appKeyQuery: QueryParam[String], listingIdQuery: QueryParam[Long], retailerLocationIdQuery: QueryParam[Long]): Task[InviteResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[InviteResponse] = jsonOf[InviteResponse]

    val path = "/invite/event"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("receiverAccountIds", Some(receiverAccountIdsQuery.toParamString(receiverAccountIds))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("listingId", Some(listingIdQuery.toParamString(listingId))), ("retailerLocationId", Some(retailerLocationIdQuery.toParamString(retailerLocationId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[InviteResponse](req)

    } yield resp
  }

  def gameInvite(deviceId: String, accountId: Long, appId: Long, appKey: String, gameLevelId: Long, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], gameLevelIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[InviteResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[InviteResponse] = jsonOf[InviteResponse]

    val path = "/invite/gameLevel"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appId", Some(appIdQuery.toParamString(appId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("gameLevelId", Some(gameLevelIdQuery.toParamString(gameLevelId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[InviteResponse](req)

    } yield resp
  }

  def getInvite(accountId: Long, token: String, albumId: Long, missionId: Long, albumContestId: Long, offerId: Long, offerLocationId: Long, retailerLocationId: Long, appKey: String)(implicit accountIdQuery: QueryParam[Long], tokenQuery: QueryParam[String], albumIdQuery: QueryParam[Long], missionIdQuery: QueryParam[Long], albumContestIdQuery: QueryParam[Long], offerIdQuery: QueryParam[Long], offerLocationIdQuery: QueryParam[Long], retailerLocationIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/invite/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("token", Some(tokenQuery.toParamString(token))), ("albumId", Some(albumIdQuery.toParamString(albumId))), ("missionId", Some(missionIdQuery.toParamString(missionId))), ("albumContestId", Some(albumContestIdQuery.toParamString(albumContestId))), ("offerId", Some(offerIdQuery.toParamString(offerId))), ("offerLocationId", Some(offerLocationIdQuery.toParamString(offerLocationId))), ("retailerLocationId", Some(retailerLocationIdQuery.toParamString(retailerLocationId))), ("appKey", Some(appKeyQuery.toParamString(appKey))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def missionInvite(deviceId: String, accountId: Long, appId: Long, appKey: String, missionId: Long, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], missionIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[InviteResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[InviteResponse] = jsonOf[InviteResponse]

    val path = "/invite/mission"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appId", Some(appIdQuery.toParamString(appId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("missionId", Some(missionIdQuery.toParamString(missionId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[InviteResponse](req)

    } yield resp
  }

  def offerInvite(accountId: Long, appKey: String, offerId: Long)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], offerIdQuery: QueryParam[Long]): Task[InviteResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[InviteResponse] = jsonOf[InviteResponse]

    val path = "/invite/offer"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("offerId", Some(offerIdQuery.toParamString(offerId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[InviteResponse](req)

    } yield resp
  }

  def offerLocationInvite(accountId: Long, appKey: String, offerLocationId: Long)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], offerLocationIdQuery: QueryParam[Long]): Task[InviteResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[InviteResponse] = jsonOf[InviteResponse]

    val path = "/invite/offerLocation"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("offerLocationId", Some(offerLocationIdQuery.toParamString(offerLocationId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[InviteResponse](req)

    } yield resp
  }

  def retailerLocationInvite(accountId: Long, appKey: String, retailerLocationId: Long, albumId: Long)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], retailerLocationIdQuery: QueryParam[Long], albumIdQuery: QueryParam[Long]): Task[InviteResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[InviteResponse] = jsonOf[InviteResponse]

    val path = "/invite/retailerLocation"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("retailerLocationId", Some(retailerLocationIdQuery.toParamString(retailerLocationId))), ("albumId", Some(albumIdQuery.toParamString(albumId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[InviteResponse](req)

    } yield resp
  }

}
