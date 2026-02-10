package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import AddressResponse._

case class AddressResponse (
  streetAddress: Option[String],
streetAddress2: Option[String],
city: Option[String],
stateCode: Option[String],
state: Option[String],
postalCode: Option[String],
countryCode: Option[String],
country: Option[String],
display: Option[String])

object AddressResponse {
  import DateTimeCodecs._

  implicit val AddressResponseCodecJson: CodecJson[AddressResponse] = CodecJson.derive[AddressResponse]
  implicit val AddressResponseDecoder: EntityDecoder[AddressResponse] = jsonOf[AddressResponse]
  implicit val AddressResponseEncoder: EntityEncoder[AddressResponse] = jsonEncoderOf[AddressResponse]
}
