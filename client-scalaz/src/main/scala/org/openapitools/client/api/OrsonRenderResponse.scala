package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import OrsonRenderResponse._

case class OrsonRenderResponse (
  id: Option[String],
thirdPartyAccountId: Option[String],
status: Option[String],
statusDescription: Option[String],
completedOn: Option[String],
responseCode: Option[Integer],
responseRaw: Option[String],
video: Option[OrsonVideoResponse])

object OrsonRenderResponse {
  import DateTimeCodecs._

  implicit val OrsonRenderResponseCodecJson: CodecJson[OrsonRenderResponse] = CodecJson.derive[OrsonRenderResponse]
  implicit val OrsonRenderResponseDecoder: EntityDecoder[OrsonRenderResponse] = jsonOf[OrsonRenderResponse]
  implicit val OrsonRenderResponseEncoder: EntityEncoder[OrsonRenderResponse] = jsonEncoderOf[OrsonRenderResponse]
}
