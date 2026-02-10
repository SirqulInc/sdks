package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime

import java.time.OffsetDateTime

import Account._

case class Account (
  id: Option[Long],
created: Option[OffsetDateTime],
updated: Option[OffsetDateTime],
active: Option[Boolean],
valid: Option[Boolean],
latitude: Option[Double],
longitude: Option[Double],
locationDescription: Option[String],
currentRegion: Option[Region],
locationLastUpdated: Option[OffsetDateTime],
currentPostalCode: Option[String],
currentPostalCodeLatitude: Option[Double],
currentPostalCodeLongitude: Option[Double],
locationUpdated: Option[Boolean],
premigrationId: Option[Long],
username: Option[String],
locale: Option[String],
inviteCode: Option[String],
retailerInviteCode: Option[String],
aboutUs: Option[String],
businessName: Option[String],
likeCount: Option[Long],
dislikeCount: Option[Long],
thirdPartyCredentials: Option[List[ThirdPartyCredentials]],
partnerActive: Option[Boolean],
resetToken: Option[String],
profileImage: Option[String],
accountType: Option[String],
media: Option[List[Asset]],
picture: Option[Asset],
firstName: Option[String],
middleName: Option[String],
lastName: Option[String],
prefix: Option[String],
suffix: Option[String],
title: Option[String],
homePhone: Option[String],
cellPhone: Option[String],
cellCarrier: Option[CellCarrier],
businessPhone: Option[String],
businessPhoneExt: Option[String],
faxNumber: Option[String],
timeZone: Option[String],
utcOffset: Option[String],
code501c3: Option[String],
emailAddress: Option[String],
address: Option[Address],
web: Option[String],
display: Option[String],
website: Option[String],
consumersNotes: Option[String],
consumersAboutUs: Option[String],
accountProfile: Option[AccountProfileInfo],
retailerLocations: Option[List[RetailerLocation]],
executive: Option[Boolean],
contentName: Option[String],
defaultThreshold: Option[Long],
audienceInfoGender: Option[AudienceInfoGender],
flagThresholdId: Option[Long],
`contentType`: Option[String])

object Account {
  import DateTimeCodecs._
  sealed trait AudienceInfoGender
  case object MALE extends AudienceInfoGender
  case object FEMALE extends AudienceInfoGender
  case object ANY extends AudienceInfoGender

  object AudienceInfoGender {
    def toAudienceInfoGender(s: String): Option[AudienceInfoGender] = s match {
      case "MALE" => Some(MALE)
      case "FEMALE" => Some(FEMALE)
      case "ANY" => Some(ANY)
      case _ => None
    }

    def fromAudienceInfoGender(x: AudienceInfoGender): String = x match {
      case MALE => "MALE"
      case FEMALE => "FEMALE"
      case ANY => "ANY"
    }
  }

  implicit val AudienceInfoGenderEnumEncoder: EncodeJson[AudienceInfoGender] =
    EncodeJson[AudienceInfoGender](is => StringEncodeJson(AudienceInfoGender.fromAudienceInfoGender(is)))

  implicit val AudienceInfoGenderEnumDecoder: DecodeJson[AudienceInfoGender] =
    DecodeJson.optionDecoder[AudienceInfoGender](n => n.string.flatMap(jStr => AudienceInfoGender.toAudienceInfoGender(jStr)), "AudienceInfoGender failed to de-serialize")

  implicit val AccountCodecJson: CodecJson[Account] = CodecJson.derive[Account]
  implicit val AccountDecoder: EntityDecoder[Account] = jsonOf[Account]
  implicit val AccountEncoder: EntityEncoder[Account] = jsonEncoderOf[Account]
}
