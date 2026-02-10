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
import org.openapitools.client.api.SirqulResponse

object WorkflowApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def runWorkflow(host: String, version: BigDecimal, accountId: Long, workflowId: Long, skuId: Long, versionCode: Integer, parameters: String)(implicit accountIdQuery: QueryParam[Long], workflowIdQuery: QueryParam[Long], skuIdQuery: QueryParam[Long], versionCodeQuery: QueryParam[Integer], parametersQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/workflow/run".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("workflowId", Some(workflowIdQuery.toParamString(workflowId))), ("skuId", Some(skuIdQuery.toParamString(skuId))), ("versionCode", Some(versionCodeQuery.toParamString(versionCode))), ("parameters", Some(parametersQuery.toParamString(parameters))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

}

class HttpServiceWorkflowApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def runWorkflow(version: BigDecimal, accountId: Long, workflowId: Long, skuId: Long, versionCode: Integer, parameters: String)(implicit accountIdQuery: QueryParam[Long], workflowIdQuery: QueryParam[Long], skuIdQuery: QueryParam[Long], versionCodeQuery: QueryParam[Integer], parametersQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/workflow/run".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("workflowId", Some(workflowIdQuery.toParamString(workflowId))), ("skuId", Some(skuIdQuery.toParamString(skuId))), ("versionCode", Some(versionCodeQuery.toParamString(versionCode))), ("parameters", Some(parametersQuery.toParamString(parameters))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

}
