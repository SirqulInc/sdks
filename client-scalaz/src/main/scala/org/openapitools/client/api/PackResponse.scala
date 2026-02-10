package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import PackResponse._

case class PackResponse (
  action: Option[Action],
highestAppVersion: Option[String],
gameType: Option[String],
packId: Option[Long],
name: Option[String],
description: Option[String],
active: Option[Boolean],
downloaded: Option[Boolean],
completed: Option[Boolean],
icon: Option[AssetShortResponse],
background: Option[AssetShortResponse],
ticketsEarned: Option[Long],
levels: Option[GameLevelListResponse],
sequenceType: Option[String],
scores: Option[ScoreListResponse],
owner: Option[AccountShortResponse],
costToRedeem: Option[Long],
price: Option[Long],
priceType: Option[String],
userPermissionsList: Option[UserPermissionsListResponse],
results: Option[List[NameStringValueResponse]],
tickets: Option[TicketListResponse],
authorOverride: Option[String],
updatedDate: Option[Long],
startDate: Option[Long],
endDate: Option[Long],
packType: Option[PackType],
packOrder: Option[Long],
appKey: Option[String],
application: Option[ApplicationShortResponse],
inGame: Option[Boolean],
highest: Option[Boolean],
allocateTickets: Option[Boolean],
ticketType: Option[String],
ticketCount: Option[Long],
points: Option[Long])

object PackResponse {
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
  sealed trait PackType
  case object TUTORIAL extends PackType
  case object BUILTIN extends PackType
  case object DOWNLOAD extends PackType
  case object THRESHOLD extends PackType
  case object THEME extends PackType
  case object TOURNAMENT extends PackType

  object PackType {
    def toPackType(s: String): Option[PackType] = s match {
      case "TUTORIAL" => Some(TUTORIAL)
      case "BUILTIN" => Some(BUILTIN)
      case "DOWNLOAD" => Some(DOWNLOAD)
      case "THRESHOLD" => Some(THRESHOLD)
      case "THEME" => Some(THEME)
      case "TOURNAMENT" => Some(TOURNAMENT)
      case _ => None
    }

    def fromPackType(x: PackType): String = x match {
      case TUTORIAL => "TUTORIAL"
      case BUILTIN => "BUILTIN"
      case DOWNLOAD => "DOWNLOAD"
      case THRESHOLD => "THRESHOLD"
      case THEME => "THEME"
      case TOURNAMENT => "TOURNAMENT"
    }
  }

  implicit val PackTypeEnumEncoder: EncodeJson[PackType] =
    EncodeJson[PackType](is => StringEncodeJson(PackType.fromPackType(is)))

  implicit val PackTypeEnumDecoder: DecodeJson[PackType] =
    DecodeJson.optionDecoder[PackType](n => n.string.flatMap(jStr => PackType.toPackType(jStr)), "PackType failed to de-serialize")

  implicit val PackResponseCodecJson: CodecJson[PackResponse] = CodecJson.derive[PackResponse]
  implicit val PackResponseDecoder: EntityDecoder[PackResponse] = jsonOf[PackResponse]
  implicit val PackResponseEncoder: EntityEncoder[PackResponse] = jsonEncoderOf[PackResponse]
}
