package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import FingerprintBiometricImage._

case class FingerprintBiometricImage (
  position: Option[Position],
data: Option[String],
imageFormat: Option[String])

object FingerprintBiometricImage {
  import DateTimeCodecs._
  sealed trait Position
  case object UNKNOWN extends Position
  case object LEFTINDEX extends Position
  case object LEFTMIDDLE extends Position
  case object LEFTRING extends Position
  case object LEFTLITTLE extends Position
  case object LEFTTHUMB extends Position
  case object RIGHTINDEX extends Position
  case object RIGHTMIDDLE extends Position
  case object RIGHTRING extends Position
  case object RIGHTLITTLE extends Position
  case object RIGHTTHUMB extends Position
  case object LEFT extends Position
  case object RIGHT extends Position

  object Position {
    def toPosition(s: String): Option[Position] = s match {
      case "UNKNOWN" => Some(UNKNOWN)
      case "LEFTINDEX" => Some(LEFTINDEX)
      case "LEFTMIDDLE" => Some(LEFTMIDDLE)
      case "LEFTRING" => Some(LEFTRING)
      case "LEFTLITTLE" => Some(LEFTLITTLE)
      case "LEFTTHUMB" => Some(LEFTTHUMB)
      case "RIGHTINDEX" => Some(RIGHTINDEX)
      case "RIGHTMIDDLE" => Some(RIGHTMIDDLE)
      case "RIGHTRING" => Some(RIGHTRING)
      case "RIGHTLITTLE" => Some(RIGHTLITTLE)
      case "RIGHTTHUMB" => Some(RIGHTTHUMB)
      case "LEFT" => Some(LEFT)
      case "RIGHT" => Some(RIGHT)
      case _ => None
    }

    def fromPosition(x: Position): String = x match {
      case UNKNOWN => "UNKNOWN"
      case LEFTINDEX => "LEFTINDEX"
      case LEFTMIDDLE => "LEFTMIDDLE"
      case LEFTRING => "LEFTRING"
      case LEFTLITTLE => "LEFTLITTLE"
      case LEFTTHUMB => "LEFTTHUMB"
      case RIGHTINDEX => "RIGHTINDEX"
      case RIGHTMIDDLE => "RIGHTMIDDLE"
      case RIGHTRING => "RIGHTRING"
      case RIGHTLITTLE => "RIGHTLITTLE"
      case RIGHTTHUMB => "RIGHTTHUMB"
      case LEFT => "LEFT"
      case RIGHT => "RIGHT"
    }
  }

  implicit val PositionEnumEncoder: EncodeJson[Position] =
    EncodeJson[Position](is => StringEncodeJson(Position.fromPosition(is)))

  implicit val PositionEnumDecoder: DecodeJson[Position] =
    DecodeJson.optionDecoder[Position](n => n.string.flatMap(jStr => Position.toPosition(jStr)), "Position failed to de-serialize")

  implicit val FingerprintBiometricImageCodecJson: CodecJson[FingerprintBiometricImage] = CodecJson.derive[FingerprintBiometricImage]
  implicit val FingerprintBiometricImageDecoder: EntityDecoder[FingerprintBiometricImage] = jsonOf[FingerprintBiometricImage]
  implicit val FingerprintBiometricImageEncoder: EntityEncoder[FingerprintBiometricImage] = jsonEncoderOf[FingerprintBiometricImage]
}
