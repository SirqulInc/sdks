package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import AudienceTargetType._

case class AudienceTargetType (
  targetType: Option[TargetType],
targetDescription: Option[String],
retailerLocation: Option[RetailerLocation],
offerLocation: Option[OfferLocation],
account: Option[Account],
region: Option[Region])

object AudienceTargetType {
  import DateTimeCodecs._
  sealed trait TargetType
  case object RETAILERLOCATION extends TargetType
  case object OFFERLOCATION extends TargetType
  case object ACCOUNT extends TargetType
  case object REGION extends TargetType

  object TargetType {
    def toTargetType(s: String): Option[TargetType] = s match {
      case "RETAILERLOCATION" => Some(RETAILERLOCATION)
      case "OFFERLOCATION" => Some(OFFERLOCATION)
      case "ACCOUNT" => Some(ACCOUNT)
      case "REGION" => Some(REGION)
      case _ => None
    }

    def fromTargetType(x: TargetType): String = x match {
      case RETAILERLOCATION => "RETAILERLOCATION"
      case OFFERLOCATION => "OFFERLOCATION"
      case ACCOUNT => "ACCOUNT"
      case REGION => "REGION"
    }
  }

  implicit val TargetTypeEnumEncoder: EncodeJson[TargetType] =
    EncodeJson[TargetType](is => StringEncodeJson(TargetType.fromTargetType(is)))

  implicit val TargetTypeEnumDecoder: DecodeJson[TargetType] =
    DecodeJson.optionDecoder[TargetType](n => n.string.flatMap(jStr => TargetType.toTargetType(jStr)), "TargetType failed to de-serialize")

  implicit val AudienceTargetTypeCodecJson: CodecJson[AudienceTargetType] = CodecJson.derive[AudienceTargetType]
  implicit val AudienceTargetTypeDecoder: EntityDecoder[AudienceTargetType] = jsonOf[AudienceTargetType]
  implicit val AudienceTargetTypeEncoder: EntityEncoder[AudienceTargetType] = jsonEncoderOf[AudienceTargetType]
}
