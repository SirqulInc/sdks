package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ChartData._

case class ChartData (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
identifier: Option[String],
idAttribute: Option[String],
label: Option[String],
maxValue: Option[Long],
totalCount: Option[Long],
items: Option[List[Any]],
aggregatedItems: Option[List[Any]],
caption: Option[String],
showAnchor: Option[String],
anchorAlpha: Option[String],
getxAxisName: Option[String],
getyAxisMinValue: Option[String],
getyAxisName: Option[String],
decimalPrecision: Option[String],
formatNumberScale: Option[String],
numberPrefix: Option[String],
showNames: Option[String],
showValues: Option[String],
showAlternateHGridColor: Option[String],
alternateHGridColor: Option[String],
divLineColor: Option[String],
divLineAlpha: Option[String],
alternateHGridAlpha: Option[String],
rotateNames: Option[String],
returning: Option[String])

object ChartData {
  import DateTimeCodecs._

  implicit val ChartDataCodecJson: CodecJson[ChartData] = CodecJson.derive[ChartData]
  implicit val ChartDataDecoder: EntityDecoder[ChartData] = jsonOf[ChartData]
  implicit val ChartDataEncoder: EntityEncoder[ChartData] = jsonEncoderOf[ChartData]
}
