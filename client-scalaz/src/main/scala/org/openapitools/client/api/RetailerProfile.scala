package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RetailerProfile._

case class RetailerProfile (
  detailsHeader: Option[String],
detailsBody: Option[String],
detailsLineLeft1: Option[String],
detailsLineLeft2: Option[String],
detailsLineRight1: Option[String],
metaDescription: Option[String],
directions: Option[String],
hours: Option[String],
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
featured: Option[Boolean],
listed: Option[Boolean])

object RetailerProfile {
  import DateTimeCodecs._

  implicit val RetailerProfileCodecJson: CodecJson[RetailerProfile] = CodecJson.derive[RetailerProfile]
  implicit val RetailerProfileDecoder: EntityDecoder[RetailerProfile] = jsonOf[RetailerProfile]
  implicit val RetailerProfileEncoder: EntityEncoder[RetailerProfile] = jsonEncoderOf[RetailerProfile]
}
