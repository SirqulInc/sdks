package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import LoadShortResponse._

case class LoadShortResponse (
  id: Option[String],
name: Option[String],
size: Option[Long],
loadingTime: Option[Long],
separatePayloads: Option[Boolean],
pickup: Option[StopResponse],
dropoff: Option[StopResponse])

object LoadShortResponse {
  import DateTimeCodecs._

  implicit val LoadShortResponseCodecJson: CodecJson[LoadShortResponse] = CodecJson.derive[LoadShortResponse]
  implicit val LoadShortResponseDecoder: EntityDecoder[LoadShortResponse] = jsonOf[LoadShortResponse]
  implicit val LoadShortResponseEncoder: EntityEncoder[LoadShortResponse] = jsonEncoderOf[LoadShortResponse]
}
