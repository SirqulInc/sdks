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

import org.openapitools.client.api.QueueResponse
import org.openapitools.client.api.SirqulResponse

object AMQPApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def consumerCreate(host: String, appKey: String, name: String, hostname: String, username: String, password: String, dataMapping: String, deviceId: String, accountId: Long, port: Integer = 5672, virtualHost: String, exchanger: String, exchangerType: String, workers: Integer = 1, useSSL: Boolean)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], nameQuery: QueryParam[String], hostnameQuery: QueryParam[String], portQuery: QueryParam[Integer], usernameQuery: QueryParam[String], passwordQuery: QueryParam[String], virtualHostQuery: QueryParam[String], exchangerQuery: QueryParam[String], exchangerTypeQuery: QueryParam[String], workersQuery: QueryParam[Integer], dataMappingQuery: QueryParam[String], useSSLQuery: QueryParam[Boolean]): Task[QueueResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[QueueResponse] = jsonOf[QueueResponse]

    val path = "/queue/consumer/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("name", Some(nameQuery.toParamString(name))), ("hostname", Some(hostnameQuery.toParamString(hostname))), ("port", Some(portQuery.toParamString(port))), ("username", Some(usernameQuery.toParamString(username))), ("password", Some(passwordQuery.toParamString(password))), ("virtualHost", Some(virtualHostQuery.toParamString(virtualHost))), ("exchanger", Some(exchangerQuery.toParamString(exchanger))), ("exchangerType", Some(exchangerTypeQuery.toParamString(exchangerType))), ("workers", Some(workersQuery.toParamString(workers))), ("dataMapping", Some(dataMappingQuery.toParamString(dataMapping))), ("useSSL", Some(useSSLQuery.toParamString(useSSL))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[QueueResponse](req)

    } yield resp
  }

  def consumerUpdate(host: String, appKey: String, queueId: Long, dataMapping: String, deviceId: String, accountId: Long, useSSL: Boolean)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], queueIdQuery: QueryParam[Long], dataMappingQuery: QueryParam[String], useSSLQuery: QueryParam[Boolean]): Task[QueueResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[QueueResponse] = jsonOf[QueueResponse]

    val path = "/queue/consumer/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("queueId", Some(queueIdQuery.toParamString(queueId))), ("dataMapping", Some(dataMappingQuery.toParamString(dataMapping))), ("useSSL", Some(useSSLQuery.toParamString(useSSL))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[QueueResponse](req)

    } yield resp
  }

  def queueCreate(host: String, appKey: String, name: String, deviceId: String, accountId: Long, workers: Integer = 1, analyticTags: String, hostname: String, port: Integer, username: String, password: String, virtualHost: String, useSSL: Boolean)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], nameQuery: QueryParam[String], workersQuery: QueryParam[Integer], analyticTagsQuery: QueryParam[String], hostnameQuery: QueryParam[String], portQuery: QueryParam[Integer], usernameQuery: QueryParam[String], passwordQuery: QueryParam[String], virtualHostQuery: QueryParam[String], useSSLQuery: QueryParam[Boolean]): Task[QueueResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[QueueResponse] = jsonOf[QueueResponse]

    val path = "/queue/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("name", Some(nameQuery.toParamString(name))), ("workers", Some(workersQuery.toParamString(workers))), ("analyticTags", Some(analyticTagsQuery.toParamString(analyticTags))), ("hostname", Some(hostnameQuery.toParamString(hostname))), ("port", Some(portQuery.toParamString(port))), ("username", Some(usernameQuery.toParamString(username))), ("password", Some(passwordQuery.toParamString(password))), ("virtualHost", Some(virtualHostQuery.toParamString(virtualHost))), ("useSSL", Some(useSSLQuery.toParamString(useSSL))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[QueueResponse](req)

    } yield resp
  }

  def queueDelete(host: String, queueId: Long, deviceId: String, accountId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], queueIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/queue/delete"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("queueId", Some(queueIdQuery.toParamString(queueId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def queueGet(host: String, deviceId: String, accountId: Long, queueId: Long, appKey: String, name: String, hostname: String, virtualHost: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], queueIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], nameQuery: QueryParam[String], hostnameQuery: QueryParam[String], virtualHostQuery: QueryParam[String]): Task[QueueResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[QueueResponse] = jsonOf[QueueResponse]

    val path = "/queue/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("queueId", Some(queueIdQuery.toParamString(queueId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("name", Some(nameQuery.toParamString(name))), ("hostname", Some(hostnameQuery.toParamString(hostname))), ("virtualHost", Some(virtualHostQuery.toParamString(virtualHost))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[QueueResponse](req)

    } yield resp
  }

  def queuePublish(host: String, message: String, queueId: Long, appKey: String, name: String, hostname: String, virtualHost: String)(implicit queueIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], nameQuery: QueryParam[String], hostnameQuery: QueryParam[String], virtualHostQuery: QueryParam[String], messageQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/queue/publish"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("queueId", Some(queueIdQuery.toParamString(queueId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("name", Some(nameQuery.toParamString(name))), ("hostname", Some(hostnameQuery.toParamString(hostname))), ("virtualHost", Some(virtualHostQuery.toParamString(virtualHost))), ("message", Some(messageQuery.toParamString(message))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def queueSearch(host: String, queueId: Long, deviceId: String, accountId: Long, name: String, start: Integer = 0, limit: Integer = 10)(implicit queueIdQuery: QueryParam[Long], deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], nameQuery: QueryParam[String], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[QueueResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[QueueResponse] = jsonOf[QueueResponse]

    val path = "/queue/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("queueId", Some(queueIdQuery.toParamString(queueId))), ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("name", Some(nameQuery.toParamString(name))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[QueueResponse](req)

    } yield resp
  }

  def queueUpdate(host: String, queueId: Long, deviceId: String, accountId: Long, appKey: String, workers: Integer, analyticTags: String, hostname: String, port: Integer, username: String, password: String, virtualHost: String, useSSL: Boolean)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], queueIdQuery: QueryParam[Long], workersQuery: QueryParam[Integer], analyticTagsQuery: QueryParam[String], hostnameQuery: QueryParam[String], portQuery: QueryParam[Integer], usernameQuery: QueryParam[String], passwordQuery: QueryParam[String], virtualHostQuery: QueryParam[String], useSSLQuery: QueryParam[Boolean]): Task[QueueResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[QueueResponse] = jsonOf[QueueResponse]

    val path = "/queue/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("queueId", Some(queueIdQuery.toParamString(queueId))), ("workers", Some(workersQuery.toParamString(workers))), ("analyticTags", Some(analyticTagsQuery.toParamString(analyticTags))), ("hostname", Some(hostnameQuery.toParamString(hostname))), ("port", Some(portQuery.toParamString(port))), ("username", Some(usernameQuery.toParamString(username))), ("password", Some(passwordQuery.toParamString(password))), ("virtualHost", Some(virtualHostQuery.toParamString(virtualHost))), ("useSSL", Some(useSSLQuery.toParamString(useSSL))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[QueueResponse](req)

    } yield resp
  }

}

class HttpServiceAMQPApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def consumerCreate(appKey: String, name: String, hostname: String, username: String, password: String, dataMapping: String, deviceId: String, accountId: Long, port: Integer = 5672, virtualHost: String, exchanger: String, exchangerType: String, workers: Integer = 1, useSSL: Boolean)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], nameQuery: QueryParam[String], hostnameQuery: QueryParam[String], portQuery: QueryParam[Integer], usernameQuery: QueryParam[String], passwordQuery: QueryParam[String], virtualHostQuery: QueryParam[String], exchangerQuery: QueryParam[String], exchangerTypeQuery: QueryParam[String], workersQuery: QueryParam[Integer], dataMappingQuery: QueryParam[String], useSSLQuery: QueryParam[Boolean]): Task[QueueResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[QueueResponse] = jsonOf[QueueResponse]

    val path = "/queue/consumer/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("name", Some(nameQuery.toParamString(name))), ("hostname", Some(hostnameQuery.toParamString(hostname))), ("port", Some(portQuery.toParamString(port))), ("username", Some(usernameQuery.toParamString(username))), ("password", Some(passwordQuery.toParamString(password))), ("virtualHost", Some(virtualHostQuery.toParamString(virtualHost))), ("exchanger", Some(exchangerQuery.toParamString(exchanger))), ("exchangerType", Some(exchangerTypeQuery.toParamString(exchangerType))), ("workers", Some(workersQuery.toParamString(workers))), ("dataMapping", Some(dataMappingQuery.toParamString(dataMapping))), ("useSSL", Some(useSSLQuery.toParamString(useSSL))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[QueueResponse](req)

    } yield resp
  }

  def consumerUpdate(appKey: String, queueId: Long, dataMapping: String, deviceId: String, accountId: Long, useSSL: Boolean)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], queueIdQuery: QueryParam[Long], dataMappingQuery: QueryParam[String], useSSLQuery: QueryParam[Boolean]): Task[QueueResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[QueueResponse] = jsonOf[QueueResponse]

    val path = "/queue/consumer/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("queueId", Some(queueIdQuery.toParamString(queueId))), ("dataMapping", Some(dataMappingQuery.toParamString(dataMapping))), ("useSSL", Some(useSSLQuery.toParamString(useSSL))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[QueueResponse](req)

    } yield resp
  }

  def queueCreate(appKey: String, name: String, deviceId: String, accountId: Long, workers: Integer = 1, analyticTags: String, hostname: String, port: Integer, username: String, password: String, virtualHost: String, useSSL: Boolean)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], nameQuery: QueryParam[String], workersQuery: QueryParam[Integer], analyticTagsQuery: QueryParam[String], hostnameQuery: QueryParam[String], portQuery: QueryParam[Integer], usernameQuery: QueryParam[String], passwordQuery: QueryParam[String], virtualHostQuery: QueryParam[String], useSSLQuery: QueryParam[Boolean]): Task[QueueResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[QueueResponse] = jsonOf[QueueResponse]

    val path = "/queue/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("name", Some(nameQuery.toParamString(name))), ("workers", Some(workersQuery.toParamString(workers))), ("analyticTags", Some(analyticTagsQuery.toParamString(analyticTags))), ("hostname", Some(hostnameQuery.toParamString(hostname))), ("port", Some(portQuery.toParamString(port))), ("username", Some(usernameQuery.toParamString(username))), ("password", Some(passwordQuery.toParamString(password))), ("virtualHost", Some(virtualHostQuery.toParamString(virtualHost))), ("useSSL", Some(useSSLQuery.toParamString(useSSL))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[QueueResponse](req)

    } yield resp
  }

  def queueDelete(queueId: Long, deviceId: String, accountId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], queueIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/queue/delete"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("queueId", Some(queueIdQuery.toParamString(queueId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def queueGet(deviceId: String, accountId: Long, queueId: Long, appKey: String, name: String, hostname: String, virtualHost: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], queueIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], nameQuery: QueryParam[String], hostnameQuery: QueryParam[String], virtualHostQuery: QueryParam[String]): Task[QueueResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[QueueResponse] = jsonOf[QueueResponse]

    val path = "/queue/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("queueId", Some(queueIdQuery.toParamString(queueId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("name", Some(nameQuery.toParamString(name))), ("hostname", Some(hostnameQuery.toParamString(hostname))), ("virtualHost", Some(virtualHostQuery.toParamString(virtualHost))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[QueueResponse](req)

    } yield resp
  }

  def queuePublish(message: String, queueId: Long, appKey: String, name: String, hostname: String, virtualHost: String)(implicit queueIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], nameQuery: QueryParam[String], hostnameQuery: QueryParam[String], virtualHostQuery: QueryParam[String], messageQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/queue/publish"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("queueId", Some(queueIdQuery.toParamString(queueId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("name", Some(nameQuery.toParamString(name))), ("hostname", Some(hostnameQuery.toParamString(hostname))), ("virtualHost", Some(virtualHostQuery.toParamString(virtualHost))), ("message", Some(messageQuery.toParamString(message))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def queueSearch(queueId: Long, deviceId: String, accountId: Long, name: String, start: Integer = 0, limit: Integer = 10)(implicit queueIdQuery: QueryParam[Long], deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], nameQuery: QueryParam[String], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[QueueResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[QueueResponse] = jsonOf[QueueResponse]

    val path = "/queue/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("queueId", Some(queueIdQuery.toParamString(queueId))), ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("name", Some(nameQuery.toParamString(name))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[QueueResponse](req)

    } yield resp
  }

  def queueUpdate(queueId: Long, deviceId: String, accountId: Long, appKey: String, workers: Integer, analyticTags: String, hostname: String, port: Integer, username: String, password: String, virtualHost: String, useSSL: Boolean)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], queueIdQuery: QueryParam[Long], workersQuery: QueryParam[Integer], analyticTagsQuery: QueryParam[String], hostnameQuery: QueryParam[String], portQuery: QueryParam[Integer], usernameQuery: QueryParam[String], passwordQuery: QueryParam[String], virtualHostQuery: QueryParam[String], useSSLQuery: QueryParam[Boolean]): Task[QueueResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[QueueResponse] = jsonOf[QueueResponse]

    val path = "/queue/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("queueId", Some(queueIdQuery.toParamString(queueId))), ("workers", Some(workersQuery.toParamString(workers))), ("analyticTags", Some(analyticTagsQuery.toParamString(analyticTags))), ("hostname", Some(hostnameQuery.toParamString(hostname))), ("port", Some(portQuery.toParamString(port))), ("username", Some(usernameQuery.toParamString(username))), ("password", Some(passwordQuery.toParamString(password))), ("virtualHost", Some(virtualHostQuery.toParamString(virtualHost))), ("useSSL", Some(useSSLQuery.toParamString(useSSL))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[QueueResponse](req)

    } yield resp
  }

}
