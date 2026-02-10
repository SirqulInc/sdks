package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CoordsResponse._

case class CoordsResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
latitude: Option[Double],
longitude: Option[Double],
country: Option[String],
countryCode: Option[String],
region: Option[String],
city: Option[String],
postalCode: Option[String],
regionCode: Option[String],
returning: Option[String])

object CoordsResponse {
  import DateTimeCodecs._

  implicit val CoordsResponseCodecJson: CodecJson[CoordsResponse] = CodecJson.derive[CoordsResponse]
  implicit val CoordsResponseDecoder: EntityDecoder[CoordsResponse] = jsonOf[CoordsResponse]
  implicit val CoordsResponseEncoder: EntityEncoder[CoordsResponse] = jsonEncoderOf[CoordsResponse]
}
