package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import TrilatAppSettings._

case class TrilatAppSettings (
  processingType: Option[ProcessingType],
maxSampleSize: Option[Integer],
minRSSI: Option[Double])

object TrilatAppSettings {
  import DateTimeCodecs._
  sealed trait ProcessingType
  case object DEFAULT extends ProcessingType
  case object FINGERPRINT extends ProcessingType
  case object FINGERPRINTV2 extends ProcessingType

  object ProcessingType {
    def toProcessingType(s: String): Option[ProcessingType] = s match {
      case "DEFAULT" => Some(DEFAULT)
      case "FINGERPRINT" => Some(FINGERPRINT)
      case "FINGERPRINTV2" => Some(FINGERPRINTV2)
      case _ => None
    }

    def fromProcessingType(x: ProcessingType): String = x match {
      case DEFAULT => "DEFAULT"
      case FINGERPRINT => "FINGERPRINT"
      case FINGERPRINTV2 => "FINGERPRINTV2"
    }
  }

  implicit val ProcessingTypeEnumEncoder: EncodeJson[ProcessingType] =
    EncodeJson[ProcessingType](is => StringEncodeJson(ProcessingType.fromProcessingType(is)))

  implicit val ProcessingTypeEnumDecoder: DecodeJson[ProcessingType] =
    DecodeJson.optionDecoder[ProcessingType](n => n.string.flatMap(jStr => ProcessingType.toProcessingType(jStr)), "ProcessingType failed to de-serialize")

  implicit val TrilatAppSettingsCodecJson: CodecJson[TrilatAppSettings] = CodecJson.derive[TrilatAppSettings]
  implicit val TrilatAppSettingsDecoder: EntityDecoder[TrilatAppSettings] = jsonOf[TrilatAppSettings]
  implicit val TrilatAppSettingsEncoder: EntityEncoder[TrilatAppSettings] = jsonEncoderOf[TrilatAppSettings]
}
