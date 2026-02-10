package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ConnectionGroupResponse._

case class ConnectionGroupResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
connectionGroupId: Option[Long],
name: Option[String],
groupType: Option[GroupType],
thumbnailURL: Option[String],
subGroups: Option[List[ConnectionGroupResponse]],
description: Option[String],
active: Option[Boolean],
connectionCount: Option[Integer],
connections: Option[List[ConnectionResponse]],
groupPermissions: Option[GroupPermissions],
ownerId: Option[Long],
returning: Option[String])

object ConnectionGroupResponse {
  import DateTimeCodecs._
  sealed trait GroupType
  case object `PRIVATE` extends GroupType
  case object FRIENDS extends GroupType
  case object TRUSTED extends GroupType
  case object BLOCKED extends GroupType
  case object FOLLOWERS extends GroupType
  case object FOLLOWING extends GroupType
  case object PENDING extends GroupType
  case object REQUEST extends GroupType

  object GroupType {
    def toGroupType(s: String): Option[GroupType] = s match {
      case "`PRIVATE`" => Some(`PRIVATE`)
      case "FRIENDS" => Some(FRIENDS)
      case "TRUSTED" => Some(TRUSTED)
      case "BLOCKED" => Some(BLOCKED)
      case "FOLLOWERS" => Some(FOLLOWERS)
      case "FOLLOWING" => Some(FOLLOWING)
      case "PENDING" => Some(PENDING)
      case "REQUEST" => Some(REQUEST)
      case _ => None
    }

    def fromGroupType(x: GroupType): String = x match {
      case `PRIVATE` => "`PRIVATE`"
      case FRIENDS => "FRIENDS"
      case TRUSTED => "TRUSTED"
      case BLOCKED => "BLOCKED"
      case FOLLOWERS => "FOLLOWERS"
      case FOLLOWING => "FOLLOWING"
      case PENDING => "PENDING"
      case REQUEST => "REQUEST"
    }
  }

  implicit val GroupTypeEnumEncoder: EncodeJson[GroupType] =
    EncodeJson[GroupType](is => StringEncodeJson(GroupType.fromGroupType(is)))

  implicit val GroupTypeEnumDecoder: DecodeJson[GroupType] =
    DecodeJson.optionDecoder[GroupType](n => n.string.flatMap(jStr => GroupType.toGroupType(jStr)), "GroupType failed to de-serialize")

  implicit val ConnectionGroupResponseCodecJson: CodecJson[ConnectionGroupResponse] = CodecJson.derive[ConnectionGroupResponse]
  implicit val ConnectionGroupResponseDecoder: EntityDecoder[ConnectionGroupResponse] = jsonOf[ConnectionGroupResponse]
  implicit val ConnectionGroupResponseEncoder: EntityEncoder[ConnectionGroupResponse] = jsonEncoderOf[ConnectionGroupResponse]
}
