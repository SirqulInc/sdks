package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime

import java.time.OffsetDateTime

import Pack._

case class Pack (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
newOwnerId: Option[Long],
owner: Option[Account],
application: Option[Application],
sequenceType: Option[SequenceType],
title: Option[String],
description: Option[String],
startDate: Option[OffsetDateTime],
endDate: Option[OffsetDateTime],
packType: Option[PackType],
image: Option[Asset],
background: Option[Asset],
imageURL: Option[String],
gameLevels: Option[List[GameLevel]],
hasMoreItems: Option[Boolean],
totalCount: Option[Long],
downloaded: Option[Boolean],
authorOverride: Option[String],
packOrder: Option[Long],
inGame: Option[Boolean],
highest: Option[Boolean],
notificationCount: Option[Integer],
points: Option[Long],
ticketType: Option[String],
ticketCount: Option[Long],
priceType: Option[String],
price: Option[Integer],
allocateTickets: Option[Boolean],
applicationTitle: Option[String],
levelNumberMap: Option[Map[String, GameLevel]])

object Pack {
  import DateTimeCodecs._
  sealed trait SequenceType
  case object FIRSTAVAILABLE extends SequenceType
  case object ALLAVAILABLE extends SequenceType

  object SequenceType {
    def toSequenceType(s: String): Option[SequenceType] = s match {
      case "FIRSTAVAILABLE" => Some(FIRSTAVAILABLE)
      case "ALLAVAILABLE" => Some(ALLAVAILABLE)
      case _ => None
    }

    def fromSequenceType(x: SequenceType): String = x match {
      case FIRSTAVAILABLE => "FIRSTAVAILABLE"
      case ALLAVAILABLE => "ALLAVAILABLE"
    }
  }

  implicit val SequenceTypeEnumEncoder: EncodeJson[SequenceType] =
    EncodeJson[SequenceType](is => StringEncodeJson(SequenceType.fromSequenceType(is)))

  implicit val SequenceTypeEnumDecoder: DecodeJson[SequenceType] =
    DecodeJson.optionDecoder[SequenceType](n => n.string.flatMap(jStr => SequenceType.toSequenceType(jStr)), "SequenceType failed to de-serialize")
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

  implicit val PackCodecJson: CodecJson[Pack] = CodecJson.derive[Pack]
  implicit val PackDecoder: EntityDecoder[Pack] = jsonOf[Pack]
  implicit val PackEncoder: EntityEncoder[Pack] = jsonEncoderOf[Pack]
}
