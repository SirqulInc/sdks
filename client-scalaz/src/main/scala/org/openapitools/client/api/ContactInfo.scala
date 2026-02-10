package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ContactInfo._

case class ContactInfo (
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
web: Option[String])

object ContactInfo {
  import DateTimeCodecs._

  implicit val ContactInfoCodecJson: CodecJson[ContactInfo] = CodecJson.derive[ContactInfo]
  implicit val ContactInfoDecoder: EntityDecoder[ContactInfo] = jsonOf[ContactInfo]
  implicit val ContactInfoEncoder: EntityEncoder[ContactInfo] = jsonEncoderOf[ContactInfo]
}
