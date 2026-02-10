package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ThirdPartyNetwork._

case class ThirdPartyNetwork (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
networkUID: Option[String],
name: Option[String],
description: Option[String],
introspectionMethod: Option[IntrospectionMethod],
introspectionURL: Option[String],
introspectionParams: Option[String],
requiredRootField: Option[String],
billableEntity: Option[BillableEntity],
supportedNetwork: Option[SupportedNetwork],
enableIntrospection: Option[Boolean])

object ThirdPartyNetwork {
  import DateTimeCodecs._
  sealed trait IntrospectionMethod
  case object GET extends IntrospectionMethod
  case object HEAD extends IntrospectionMethod
  case object POST extends IntrospectionMethod
  case object PUT extends IntrospectionMethod
  case object PATCH extends IntrospectionMethod
  case object DELETE extends IntrospectionMethod
  case object OPTIONS extends IntrospectionMethod
  case object TRACE extends IntrospectionMethod

  object IntrospectionMethod {
    def toIntrospectionMethod(s: String): Option[IntrospectionMethod] = s match {
      case "GET" => Some(GET)
      case "HEAD" => Some(HEAD)
      case "POST" => Some(POST)
      case "PUT" => Some(PUT)
      case "PATCH" => Some(PATCH)
      case "DELETE" => Some(DELETE)
      case "OPTIONS" => Some(OPTIONS)
      case "TRACE" => Some(TRACE)
      case _ => None
    }

    def fromIntrospectionMethod(x: IntrospectionMethod): String = x match {
      case GET => "GET"
      case HEAD => "HEAD"
      case POST => "POST"
      case PUT => "PUT"
      case PATCH => "PATCH"
      case DELETE => "DELETE"
      case OPTIONS => "OPTIONS"
      case TRACE => "TRACE"
    }
  }

  implicit val IntrospectionMethodEnumEncoder: EncodeJson[IntrospectionMethod] =
    EncodeJson[IntrospectionMethod](is => StringEncodeJson(IntrospectionMethod.fromIntrospectionMethod(is)))

  implicit val IntrospectionMethodEnumDecoder: DecodeJson[IntrospectionMethod] =
    DecodeJson.optionDecoder[IntrospectionMethod](n => n.string.flatMap(jStr => IntrospectionMethod.toIntrospectionMethod(jStr)), "IntrospectionMethod failed to de-serialize")
  sealed trait SupportedNetwork
  case object FACEBOOK extends SupportedNetwork
  case object TWITTER extends SupportedNetwork
  case object CLEAR extends SupportedNetwork
  case object USERNAME extends SupportedNetwork
  case object PHONE extends SupportedNetwork
  case object UNKNOWN extends SupportedNetwork
  case object CUSTOM extends SupportedNetwork

  object SupportedNetwork {
    def toSupportedNetwork(s: String): Option[SupportedNetwork] = s match {
      case "FACEBOOK" => Some(FACEBOOK)
      case "TWITTER" => Some(TWITTER)
      case "CLEAR" => Some(CLEAR)
      case "USERNAME" => Some(USERNAME)
      case "PHONE" => Some(PHONE)
      case "UNKNOWN" => Some(UNKNOWN)
      case "CUSTOM" => Some(CUSTOM)
      case _ => None
    }

    def fromSupportedNetwork(x: SupportedNetwork): String = x match {
      case FACEBOOK => "FACEBOOK"
      case TWITTER => "TWITTER"
      case CLEAR => "CLEAR"
      case USERNAME => "USERNAME"
      case PHONE => "PHONE"
      case UNKNOWN => "UNKNOWN"
      case CUSTOM => "CUSTOM"
    }
  }

  implicit val SupportedNetworkEnumEncoder: EncodeJson[SupportedNetwork] =
    EncodeJson[SupportedNetwork](is => StringEncodeJson(SupportedNetwork.fromSupportedNetwork(is)))

  implicit val SupportedNetworkEnumDecoder: DecodeJson[SupportedNetwork] =
    DecodeJson.optionDecoder[SupportedNetwork](n => n.string.flatMap(jStr => SupportedNetwork.toSupportedNetwork(jStr)), "SupportedNetwork failed to de-serialize")

  implicit val ThirdPartyNetworkCodecJson: CodecJson[ThirdPartyNetwork] = CodecJson.derive[ThirdPartyNetwork]
  implicit val ThirdPartyNetworkDecoder: EntityDecoder[ThirdPartyNetwork] = jsonOf[ThirdPartyNetwork]
  implicit val ThirdPartyNetworkEncoder: EntityEncoder[ThirdPartyNetwork] = jsonEncoderOf[ThirdPartyNetwork]
}
