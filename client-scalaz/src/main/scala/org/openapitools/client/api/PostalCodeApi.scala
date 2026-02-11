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

import org.openapitools.client.api.PostalCodeResponse
import org.openapitools.client.api.SirqulResponse

object PostalCodeApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createPostalCode(host: String, accountId: Long, code: String, latitude: Double, longitude: Double, stateCode: String, city: String, active: Boolean)(implicit accountIdQuery: QueryParam[Long], codeQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], stateCodeQuery: QueryParam[String], cityQuery: QueryParam[String], activeQuery: QueryParam[Boolean]): Task[PostalCodeResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[PostalCodeResponse] = jsonOf[PostalCodeResponse]

    val path = "/postalCode/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("code", Some(codeQuery.toParamString(code))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("stateCode", Some(stateCodeQuery.toParamString(stateCode))), ("city", Some(cityQuery.toParamString(city))), ("active", Some(activeQuery.toParamString(active))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PostalCodeResponse](req)

    } yield resp
  }

  def deletePostalCode(host: String, accountId: Long, postalCodeId: Long)(implicit accountIdQuery: QueryParam[Long], postalCodeIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/postalCode/delete"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("postalCodeId", Some(postalCodeIdQuery.toParamString(postalCodeId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getPostalCode(host: String, postalCodeId: Long)(implicit postalCodeIdQuery: QueryParam[Long]): Task[PostalCodeResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[PostalCodeResponse] = jsonOf[PostalCodeResponse]

    val path = "/postalCode/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("postalCodeId", Some(postalCodeIdQuery.toParamString(postalCodeId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PostalCodeResponse](req)

    } yield resp
  }

  def getPostalCodes(host: String, sortField: String, descending: Boolean, latitude: Double, longitude: Double, keyword: String, miles: Double, start: Integer, limit: Integer)(implicit latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], keywordQuery: QueryParam[String], milesQuery: QueryParam[Double], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean]): Task[List[PostalCodeResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[PostalCodeResponse]] = jsonOf[List[PostalCodeResponse]]

    val path = "/postalCode/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("miles", Some(milesQuery.toParamString(miles))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[PostalCodeResponse]](req)

    } yield resp
  }

  def updatePostalCode(host: String, accountId: Long, postalCodeId: Long, code: String, latitude: Double, longitude: Double, stateCode: String, city: String, active: Boolean)(implicit accountIdQuery: QueryParam[Long], postalCodeIdQuery: QueryParam[Long], codeQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], stateCodeQuery: QueryParam[String], cityQuery: QueryParam[String], activeQuery: QueryParam[Boolean]): Task[PostalCodeResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[PostalCodeResponse] = jsonOf[PostalCodeResponse]

    val path = "/postalCode/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("postalCodeId", Some(postalCodeIdQuery.toParamString(postalCodeId))), ("code", Some(codeQuery.toParamString(code))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("stateCode", Some(stateCodeQuery.toParamString(stateCode))), ("city", Some(cityQuery.toParamString(city))), ("active", Some(activeQuery.toParamString(active))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PostalCodeResponse](req)

    } yield resp
  }

}

class HttpServicePostalCodeApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createPostalCode(accountId: Long, code: String, latitude: Double, longitude: Double, stateCode: String, city: String, active: Boolean)(implicit accountIdQuery: QueryParam[Long], codeQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], stateCodeQuery: QueryParam[String], cityQuery: QueryParam[String], activeQuery: QueryParam[Boolean]): Task[PostalCodeResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[PostalCodeResponse] = jsonOf[PostalCodeResponse]

    val path = "/postalCode/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("code", Some(codeQuery.toParamString(code))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("stateCode", Some(stateCodeQuery.toParamString(stateCode))), ("city", Some(cityQuery.toParamString(city))), ("active", Some(activeQuery.toParamString(active))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PostalCodeResponse](req)

    } yield resp
  }

  def deletePostalCode(accountId: Long, postalCodeId: Long)(implicit accountIdQuery: QueryParam[Long], postalCodeIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/postalCode/delete"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("postalCodeId", Some(postalCodeIdQuery.toParamString(postalCodeId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getPostalCode(postalCodeId: Long)(implicit postalCodeIdQuery: QueryParam[Long]): Task[PostalCodeResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[PostalCodeResponse] = jsonOf[PostalCodeResponse]

    val path = "/postalCode/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("postalCodeId", Some(postalCodeIdQuery.toParamString(postalCodeId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PostalCodeResponse](req)

    } yield resp
  }

  def getPostalCodes(sortField: String, descending: Boolean, latitude: Double, longitude: Double, keyword: String, miles: Double, start: Integer, limit: Integer)(implicit latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], keywordQuery: QueryParam[String], milesQuery: QueryParam[Double], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean]): Task[List[PostalCodeResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[PostalCodeResponse]] = jsonOf[List[PostalCodeResponse]]

    val path = "/postalCode/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("miles", Some(milesQuery.toParamString(miles))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[PostalCodeResponse]](req)

    } yield resp
  }

  def updatePostalCode(accountId: Long, postalCodeId: Long, code: String, latitude: Double, longitude: Double, stateCode: String, city: String, active: Boolean)(implicit accountIdQuery: QueryParam[Long], postalCodeIdQuery: QueryParam[Long], codeQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], stateCodeQuery: QueryParam[String], cityQuery: QueryParam[String], activeQuery: QueryParam[Boolean]): Task[PostalCodeResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[PostalCodeResponse] = jsonOf[PostalCodeResponse]

    val path = "/postalCode/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("postalCodeId", Some(postalCodeIdQuery.toParamString(postalCodeId))), ("code", Some(codeQuery.toParamString(code))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("stateCode", Some(stateCodeQuery.toParamString(stateCode))), ("city", Some(cityQuery.toParamString(city))), ("active", Some(activeQuery.toParamString(active))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PostalCodeResponse](req)

    } yield resp
  }

}
