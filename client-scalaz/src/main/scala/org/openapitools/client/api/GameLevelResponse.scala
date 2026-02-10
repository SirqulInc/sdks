package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import GameLevelResponse._

case class GameLevelResponse (
  action: Option[Action],
gameLevelId: Option[Long],
gameType: Option[String],
active: Option[Boolean],
name: Option[String],
description: Option[String],
difficulty: Option[String],
appVersion: Option[String],
likesCount: Option[Long],
dislikesCount: Option[Long],
commentsCount: Option[Long],
downloadCount: Option[Long],
comments: Option[List[NoteResponse]],
locked: Option[Boolean],
completed: Option[Boolean],
ticketsEarned: Option[Long],
gameObjects: Option[GameObjectListResponse],
hasLiked: Option[Boolean],
image: Option[AssetShortResponse],
gameData: Option[String],
gameDataSuffix: Option[String],
scores: Option[ScoreListResponse],
owner: Option[AccountShortResponse],
userPermissionsList: Option[UserPermissionsListResponse],
results: Option[List[NameStringValueResponse]],
randomizeGameObjects: Option[Boolean],
tickets: Option[TicketListResponse],
assignMission: Option[Boolean],
icon: Option[AssetShortResponse],
authorOverride: Option[String],
updatedDate: Option[Long],
startDate: Option[Long],
endDate: Option[Long],
splashTitle: Option[String],
splashMessage: Option[String],
hasFlagged: Option[Boolean],
allocateTickets: Option[Boolean],
ticketType: Option[String],
ticketCount: Option[Long],
points: Option[Long],
winnerMessage: Option[String],
tutorial: Option[TutorialResponse],
appKey: Option[String],
appName: Option[String],
scoringType: Option[ScoringType],
tutorialTitle: Option[String],
tutorialMessage: Option[String],
tutorialAlignment: Option[String],
tutorialImage: Option[AssetShortResponse],
nextLevelId: Option[Long],
offer: Option[OfferShortResponse])

object GameLevelResponse {
  import DateTimeCodecs._
  sealed trait Action
  case object DATA extends Action
  case object SAVE extends Action
  case object DELETE extends Action
  case object GET extends Action

  object Action {
    def toAction(s: String): Option[Action] = s match {
      case "DATA" => Some(DATA)
      case "SAVE" => Some(SAVE)
      case "DELETE" => Some(DELETE)
      case "GET" => Some(GET)
      case _ => None
    }

    def fromAction(x: Action): String = x match {
      case DATA => "DATA"
      case SAVE => "SAVE"
      case DELETE => "DELETE"
      case GET => "GET"
    }
  }

  implicit val ActionEnumEncoder: EncodeJson[Action] =
    EncodeJson[Action](is => StringEncodeJson(Action.fromAction(is)))

  implicit val ActionEnumDecoder: DecodeJson[Action] =
    DecodeJson.optionDecoder[Action](n => n.string.flatMap(jStr => Action.toAction(jStr)), "Action failed to de-serialize")
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

  implicit val GameLevelResponseCodecJson: CodecJson[GameLevelResponse] = CodecJson.derive[GameLevelResponse]
  implicit val GameLevelResponseDecoder: EntityDecoder[GameLevelResponse] = jsonOf[GameLevelResponse]
  implicit val GameLevelResponseEncoder: EntityEncoder[GameLevelResponse] = jsonEncoderOf[GameLevelResponse]
}
