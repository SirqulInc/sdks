package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import WeatherResponse._

case class WeatherResponse (
  id: Option[Long],
cloudcover: Option[Integer],
humidity: Option[Integer],
observationTime: Option[Long],
precipMM: Option[Double],
pressure: Option[Integer],
tempC: Option[Integer],
tempF: Option[Integer],
visibility: Option[Integer],
weatherCode: Option[Integer],
weatherDesc: Option[String],
weatherIconUrl: Option[String],
winddir16Point: Option[String],
winddirDegree: Option[Integer],
windspeedKmph: Option[Integer],
windspeedMiles: Option[Integer],
forecasts: Option[List[WeatherForecastResponse]])

object WeatherResponse {
  import DateTimeCodecs._

  implicit val WeatherResponseCodecJson: CodecJson[WeatherResponse] = CodecJson.derive[WeatherResponse]
  implicit val WeatherResponseDecoder: EntityDecoder[WeatherResponse] = jsonOf[WeatherResponse]
  implicit val WeatherResponseEncoder: EntityEncoder[WeatherResponse] = jsonEncoderOf[WeatherResponse]
}
