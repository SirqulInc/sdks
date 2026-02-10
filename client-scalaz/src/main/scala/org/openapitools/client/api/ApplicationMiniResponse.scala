package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ApplicationMiniResponse._

case class ApplicationMiniResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
applicationId: Option[Long],
appKey: Option[String],
title: Option[String],
currentBuildVersion: Option[String],
currentApiVersion: Option[String],
appIcon: Option[AssetShortResponse],
appLogo: Option[AssetShortResponse],
active: Option[Boolean],
returning: Option[String])

object ApplicationMiniResponse {
  import DateTimeCodecs._

  implicit val ApplicationMiniResponseCodecJson: CodecJson[ApplicationMiniResponse] = CodecJson.derive[ApplicationMiniResponse]
  implicit val ApplicationMiniResponseDecoder: EntityDecoder[ApplicationMiniResponse] = jsonOf[ApplicationMiniResponse]
  implicit val ApplicationMiniResponseEncoder: EntityEncoder[ApplicationMiniResponse] = jsonEncoderOf[ApplicationMiniResponse]
}
