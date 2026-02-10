package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime

import java.time.OffsetDateTime

import Application._

case class Application (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
title: Option[String],
about: Option[String],
certificateUrl: Option[String],
certificateName: Option[String],
certificate: Option[BlobFile],
certificateLastUpdated: Option[OffsetDateTime],
appDescription: Option[String],
showInActivities: Option[Boolean],
cssClass: Option[String],
inviteWelcomeText: Option[String],
bundleId: Option[String],
appType: Option[String],
scoringType: Option[ScoringType],
appKey: Option[String],
appRestKey: Option[String],
appTokenKey: Option[String],
hintCost: Option[Integer],
eulaDate: Option[OffsetDateTime],
eulaVersion: Option[String],
landingPageUrl: Option[String],
invitePageUrl: Option[String],
downloadUrls: Option[String],
appName: Option[String],
appIcon: Option[Asset],
appLogo: Option[Asset],
billableEntity: Option[BillableEntity],
facebookAppId: Option[String],
facebookAppSecret: Option[String],
twitterAppId: Option[String],
twitterAppSecret: Option[String],
twitterCallbackURL: Option[String],
defaultImage: Option[String],
modules: Option[String],
authorizedServers: Option[String],
authorizedCount: Option[Integer],
activeServers: Option[String],
licensePeriod: Option[OffsetDateTime],
hasGameData: Option[Boolean],
currentBuildVersion: Option[String],
currentApiVersion: Option[String],
globalTickets: Option[Boolean],
ticketsPerPoint: Option[Float],
maxPointsPerScore: Option[Integer],
useAppCache: Option[Boolean],
uniqueUserTag: Option[String],
useMatchingAlgorithm: Option[Boolean],
platforms: Option[List[Platform]],
categories: Option[List[Category]],
placements: Option[List[Placement]],
hasAdvertisements: Option[Boolean],
appleAppId: Option[String],
googleAppId: Option[String],
googleApiKey: Option[String],
googleOAuthClientId: Option[String],
googleOAuthSecret: Option[String],
googleOAuthAccessToken: Option[String],
googleOAuthRefreshToken: Option[String],
baiduApiKey: Option[String],
baiduSecretKey: Option[String],
jpushAppKey: Option[String],
jpushMasterSecret: Option[String],
xgPushSecretKey: Option[String],
publicNotifications: Option[Boolean],
urlScheme: Option[String],
retailer: Option[Retailer],
objectStoreSession: Option[String],
publicContentApproval: Option[Boolean],
productionMode: Option[Boolean],
griplyBaseUrl: Option[String],
minimumSessionLength: Option[Integer],
sessionGapLength: Option[Integer],
processSessionData: Option[Boolean],
localAdsEnabled: Option[Boolean],
includeInReport: Option[Boolean],
sqootApiKey: Option[String],
amqpEnabled: Option[Boolean],
trilatSettings: Option[TrilatAppSettings])

object Application {
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

  implicit val ApplicationCodecJson: CodecJson[Application] = CodecJson.derive[Application]
  implicit val ApplicationDecoder: EntityDecoder[Application] = jsonOf[Application]
  implicit val ApplicationEncoder: EntityEncoder[Application] = jsonEncoderOf[Application]
}
