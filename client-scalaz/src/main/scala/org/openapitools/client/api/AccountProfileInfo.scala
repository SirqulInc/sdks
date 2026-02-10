package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime

import java.time.OffsetDateTime

import AccountProfileInfo._

case class AccountProfileInfo (
  id: Option[Long],
created: Option[OffsetDateTime],
updated: Option[OffsetDateTime],
active: Option[Boolean],
valid: Option[Boolean],
account: Option[Account],
gender: Option[Gender],
birthday: Option[OffsetDateTime],
ageGroup: Option[AgeGroup],
preferredMinAge: Option[Integer],
preferredMaxAge: Option[Integer],
preferredMinHeight: Option[Integer],
preferredMaxHeight: Option[Integer],
preferredGender: Option[PreferredGender],
preferredEducation: Option[String],
preferredEducationIndex: Option[Integer],
preferredBodyType: Option[String],
preferredEthnicity: Option[String],
preferredLocation: Option[String],
preferredLocationRange: Option[Double],
height: Option[String],
heightIndex: Option[Integer],
ethnicity: Option[String],
bodyType: Option[String],
maritalStatus: Option[String],
children: Option[String],
religion: Option[String],
education: Option[String],
educationIndex: Option[Integer],
smoke: Option[String],
drink: Option[String],
companionship: Option[String],
companionshipIndex: Option[Integer],
developmentPlatforms: Option[List[DevelopmentPlatforms]],
matchToken: Option[Long],
matchString: Option[String],
noneZeroMatchToken: Option[Long],
preferredMaxBirthday: Option[OffsetDateTime],
preferredMinBirthday: Option[OffsetDateTime])

object AccountProfileInfo {
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
  sealed trait AgeGroup
  case object AGE013 extends AgeGroup
  case object AGE1417 extends AgeGroup
  case object AGE1822 extends AgeGroup
  case object AGE2330 extends AgeGroup
  case object AGE3154 extends AgeGroup
  case object AGE55PLUS extends AgeGroup

  object AgeGroup {
    def toAgeGroup(s: String): Option[AgeGroup] = s match {
      case "AGE013" => Some(AGE013)
      case "AGE1417" => Some(AGE1417)
      case "AGE1822" => Some(AGE1822)
      case "AGE2330" => Some(AGE2330)
      case "AGE3154" => Some(AGE3154)
      case "AGE55PLUS" => Some(AGE55PLUS)
      case _ => None
    }

    def fromAgeGroup(x: AgeGroup): String = x match {
      case AGE013 => "AGE013"
      case AGE1417 => "AGE1417"
      case AGE1822 => "AGE1822"
      case AGE2330 => "AGE2330"
      case AGE3154 => "AGE3154"
      case AGE55PLUS => "AGE55PLUS"
    }
  }

  implicit val AgeGroupEnumEncoder: EncodeJson[AgeGroup] =
    EncodeJson[AgeGroup](is => StringEncodeJson(AgeGroup.fromAgeGroup(is)))

  implicit val AgeGroupEnumDecoder: DecodeJson[AgeGroup] =
    DecodeJson.optionDecoder[AgeGroup](n => n.string.flatMap(jStr => AgeGroup.toAgeGroup(jStr)), "AgeGroup failed to de-serialize")
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
  sealed trait List[DevelopmentPlatforms]

  object List[DevelopmentPlatforms] {
    def toList[DevelopmentPlatforms](s: String): Option[List[DevelopmentPlatforms]] = s match {
      case _ => None
    }

    def fromList[DevelopmentPlatforms](x: List[DevelopmentPlatforms]): String = x match {
    }
  }

  implicit val List[DevelopmentPlatforms]EnumEncoder: EncodeJson[List[DevelopmentPlatforms]] =
    EncodeJson[List[DevelopmentPlatforms]](is => StringEncodeJson(List[DevelopmentPlatforms].fromList[DevelopmentPlatforms](is)))

  implicit val List[DevelopmentPlatforms]EnumDecoder: DecodeJson[List[DevelopmentPlatforms]] =
    DecodeJson.optionDecoder[List[DevelopmentPlatforms]](n => n.string.flatMap(jStr => List[DevelopmentPlatforms].toList[DevelopmentPlatforms](jStr)), "List[DevelopmentPlatforms] failed to de-serialize")

  implicit val AccountProfileInfoCodecJson: CodecJson[AccountProfileInfo] = CodecJson.derive[AccountProfileInfo]
  implicit val AccountProfileInfoDecoder: EntityDecoder[AccountProfileInfo] = jsonOf[AccountProfileInfo]
  implicit val AccountProfileInfoEncoder: EntityEncoder[AccountProfileInfo] = jsonEncoderOf[AccountProfileInfo]
}
