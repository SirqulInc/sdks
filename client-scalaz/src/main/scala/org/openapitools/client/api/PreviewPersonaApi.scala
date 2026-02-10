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
import org.openapitools.client.api.PreviewPersonaResponse
import org.openapitools.client.api.SirqulResponse

object PreviewPersonaApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createPersona(host: String, version: BigDecimal, accountId: Long, title: String, previewAccounts: String, date: Long, age: Integer, gender: String, gameExperienceLevel: String, latitude: Double, longitude: Double)(implicit accountIdQuery: QueryParam[Long], titleQuery: QueryParam[String], previewAccountsQuery: QueryParam[String], dateQuery: QueryParam[Long], ageQuery: QueryParam[Integer], genderQuery: QueryParam[String], gameExperienceLevelQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[PreviewPersonaResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[PreviewPersonaResponse] = jsonOf[PreviewPersonaResponse]

    val path = "/api/{version}/persona/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("title", Some(titleQuery.toParamString(title))), ("previewAccounts", Some(previewAccountsQuery.toParamString(previewAccounts))), ("date", Some(dateQuery.toParamString(date))), ("age", Some(ageQuery.toParamString(age))), ("gender", Some(genderQuery.toParamString(gender))), ("gameExperienceLevel", Some(gameExperienceLevelQuery.toParamString(gameExperienceLevel))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PreviewPersonaResponse](req)

    } yield resp
  }

  def deletePersona(host: String, version: BigDecimal, accountId: Long, personaId: Long)(implicit accountIdQuery: QueryParam[Long], personaIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/persona/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("personaId", Some(personaIdQuery.toParamString(personaId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getPersonaList(host: String, version: BigDecimal, accountId: Long, personaId: Long)(implicit accountIdQuery: QueryParam[Long], personaIdQuery: QueryParam[Long]): Task[PreviewPersonaResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[PreviewPersonaResponse] = jsonOf[PreviewPersonaResponse]

    val path = "/api/{version}/persona/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("personaId", Some(personaIdQuery.toParamString(personaId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PreviewPersonaResponse](req)

    } yield resp
  }

  def searchPersona(host: String, version: BigDecimal, accountId: Long, start: Integer, limit: Integer)(implicit accountIdQuery: QueryParam[Long], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[PreviewPersonaResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[PreviewPersonaResponse] = jsonOf[PreviewPersonaResponse]

    val path = "/api/{version}/persona/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PreviewPersonaResponse](req)

    } yield resp
  }

  def updatePersona(host: String, version: BigDecimal, accountId: Long, personaId: Long, title: String, previewAccounts: String, active: Boolean, date: Long, age: Integer, gender: String, gameExperienceLevel: String, latitude: Double, longitude: Double)(implicit accountIdQuery: QueryParam[Long], personaIdQuery: QueryParam[Long], titleQuery: QueryParam[String], previewAccountsQuery: QueryParam[String], activeQuery: QueryParam[Boolean], dateQuery: QueryParam[Long], ageQuery: QueryParam[Integer], genderQuery: QueryParam[String], gameExperienceLevelQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[PreviewPersonaResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[PreviewPersonaResponse] = jsonOf[PreviewPersonaResponse]

    val path = "/api/{version}/persona/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("personaId", Some(personaIdQuery.toParamString(personaId))), ("title", Some(titleQuery.toParamString(title))), ("previewAccounts", Some(previewAccountsQuery.toParamString(previewAccounts))), ("active", Some(activeQuery.toParamString(active))), ("date", Some(dateQuery.toParamString(date))), ("age", Some(ageQuery.toParamString(age))), ("gender", Some(genderQuery.toParamString(gender))), ("gameExperienceLevel", Some(gameExperienceLevelQuery.toParamString(gameExperienceLevel))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PreviewPersonaResponse](req)

    } yield resp
  }

}

class HttpServicePreviewPersonaApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createPersona(version: BigDecimal, accountId: Long, title: String, previewAccounts: String, date: Long, age: Integer, gender: String, gameExperienceLevel: String, latitude: Double, longitude: Double)(implicit accountIdQuery: QueryParam[Long], titleQuery: QueryParam[String], previewAccountsQuery: QueryParam[String], dateQuery: QueryParam[Long], ageQuery: QueryParam[Integer], genderQuery: QueryParam[String], gameExperienceLevelQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[PreviewPersonaResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[PreviewPersonaResponse] = jsonOf[PreviewPersonaResponse]

    val path = "/api/{version}/persona/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("title", Some(titleQuery.toParamString(title))), ("previewAccounts", Some(previewAccountsQuery.toParamString(previewAccounts))), ("date", Some(dateQuery.toParamString(date))), ("age", Some(ageQuery.toParamString(age))), ("gender", Some(genderQuery.toParamString(gender))), ("gameExperienceLevel", Some(gameExperienceLevelQuery.toParamString(gameExperienceLevel))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PreviewPersonaResponse](req)

    } yield resp
  }

  def deletePersona(version: BigDecimal, accountId: Long, personaId: Long)(implicit accountIdQuery: QueryParam[Long], personaIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/persona/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("personaId", Some(personaIdQuery.toParamString(personaId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getPersonaList(version: BigDecimal, accountId: Long, personaId: Long)(implicit accountIdQuery: QueryParam[Long], personaIdQuery: QueryParam[Long]): Task[PreviewPersonaResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[PreviewPersonaResponse] = jsonOf[PreviewPersonaResponse]

    val path = "/api/{version}/persona/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("personaId", Some(personaIdQuery.toParamString(personaId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PreviewPersonaResponse](req)

    } yield resp
  }

  def searchPersona(version: BigDecimal, accountId: Long, start: Integer, limit: Integer)(implicit accountIdQuery: QueryParam[Long], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[PreviewPersonaResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[PreviewPersonaResponse] = jsonOf[PreviewPersonaResponse]

    val path = "/api/{version}/persona/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PreviewPersonaResponse](req)

    } yield resp
  }

  def updatePersona(version: BigDecimal, accountId: Long, personaId: Long, title: String, previewAccounts: String, active: Boolean, date: Long, age: Integer, gender: String, gameExperienceLevel: String, latitude: Double, longitude: Double)(implicit accountIdQuery: QueryParam[Long], personaIdQuery: QueryParam[Long], titleQuery: QueryParam[String], previewAccountsQuery: QueryParam[String], activeQuery: QueryParam[Boolean], dateQuery: QueryParam[Long], ageQuery: QueryParam[Integer], genderQuery: QueryParam[String], gameExperienceLevelQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[PreviewPersonaResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[PreviewPersonaResponse] = jsonOf[PreviewPersonaResponse]

    val path = "/api/{version}/persona/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("personaId", Some(personaIdQuery.toParamString(personaId))), ("title", Some(titleQuery.toParamString(title))), ("previewAccounts", Some(previewAccountsQuery.toParamString(previewAccounts))), ("active", Some(activeQuery.toParamString(active))), ("date", Some(dateQuery.toParamString(date))), ("age", Some(ageQuery.toParamString(age))), ("gender", Some(genderQuery.toParamString(gender))), ("gameExperienceLevel", Some(gameExperienceLevelQuery.toParamString(gameExperienceLevel))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PreviewPersonaResponse](req)

    } yield resp
  }

}
