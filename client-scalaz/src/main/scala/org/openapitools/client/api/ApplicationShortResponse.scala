package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ApplicationShortResponse._

case class ApplicationShortResponse (
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
about: Option[String],
landingPageUrl: Option[String],
landingPageFullUrl: Option[String],
defaultImageFullUrl: Option[String],
activityDescription: Option[String],
platforms: Option[List[PlatformResponse]],
categories: Option[List[CategoryResponse]],
placementCount: Option[Integer],
billable: Option[BillableEntityShortResponse],
hasAds: Option[Boolean],
publicNotifications: Option[Boolean],
urlScheme: Option[String],
global: Option[Boolean],
downloadUrls: Option[String],
localAdsEnabled: Option[Boolean],
trilatSettings: Option[TrilatAppSettings],
returning: Option[String])

object ApplicationShortResponse {
  import DateTimeCodecs._

  implicit val ApplicationShortResponseCodecJson: CodecJson[ApplicationShortResponse] = CodecJson.derive[ApplicationShortResponse]
  implicit val ApplicationShortResponseDecoder: EntityDecoder[ApplicationShortResponse] = jsonOf[ApplicationShortResponse]
  implicit val ApplicationShortResponseEncoder: EntityEncoder[ApplicationShortResponse] = jsonEncoderOf[ApplicationShortResponse]
}
