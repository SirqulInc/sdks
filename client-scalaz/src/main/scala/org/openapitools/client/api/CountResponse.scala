package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CountResponse._

case class CountResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
count: Option[Long],
returning: Option[String])

object CountResponse {
  import DateTimeCodecs._

  implicit val CountResponseCodecJson: CodecJson[CountResponse] = CodecJson.derive[CountResponse]
  implicit val CountResponseDecoder: EntityDecoder[CountResponse] = jsonOf[CountResponse]
  implicit val CountResponseEncoder: EntityEncoder[CountResponse] = jsonEncoderOf[CountResponse]
}
