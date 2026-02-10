package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ApplicationResponse._

case class ApplicationResponse (
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
appType: Option[String],
appName: Option[String],
bundleId: Option[String],
scoringType: Option[ScoringType],
hintCost: Option[Integer],
maxScore: Option[Integer],
ticketsPerPoint: Option[Float],
hasGameData: Option[Boolean],
globalTickets: Option[Boolean],
eulaVersion: Option[String],
eulaDateUpdated: Option[Long],
modules: Option[String],
billableEntityName: Option[String],
showInActivities: Option[Boolean],
cssClass: Option[String],
inviteWelcomeText: Option[String],
invitePageUrl: Option[String],
apnsCertificateFileName: Option[String],
facebookAppId: Option[String],
facebookAppSecret: Option[String],
appToken: Option[String],
googleApiKey: Option[String],
appRestKey: Option[String],
publicContentApproval: Option[Boolean],
productionMode: Option[Boolean],
minimumSessionLength: Option[Integer],
sessionGapLength: Option[Integer],
sqootApiKey: Option[String],
amqpEnabled: Option[Boolean],
authorizedCount: Option[Integer],
authorizedServers: Option[String],
returning: Option[String])

object ApplicationResponse {
  import DateTimeCodecs._
  sealed trait ScoringType
  case object GAMELEVEL extends ScoringType
  case object GAMEOBJECT extends ScoringType

  object ScoringType {
    def toScoringType(s: String): Option[ScoringType] = s match {
      case "GAMELEVEL" => Some(GAMELEVEL)
      case "GAMEOBJECT" => Some(GAMEOBJECT)
      case _ => None
    }

    def fromScoringType(x: ScoringType): String = x match {
      case GAMELEVEL => "GAMELEVEL"
      case GAMEOBJECT => "GAMEOBJECT"
    }
  }

  implicit val ScoringTypeEnumEncoder: EncodeJson[ScoringType] =
    EncodeJson[ScoringType](is => StringEncodeJson(ScoringType.fromScoringType(is)))

  implicit val ScoringTypeEnumDecoder: DecodeJson[ScoringType] =
    DecodeJson.optionDecoder[ScoringType](n => n.string.flatMap(jStr => ScoringType.toScoringType(jStr)), "ScoringType failed to de-serialize")

  implicit val ApplicationResponseCodecJson: CodecJson[ApplicationResponse] = CodecJson.derive[ApplicationResponse]
  implicit val ApplicationResponseDecoder: EntityDecoder[ApplicationResponse] = jsonOf[ApplicationResponse]
  implicit val ApplicationResponseEncoder: EntityEncoder[ApplicationResponse] = jsonEncoderOf[ApplicationResponse]
}
