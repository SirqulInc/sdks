package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import StopResponse._

case class StopResponse (
  geoId: Option[String],
latitude: Option[Double],
longitude: Option[Double],
startWindow: Option[Long],
endWindow: Option[Long],
`type`: Option[`Type`],
eta: Option[Long],
etd: Option[Long],
score: Option[Long],
errorCode: Option[String],
error: Option[String],
itemId: Option[String],
itemSize: Option[Long],
load: Option[LoadShortResponse],
floorPlanPath: Option[List[NodeRequest]],
valid: Option[Boolean])

object StopResponse {
  import DateTimeCodecs._
  sealed trait `Type`
  case object PICKUP extends `Type`
  case object DROPOFF extends `Type`
  case object START extends `Type`
  case object END extends `Type`
  case object ROUTING extends `Type`

  object `Type` {
    def to`Type`(s: String): Option[`Type`] = s match {
      case "PICKUP" => Some(PICKUP)
      case "DROPOFF" => Some(DROPOFF)
      case "START" => Some(START)
      case "END" => Some(END)
      case "ROUTING" => Some(ROUTING)
      case _ => None
    }

    def from`Type`(x: `Type`): String = x match {
      case PICKUP => "PICKUP"
      case DROPOFF => "DROPOFF"
      case START => "START"
      case END => "END"
      case ROUTING => "ROUTING"
    }
  }

  implicit val `Type`EnumEncoder: EncodeJson[`Type`] =
    EncodeJson[`Type`](is => StringEncodeJson(`Type`.from`Type`(is)))

  implicit val `Type`EnumDecoder: DecodeJson[`Type`] =
    DecodeJson.optionDecoder[`Type`](n => n.string.flatMap(jStr => `Type`.to`Type`(jStr)), "`Type` failed to de-serialize")

  implicit val StopResponseCodecJson: CodecJson[StopResponse] = CodecJson.derive[StopResponse]
  implicit val StopResponseDecoder: EntityDecoder[StopResponse] = jsonOf[StopResponse]
  implicit val StopResponseEncoder: EntityEncoder[StopResponse] = jsonEncoderOf[StopResponse]
}
