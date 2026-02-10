package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ProfileResponse._

case class ProfileResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
loginAccountId: Option[Long],
validated: Option[Boolean],
appInfo: Option[AppInfoResponse],
canViewAppInfo: Option[Boolean],
canViewFriendInfo: Option[Boolean],
canViewProfileInfo: Option[Boolean],
flagCount: Option[Long],
friendInfo: Option[ConnectionInfoResponse],
isBlocked: Option[Boolean],
isProfileOwner: Option[Boolean],
metFlagThreshold: Option[Boolean],
profileInfo: Option[ProfileInfoResponse],
trusted: Option[Boolean],
following: Option[Boolean],
friendRequested: Option[Boolean],
friendRequestPending: Option[Boolean],
blocked: Option[Boolean],
flagged: Option[Boolean],
profileOwner: Option[Boolean],
friend: Option[Boolean],
returning: Option[String])

object ProfileResponse {
  import DateTimeCodecs._

  implicit val ProfileResponseCodecJson: CodecJson[ProfileResponse] = CodecJson.derive[ProfileResponse]
  implicit val ProfileResponseDecoder: EntityDecoder[ProfileResponse] = jsonOf[ProfileResponse]
  implicit val ProfileResponseEncoder: EntityEncoder[ProfileResponse] = jsonEncoderOf[ProfileResponse]
}
