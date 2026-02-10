package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ListResponse._

case class ListResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
items: Option[List[Any]],
count: Option[Integer],
returning: Option[String])

object ListResponse {
  import DateTimeCodecs._

  implicit val ListResponseCodecJson: CodecJson[ListResponse] = CodecJson.derive[ListResponse]
  implicit val ListResponseDecoder: EntityDecoder[ListResponse] = jsonOf[ListResponse]
  implicit val ListResponseEncoder: EntityEncoder[ListResponse] = jsonEncoderOf[ListResponse]
}
