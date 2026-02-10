package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import AppInfoResponse._

case class AppInfoResponse (
  points: Option[Long],
ticketsAvailable: Option[Long],
ticketsEarned: Option[Long],
ticketsPurchased: Option[Long],
ticketsUsed: Option[Long],
rank: Option[String],
maxPoints: Option[Long],
maxTickets: Option[Long],
pointToTicketModifier: Option[Float],
scoringType: Option[ScoringType],
purchaseItemListResponse: Option[PurchaseItemListResponse],
termsAcceptedDate: Option[Long],
requiresTermsAcceptance: Option[Boolean],
completedAchievements: Option[List[AchievementProgressResponse]],
wipAchievements: Option[List[AchievementProgressResponse]],
appBlob: Option[String],
enablePush: Option[Boolean],
enableSMS: Option[Boolean],
enableEmail: Option[Boolean],
ticketCounts: Option[List[TicketCountResponse]])

object AppInfoResponse {
  import DateTimeCodecs._
  sealed trait ScoringType
  case object GAMELEVEL extends ScoringType
  case object GAMEOBJECT extends ScoringType

  object ScoringType {
    def toScoringType(s: String): Option[ScoringType] = s match {
      case "GAMELEVEL" => Some(GAMELEVEL)
      case "GAMEOBJECT" => Some(GAMEOBJECT)
      case _ => None
    }

    def fromScoringType(x: ScoringType): String = x match {
      case GAMELEVEL => "GAMELEVEL"
      case GAMEOBJECT => "GAMEOBJECT"
    }
  }

  implicit val ScoringTypeEnumEncoder: EncodeJson[ScoringType] =
    EncodeJson[ScoringType](is => StringEncodeJson(ScoringType.fromScoringType(is)))

  implicit val ScoringTypeEnumDecoder: DecodeJson[ScoringType] =
    DecodeJson.optionDecoder[ScoringType](n => n.string.flatMap(jStr => ScoringType.toScoringType(jStr)), "ScoringType failed to de-serialize")

  implicit val AppInfoResponseCodecJson: CodecJson[AppInfoResponse] = CodecJson.derive[AppInfoResponse]
  implicit val AppInfoResponseDecoder: EntityDecoder[AppInfoResponse] = jsonOf[AppInfoResponse]
  implicit val AppInfoResponseEncoder: EntityEncoder[AppInfoResponse] = jsonEncoderOf[AppInfoResponse]
}
