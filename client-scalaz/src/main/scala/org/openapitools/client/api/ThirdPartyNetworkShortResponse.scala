package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ThirdPartyNetworkShortResponse._

case class ThirdPartyNetworkShortResponse (
  updated: Option[Long],
created: Option[Long],
active: Option[Boolean],
name: Option[String],
description: Option[String],
networkUID: Option[String],
network: Option[Network])

object ThirdPartyNetworkShortResponse {
  import DateTimeCodecs._
  sealed trait Network
  case object FACEBOOK extends Network
  case object TWITTER extends Network
  case object CLEAR extends Network
  case object USERNAME extends Network
  case object PHONE extends Network
  case object UNKNOWN extends Network
  case object CUSTOM extends Network

  object Network {
    def toNetwork(s: String): Option[Network] = s match {
      case "FACEBOOK" => Some(FACEBOOK)
      case "TWITTER" => Some(TWITTER)
      case "CLEAR" => Some(CLEAR)
      case "USERNAME" => Some(USERNAME)
      case "PHONE" => Some(PHONE)
      case "UNKNOWN" => Some(UNKNOWN)
      case "CUSTOM" => Some(CUSTOM)
      case _ => None
    }

    def fromNetwork(x: Network): String = x match {
      case FACEBOOK => "FACEBOOK"
      case TWITTER => "TWITTER"
      case CLEAR => "CLEAR"
      case USERNAME => "USERNAME"
      case PHONE => "PHONE"
      case UNKNOWN => "UNKNOWN"
      case CUSTOM => "CUSTOM"
    }
  }

  implicit val NetworkEnumEncoder: EncodeJson[Network] =
    EncodeJson[Network](is => StringEncodeJson(Network.fromNetwork(is)))

  implicit val NetworkEnumDecoder: DecodeJson[Network] =
    DecodeJson.optionDecoder[Network](n => n.string.flatMap(jStr => Network.toNetwork(jStr)), "Network failed to de-serialize")

  implicit val ThirdPartyNetworkShortResponseCodecJson: CodecJson[ThirdPartyNetworkShortResponse] = CodecJson.derive[ThirdPartyNetworkShortResponse]
  implicit val ThirdPartyNetworkShortResponseDecoder: EntityDecoder[ThirdPartyNetworkShortResponse] = jsonOf[ThirdPartyNetworkShortResponse]
  implicit val ThirdPartyNetworkShortResponseEncoder: EntityEncoder[ThirdPartyNetworkShortResponse] = jsonEncoderOf[ThirdPartyNetworkShortResponse]
}
