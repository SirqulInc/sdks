package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import GeocodeLatLngResponse._

case class GeocodeLatLngResponse (
  lat: Option[Double],
lng: Option[Double])

object GeocodeLatLngResponse {
  import DateTimeCodecs._

  implicit val GeocodeLatLngResponseCodecJson: CodecJson[GeocodeLatLngResponse] = CodecJson.derive[GeocodeLatLngResponse]
  implicit val GeocodeLatLngResponseDecoder: EntityDecoder[GeocodeLatLngResponse] = jsonOf[GeocodeLatLngResponse]
  implicit val GeocodeLatLngResponseEncoder: EntityEncoder[GeocodeLatLngResponse] = jsonEncoderOf[GeocodeLatLngResponse]
}
