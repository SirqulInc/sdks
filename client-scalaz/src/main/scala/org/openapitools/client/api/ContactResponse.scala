package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ContactResponse._

case class ContactResponse (
  firstName: Option[String],
middleName: Option[String],
lastName: Option[String],
prefix: Option[String],
suffix: Option[String],
title: Option[String],
contactInfo: Option[ContactInfoResponse])

object ContactResponse {
  import DateTimeCodecs._

  implicit val ContactResponseCodecJson: CodecJson[ContactResponse] = CodecJson.derive[ContactResponse]
  implicit val ContactResponseDecoder: EntityDecoder[ContactResponse] = jsonOf[ContactResponse]
  implicit val ContactResponseEncoder: EntityEncoder[ContactResponse] = jsonEncoderOf[ContactResponse]
}
