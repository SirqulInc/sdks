package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import TicketResponse._

case class TicketResponse (
  action: Option[Action],
id: Option[Long],
accountId: Option[Long],
objectId: Option[Long],
`type`: Option[`Type`],
actionType: Option[ActionType],
used: Option[Long],
count: Option[Long],
purchaseItem: Option[PurchaseItemShortResponse],
customMessage: Option[String],
sender: Option[AccountShortResponse],
receiver: Option[List[AccountShortResponse]],
customAsset: Option[AssetShortResponse],
receiptToken: Option[String],
ticketType: Option[String],
application: Option[ApplicationShortResponse])

object TicketResponse {
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
  sealed trait `Type`
  case object GAMEOBJECT extends `Type`
  case object GAMELEVEL extends `Type`
  case object PACK extends `Type`
  case object GAME extends `Type`
  case object MISSION extends `Type`
  case object PROFILE extends `Type`
  case object APPLICATION extends `Type`
  case object TICKETS extends `Type`
  case object ASSET extends `Type`
  case object CUSTOM extends `Type`

  object `Type` {
    def to`Type`(s: String): Option[`Type`] = s match {
      case "GAMEOBJECT" => Some(GAMEOBJECT)
      case "GAMELEVEL" => Some(GAMELEVEL)
      case "PACK" => Some(PACK)
      case "GAME" => Some(GAME)
      case "MISSION" => Some(MISSION)
      case "PROFILE" => Some(PROFILE)
      case "APPLICATION" => Some(APPLICATION)
      case "TICKETS" => Some(TICKETS)
      case "ASSET" => Some(ASSET)
      case "CUSTOM" => Some(CUSTOM)
      case _ => None
    }

    def from`Type`(x: `Type`): String = x match {
      case GAMEOBJECT => "GAMEOBJECT"
      case GAMELEVEL => "GAMELEVEL"
      case PACK => "PACK"
      case GAME => "GAME"
      case MISSION => "MISSION"
      case PROFILE => "PROFILE"
      case APPLICATION => "APPLICATION"
      case TICKETS => "TICKETS"
      case ASSET => "ASSET"
      case CUSTOM => "CUSTOM"
    }
  }

  implicit val `Type`EnumEncoder: EncodeJson[`Type`] =
    EncodeJson[`Type`](is => StringEncodeJson(`Type`.from`Type`(is)))

  implicit val `Type`EnumDecoder: DecodeJson[`Type`] =
    DecodeJson.optionDecoder[`Type`](n => n.string.flatMap(jStr => `Type`.to`Type`(jStr)), "`Type` failed to de-serialize")
  sealed trait ActionType
  case object COMPLETED extends ActionType
  case object REDEEMED extends ActionType
  case object USERSPLAYED extends ActionType
  case object TOURNAMENTOWNER extends ActionType
  case object PURCHASED extends ActionType
  case object SUMATION extends ActionType
  case object GIFTED extends ActionType
  case object REFUNDED extends ActionType

  object ActionType {
    def toActionType(s: String): Option[ActionType] = s match {
      case "COMPLETED" => Some(COMPLETED)
      case "REDEEMED" => Some(REDEEMED)
      case "USERSPLAYED" => Some(USERSPLAYED)
      case "TOURNAMENTOWNER" => Some(TOURNAMENTOWNER)
      case "PURCHASED" => Some(PURCHASED)
      case "SUMATION" => Some(SUMATION)
      case "GIFTED" => Some(GIFTED)
      case "REFUNDED" => Some(REFUNDED)
      case _ => None
    }

    def fromActionType(x: ActionType): String = x match {
      case COMPLETED => "COMPLETED"
      case REDEEMED => "REDEEMED"
      case USERSPLAYED => "USERSPLAYED"
      case TOURNAMENTOWNER => "TOURNAMENTOWNER"
      case PURCHASED => "PURCHASED"
      case SUMATION => "SUMATION"
      case GIFTED => "GIFTED"
      case REFUNDED => "REFUNDED"
    }
  }

  implicit val ActionTypeEnumEncoder: EncodeJson[ActionType] =
    EncodeJson[ActionType](is => StringEncodeJson(ActionType.fromActionType(is)))

  implicit val ActionTypeEnumDecoder: DecodeJson[ActionType] =
    DecodeJson.optionDecoder[ActionType](n => n.string.flatMap(jStr => ActionType.toActionType(jStr)), "ActionType failed to de-serialize")

  implicit val TicketResponseCodecJson: CodecJson[TicketResponse] = CodecJson.derive[TicketResponse]
  implicit val TicketResponseDecoder: EntityDecoder[TicketResponse] = jsonOf[TicketResponse]
  implicit val TicketResponseEncoder: EntityEncoder[TicketResponse] = jsonEncoderOf[TicketResponse]
}
