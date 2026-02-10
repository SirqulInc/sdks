package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import PostalCodeResponse._

case class PostalCodeResponse (
  city: Option[String],
stateCode: Option[String],
code: Option[String],
latitude: Option[Double],
longitude: Option[Double],
timezone: Option[String],
utcOffset: Option[Integer])

object PostalCodeResponse {
  import DateTimeCodecs._

  implicit val PostalCodeResponseCodecJson: CodecJson[PostalCodeResponse] = CodecJson.derive[PostalCodeResponse]
  implicit val PostalCodeResponseDecoder: EntityDecoder[PostalCodeResponse] = jsonOf[PostalCodeResponse]
  implicit val PostalCodeResponseEncoder: EntityEncoder[PostalCodeResponse] = jsonEncoderOf[PostalCodeResponse]
}
