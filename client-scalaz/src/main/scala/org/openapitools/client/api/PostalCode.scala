package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime

import java.time.OffsetDateTime

import PostalCode._

case class PostalCode (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
latitude: Option[Double],
longitude: Option[Double],
locationDescription: Option[String],
code: Option[String],
plus4: Option[String],
stateCode: Option[String],
city: Option[String],
timeZone: Option[String],
utcOffset: Option[Integer],
regions: Option[Set[Region]],
eliminated: Option[Boolean],
searchPoint: Option[Boolean],
lastOfferImport: Option[OffsetDateTime],
truncatedLatitude: Option[Double],
truncatedLongitude: Option[Double])

object PostalCode {
  import DateTimeCodecs._

  implicit val PostalCodeCodecJson: CodecJson[PostalCode] = CodecJson.derive[PostalCode]
  implicit val PostalCodeDecoder: EntityDecoder[PostalCode] = jsonOf[PostalCode]
  implicit val PostalCodeEncoder: EntityEncoder[PostalCode] = jsonEncoderOf[PostalCode]
}
