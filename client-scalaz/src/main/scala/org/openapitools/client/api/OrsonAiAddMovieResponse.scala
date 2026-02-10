package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import OrsonAiAddMovieResponse._

case class OrsonAiAddMovieResponse (
  requestId: Option[String],
responseCode: Option[Integer],
responseRaw: Option[String],
id: Option[String],
hasBeenIndexed: Option[Boolean])

object OrsonAiAddMovieResponse {
  import DateTimeCodecs._

  implicit val OrsonAiAddMovieResponseCodecJson: CodecJson[OrsonAiAddMovieResponse] = CodecJson.derive[OrsonAiAddMovieResponse]
  implicit val OrsonAiAddMovieResponseDecoder: EntityDecoder[OrsonAiAddMovieResponse] = jsonOf[OrsonAiAddMovieResponse]
  implicit val OrsonAiAddMovieResponseEncoder: EntityEncoder[OrsonAiAddMovieResponse] = jsonEncoderOf[OrsonAiAddMovieResponse]
}
