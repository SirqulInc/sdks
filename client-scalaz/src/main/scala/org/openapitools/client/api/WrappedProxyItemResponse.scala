package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import WrappedProxyItemResponse._

case class WrappedProxyItemResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
returning: Option[String],
`type`: Option[String],
responseCode: Option[Integer],
responseRaw: Option[String],
requestDuration: Option[Long],
requestEndTime: Option[Long],
item: Option[ImageGenerationResponse])

object WrappedProxyItemResponse {
  import DateTimeCodecs._

  implicit val WrappedProxyItemResponseCodecJson: CodecJson[WrappedProxyItemResponse] = CodecJson.derive[WrappedProxyItemResponse]
  implicit val WrappedProxyItemResponseDecoder: EntityDecoder[WrappedProxyItemResponse] = jsonOf[WrappedProxyItemResponse]
  implicit val WrappedProxyItemResponseEncoder: EntityEncoder[WrappedProxyItemResponse] = jsonEncoderOf[WrappedProxyItemResponse]
}
