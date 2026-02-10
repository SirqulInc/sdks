package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import UserLocationSearchResponse._

case class UserLocationSearchResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
hasMoreResults: Option[Boolean],
count: Option[Integer],
userLocations: Option[List[UserLocationListResponse]],
returning: Option[String])

object UserLocationSearchResponse {
  import DateTimeCodecs._

  implicit val UserLocationSearchResponseCodecJson: CodecJson[UserLocationSearchResponse] = CodecJson.derive[UserLocationSearchResponse]
  implicit val UserLocationSearchResponseDecoder: EntityDecoder[UserLocationSearchResponse] = jsonOf[UserLocationSearchResponse]
  implicit val UserLocationSearchResponseEncoder: EntityEncoder[UserLocationSearchResponse] = jsonEncoderOf[UserLocationSearchResponse]
}
