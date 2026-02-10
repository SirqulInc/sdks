package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import Address._

case class Address (
  streetAddress: Option[String],
streetAddress2: Option[String],
city: Option[String],
stateCode: Option[String],
state: Option[String],
postalCode: Option[String],
countryCode: Option[String],
country: Option[String],
display: Option[String])

object Address {
  import DateTimeCodecs._

  implicit val AddressCodecJson: CodecJson[Address] = CodecJson.derive[Address]
  implicit val AddressDecoder: EntityDecoder[Address] = jsonOf[Address]
  implicit val AddressEncoder: EntityEncoder[Address] = jsonEncoderOf[Address]
}
