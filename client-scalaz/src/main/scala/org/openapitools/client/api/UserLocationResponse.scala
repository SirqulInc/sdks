package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import UserLocationResponse._

case class UserLocationResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
accountId: Option[Long],
locationDisplay: Option[String],
display: Option[String],
username: Option[String],
profileImage: Option[String],
profileAvatar: Option[AssetShortResponse],
aboutUs: Option[String],
locale: Option[String],
summaryTitle: Option[String],
gender: Option[Gender],
age: Option[String],
gameExperience: Option[GameExperience],
contact: Option[ContactResponse],
categories: Option[List[CategoryResponse]],
personalProfile: Option[PersonalProfileResponse],
userSettings: Option[UserSettingsResponse],
latitude: Option[Double],
longitude: Option[Double],
currentPostalCode: Option[PostalCodeResponse],
accountType: Option[String],
premiumExpiration: Option[Long],
matchIndex: Option[Integer],
tags: Option[String],
locationLastUpdated: Option[Long],
distanceFromMe: Option[String],
returning: Option[String])

object UserLocationResponse {
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
  sealed trait GameExperience
  case object ANY extends GameExperience
  case object `NEW` extends GameExperience
  case object BEGINNER extends GameExperience
  case object INTERMEDIATE extends GameExperience
  case object EXPERT extends GameExperience

  object GameExperience {
    def toGameExperience(s: String): Option[GameExperience] = s match {
      case "ANY" => Some(ANY)
      case "`NEW`" => Some(`NEW`)
      case "BEGINNER" => Some(BEGINNER)
      case "INTERMEDIATE" => Some(INTERMEDIATE)
      case "EXPERT" => Some(EXPERT)
      case _ => None
    }

    def fromGameExperience(x: GameExperience): String = x match {
      case ANY => "ANY"
      case `NEW` => "`NEW`"
      case BEGINNER => "BEGINNER"
      case INTERMEDIATE => "INTERMEDIATE"
      case EXPERT => "EXPERT"
    }
  }

  implicit val GameExperienceEnumEncoder: EncodeJson[GameExperience] =
    EncodeJson[GameExperience](is => StringEncodeJson(GameExperience.fromGameExperience(is)))

  implicit val GameExperienceEnumDecoder: DecodeJson[GameExperience] =
    DecodeJson.optionDecoder[GameExperience](n => n.string.flatMap(jStr => GameExperience.toGameExperience(jStr)), "GameExperience failed to de-serialize")

  implicit val UserLocationResponseCodecJson: CodecJson[UserLocationResponse] = CodecJson.derive[UserLocationResponse]
  implicit val UserLocationResponseDecoder: EntityDecoder[UserLocationResponse] = jsonOf[UserLocationResponse]
  implicit val UserLocationResponseEncoder: EntityEncoder[UserLocationResponse] = jsonEncoderOf[UserLocationResponse]
}
