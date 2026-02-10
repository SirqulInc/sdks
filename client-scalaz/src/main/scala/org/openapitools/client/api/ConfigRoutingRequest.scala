package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ConfigRoutingRequest._

case class ConfigRoutingRequest (
  debugMode: Option[Boolean],
threaded: Option[Boolean],
threadType: Option[String],
maxRuntime: Option[Long],
numberOfMatches: Option[Integer],
maxItineraryTime: Option[Integer],
maxStopsPerVehicle: Option[Integer],
averageCityTimePerMile: Option[Integer],
averageFreewayTimePerMile: Option[Integer],
freewayTravelDistance: Option[Float],
sameStopBuffer: Option[Double],
orderAlgorithm: Option[OrderAlgorithm],
scoreAlgorithm: Option[ScoreAlgorithm])

object ConfigRoutingRequest {
  import DateTimeCodecs._
  sealed trait OrderAlgorithm
  case object CLOSESTFIRST extends OrderAlgorithm
  case object FURTHESTFIRST extends OrderAlgorithm
  case object PICKUPSFIRST extends OrderAlgorithm

  object OrderAlgorithm {
    def toOrderAlgorithm(s: String): Option[OrderAlgorithm] = s match {
      case "CLOSESTFIRST" => Some(CLOSESTFIRST)
      case "FURTHESTFIRST" => Some(FURTHESTFIRST)
      case "PICKUPSFIRST" => Some(PICKUPSFIRST)
      case _ => None
    }

    def fromOrderAlgorithm(x: OrderAlgorithm): String = x match {
      case CLOSESTFIRST => "CLOSESTFIRST"
      case FURTHESTFIRST => "FURTHESTFIRST"
      case PICKUPSFIRST => "PICKUPSFIRST"
    }
  }

  implicit val OrderAlgorithmEnumEncoder: EncodeJson[OrderAlgorithm] =
    EncodeJson[OrderAlgorithm](is => StringEncodeJson(OrderAlgorithm.fromOrderAlgorithm(is)))

  implicit val OrderAlgorithmEnumDecoder: DecodeJson[OrderAlgorithm] =
    DecodeJson.optionDecoder[OrderAlgorithm](n => n.string.flatMap(jStr => OrderAlgorithm.toOrderAlgorithm(jStr)), "OrderAlgorithm failed to de-serialize")
  sealed trait ScoreAlgorithm
  case object FEWESTVEHICLES extends ScoreAlgorithm
  case object SHORTESTPASSENGERTIME extends ScoreAlgorithm

  object ScoreAlgorithm {
    def toScoreAlgorithm(s: String): Option[ScoreAlgorithm] = s match {
      case "FEWESTVEHICLES" => Some(FEWESTVEHICLES)
      case "SHORTESTPASSENGERTIME" => Some(SHORTESTPASSENGERTIME)
      case _ => None
    }

    def fromScoreAlgorithm(x: ScoreAlgorithm): String = x match {
      case FEWESTVEHICLES => "FEWESTVEHICLES"
      case SHORTESTPASSENGERTIME => "SHORTESTPASSENGERTIME"
    }
  }

  implicit val ScoreAlgorithmEnumEncoder: EncodeJson[ScoreAlgorithm] =
    EncodeJson[ScoreAlgorithm](is => StringEncodeJson(ScoreAlgorithm.fromScoreAlgorithm(is)))

  implicit val ScoreAlgorithmEnumDecoder: DecodeJson[ScoreAlgorithm] =
    DecodeJson.optionDecoder[ScoreAlgorithm](n => n.string.flatMap(jStr => ScoreAlgorithm.toScoreAlgorithm(jStr)), "ScoreAlgorithm failed to de-serialize")

  implicit val ConfigRoutingRequestCodecJson: CodecJson[ConfigRoutingRequest] = CodecJson.derive[ConfigRoutingRequest]
  implicit val ConfigRoutingRequestDecoder: EntityDecoder[ConfigRoutingRequest] = jsonOf[ConfigRoutingRequest]
  implicit val ConfigRoutingRequestEncoder: EntityEncoder[ConfigRoutingRequest] = jsonEncoderOf[ConfigRoutingRequest]
}
