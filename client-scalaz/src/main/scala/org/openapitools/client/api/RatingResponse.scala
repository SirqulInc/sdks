package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RatingResponse._

case class RatingResponse (
  ratingId: Option[Long],
ratingValue: Option[Integer],
latitude: Option[Double],
longitude: Option[Double],
locationDescription: Option[String],
category: Option[CategoryResponse],
owner: Option[AccountShortResponse])

object RatingResponse {
  import DateTimeCodecs._

  implicit val RatingResponseCodecJson: CodecJson[RatingResponse] = CodecJson.derive[RatingResponse]
  implicit val RatingResponseDecoder: EntityDecoder[RatingResponse] = jsonOf[RatingResponse]
  implicit val RatingResponseEncoder: EntityEncoder[RatingResponse] = jsonEncoderOf[RatingResponse]
}
