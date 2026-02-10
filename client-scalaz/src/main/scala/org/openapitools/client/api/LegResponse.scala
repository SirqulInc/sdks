package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import LegResponse._

case class LegResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
appKey: Option[String],
distance: Option[Double],
duration: Option[Long],
startLatitude: Option[Double],
startLongitude: Option[Double],
startAltitude: Option[Double],
startDate: Option[Long],
endLatitude: Option[Double],
endLongitude: Option[Double],
endAltitude: Option[Double],
endDate: Option[Long],
created: Option[Long],
tags: Option[String],
deviceId: Option[String],
accountId: Option[Long],
deviceSignature: Option[String],
parentAccountId: Option[Long],
steps: Option[List[StepResponse]],
`type`: Option[String],
returning: Option[String])

object LegResponse {
  import DateTimeCodecs._

  implicit val LegResponseCodecJson: CodecJson[LegResponse] = CodecJson.derive[LegResponse]
  implicit val LegResponseDecoder: EntityDecoder[LegResponse] = jsonOf[LegResponse]
  implicit val LegResponseEncoder: EntityEncoder[LegResponse] = jsonEncoderOf[LegResponse]
}
