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

import org.openapitools.client.api.Account
import org.openapitools.client.api.SirqulResponse

object DependentApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def create(host: String, accountId: Long, body: Account): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/cargo/dependent/{accountId}".replaceAll("\\{" + "accountId" + "\\}",escape(accountId.toString))

    val httpMethod = Method.PUT
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(body)
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getDependents(host: String, accountId: Long): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/cargo/dependent/{accountId}".replaceAll("\\{" + "accountId" + "\\}",escape(accountId.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def removeDependent(host: String, accountId: Long, dependentId: Long): Task[Unit] = {
    val path = "/cargo/dependent/{accountId}".replaceAll("\\{" + "accountId" + "\\}",escape(accountId.toString)).replaceAll("\\{" + "dependentId" + "\\}",escape(dependentId.toString))

    val httpMethod = Method.DELETE
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

}

class HttpServiceDependentApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def create(accountId: Long, body: Account): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/cargo/dependent/{accountId}".replaceAll("\\{" + "accountId" + "\\}",escape(accountId.toString))

    val httpMethod = Method.PUT
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(body)
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getDependents(accountId: Long): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/cargo/dependent/{accountId}".replaceAll("\\{" + "accountId" + "\\}",escape(accountId.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def removeDependent(accountId: Long, dependentId: Long): Task[Unit] = {
    val path = "/cargo/dependent/{accountId}".replaceAll("\\{" + "accountId" + "\\}",escape(accountId.toString)).replaceAll("\\{" + "dependentId" + "\\}",escape(dependentId.toString))

    val httpMethod = Method.DELETE
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

}
