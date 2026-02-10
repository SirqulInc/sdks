package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import LocationResponse._

case class LocationResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
id: Option[Long],
getDistanceMiles: Option[String],
zip: Option[String],
name: Option[String],
latitude: Option[String],
longitude: Option[String],
getSource: Option[String],
`type`: Option[String],
returning: Option[String])

object LocationResponse {
  import DateTimeCodecs._

  implicit val LocationResponseCodecJson: CodecJson[LocationResponse] = CodecJson.derive[LocationResponse]
  implicit val LocationResponseDecoder: EntityDecoder[LocationResponse] = jsonOf[LocationResponse]
  implicit val LocationResponseEncoder: EntityEncoder[LocationResponse] = jsonEncoderOf[LocationResponse]
}
