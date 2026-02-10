package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import WeatherForecastResponse._

case class WeatherForecastResponse (
  id: Option[Long],
forecastDate: Option[Long],
precipMM: Option[Double],
tempMaxC: Option[Integer],
tempMaxF: Option[Integer],
tempMinC: Option[Integer],
tempMinF: Option[Integer],
weatherCode: Option[Integer],
weatherDesc: Option[String],
weatherIconUrl: Option[String],
winddir16Point: Option[String],
winddirDegree: Option[Integer],
winddirection: Option[String],
windspeedKmph: Option[Integer],
windspeedMiles: Option[Integer])

object WeatherForecastResponse {
  import DateTimeCodecs._

  implicit val WeatherForecastResponseCodecJson: CodecJson[WeatherForecastResponse] = CodecJson.derive[WeatherForecastResponse]
  implicit val WeatherForecastResponseDecoder: EntityDecoder[WeatherForecastResponse] = jsonOf[WeatherForecastResponse]
  implicit val WeatherForecastResponseEncoder: EntityEncoder[WeatherForecastResponse] = jsonEncoderOf[WeatherForecastResponse]
}
