package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ApplicationConfigResponse._

case class ApplicationConfigResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
configId: Option[Long],
created: Option[Long],
updated: Option[Long],
configVersion: Option[String],
configJson: Option[String],
configJsonURL: Option[String],
assetId: Option[Long],
returning: Option[String])

object ApplicationConfigResponse {
  import DateTimeCodecs._

  implicit val ApplicationConfigResponseCodecJson: CodecJson[ApplicationConfigResponse] = CodecJson.derive[ApplicationConfigResponse]
  implicit val ApplicationConfigResponseDecoder: EntityDecoder[ApplicationConfigResponse] = jsonOf[ApplicationConfigResponse]
  implicit val ApplicationConfigResponseEncoder: EntityEncoder[ApplicationConfigResponse] = jsonEncoderOf[ApplicationConfigResponse]
}
