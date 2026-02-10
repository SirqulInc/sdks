package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime

import java.time.OffsetDateTime

import Game._

case class Game (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
owner: Option[Account],
application: Option[Application],
title: Option[String],
description: Option[String],
startDate: Option[OffsetDateTime],
endDate: Option[OffsetDateTime],
packs: Option[List[Pack]],
sequenceType: Option[SequenceType],
authorOverride: Option[String],
icon: Option[Asset],
image: Option[Asset],
points: Option[Long],
ticketType: Option[String],
ticketCount: Option[Long],
allocateTickets: Option[Boolean],
allGameLevels: Option[List[GameLevel]],
contentName: Option[String],
`contentType`: Option[String])

object Game {
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

  implicit val GameCodecJson: CodecJson[Game] = CodecJson.derive[Game]
  implicit val GameDecoder: EntityDecoder[Game] = jsonOf[Game]
  implicit val GameEncoder: EntityEncoder[Game] = jsonEncoderOf[Game]
}
