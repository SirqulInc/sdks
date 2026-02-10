package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ContactInfoResponse._

case class ContactInfoResponse (
  homePhone: Option[String],
cellPhone: Option[String],
cellPhoneCarrier: Option[String],
businessPhone: Option[String],
businessPhoneExt: Option[String],
faxNumber: Option[String],
timeZone: Option[String],
utcOffset: Option[String],
code501c3: Option[String],
emailAddress: Option[String],
address: Option[AddressResponse],
web: Option[String],
cellCarrier: Option[CellCarrierResponse])

object ContactInfoResponse {
  import DateTimeCodecs._

  implicit val ContactInfoResponseCodecJson: CodecJson[ContactInfoResponse] = CodecJson.derive[ContactInfoResponse]
  implicit val ContactInfoResponseDecoder: EntityDecoder[ContactInfoResponse] = jsonOf[ContactInfoResponse]
  implicit val ContactInfoResponseEncoder: EntityEncoder[ContactInfoResponse] = jsonEncoderOf[ContactInfoResponse]
}
