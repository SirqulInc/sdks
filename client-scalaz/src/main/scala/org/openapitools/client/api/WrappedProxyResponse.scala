package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import WrappedProxyResponse._

case class WrappedProxyResponse (
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
requestEndTime: Option[Long])

object WrappedProxyResponse {
  import DateTimeCodecs._

  implicit val WrappedProxyResponseCodecJson: CodecJson[WrappedProxyResponse] = CodecJson.derive[WrappedProxyResponse]
  implicit val WrappedProxyResponseDecoder: EntityDecoder[WrappedProxyResponse] = jsonOf[WrappedProxyResponse]
  implicit val WrappedProxyResponseEncoder: EntityEncoder[WrappedProxyResponse] = jsonEncoderOf[WrappedProxyResponse]
}
