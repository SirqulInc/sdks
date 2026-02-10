package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import Tutorial._

case class Tutorial (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
name: Option[String],
description: Option[String],
alignment: Option[Alignment],
image: Option[Asset],
orderIndex: Option[Long],
tutorialObjectType: Option[TutorialObjectType])

object Tutorial {
  import DateTimeCodecs._
  sealed trait Alignment
  case object NONE extends Alignment
  case object IMAGEABOVE extends Alignment
  case object IMAGEBELOW extends Alignment
  case object IMAGELEFT extends Alignment
  case object IMAGERIGHT extends Alignment
  case object IMAGEONLY extends Alignment
  case object TEXTONLY extends Alignment

  object Alignment {
    def toAlignment(s: String): Option[Alignment] = s match {
      case "NONE" => Some(NONE)
      case "IMAGEABOVE" => Some(IMAGEABOVE)
      case "IMAGEBELOW" => Some(IMAGEBELOW)
      case "IMAGELEFT" => Some(IMAGELEFT)
      case "IMAGERIGHT" => Some(IMAGERIGHT)
      case "IMAGEONLY" => Some(IMAGEONLY)
      case "TEXTONLY" => Some(TEXTONLY)
      case _ => None
    }

    def fromAlignment(x: Alignment): String = x match {
      case NONE => "NONE"
      case IMAGEABOVE => "IMAGEABOVE"
      case IMAGEBELOW => "IMAGEBELOW"
      case IMAGELEFT => "IMAGELEFT"
      case IMAGERIGHT => "IMAGERIGHT"
      case IMAGEONLY => "IMAGEONLY"
      case TEXTONLY => "TEXTONLY"
    }
  }

  implicit val AlignmentEnumEncoder: EncodeJson[Alignment] =
    EncodeJson[Alignment](is => StringEncodeJson(Alignment.fromAlignment(is)))

  implicit val AlignmentEnumDecoder: DecodeJson[Alignment] =
    DecodeJson.optionDecoder[Alignment](n => n.string.flatMap(jStr => Alignment.toAlignment(jStr)), "Alignment failed to de-serialize")
  sealed trait TutorialObjectType
  case object GAMEOBJECT extends TutorialObjectType
  case object GAMELEVEL extends TutorialObjectType
  case object PACK extends TutorialObjectType
  case object GAME extends TutorialObjectType
  case object MISSION extends TutorialObjectType
  case object PROFILE extends TutorialObjectType
  case object APPLICATION extends TutorialObjectType
  case object TICKETS extends TutorialObjectType
  case object ASSET extends TutorialObjectType
  case object CUSTOM extends TutorialObjectType

  object TutorialObjectType {
    def toTutorialObjectType(s: String): Option[TutorialObjectType] = s match {
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

    def fromTutorialObjectType(x: TutorialObjectType): String = x match {
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

  implicit val TutorialObjectTypeEnumEncoder: EncodeJson[TutorialObjectType] =
    EncodeJson[TutorialObjectType](is => StringEncodeJson(TutorialObjectType.fromTutorialObjectType(is)))

  implicit val TutorialObjectTypeEnumDecoder: DecodeJson[TutorialObjectType] =
    DecodeJson.optionDecoder[TutorialObjectType](n => n.string.flatMap(jStr => TutorialObjectType.toTutorialObjectType(jStr)), "TutorialObjectType failed to de-serialize")

  implicit val TutorialCodecJson: CodecJson[Tutorial] = CodecJson.derive[Tutorial]
  implicit val TutorialDecoder: EntityDecoder[Tutorial] = jsonOf[Tutorial]
  implicit val TutorialEncoder: EntityEncoder[Tutorial] = jsonEncoderOf[Tutorial]
}
