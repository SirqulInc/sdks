package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import PredictedLocationResponse._

case class PredictedLocationResponse (
  ownerId: Option[Long],
onDate: Option[String],
onDateMilli: Option[Long],
hour: Option[Integer],
latitude: Option[Double],
longitude: Option[Double],
distance: Option[Double],
matches: Option[Long],
averageDuration: Option[Double],
weightedScore: Option[Double])

object PredictedLocationResponse {
  import DateTimeCodecs._

  implicit val PredictedLocationResponseCodecJson: CodecJson[PredictedLocationResponse] = CodecJson.derive[PredictedLocationResponse]
  implicit val PredictedLocationResponseDecoder: EntityDecoder[PredictedLocationResponse] = jsonOf[PredictedLocationResponse]
  implicit val PredictedLocationResponseEncoder: EntityEncoder[PredictedLocationResponse] = jsonEncoderOf[PredictedLocationResponse]
}
