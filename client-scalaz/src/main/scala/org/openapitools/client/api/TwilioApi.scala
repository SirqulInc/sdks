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

import org.openapitools.client.api.TwiMLResponse

object TwilioApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def smsBuyOffer(host: String, appKey: String, body: String, from: String, currencyType: String)(implicit bodyQuery: QueryParam[String], fromQuery: QueryParam[String], currencyTypeQuery: QueryParam[String]): Task[TwiMLResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[TwiMLResponse] = jsonOf[TwiMLResponse]

    val path = "/sms/buyoffer/{appKey}".replaceAll("\\{" + "appKey" + "\\}",escape(appKey.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("body", Some(BodyQuery.toParamString(Body))), ("from", Some(FromQuery.toParamString(From))), ("currencyType", Some(currencyTypeQuery.toParamString(currencyType))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[TwiMLResponse](req)

    } yield resp
  }

}

class HttpServiceTwilioApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def smsBuyOffer(appKey: String, body: String, from: String, currencyType: String)(implicit bodyQuery: QueryParam[String], fromQuery: QueryParam[String], currencyTypeQuery: QueryParam[String]): Task[TwiMLResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[TwiMLResponse] = jsonOf[TwiMLResponse]

    val path = "/sms/buyoffer/{appKey}".replaceAll("\\{" + "appKey" + "\\}",escape(appKey.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("body", Some(BodyQuery.toParamString(Body))), ("from", Some(FromQuery.toParamString(From))), ("currencyType", Some(currencyTypeQuery.toParamString(currencyType))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[TwiMLResponse](req)

    } yield resp
  }

}
