package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import AccountResponse._

case class AccountResponse (
  accountId: Option[Long],
locationDisplay: Option[String],
display: Option[String],
username: Option[String],
accountType: Option[String],
profileImage: Option[String],
gender: Option[Gender],
contactEmail: Option[String],
contact: Option[ContactResponse],
manager: Option[AccountMiniResponse],
active: Option[Boolean])

object AccountResponse {
  import DateTimeCodecs._
  sealed trait Gender
  case object MALE extends Gender
  case object FEMALE extends Gender
  case object ANY extends Gender

  object Gender {
    def toGender(s: String): Option[Gender] = s match {
      case "MALE" => Some(MALE)
      case "FEMALE" => Some(FEMALE)
      case "ANY" => Some(ANY)
      case _ => None
    }

    def fromGender(x: Gender): String = x match {
      case MALE => "MALE"
      case FEMALE => "FEMALE"
      case ANY => "ANY"
    }
  }

  implicit val GenderEnumEncoder: EncodeJson[Gender] =
    EncodeJson[Gender](is => StringEncodeJson(Gender.fromGender(is)))

  implicit val GenderEnumDecoder: DecodeJson[Gender] =
    DecodeJson.optionDecoder[Gender](n => n.string.flatMap(jStr => Gender.toGender(jStr)), "Gender failed to de-serialize")

  implicit val AccountResponseCodecJson: CodecJson[AccountResponse] = CodecJson.derive[AccountResponse]
  implicit val AccountResponseDecoder: EntityDecoder[AccountResponse] = jsonOf[AccountResponse]
  implicit val AccountResponseEncoder: EntityEncoder[AccountResponse] = jsonEncoderOf[AccountResponse]
}
