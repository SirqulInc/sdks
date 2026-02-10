package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import PreferredLocationResponse._

case class PreferredLocationResponse (
  ownerId: Option[Long],
onDate: Option[String],
onDateMilli: Option[Long],
hour: Option[Integer],
latitude: Option[Double],
longitude: Option[Double],
distance: Option[Double],
duration: Option[Long],
startStepId: Option[Long],
endStepId: Option[Long])

object PreferredLocationResponse {
  import DateTimeCodecs._

  implicit val PreferredLocationResponseCodecJson: CodecJson[PreferredLocationResponse] = CodecJson.derive[PreferredLocationResponse]
  implicit val PreferredLocationResponseDecoder: EntityDecoder[PreferredLocationResponse] = jsonOf[PreferredLocationResponse]
  implicit val PreferredLocationResponseEncoder: EntityEncoder[PreferredLocationResponse] = jsonEncoderOf[PreferredLocationResponse]
}
