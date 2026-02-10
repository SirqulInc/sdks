package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import LoadResponse._

case class LoadResponse (
  id: Option[String],
name: Option[String],
size: Option[Long],
loadingTime: Option[Long],
separatePayloads: Option[Boolean],
pickup: Option[StopResponse],
dropoff: Option[StopResponse])

object LoadResponse {
  import DateTimeCodecs._

  implicit val LoadResponseCodecJson: CodecJson[LoadResponse] = CodecJson.derive[LoadResponse]
  implicit val LoadResponseDecoder: EntityDecoder[LoadResponse] = jsonOf[LoadResponse]
  implicit val LoadResponseEncoder: EntityEncoder[LoadResponse] = jsonEncoderOf[LoadResponse]
}
