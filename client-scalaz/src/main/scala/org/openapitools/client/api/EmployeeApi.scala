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

import org.openapitools.client.api.EmployeeResponse
import org.openapitools.client.api.SirqulResponse

object EmployeeApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def assignEmployee(host: String, accountId: Long, managerAccountId: Long, employeeAccountId: Long, role: String)(implicit accountIdQuery: QueryParam[Long], managerAccountIdQuery: QueryParam[Long], employeeAccountIdQuery: QueryParam[Long], roleQuery: QueryParam[String]): Task[EmployeeResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[EmployeeResponse] = jsonOf[EmployeeResponse]

    val path = "/employee/assign"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("managerAccountId", Some(managerAccountIdQuery.toParamString(managerAccountId))), ("employeeAccountId", Some(employeeAccountIdQuery.toParamString(employeeAccountId))), ("role", Some(roleQuery.toParamString(role))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[EmployeeResponse](req)

    } yield resp
  }

  def assignToLocationEmployee(host: String, accountId: Long, retailerLocationId: Long, employeeAccountId: Long, assign: Boolean = true)(implicit accountIdQuery: QueryParam[Long], employeeAccountIdQuery: QueryParam[Long], retailerLocationIdQuery: QueryParam[Long], assignQuery: QueryParam[Boolean]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/employee/assignToLocation"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("employeeAccountId", Some(employeeAccountIdQuery.toParamString(employeeAccountId))), ("retailerLocationId", Some(retailerLocationIdQuery.toParamString(retailerLocationId))), ("assign", Some(assignQuery.toParamString(assign))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def createEmployee(host: String, accountId: Long, managerAccountId: Long, username: String, password: String, name: String, prefixName: String, firstName: String, middleName: String, lastName: String, suffixName: String, title: String, aboutUs: String, assetId: Long, gender: String, homePhone: String, cellPhone: String, cellPhoneCarrier: String, businessPhone: String, emailAddress: String, streetAddress: String, streetAddress2: String, city: String, state: String, zipcode: String, country: String, role: String, retailerLocationIds: String, settingsAppKey: String, appBlob: String, assignedDeviceId: String)(implicit accountIdQuery: QueryParam[Long], managerAccountIdQuery: QueryParam[Long], usernameQuery: QueryParam[String], passwordQuery: QueryParam[String], nameQuery: QueryParam[String], prefixNameQuery: QueryParam[String], firstNameQuery: QueryParam[String], middleNameQuery: QueryParam[String], lastNameQuery: QueryParam[String], suffixNameQuery: QueryParam[String], titleQuery: QueryParam[String], aboutUsQuery: QueryParam[String], assetIdQuery: QueryParam[Long], genderQuery: QueryParam[String], homePhoneQuery: QueryParam[String], cellPhoneQuery: QueryParam[String], cellPhoneCarrierQuery: QueryParam[String], businessPhoneQuery: QueryParam[String], emailAddressQuery: QueryParam[String], streetAddressQuery: QueryParam[String], streetAddress2Query: QueryParam[String], cityQuery: QueryParam[String], stateQuery: QueryParam[String], zipcodeQuery: QueryParam[String], countryQuery: QueryParam[String], roleQuery: QueryParam[String], retailerLocationIdsQuery: QueryParam[String], settingsAppKeyQuery: QueryParam[String], appBlobQuery: QueryParam[String], assignedDeviceIdQuery: QueryParam[String]): Task[EmployeeResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[EmployeeResponse] = jsonOf[EmployeeResponse]

    val path = "/employee/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("managerAccountId", Some(managerAccountIdQuery.toParamString(managerAccountId))), ("username", Some(usernameQuery.toParamString(username))), ("password", Some(passwordQuery.toParamString(password))), ("name", Some(nameQuery.toParamString(name))), ("prefixName", Some(prefixNameQuery.toParamString(prefixName))), ("firstName", Some(firstNameQuery.toParamString(firstName))), ("middleName", Some(middleNameQuery.toParamString(middleName))), ("lastName", Some(lastNameQuery.toParamString(lastName))), ("suffixName", Some(suffixNameQuery.toParamString(suffixName))), ("title", Some(titleQuery.toParamString(title))), ("aboutUs", Some(aboutUsQuery.toParamString(aboutUs))), ("assetId", Some(assetIdQuery.toParamString(assetId))), ("gender", Some(genderQuery.toParamString(gender))), ("homePhone", Some(homePhoneQuery.toParamString(homePhone))), ("cellPhone", Some(cellPhoneQuery.toParamString(cellPhone))), ("cellPhoneCarrier", Some(cellPhoneCarrierQuery.toParamString(cellPhoneCarrier))), ("businessPhone", Some(businessPhoneQuery.toParamString(businessPhone))), ("emailAddress", Some(emailAddressQuery.toParamString(emailAddress))), ("streetAddress", Some(streetAddressQuery.toParamString(streetAddress))), ("streetAddress2", Some(streetAddress2Query.toParamString(streetAddress2))), ("city", Some(cityQuery.toParamString(city))), ("state", Some(stateQuery.toParamString(state))), ("zipcode", Some(zipcodeQuery.toParamString(zipcode))), ("country", Some(countryQuery.toParamString(country))), ("role", Some(roleQuery.toParamString(role))), ("retailerLocationIds", Some(retailerLocationIdsQuery.toParamString(retailerLocationIds))), ("settingsAppKey", Some(settingsAppKeyQuery.toParamString(settingsAppKey))), ("appBlob", Some(appBlobQuery.toParamString(appBlob))), ("assignedDeviceId", Some(assignedDeviceIdQuery.toParamString(assignedDeviceId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[EmployeeResponse](req)

    } yield resp
  }

  def deleteEmployee(host: String, accountId: Long, employeeAccountId: Long)(implicit accountIdQuery: QueryParam[Long], employeeAccountIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/employee/delete"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("employeeAccountId", Some(employeeAccountIdQuery.toParamString(employeeAccountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getEmployee(host: String, accountId: Long, employeeAccountId: Long, settingsAppKey: String)(implicit accountIdQuery: QueryParam[Long], employeeAccountIdQuery: QueryParam[Long], settingsAppKeyQuery: QueryParam[String]): Task[EmployeeResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[EmployeeResponse] = jsonOf[EmployeeResponse]

    val path = "/employee/get"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("employeeAccountId", Some(employeeAccountIdQuery.toParamString(employeeAccountId))), ("settingsAppKey", Some(settingsAppKeyQuery.toParamString(settingsAppKey))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[EmployeeResponse](req)

    } yield resp
  }

  def searchEmployees(host: String, accountId: Long, role: String, retailerId: Long, retailerLocationId: Long, q: String, keyword: String, sortField: String, descending: Boolean = false, i: Integer, start: Integer = 0, l: Integer, limit: Integer = 20, activeOnly: Boolean = true, managedOnly: Boolean, settingsAppKey: String, categoryIds: String, query: String)(implicit accountIdQuery: QueryParam[Long], roleQuery: QueryParam[String], retailerIdQuery: QueryParam[Long], retailerLocationIdQuery: QueryParam[Long], qQuery: QueryParam[String], keywordQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], iQuery: QueryParam[Integer], startQuery: QueryParam[Integer], lQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean], managedOnlyQuery: QueryParam[Boolean], settingsAppKeyQuery: QueryParam[String], categoryIdsQuery: QueryParam[String], queryQuery: QueryParam[String]): Task[List[EmployeeResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[EmployeeResponse]] = jsonOf[List[EmployeeResponse]]

    val path = "/employee/search"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("role", Some(roleQuery.toParamString(role))), ("retailerId", Some(retailerIdQuery.toParamString(retailerId))), ("retailerLocationId", Some(retailerLocationIdQuery.toParamString(retailerLocationId))), ("q", Some(qQuery.toParamString(q))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("i", Some(_iQuery.toParamString(_i))), ("start", Some(startQuery.toParamString(start))), ("l", Some(_lQuery.toParamString(_l))), ("limit", Some(limitQuery.toParamString(limit))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))), ("managedOnly", Some(managedOnlyQuery.toParamString(managedOnly))), ("settingsAppKey", Some(settingsAppKeyQuery.toParamString(settingsAppKey))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("query", Some(queryQuery.toParamString(query))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[EmployeeResponse]](req)

    } yield resp
  }

  def unassignEmployee(host: String, accountId: Long, employeeAccountId: Long)(implicit accountIdQuery: QueryParam[Long], employeeAccountIdQuery: QueryParam[Long]): Task[EmployeeResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[EmployeeResponse] = jsonOf[EmployeeResponse]

    val path = "/employee/unassign"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("employeeAccountId", Some(employeeAccountIdQuery.toParamString(employeeAccountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[EmployeeResponse](req)

    } yield resp
  }

  def updateEmployee(host: String, accountId: Long, employeeAccountId: Long, managerAccountId: Long, name: String, prefixName: String, firstName: String, middleName: String, lastName: String, suffixName: String, title: String, assetId: Long, gender: String, homePhone: String, cellPhone: String, cellPhoneCarrier: String, businessPhone: String, emailAddress: String, streetAddress: String, streetAddress2: String, city: String, state: String, zipcode: String, country: String, role: String, active: Boolean, password: String, retailerLocationIds: String, settingsAppKey: String, appBlob: String, assignedDeviceId: String)(implicit accountIdQuery: QueryParam[Long], employeeAccountIdQuery: QueryParam[Long], managerAccountIdQuery: QueryParam[Long], nameQuery: QueryParam[String], prefixNameQuery: QueryParam[String], firstNameQuery: QueryParam[String], middleNameQuery: QueryParam[String], lastNameQuery: QueryParam[String], suffixNameQuery: QueryParam[String], titleQuery: QueryParam[String], assetIdQuery: QueryParam[Long], genderQuery: QueryParam[String], homePhoneQuery: QueryParam[String], cellPhoneQuery: QueryParam[String], cellPhoneCarrierQuery: QueryParam[String], businessPhoneQuery: QueryParam[String], emailAddressQuery: QueryParam[String], streetAddressQuery: QueryParam[String], streetAddress2Query: QueryParam[String], cityQuery: QueryParam[String], stateQuery: QueryParam[String], zipcodeQuery: QueryParam[String], countryQuery: QueryParam[String], roleQuery: QueryParam[String], activeQuery: QueryParam[Boolean], passwordQuery: QueryParam[String], retailerLocationIdsQuery: QueryParam[String], settingsAppKeyQuery: QueryParam[String], appBlobQuery: QueryParam[String], assignedDeviceIdQuery: QueryParam[String]): Task[EmployeeResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[EmployeeResponse] = jsonOf[EmployeeResponse]

    val path = "/employee/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("employeeAccountId", Some(employeeAccountIdQuery.toParamString(employeeAccountId))), ("managerAccountId", Some(managerAccountIdQuery.toParamString(managerAccountId))), ("name", Some(nameQuery.toParamString(name))), ("prefixName", Some(prefixNameQuery.toParamString(prefixName))), ("firstName", Some(firstNameQuery.toParamString(firstName))), ("middleName", Some(middleNameQuery.toParamString(middleName))), ("lastName", Some(lastNameQuery.toParamString(lastName))), ("suffixName", Some(suffixNameQuery.toParamString(suffixName))), ("title", Some(titleQuery.toParamString(title))), ("assetId", Some(assetIdQuery.toParamString(assetId))), ("gender", Some(genderQuery.toParamString(gender))), ("homePhone", Some(homePhoneQuery.toParamString(homePhone))), ("cellPhone", Some(cellPhoneQuery.toParamString(cellPhone))), ("cellPhoneCarrier", Some(cellPhoneCarrierQuery.toParamString(cellPhoneCarrier))), ("businessPhone", Some(businessPhoneQuery.toParamString(businessPhone))), ("emailAddress", Some(emailAddressQuery.toParamString(emailAddress))), ("streetAddress", Some(streetAddressQuery.toParamString(streetAddress))), ("streetAddress2", Some(streetAddress2Query.toParamString(streetAddress2))), ("city", Some(cityQuery.toParamString(city))), ("state", Some(stateQuery.toParamString(state))), ("zipcode", Some(zipcodeQuery.toParamString(zipcode))), ("country", Some(countryQuery.toParamString(country))), ("role", Some(roleQuery.toParamString(role))), ("active", Some(activeQuery.toParamString(active))), ("password", Some(passwordQuery.toParamString(password))), ("retailerLocationIds", Some(retailerLocationIdsQuery.toParamString(retailerLocationIds))), ("settingsAppKey", Some(settingsAppKeyQuery.toParamString(settingsAppKey))), ("appBlob", Some(appBlobQuery.toParamString(appBlob))), ("assignedDeviceId", Some(assignedDeviceIdQuery.toParamString(assignedDeviceId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[EmployeeResponse](req)

    } yield resp
  }

}

class HttpServiceEmployeeApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def assignEmployee(accountId: Long, managerAccountId: Long, employeeAccountId: Long, role: String)(implicit accountIdQuery: QueryParam[Long], managerAccountIdQuery: QueryParam[Long], employeeAccountIdQuery: QueryParam[Long], roleQuery: QueryParam[String]): Task[EmployeeResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[EmployeeResponse] = jsonOf[EmployeeResponse]

    val path = "/employee/assign"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("managerAccountId", Some(managerAccountIdQuery.toParamString(managerAccountId))), ("employeeAccountId", Some(employeeAccountIdQuery.toParamString(employeeAccountId))), ("role", Some(roleQuery.toParamString(role))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[EmployeeResponse](req)

    } yield resp
  }

  def assignToLocationEmployee(accountId: Long, retailerLocationId: Long, employeeAccountId: Long, assign: Boolean = true)(implicit accountIdQuery: QueryParam[Long], employeeAccountIdQuery: QueryParam[Long], retailerLocationIdQuery: QueryParam[Long], assignQuery: QueryParam[Boolean]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/employee/assignToLocation"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("employeeAccountId", Some(employeeAccountIdQuery.toParamString(employeeAccountId))), ("retailerLocationId", Some(retailerLocationIdQuery.toParamString(retailerLocationId))), ("assign", Some(assignQuery.toParamString(assign))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def createEmployee(accountId: Long, managerAccountId: Long, username: String, password: String, name: String, prefixName: String, firstName: String, middleName: String, lastName: String, suffixName: String, title: String, aboutUs: String, assetId: Long, gender: String, homePhone: String, cellPhone: String, cellPhoneCarrier: String, businessPhone: String, emailAddress: String, streetAddress: String, streetAddress2: String, city: String, state: String, zipcode: String, country: String, role: String, retailerLocationIds: String, settingsAppKey: String, appBlob: String, assignedDeviceId: String)(implicit accountIdQuery: QueryParam[Long], managerAccountIdQuery: QueryParam[Long], usernameQuery: QueryParam[String], passwordQuery: QueryParam[String], nameQuery: QueryParam[String], prefixNameQuery: QueryParam[String], firstNameQuery: QueryParam[String], middleNameQuery: QueryParam[String], lastNameQuery: QueryParam[String], suffixNameQuery: QueryParam[String], titleQuery: QueryParam[String], aboutUsQuery: QueryParam[String], assetIdQuery: QueryParam[Long], genderQuery: QueryParam[String], homePhoneQuery: QueryParam[String], cellPhoneQuery: QueryParam[String], cellPhoneCarrierQuery: QueryParam[String], businessPhoneQuery: QueryParam[String], emailAddressQuery: QueryParam[String], streetAddressQuery: QueryParam[String], streetAddress2Query: QueryParam[String], cityQuery: QueryParam[String], stateQuery: QueryParam[String], zipcodeQuery: QueryParam[String], countryQuery: QueryParam[String], roleQuery: QueryParam[String], retailerLocationIdsQuery: QueryParam[String], settingsAppKeyQuery: QueryParam[String], appBlobQuery: QueryParam[String], assignedDeviceIdQuery: QueryParam[String]): Task[EmployeeResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[EmployeeResponse] = jsonOf[EmployeeResponse]

    val path = "/employee/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("managerAccountId", Some(managerAccountIdQuery.toParamString(managerAccountId))), ("username", Some(usernameQuery.toParamString(username))), ("password", Some(passwordQuery.toParamString(password))), ("name", Some(nameQuery.toParamString(name))), ("prefixName", Some(prefixNameQuery.toParamString(prefixName))), ("firstName", Some(firstNameQuery.toParamString(firstName))), ("middleName", Some(middleNameQuery.toParamString(middleName))), ("lastName", Some(lastNameQuery.toParamString(lastName))), ("suffixName", Some(suffixNameQuery.toParamString(suffixName))), ("title", Some(titleQuery.toParamString(title))), ("aboutUs", Some(aboutUsQuery.toParamString(aboutUs))), ("assetId", Some(assetIdQuery.toParamString(assetId))), ("gender", Some(genderQuery.toParamString(gender))), ("homePhone", Some(homePhoneQuery.toParamString(homePhone))), ("cellPhone", Some(cellPhoneQuery.toParamString(cellPhone))), ("cellPhoneCarrier", Some(cellPhoneCarrierQuery.toParamString(cellPhoneCarrier))), ("businessPhone", Some(businessPhoneQuery.toParamString(businessPhone))), ("emailAddress", Some(emailAddressQuery.toParamString(emailAddress))), ("streetAddress", Some(streetAddressQuery.toParamString(streetAddress))), ("streetAddress2", Some(streetAddress2Query.toParamString(streetAddress2))), ("city", Some(cityQuery.toParamString(city))), ("state", Some(stateQuery.toParamString(state))), ("zipcode", Some(zipcodeQuery.toParamString(zipcode))), ("country", Some(countryQuery.toParamString(country))), ("role", Some(roleQuery.toParamString(role))), ("retailerLocationIds", Some(retailerLocationIdsQuery.toParamString(retailerLocationIds))), ("settingsAppKey", Some(settingsAppKeyQuery.toParamString(settingsAppKey))), ("appBlob", Some(appBlobQuery.toParamString(appBlob))), ("assignedDeviceId", Some(assignedDeviceIdQuery.toParamString(assignedDeviceId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[EmployeeResponse](req)

    } yield resp
  }

  def deleteEmployee(accountId: Long, employeeAccountId: Long)(implicit accountIdQuery: QueryParam[Long], employeeAccountIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/employee/delete"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("employeeAccountId", Some(employeeAccountIdQuery.toParamString(employeeAccountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getEmployee(accountId: Long, employeeAccountId: Long, settingsAppKey: String)(implicit accountIdQuery: QueryParam[Long], employeeAccountIdQuery: QueryParam[Long], settingsAppKeyQuery: QueryParam[String]): Task[EmployeeResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[EmployeeResponse] = jsonOf[EmployeeResponse]

    val path = "/employee/get"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("employeeAccountId", Some(employeeAccountIdQuery.toParamString(employeeAccountId))), ("settingsAppKey", Some(settingsAppKeyQuery.toParamString(settingsAppKey))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[EmployeeResponse](req)

    } yield resp
  }

  def searchEmployees(accountId: Long, role: String, retailerId: Long, retailerLocationId: Long, q: String, keyword: String, sortField: String, descending: Boolean = false, i: Integer, start: Integer = 0, l: Integer, limit: Integer = 20, activeOnly: Boolean = true, managedOnly: Boolean, settingsAppKey: String, categoryIds: String, query: String)(implicit accountIdQuery: QueryParam[Long], roleQuery: QueryParam[String], retailerIdQuery: QueryParam[Long], retailerLocationIdQuery: QueryParam[Long], qQuery: QueryParam[String], keywordQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], iQuery: QueryParam[Integer], startQuery: QueryParam[Integer], lQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean], managedOnlyQuery: QueryParam[Boolean], settingsAppKeyQuery: QueryParam[String], categoryIdsQuery: QueryParam[String], queryQuery: QueryParam[String]): Task[List[EmployeeResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[EmployeeResponse]] = jsonOf[List[EmployeeResponse]]

    val path = "/employee/search"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("role", Some(roleQuery.toParamString(role))), ("retailerId", Some(retailerIdQuery.toParamString(retailerId))), ("retailerLocationId", Some(retailerLocationIdQuery.toParamString(retailerLocationId))), ("q", Some(qQuery.toParamString(q))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("i", Some(_iQuery.toParamString(_i))), ("start", Some(startQuery.toParamString(start))), ("l", Some(_lQuery.toParamString(_l))), ("limit", Some(limitQuery.toParamString(limit))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))), ("managedOnly", Some(managedOnlyQuery.toParamString(managedOnly))), ("settingsAppKey", Some(settingsAppKeyQuery.toParamString(settingsAppKey))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("query", Some(queryQuery.toParamString(query))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[EmployeeResponse]](req)

    } yield resp
  }

  def unassignEmployee(accountId: Long, employeeAccountId: Long)(implicit accountIdQuery: QueryParam[Long], employeeAccountIdQuery: QueryParam[Long]): Task[EmployeeResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[EmployeeResponse] = jsonOf[EmployeeResponse]

    val path = "/employee/unassign"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("employeeAccountId", Some(employeeAccountIdQuery.toParamString(employeeAccountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[EmployeeResponse](req)

    } yield resp
  }

  def updateEmployee(accountId: Long, employeeAccountId: Long, managerAccountId: Long, name: String, prefixName: String, firstName: String, middleName: String, lastName: String, suffixName: String, title: String, assetId: Long, gender: String, homePhone: String, cellPhone: String, cellPhoneCarrier: String, businessPhone: String, emailAddress: String, streetAddress: String, streetAddress2: String, city: String, state: String, zipcode: String, country: String, role: String, active: Boolean, password: String, retailerLocationIds: String, settingsAppKey: String, appBlob: String, assignedDeviceId: String)(implicit accountIdQuery: QueryParam[Long], employeeAccountIdQuery: QueryParam[Long], managerAccountIdQuery: QueryParam[Long], nameQuery: QueryParam[String], prefixNameQuery: QueryParam[String], firstNameQuery: QueryParam[String], middleNameQuery: QueryParam[String], lastNameQuery: QueryParam[String], suffixNameQuery: QueryParam[String], titleQuery: QueryParam[String], assetIdQuery: QueryParam[Long], genderQuery: QueryParam[String], homePhoneQuery: QueryParam[String], cellPhoneQuery: QueryParam[String], cellPhoneCarrierQuery: QueryParam[String], businessPhoneQuery: QueryParam[String], emailAddressQuery: QueryParam[String], streetAddressQuery: QueryParam[String], streetAddress2Query: QueryParam[String], cityQuery: QueryParam[String], stateQuery: QueryParam[String], zipcodeQuery: QueryParam[String], countryQuery: QueryParam[String], roleQuery: QueryParam[String], activeQuery: QueryParam[Boolean], passwordQuery: QueryParam[String], retailerLocationIdsQuery: QueryParam[String], settingsAppKeyQuery: QueryParam[String], appBlobQuery: QueryParam[String], assignedDeviceIdQuery: QueryParam[String]): Task[EmployeeResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[EmployeeResponse] = jsonOf[EmployeeResponse]

    val path = "/employee/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("employeeAccountId", Some(employeeAccountIdQuery.toParamString(employeeAccountId))), ("managerAccountId", Some(managerAccountIdQuery.toParamString(managerAccountId))), ("name", Some(nameQuery.toParamString(name))), ("prefixName", Some(prefixNameQuery.toParamString(prefixName))), ("firstName", Some(firstNameQuery.toParamString(firstName))), ("middleName", Some(middleNameQuery.toParamString(middleName))), ("lastName", Some(lastNameQuery.toParamString(lastName))), ("suffixName", Some(suffixNameQuery.toParamString(suffixName))), ("title", Some(titleQuery.toParamString(title))), ("assetId", Some(assetIdQuery.toParamString(assetId))), ("gender", Some(genderQuery.toParamString(gender))), ("homePhone", Some(homePhoneQuery.toParamString(homePhone))), ("cellPhone", Some(cellPhoneQuery.toParamString(cellPhone))), ("cellPhoneCarrier", Some(cellPhoneCarrierQuery.toParamString(cellPhoneCarrier))), ("businessPhone", Some(businessPhoneQuery.toParamString(businessPhone))), ("emailAddress", Some(emailAddressQuery.toParamString(emailAddress))), ("streetAddress", Some(streetAddressQuery.toParamString(streetAddress))), ("streetAddress2", Some(streetAddress2Query.toParamString(streetAddress2))), ("city", Some(cityQuery.toParamString(city))), ("state", Some(stateQuery.toParamString(state))), ("zipcode", Some(zipcodeQuery.toParamString(zipcode))), ("country", Some(countryQuery.toParamString(country))), ("role", Some(roleQuery.toParamString(role))), ("active", Some(activeQuery.toParamString(active))), ("password", Some(passwordQuery.toParamString(password))), ("retailerLocationIds", Some(retailerLocationIdsQuery.toParamString(retailerLocationIds))), ("settingsAppKey", Some(settingsAppKeyQuery.toParamString(settingsAppKey))), ("appBlob", Some(appBlobQuery.toParamString(appBlob))), ("assignedDeviceId", Some(assignedDeviceIdQuery.toParamString(assignedDeviceId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[EmployeeResponse](req)

    } yield resp
  }

}
