package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import TrilatCacheSample._

case class TrilatCacheSample (
  avatarId: Option[String],
deviceId: Option[String],
rssi: Option[List[Integer]],
filteredRssi: Option[Double],
time: Option[Long],
networkName: Option[String],
randomizedId: Option[Boolean],
deviceSignature: Option[String],
alternateId: Option[String],
`type`: Option[String],
probeType: Option[ProbeType],
avgRssi: Option[Double])

object TrilatCacheSample {
  import DateTimeCodecs._
  sealed trait ProbeType
  case object WIFIPROBEREQUEST extends ProbeType
  case object IBEACON extends ProbeType
  case object BLE extends ProbeType
  case object UNKNOWN extends ProbeType

  object ProbeType {
    def toProbeType(s: String): Option[ProbeType] = s match {
      case "WIFIPROBEREQUEST" => Some(WIFIPROBEREQUEST)
      case "IBEACON" => Some(IBEACON)
      case "BLE" => Some(BLE)
      case "UNKNOWN" => Some(UNKNOWN)
      case _ => None
    }

    def fromProbeType(x: ProbeType): String = x match {
      case WIFIPROBEREQUEST => "WIFIPROBEREQUEST"
      case IBEACON => "IBEACON"
      case BLE => "BLE"
      case UNKNOWN => "UNKNOWN"
    }
  }

  implicit val ProbeTypeEnumEncoder: EncodeJson[ProbeType] =
    EncodeJson[ProbeType](is => StringEncodeJson(ProbeType.fromProbeType(is)))

  implicit val ProbeTypeEnumDecoder: DecodeJson[ProbeType] =
    DecodeJson.optionDecoder[ProbeType](n => n.string.flatMap(jStr => ProbeType.toProbeType(jStr)), "ProbeType failed to de-serialize")

  implicit val TrilatCacheSampleCodecJson: CodecJson[TrilatCacheSample] = CodecJson.derive[TrilatCacheSample]
  implicit val TrilatCacheSampleDecoder: EntityDecoder[TrilatCacheSample] = jsonOf[TrilatCacheSample]
  implicit val TrilatCacheSampleEncoder: EntityEncoder[TrilatCacheSample] = jsonEncoderOf[TrilatCacheSample]
}
