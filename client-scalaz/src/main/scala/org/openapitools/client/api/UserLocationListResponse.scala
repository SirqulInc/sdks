package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import UserLocationListResponse._

case class UserLocationListResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
items: Option[List[UserLocationResponse]],
userLocationType: Option[UserLocationType],
latitude: Option[Double],
longitude: Option[Double],
postalCode: Option[String],
count: Option[Integer],
returning: Option[String])

object UserLocationListResponse {
  import DateTimeCodecs._
  sealed trait UserLocationType
  case object POSTALCODE extends UserLocationType
  case object EXACT extends UserLocationType

  object UserLocationType {
    def toUserLocationType(s: String): Option[UserLocationType] = s match {
      case "POSTALCODE" => Some(POSTALCODE)
      case "EXACT" => Some(EXACT)
      case _ => None
    }

    def fromUserLocationType(x: UserLocationType): String = x match {
      case POSTALCODE => "POSTALCODE"
      case EXACT => "EXACT"
    }
  }

  implicit val UserLocationTypeEnumEncoder: EncodeJson[UserLocationType] =
    EncodeJson[UserLocationType](is => StringEncodeJson(UserLocationType.fromUserLocationType(is)))

  implicit val UserLocationTypeEnumDecoder: DecodeJson[UserLocationType] =
    DecodeJson.optionDecoder[UserLocationType](n => n.string.flatMap(jStr => UserLocationType.toUserLocationType(jStr)), "UserLocationType failed to de-serialize")

  implicit val UserLocationListResponseCodecJson: CodecJson[UserLocationListResponse] = CodecJson.derive[UserLocationListResponse]
  implicit val UserLocationListResponseDecoder: EntityDecoder[UserLocationListResponse] = jsonOf[UserLocationListResponse]
  implicit val UserLocationListResponseEncoder: EntityEncoder[UserLocationListResponse] = jsonEncoderOf[UserLocationListResponse]
}
