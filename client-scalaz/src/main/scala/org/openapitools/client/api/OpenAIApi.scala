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

import org.openapitools.client.api.WrappedProxyItemResponse

object OpenAIApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def imageGeneration(host: String, accountId: Long, `postBody`: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], `postBody`Query: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[WrappedProxyItemResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[WrappedProxyItemResponse] = jsonOf[WrappedProxyItemResponse]

    val path = "/openai/v1/images/generations"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("`postBody`", Some(postBodyQuery.toParamString(postBody))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[WrappedProxyItemResponse](req)

    } yield resp
  }

}

class HttpServiceOpenAIApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def imageGeneration(accountId: Long, `postBody`: String, returnRawResponse: Boolean)(implicit accountIdQuery: QueryParam[Long], `postBody`Query: QueryParam[String], returnRawResponseQuery: QueryParam[Boolean]): Task[WrappedProxyItemResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[WrappedProxyItemResponse] = jsonOf[WrappedProxyItemResponse]

    val path = "/openai/v1/images/generations"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("`postBody`", Some(postBodyQuery.toParamString(postBody))), ("returnRawResponse", Some(returnRawResponseQuery.toParamString(returnRawResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[WrappedProxyItemResponse](req)

    } yield resp
  }

}
