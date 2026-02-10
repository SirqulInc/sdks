package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import UserSettingsResponse._

case class UserSettingsResponse (
  showAsZipcode: Option[Boolean],
showExactLocation: Option[Boolean],
showOthersExactLocation: Option[Boolean],
suggestionCount: Option[Integer],
suggestionTimeFrame: Option[Integer],
suggestionMethod: Option[String],
notifications: Option[NotificationSettingsResponse],
publicShowFriendInfo: Option[Boolean],
publicShowGameInfo: Option[Boolean],
publicShowProfileInfo: Option[Boolean],
favoriteVisibility: Option[FavoriteVisibility])

object UserSettingsResponse {
  import DateTimeCodecs._
  sealed trait FavoriteVisibility
  case object PUBLIC extends FavoriteVisibility
  case object `PRIVATE` extends FavoriteVisibility
  case object FRIENDS extends FavoriteVisibility

  object FavoriteVisibility {
    def toFavoriteVisibility(s: String): Option[FavoriteVisibility] = s match {
      case "PUBLIC" => Some(PUBLIC)
      case "`PRIVATE`" => Some(`PRIVATE`)
      case "FRIENDS" => Some(FRIENDS)
      case _ => None
    }

    def fromFavoriteVisibility(x: FavoriteVisibility): String = x match {
      case PUBLIC => "PUBLIC"
      case `PRIVATE` => "`PRIVATE`"
      case FRIENDS => "FRIENDS"
    }
  }

  implicit val FavoriteVisibilityEnumEncoder: EncodeJson[FavoriteVisibility] =
    EncodeJson[FavoriteVisibility](is => StringEncodeJson(FavoriteVisibility.fromFavoriteVisibility(is)))

  implicit val FavoriteVisibilityEnumDecoder: DecodeJson[FavoriteVisibility] =
    DecodeJson.optionDecoder[FavoriteVisibility](n => n.string.flatMap(jStr => FavoriteVisibility.toFavoriteVisibility(jStr)), "FavoriteVisibility failed to de-serialize")

  implicit val UserSettingsResponseCodecJson: CodecJson[UserSettingsResponse] = CodecJson.derive[UserSettingsResponse]
  implicit val UserSettingsResponseDecoder: EntityDecoder[UserSettingsResponse] = jsonOf[UserSettingsResponse]
  implicit val UserSettingsResponseEncoder: EntityEncoder[UserSettingsResponse] = jsonEncoderOf[UserSettingsResponse]
}
