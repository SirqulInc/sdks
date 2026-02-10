package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import Contact._

case class Contact (
  firstName: Option[String],
middleName: Option[String],
lastName: Option[String],
prefix: Option[String],
suffix: Option[String],
title: Option[String],
homePhone: Option[String],
cellPhone: Option[String],
cellCarrier: Option[CellCarrier],
businessPhone: Option[String],
businessPhoneExt: Option[String],
faxNumber: Option[String],
timeZone: Option[String],
utcOffset: Option[String],
code501c3: Option[String],
emailAddress: Option[String],
address: Option[Address],
web: Option[String],
display: Option[String])

object Contact {
  import DateTimeCodecs._

  implicit val ContactCodecJson: CodecJson[Contact] = CodecJson.derive[Contact]
  implicit val ContactDecoder: EntityDecoder[Contact] = jsonOf[Contact]
  implicit val ContactEncoder: EntityEncoder[Contact] = jsonEncoderOf[Contact]
}
