package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ApplicationSettingsResponse._

case class ApplicationSettingsResponse (
  application: Option[ApplicationMiniResponse],
termsAcceptedDate: Option[Long],
updated: Option[Long],
created: Option[Long])

object ApplicationSettingsResponse {
  import DateTimeCodecs._

  implicit val ApplicationSettingsResponseCodecJson: CodecJson[ApplicationSettingsResponse] = CodecJson.derive[ApplicationSettingsResponse]
  implicit val ApplicationSettingsResponseDecoder: EntityDecoder[ApplicationSettingsResponse] = jsonOf[ApplicationSettingsResponse]
  implicit val ApplicationSettingsResponseEncoder: EntityEncoder[ApplicationSettingsResponse] = jsonEncoderOf[ApplicationSettingsResponse]
}
