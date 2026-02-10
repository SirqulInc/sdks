package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import NotificationTemplateResponse._

case class NotificationTemplateResponse (
  notificationTemplateId: Option[Long],
event: Option[String],
conduit: Option[Conduit],
title: Option[String],
body: Option[String],
publicBody: Option[String],
application: Option[ApplicationMiniResponse],
updated: Option[Long],
created: Option[Long],
tags: Option[String])

object NotificationTemplateResponse {
  import DateTimeCodecs._
  sealed trait Conduit
  case object HTTP extends Conduit
  case object SAVE extends Conduit
  case object EMAIL extends Conduit
  case object SMS extends Conduit
  case object APNS extends Conduit
  case object GCM extends Conduit
  case object PUSH extends Conduit
  case object MOBILENOTIFICATION extends Conduit

  object Conduit {
    def toConduit(s: String): Option[Conduit] = s match {
      case "HTTP" => Some(HTTP)
      case "SAVE" => Some(SAVE)
      case "EMAIL" => Some(EMAIL)
      case "SMS" => Some(SMS)
      case "APNS" => Some(APNS)
      case "GCM" => Some(GCM)
      case "PUSH" => Some(PUSH)
      case "MOBILENOTIFICATION" => Some(MOBILENOTIFICATION)
      case _ => None
    }

    def fromConduit(x: Conduit): String = x match {
      case HTTP => "HTTP"
      case SAVE => "SAVE"
      case EMAIL => "EMAIL"
      case SMS => "SMS"
      case APNS => "APNS"
      case GCM => "GCM"
      case PUSH => "PUSH"
      case MOBILENOTIFICATION => "MOBILENOTIFICATION"
    }
  }

  implicit val ConduitEnumEncoder: EncodeJson[Conduit] =
    EncodeJson[Conduit](is => StringEncodeJson(Conduit.fromConduit(is)))

  implicit val ConduitEnumDecoder: DecodeJson[Conduit] =
    DecodeJson.optionDecoder[Conduit](n => n.string.flatMap(jStr => Conduit.toConduit(jStr)), "Conduit failed to de-serialize")

  implicit val NotificationTemplateResponseCodecJson: CodecJson[NotificationTemplateResponse] = CodecJson.derive[NotificationTemplateResponse]
  implicit val NotificationTemplateResponseDecoder: EntityDecoder[NotificationTemplateResponse] = jsonOf[NotificationTemplateResponse]
  implicit val NotificationTemplateResponseEncoder: EntityEncoder[NotificationTemplateResponse] = jsonEncoderOf[NotificationTemplateResponse]
}
