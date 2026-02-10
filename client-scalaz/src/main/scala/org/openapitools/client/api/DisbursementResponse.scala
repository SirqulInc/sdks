package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import DisbursementResponse._

case class DisbursementResponse (
  disbursementId: Option[Long],
title: Option[String],
comment: Option[String],
externalId: Option[String],
introspectionParams: Option[String],
amount: Option[BigDecimal],
scheduledDate: Option[Long],
captureDate: Option[Long],
estimatedDate: Option[Long],
settledDate: Option[Long],
status: Option[Status],
provider: Option[Provider],
senderBillable: Option[BillableEntityShortResponse],
receiverBillable: Option[BillableEntityShortResponse],
errorCode: Option[String],
errorMessage: Option[String])

object DisbursementResponse {
  import DateTimeCodecs._
  sealed trait Status
  case object `NEW` extends Status
  case object APPROVED extends Status
  case object VALIDATING extends Status
  case object ERROR extends Status
  case object AUTHORIZED extends Status
  case object CAPTURED extends Status
  case object SETTLED extends Status

  object Status {
    def toStatus(s: String): Option[Status] = s match {
      case "`NEW`" => Some(`NEW`)
      case "APPROVED" => Some(APPROVED)
      case "VALIDATING" => Some(VALIDATING)
      case "ERROR" => Some(ERROR)
      case "AUTHORIZED" => Some(AUTHORIZED)
      case "CAPTURED" => Some(CAPTURED)
      case "SETTLED" => Some(SETTLED)
      case _ => None
    }

    def fromStatus(x: Status): String = x match {
      case `NEW` => "`NEW`"
      case APPROVED => "APPROVED"
      case VALIDATING => "VALIDATING"
      case ERROR => "ERROR"
      case AUTHORIZED => "AUTHORIZED"
      case CAPTURED => "CAPTURED"
      case SETTLED => "SETTLED"
    }
  }

  implicit val StatusEnumEncoder: EncodeJson[Status] =
    EncodeJson[Status](is => StringEncodeJson(Status.fromStatus(is)))

  implicit val StatusEnumDecoder: DecodeJson[Status] =
    DecodeJson.optionDecoder[Status](n => n.string.flatMap(jStr => Status.toStatus(jStr)), "Status failed to de-serialize")
  sealed trait Provider
  case object AUTHORIZENET extends Provider
  case object AMAZONFPS extends Provider
  case object BILLCOM extends Provider

  object Provider {
    def toProvider(s: String): Option[Provider] = s match {
      case "AUTHORIZENET" => Some(AUTHORIZENET)
      case "AMAZONFPS" => Some(AMAZONFPS)
      case "BILLCOM" => Some(BILLCOM)
      case _ => None
    }

    def fromProvider(x: Provider): String = x match {
      case AUTHORIZENET => "AUTHORIZENET"
      case AMAZONFPS => "AMAZONFPS"
      case BILLCOM => "BILLCOM"
    }
  }

  implicit val ProviderEnumEncoder: EncodeJson[Provider] =
    EncodeJson[Provider](is => StringEncodeJson(Provider.fromProvider(is)))

  implicit val ProviderEnumDecoder: DecodeJson[Provider] =
    DecodeJson.optionDecoder[Provider](n => n.string.flatMap(jStr => Provider.toProvider(jStr)), "Provider failed to de-serialize")

  implicit val DisbursementResponseCodecJson: CodecJson[DisbursementResponse] = CodecJson.derive[DisbursementResponse]
  implicit val DisbursementResponseDecoder: EntityDecoder[DisbursementResponse] = jsonOf[DisbursementResponse]
  implicit val DisbursementResponseEncoder: EntityEncoder[DisbursementResponse] = jsonEncoderOf[DisbursementResponse]
}
