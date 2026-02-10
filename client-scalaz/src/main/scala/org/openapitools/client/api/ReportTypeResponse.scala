package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ReportTypeResponse._

case class ReportTypeResponse (
  `type`: Option[String],
javaType: Option[String],
label: Option[String],
number: Option[Boolean],
majorAxis: Option[Boolean])

object ReportTypeResponse {
  import DateTimeCodecs._

  implicit val ReportTypeResponseCodecJson: CodecJson[ReportTypeResponse] = CodecJson.derive[ReportTypeResponse]
  implicit val ReportTypeResponseDecoder: EntityDecoder[ReportTypeResponse] = jsonOf[ReportTypeResponse]
  implicit val ReportTypeResponseEncoder: EntityEncoder[ReportTypeResponse] = jsonEncoderOf[ReportTypeResponse]
}
