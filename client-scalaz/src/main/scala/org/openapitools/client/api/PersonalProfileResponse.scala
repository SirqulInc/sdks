package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import PersonalProfileResponse._

case class PersonalProfileResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
preferredGender: Option[PreferredGender],
preferredEthnicity: Option[String],
preferredEducation: Option[String],
preferredEducationIndex: Option[Integer],
preferredBodyType: Option[String],
preferredMinAge: Option[Integer],
preferredMaxAge: Option[Integer],
preferredMinHeight: Option[Integer],
preferredMaxHeight: Option[Integer],
preferredLocationRange: Option[Double],
gender: Option[Gender],
hometown: Option[String],
height: Option[String],
heightIndex: Option[Integer],
ethnicity: Option[String],
bodyType: Option[String],
children: Option[String],
companionship: Option[String],
companionshipIndex: Option[Integer],
drink: Option[String],
education: Option[String],
educationIndex: Option[Integer],
maritalStatus: Option[String],
smoke: Option[String],
religion: Option[String],
birthday: Option[Long],
returning: Option[String])

object PersonalProfileResponse {
  import DateTimeCodecs._
  sealed trait PreferredGender
  case object MALE extends PreferredGender
  case object FEMALE extends PreferredGender
  case object ANY extends PreferredGender

  object PreferredGender {
    def toPreferredGender(s: String): Option[PreferredGender] = s match {
      case "MALE" => Some(MALE)
      case "FEMALE" => Some(FEMALE)
      case "ANY" => Some(ANY)
      case _ => None
    }

    def fromPreferredGender(x: PreferredGender): String = x match {
      case MALE => "MALE"
      case FEMALE => "FEMALE"
      case ANY => "ANY"
    }
  }

  implicit val PreferredGenderEnumEncoder: EncodeJson[PreferredGender] =
    EncodeJson[PreferredGender](is => StringEncodeJson(PreferredGender.fromPreferredGender(is)))

  implicit val PreferredGenderEnumDecoder: DecodeJson[PreferredGender] =
    DecodeJson.optionDecoder[PreferredGender](n => n.string.flatMap(jStr => PreferredGender.toPreferredGender(jStr)), "PreferredGender failed to de-serialize")
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

  implicit val PersonalProfileResponseCodecJson: CodecJson[PersonalProfileResponse] = CodecJson.derive[PersonalProfileResponse]
  implicit val PersonalProfileResponseDecoder: EntityDecoder[PersonalProfileResponse] = jsonOf[PersonalProfileResponse]
  implicit val PersonalProfileResponseEncoder: EntityEncoder[PersonalProfileResponse] = jsonEncoderOf[PersonalProfileResponse]
}
