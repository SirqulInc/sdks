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

import org.openapitools.client.api.PaymentTypesResponse

object BillingInfoApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def addPaymentMethod(host: String, accountId: Long, paymentMethodId: Long, accountName: String, firstName: String, lastName: String, address: String, city: String, state: String, postalCode: String, country: String, phone: String, creditCardNumber: String, expirationDate: String, ccv: String, accountNumber: String, bankName: String, routingNumber: String, defaultPaymentMethod: Boolean, paymentMethodNickname: String, taxId: String, providerCustomerProfileId: String, providerPaymentProfileId: String, metaData: String)(implicit accountIdQuery: QueryParam[Long], paymentMethodIdQuery: QueryParam[Long], accountNameQuery: QueryParam[String], firstNameQuery: QueryParam[String], lastNameQuery: QueryParam[String], addressQuery: QueryParam[String], cityQuery: QueryParam[String], stateQuery: QueryParam[String], postalCodeQuery: QueryParam[String], countryQuery: QueryParam[String], phoneQuery: QueryParam[String], creditCardNumberQuery: QueryParam[String], expirationDateQuery: QueryParam[String], ccvQuery: QueryParam[String], accountNumberQuery: QueryParam[String], bankNameQuery: QueryParam[String], routingNumberQuery: QueryParam[String], defaultPaymentMethodQuery: QueryParam[Boolean], paymentMethodNicknameQuery: QueryParam[String], taxIdQuery: QueryParam[String], providerCustomerProfileIdQuery: QueryParam[String], providerPaymentProfileIdQuery: QueryParam[String], metaDataQuery: QueryParam[String]): Task[PaymentTypesResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[PaymentTypesResponse] = jsonOf[PaymentTypesResponse]

    val path = "/billing/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("paymentMethodId", Some(paymentMethodIdQuery.toParamString(paymentMethodId))), ("accountName", Some(accountNameQuery.toParamString(accountName))), ("firstName", Some(firstNameQuery.toParamString(firstName))), ("lastName", Some(lastNameQuery.toParamString(lastName))), ("address", Some(addressQuery.toParamString(address))), ("city", Some(cityQuery.toParamString(city))), ("state", Some(stateQuery.toParamString(state))), ("postalCode", Some(postalCodeQuery.toParamString(postalCode))), ("country", Some(countryQuery.toParamString(country))), ("phone", Some(phoneQuery.toParamString(phone))), ("creditCardNumber", Some(creditCardNumberQuery.toParamString(creditCardNumber))), ("expirationDate", Some(expirationDateQuery.toParamString(expirationDate))), ("ccv", Some(ccvQuery.toParamString(ccv))), ("accountNumber", Some(accountNumberQuery.toParamString(accountNumber))), ("bankName", Some(bankNameQuery.toParamString(bankName))), ("routingNumber", Some(routingNumberQuery.toParamString(routingNumber))), ("defaultPaymentMethod", Some(defaultPaymentMethodQuery.toParamString(defaultPaymentMethod))), ("paymentMethodNickname", Some(paymentMethodNicknameQuery.toParamString(paymentMethodNickname))), ("taxId", Some(taxIdQuery.toParamString(taxId))), ("providerCustomerProfileId", Some(providerCustomerProfileIdQuery.toParamString(providerCustomerProfileId))), ("providerPaymentProfileId", Some(providerPaymentProfileIdQuery.toParamString(providerPaymentProfileId))), ("metaData", Some(metaDataQuery.toParamString(metaData))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PaymentTypesResponse](req)

    } yield resp
  }

  def createPaymentMethod(host: String, accountId: Long, accountName: String, firstName: String, lastName: String, address: String, city: String, state: String, postalCode: String, country: String, phone: String, creditCardNumber: String, expirationDate: String, ccv: String, accountNumber: String, bankName: String, routingNumber: String, paymentMethodNickname: String, taxId: String, defaultPaymentMethod: Boolean = true, authToken: String, provider: String = AUTHORIZE_NET, providerCustomerProfileId: String, providerPaymentProfileId: String, metaData: String, appKey: String)(implicit accountIdQuery: QueryParam[Long], accountNameQuery: QueryParam[String], firstNameQuery: QueryParam[String], lastNameQuery: QueryParam[String], addressQuery: QueryParam[String], cityQuery: QueryParam[String], stateQuery: QueryParam[String], postalCodeQuery: QueryParam[String], countryQuery: QueryParam[String], phoneQuery: QueryParam[String], creditCardNumberQuery: QueryParam[String], expirationDateQuery: QueryParam[String], ccvQuery: QueryParam[String], accountNumberQuery: QueryParam[String], bankNameQuery: QueryParam[String], routingNumberQuery: QueryParam[String], paymentMethodNicknameQuery: QueryParam[String], taxIdQuery: QueryParam[String], defaultPaymentMethodQuery: QueryParam[Boolean], authTokenQuery: QueryParam[String], providerQuery: QueryParam[String], providerCustomerProfileIdQuery: QueryParam[String], providerPaymentProfileIdQuery: QueryParam[String], metaDataQuery: QueryParam[String], appKeyQuery: QueryParam[String]): Task[PaymentTypesResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[PaymentTypesResponse] = jsonOf[PaymentTypesResponse]

    val path = "/billing/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("accountName", Some(accountNameQuery.toParamString(accountName))), ("firstName", Some(firstNameQuery.toParamString(firstName))), ("lastName", Some(lastNameQuery.toParamString(lastName))), ("address", Some(addressQuery.toParamString(address))), ("city", Some(cityQuery.toParamString(city))), ("state", Some(stateQuery.toParamString(state))), ("postalCode", Some(postalCodeQuery.toParamString(postalCode))), ("country", Some(countryQuery.toParamString(country))), ("phone", Some(phoneQuery.toParamString(phone))), ("creditCardNumber", Some(creditCardNumberQuery.toParamString(creditCardNumber))), ("expirationDate", Some(expirationDateQuery.toParamString(expirationDate))), ("ccv", Some(ccvQuery.toParamString(ccv))), ("accountNumber", Some(accountNumberQuery.toParamString(accountNumber))), ("bankName", Some(bankNameQuery.toParamString(bankName))), ("routingNumber", Some(routingNumberQuery.toParamString(routingNumber))), ("paymentMethodNickname", Some(paymentMethodNicknameQuery.toParamString(paymentMethodNickname))), ("taxId", Some(taxIdQuery.toParamString(taxId))), ("defaultPaymentMethod", Some(defaultPaymentMethodQuery.toParamString(defaultPaymentMethod))), ("authToken", Some(authTokenQuery.toParamString(authToken))), ("provider", Some(providerQuery.toParamString(provider))), ("providerCustomerProfileId", Some(providerCustomerProfileIdQuery.toParamString(providerCustomerProfileId))), ("providerPaymentProfileId", Some(providerPaymentProfileIdQuery.toParamString(providerPaymentProfileId))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("appKey", Some(appKeyQuery.toParamString(appKey))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PaymentTypesResponse](req)

    } yield resp
  }

  def createSmartContract(host: String, accountId: Long, tokenName: String, tokenSymbol: String, paymentMethodId: Long)(implicit accountIdQuery: QueryParam[Long], paymentMethodIdQuery: QueryParam[Long], tokenNameQuery: QueryParam[String], tokenSymbolQuery: QueryParam[String]): Task[PaymentTypesResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[PaymentTypesResponse] = jsonOf[PaymentTypesResponse]

    val path = "/billing/crypto/transfer"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("paymentMethodId", Some(paymentMethodIdQuery.toParamString(paymentMethodId))), ("tokenName", Some(tokenNameQuery.toParamString(tokenName))), ("tokenSymbol", Some(tokenSymbolQuery.toParamString(tokenSymbol))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PaymentTypesResponse](req)

    } yield resp
  }

  def getCryptoBalance(host: String, accountId: Long, ownerAccountId: Long, paymentMethodId: Long)(implicit accountIdQuery: QueryParam[Long], ownerAccountIdQuery: QueryParam[Long], paymentMethodIdQuery: QueryParam[Long]): Task[PaymentTypesResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[PaymentTypesResponse] = jsonOf[PaymentTypesResponse]

    val path = "/billing/crypto/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("ownerAccountId", Some(ownerAccountIdQuery.toParamString(ownerAccountId))), ("paymentMethodId", Some(paymentMethodIdQuery.toParamString(paymentMethodId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PaymentTypesResponse](req)

    } yield resp
  }

  def getPaymentMethod(host: String, accountId: Long, paymentMethodId: Long, getCurrentBalance: Boolean)(implicit accountIdQuery: QueryParam[Long], paymentMethodIdQuery: QueryParam[Long], getCurrentBalanceQuery: QueryParam[Boolean]): Task[PaymentTypesResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[PaymentTypesResponse] = jsonOf[PaymentTypesResponse]

    val path = "/billing/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("paymentMethodId", Some(paymentMethodIdQuery.toParamString(paymentMethodId))), ("getCurrentBalance", Some(getCurrentBalanceQuery.toParamString(getCurrentBalance))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PaymentTypesResponse](req)

    } yield resp
  }

  def searchPaymentMethod(host: String, accountId: Long, provider: String = AUTHORIZE_NET, `type`: String, keyword: String, sortField: String = UPDATED, descending: Boolean = true, start: Integer = 0, limit: Integer = 5)(implicit accountIdQuery: QueryParam[Long], providerQuery: QueryParam[String], `type`Query: QueryParam[String], keywordQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[PaymentTypesResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[PaymentTypesResponse] = jsonOf[PaymentTypesResponse]

    val path = "/billing/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("provider", Some(providerQuery.toParamString(provider))), ("`type`", Some(typeQuery.toParamString(type))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PaymentTypesResponse](req)

    } yield resp
  }

}

class HttpServiceBillingInfoApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def addPaymentMethod(accountId: Long, paymentMethodId: Long, accountName: String, firstName: String, lastName: String, address: String, city: String, state: String, postalCode: String, country: String, phone: String, creditCardNumber: String, expirationDate: String, ccv: String, accountNumber: String, bankName: String, routingNumber: String, defaultPaymentMethod: Boolean, paymentMethodNickname: String, taxId: String, providerCustomerProfileId: String, providerPaymentProfileId: String, metaData: String)(implicit accountIdQuery: QueryParam[Long], paymentMethodIdQuery: QueryParam[Long], accountNameQuery: QueryParam[String], firstNameQuery: QueryParam[String], lastNameQuery: QueryParam[String], addressQuery: QueryParam[String], cityQuery: QueryParam[String], stateQuery: QueryParam[String], postalCodeQuery: QueryParam[String], countryQuery: QueryParam[String], phoneQuery: QueryParam[String], creditCardNumberQuery: QueryParam[String], expirationDateQuery: QueryParam[String], ccvQuery: QueryParam[String], accountNumberQuery: QueryParam[String], bankNameQuery: QueryParam[String], routingNumberQuery: QueryParam[String], defaultPaymentMethodQuery: QueryParam[Boolean], paymentMethodNicknameQuery: QueryParam[String], taxIdQuery: QueryParam[String], providerCustomerProfileIdQuery: QueryParam[String], providerPaymentProfileIdQuery: QueryParam[String], metaDataQuery: QueryParam[String]): Task[PaymentTypesResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[PaymentTypesResponse] = jsonOf[PaymentTypesResponse]

    val path = "/billing/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("paymentMethodId", Some(paymentMethodIdQuery.toParamString(paymentMethodId))), ("accountName", Some(accountNameQuery.toParamString(accountName))), ("firstName", Some(firstNameQuery.toParamString(firstName))), ("lastName", Some(lastNameQuery.toParamString(lastName))), ("address", Some(addressQuery.toParamString(address))), ("city", Some(cityQuery.toParamString(city))), ("state", Some(stateQuery.toParamString(state))), ("postalCode", Some(postalCodeQuery.toParamString(postalCode))), ("country", Some(countryQuery.toParamString(country))), ("phone", Some(phoneQuery.toParamString(phone))), ("creditCardNumber", Some(creditCardNumberQuery.toParamString(creditCardNumber))), ("expirationDate", Some(expirationDateQuery.toParamString(expirationDate))), ("ccv", Some(ccvQuery.toParamString(ccv))), ("accountNumber", Some(accountNumberQuery.toParamString(accountNumber))), ("bankName", Some(bankNameQuery.toParamString(bankName))), ("routingNumber", Some(routingNumberQuery.toParamString(routingNumber))), ("defaultPaymentMethod", Some(defaultPaymentMethodQuery.toParamString(defaultPaymentMethod))), ("paymentMethodNickname", Some(paymentMethodNicknameQuery.toParamString(paymentMethodNickname))), ("taxId", Some(taxIdQuery.toParamString(taxId))), ("providerCustomerProfileId", Some(providerCustomerProfileIdQuery.toParamString(providerCustomerProfileId))), ("providerPaymentProfileId", Some(providerPaymentProfileIdQuery.toParamString(providerPaymentProfileId))), ("metaData", Some(metaDataQuery.toParamString(metaData))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PaymentTypesResponse](req)

    } yield resp
  }

  def createPaymentMethod(accountId: Long, accountName: String, firstName: String, lastName: String, address: String, city: String, state: String, postalCode: String, country: String, phone: String, creditCardNumber: String, expirationDate: String, ccv: String, accountNumber: String, bankName: String, routingNumber: String, paymentMethodNickname: String, taxId: String, defaultPaymentMethod: Boolean = true, authToken: String, provider: String = AUTHORIZE_NET, providerCustomerProfileId: String, providerPaymentProfileId: String, metaData: String, appKey: String)(implicit accountIdQuery: QueryParam[Long], accountNameQuery: QueryParam[String], firstNameQuery: QueryParam[String], lastNameQuery: QueryParam[String], addressQuery: QueryParam[String], cityQuery: QueryParam[String], stateQuery: QueryParam[String], postalCodeQuery: QueryParam[String], countryQuery: QueryParam[String], phoneQuery: QueryParam[String], creditCardNumberQuery: QueryParam[String], expirationDateQuery: QueryParam[String], ccvQuery: QueryParam[String], accountNumberQuery: QueryParam[String], bankNameQuery: QueryParam[String], routingNumberQuery: QueryParam[String], paymentMethodNicknameQuery: QueryParam[String], taxIdQuery: QueryParam[String], defaultPaymentMethodQuery: QueryParam[Boolean], authTokenQuery: QueryParam[String], providerQuery: QueryParam[String], providerCustomerProfileIdQuery: QueryParam[String], providerPaymentProfileIdQuery: QueryParam[String], metaDataQuery: QueryParam[String], appKeyQuery: QueryParam[String]): Task[PaymentTypesResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[PaymentTypesResponse] = jsonOf[PaymentTypesResponse]

    val path = "/billing/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("accountName", Some(accountNameQuery.toParamString(accountName))), ("firstName", Some(firstNameQuery.toParamString(firstName))), ("lastName", Some(lastNameQuery.toParamString(lastName))), ("address", Some(addressQuery.toParamString(address))), ("city", Some(cityQuery.toParamString(city))), ("state", Some(stateQuery.toParamString(state))), ("postalCode", Some(postalCodeQuery.toParamString(postalCode))), ("country", Some(countryQuery.toParamString(country))), ("phone", Some(phoneQuery.toParamString(phone))), ("creditCardNumber", Some(creditCardNumberQuery.toParamString(creditCardNumber))), ("expirationDate", Some(expirationDateQuery.toParamString(expirationDate))), ("ccv", Some(ccvQuery.toParamString(ccv))), ("accountNumber", Some(accountNumberQuery.toParamString(accountNumber))), ("bankName", Some(bankNameQuery.toParamString(bankName))), ("routingNumber", Some(routingNumberQuery.toParamString(routingNumber))), ("paymentMethodNickname", Some(paymentMethodNicknameQuery.toParamString(paymentMethodNickname))), ("taxId", Some(taxIdQuery.toParamString(taxId))), ("defaultPaymentMethod", Some(defaultPaymentMethodQuery.toParamString(defaultPaymentMethod))), ("authToken", Some(authTokenQuery.toParamString(authToken))), ("provider", Some(providerQuery.toParamString(provider))), ("providerCustomerProfileId", Some(providerCustomerProfileIdQuery.toParamString(providerCustomerProfileId))), ("providerPaymentProfileId", Some(providerPaymentProfileIdQuery.toParamString(providerPaymentProfileId))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("appKey", Some(appKeyQuery.toParamString(appKey))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PaymentTypesResponse](req)

    } yield resp
  }

  def createSmartContract(accountId: Long, tokenName: String, tokenSymbol: String, paymentMethodId: Long)(implicit accountIdQuery: QueryParam[Long], paymentMethodIdQuery: QueryParam[Long], tokenNameQuery: QueryParam[String], tokenSymbolQuery: QueryParam[String]): Task[PaymentTypesResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[PaymentTypesResponse] = jsonOf[PaymentTypesResponse]

    val path = "/billing/crypto/transfer"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("paymentMethodId", Some(paymentMethodIdQuery.toParamString(paymentMethodId))), ("tokenName", Some(tokenNameQuery.toParamString(tokenName))), ("tokenSymbol", Some(tokenSymbolQuery.toParamString(tokenSymbol))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PaymentTypesResponse](req)

    } yield resp
  }

  def getCryptoBalance(accountId: Long, ownerAccountId: Long, paymentMethodId: Long)(implicit accountIdQuery: QueryParam[Long], ownerAccountIdQuery: QueryParam[Long], paymentMethodIdQuery: QueryParam[Long]): Task[PaymentTypesResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[PaymentTypesResponse] = jsonOf[PaymentTypesResponse]

    val path = "/billing/crypto/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("ownerAccountId", Some(ownerAccountIdQuery.toParamString(ownerAccountId))), ("paymentMethodId", Some(paymentMethodIdQuery.toParamString(paymentMethodId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PaymentTypesResponse](req)

    } yield resp
  }

  def getPaymentMethod(accountId: Long, paymentMethodId: Long, getCurrentBalance: Boolean)(implicit accountIdQuery: QueryParam[Long], paymentMethodIdQuery: QueryParam[Long], getCurrentBalanceQuery: QueryParam[Boolean]): Task[PaymentTypesResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[PaymentTypesResponse] = jsonOf[PaymentTypesResponse]

    val path = "/billing/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("paymentMethodId", Some(paymentMethodIdQuery.toParamString(paymentMethodId))), ("getCurrentBalance", Some(getCurrentBalanceQuery.toParamString(getCurrentBalance))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PaymentTypesResponse](req)

    } yield resp
  }

  def searchPaymentMethod(accountId: Long, provider: String = AUTHORIZE_NET, `type`: String, keyword: String, sortField: String = UPDATED, descending: Boolean = true, start: Integer = 0, limit: Integer = 5)(implicit accountIdQuery: QueryParam[Long], providerQuery: QueryParam[String], `type`Query: QueryParam[String], keywordQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[PaymentTypesResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[PaymentTypesResponse] = jsonOf[PaymentTypesResponse]

    val path = "/billing/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("provider", Some(providerQuery.toParamString(provider))), ("`type`", Some(typeQuery.toParamString(type))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PaymentTypesResponse](req)

    } yield resp
  }

}
