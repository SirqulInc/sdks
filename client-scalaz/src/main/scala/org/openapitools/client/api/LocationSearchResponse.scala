package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import LocationSearchResponse._

case class LocationSearchResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
count: Option[Long],
locations: Option[List[LocationResponse]],
returning: Option[String])

object LocationSearchResponse {
  import DateTimeCodecs._

  implicit val LocationSearchResponseCodecJson: CodecJson[LocationSearchResponse] = CodecJson.derive[LocationSearchResponse]
  implicit val LocationSearchResponseDecoder: EntityDecoder[LocationSearchResponse] = jsonOf[LocationSearchResponse]
  implicit val LocationSearchResponseEncoder: EntityEncoder[LocationSearchResponse] = jsonEncoderOf[LocationSearchResponse]
}
