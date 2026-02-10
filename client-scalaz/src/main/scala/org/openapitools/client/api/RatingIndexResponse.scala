package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RatingIndexResponse._

case class RatingIndexResponse (
  ratingIndexId: Option[Long],
ratingCount: Option[Long],
ratingAverage: Option[Float],
value: Option[Float],
display: Option[String],
ratableType: Option[RatableType],
ratableId: Option[Long],
category: Option[CategoryResponse],
ratable: Option[Any],
secondaryType: Option[String])

object RatingIndexResponse {
  import DateTimeCodecs._
  sealed trait RatableType
  case object LOCATABLE extends RatableType
  case object RESERVABLE extends RatableType
  case object PERMISSIONABLE extends RatableType
  case object NOTABLE extends RatableType
  case object ASSETABLE extends RatableType
  case object LIKABLE extends RatableType
  case object FLAGABLE extends RatableType
  case object FAVORITABLE extends RatableType
  case object RATABLE extends RatableType
  case object ALBUM extends RatableType
  case object COLLECTION extends RatableType
  case object APPLICATION extends RatableType
  case object APPLICATIONSETTING extends RatableType
  case object APPLICATIONCERT extends RatableType
  case object APPLICATIONPLACEMENT extends RatableType
  case object ACCOUNT extends RatableType
  case object ACCOUNTSETTING extends RatableType
  case object GAMELEVEL extends RatableType
  case object PACK extends RatableType
  case object MISSION extends RatableType
  case object TOURNAMENT extends RatableType
  case object ASSET extends RatableType
  case object ALBUMCONTEST extends RatableType
  case object THEMEDESCRIPTOR extends RatableType
  case object OFFER extends RatableType
  case object OFFERLOCATION extends RatableType
  case object EVENT extends RatableType
  case object RETAILER extends RatableType
  case object RETAILERLOCATION extends RatableType
  case object NOTE extends RatableType
  case object CREATIVE extends RatableType
  case object FAVORITE extends RatableType
  case object LIKE extends RatableType
  case object RATING extends RatableType
  case object ANALYTIC extends RatableType
  case object THIRDPARTYCREDENTIAL extends RatableType
  case object THIRDPARTYNETWORK extends RatableType
  case object REGION extends RatableType

  object RatableType {
    def toRatableType(s: String): Option[RatableType] = s match {
      case "LOCATABLE" => Some(LOCATABLE)
      case "RESERVABLE" => Some(RESERVABLE)
      case "PERMISSIONABLE" => Some(PERMISSIONABLE)
      case "NOTABLE" => Some(NOTABLE)
      case "ASSETABLE" => Some(ASSETABLE)
      case "LIKABLE" => Some(LIKABLE)
      case "FLAGABLE" => Some(FLAGABLE)
      case "FAVORITABLE" => Some(FAVORITABLE)
      case "RATABLE" => Some(RATABLE)
      case "ALBUM" => Some(ALBUM)
      case "COLLECTION" => Some(COLLECTION)
      case "APPLICATION" => Some(APPLICATION)
      case "APPLICATIONSETTING" => Some(APPLICATIONSETTING)
      case "APPLICATIONCERT" => Some(APPLICATIONCERT)
      case "APPLICATIONPLACEMENT" => Some(APPLICATIONPLACEMENT)
      case "ACCOUNT" => Some(ACCOUNT)
      case "ACCOUNTSETTING" => Some(ACCOUNTSETTING)
      case "GAMELEVEL" => Some(GAMELEVEL)
      case "PACK" => Some(PACK)
      case "MISSION" => Some(MISSION)
      case "TOURNAMENT" => Some(TOURNAMENT)
      case "ASSET" => Some(ASSET)
      case "ALBUMCONTEST" => Some(ALBUMCONTEST)
      case "THEMEDESCRIPTOR" => Some(THEMEDESCRIPTOR)
      case "OFFER" => Some(OFFER)
      case "OFFERLOCATION" => Some(OFFERLOCATION)
      case "EVENT" => Some(EVENT)
      case "RETAILER" => Some(RETAILER)
      case "RETAILERLOCATION" => Some(RETAILERLOCATION)
      case "NOTE" => Some(NOTE)
      case "CREATIVE" => Some(CREATIVE)
      case "FAVORITE" => Some(FAVORITE)
      case "LIKE" => Some(LIKE)
      case "RATING" => Some(RATING)
      case "ANALYTIC" => Some(ANALYTIC)
      case "THIRDPARTYCREDENTIAL" => Some(THIRDPARTYCREDENTIAL)
      case "THIRDPARTYNETWORK" => Some(THIRDPARTYNETWORK)
      case "REGION" => Some(REGION)
      case _ => None
    }

    def fromRatableType(x: RatableType): String = x match {
      case LOCATABLE => "LOCATABLE"
      case RESERVABLE => "RESERVABLE"
      case PERMISSIONABLE => "PERMISSIONABLE"
      case NOTABLE => "NOTABLE"
      case ASSETABLE => "ASSETABLE"
      case LIKABLE => "LIKABLE"
      case FLAGABLE => "FLAGABLE"
      case FAVORITABLE => "FAVORITABLE"
      case RATABLE => "RATABLE"
      case ALBUM => "ALBUM"
      case COLLECTION => "COLLECTION"
      case APPLICATION => "APPLICATION"
      case APPLICATIONSETTING => "APPLICATIONSETTING"
      case APPLICATIONCERT => "APPLICATIONCERT"
      case APPLICATIONPLACEMENT => "APPLICATIONPLACEMENT"
      case ACCOUNT => "ACCOUNT"
      case ACCOUNTSETTING => "ACCOUNTSETTING"
      case GAMELEVEL => "GAMELEVEL"
      case PACK => "PACK"
      case MISSION => "MISSION"
      case TOURNAMENT => "TOURNAMENT"
      case ASSET => "ASSET"
      case ALBUMCONTEST => "ALBUMCONTEST"
      case THEMEDESCRIPTOR => "THEMEDESCRIPTOR"
      case OFFER => "OFFER"
      case OFFERLOCATION => "OFFERLOCATION"
      case EVENT => "EVENT"
      case RETAILER => "RETAILER"
      case RETAILERLOCATION => "RETAILERLOCATION"
      case NOTE => "NOTE"
      case CREATIVE => "CREATIVE"
      case FAVORITE => "FAVORITE"
      case LIKE => "LIKE"
      case RATING => "RATING"
      case ANALYTIC => "ANALYTIC"
      case THIRDPARTYCREDENTIAL => "THIRDPARTYCREDENTIAL"
      case THIRDPARTYNETWORK => "THIRDPARTYNETWORK"
      case REGION => "REGION"
    }
  }

  implicit val RatableTypeEnumEncoder: EncodeJson[RatableType] =
    EncodeJson[RatableType](is => StringEncodeJson(RatableType.fromRatableType(is)))

  implicit val RatableTypeEnumDecoder: DecodeJson[RatableType] =
    DecodeJson.optionDecoder[RatableType](n => n.string.flatMap(jStr => RatableType.toRatableType(jStr)), "RatableType failed to de-serialize")

  implicit val RatingIndexResponseCodecJson: CodecJson[RatingIndexResponse] = CodecJson.derive[RatingIndexResponse]
  implicit val RatingIndexResponseDecoder: EntityDecoder[RatingIndexResponse] = jsonOf[RatingIndexResponse]
  implicit val RatingIndexResponseEncoder: EntityEncoder[RatingIndexResponse] = jsonEncoderOf[RatingIndexResponse]
}
