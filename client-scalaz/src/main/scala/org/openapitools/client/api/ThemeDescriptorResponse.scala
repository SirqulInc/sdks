package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ThemeDescriptorResponse._

case class ThemeDescriptorResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
themeDescriptorId: Option[Long],
returning: Option[String])

object ThemeDescriptorResponse {
  import DateTimeCodecs._

  implicit val ThemeDescriptorResponseCodecJson: CodecJson[ThemeDescriptorResponse] = CodecJson.derive[ThemeDescriptorResponse]
  implicit val ThemeDescriptorResponseDecoder: EntityDecoder[ThemeDescriptorResponse] = jsonOf[ThemeDescriptorResponse]
  implicit val ThemeDescriptorResponseEncoder: EntityEncoder[ThemeDescriptorResponse] = jsonEncoderOf[ThemeDescriptorResponse]
}
