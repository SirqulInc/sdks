package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime

import java.time.OffsetDateTime

import Connection._

case class Connection (
  id: Option[Long],
created: Option[OffsetDateTime],
updated: Option[OffsetDateTime],
deleted: Option[OffsetDateTime],
objectType: Option[String],
legacyId: Option[String],
searchTags: Option[String],
active: Option[Boolean],
valid: Option[Boolean],
account: Option[Account],
connection: Option[Account],
pendingConnection: Option[ConnectedFriend],
friend: Option[Boolean],
friendRequested: Option[Boolean],
friendRequestPending: Option[Boolean],
following: Option[Boolean],
follower: Option[Boolean],
trusted: Option[Boolean],
blocked: Option[Boolean],
friendRequestDate: Option[OffsetDateTime],
friendResponseDate: Option[OffsetDateTime],
display: Option[String],
connectionViewedDate: Option[OffsetDateTime],
connectionType: Option[ConnectionType],
title: Option[String],
pendingConnectionId: Option[Long],
latitude: Option[Double],
longitude: Option[Double])

object Connection {
  import DateTimeCodecs._
  sealed trait ConnectionType
  case object PRIMARY extends ConnectionType
  case object SECONDARY extends ConnectionType
  case object DEPENDENT extends ConnectionType
  case object ACQUAINTANCE extends ConnectionType

  object ConnectionType {
    def toConnectionType(s: String): Option[ConnectionType] = s match {
      case "PRIMARY" => Some(PRIMARY)
      case "SECONDARY" => Some(SECONDARY)
      case "DEPENDENT" => Some(DEPENDENT)
      case "ACQUAINTANCE" => Some(ACQUAINTANCE)
      case _ => None
    }

    def fromConnectionType(x: ConnectionType): String = x match {
      case PRIMARY => "PRIMARY"
      case SECONDARY => "SECONDARY"
      case DEPENDENT => "DEPENDENT"
      case ACQUAINTANCE => "ACQUAINTANCE"
    }
  }

  implicit val ConnectionTypeEnumEncoder: EncodeJson[ConnectionType] =
    EncodeJson[ConnectionType](is => StringEncodeJson(ConnectionType.fromConnectionType(is)))

  implicit val ConnectionTypeEnumDecoder: DecodeJson[ConnectionType] =
    DecodeJson.optionDecoder[ConnectionType](n => n.string.flatMap(jStr => ConnectionType.toConnectionType(jStr)), "ConnectionType failed to de-serialize")

  implicit val ConnectionCodecJson: CodecJson[Connection] = CodecJson.derive[Connection]
  implicit val ConnectionDecoder: EntityDecoder[Connection] = jsonOf[Connection]
  implicit val ConnectionEncoder: EntityEncoder[Connection] = jsonEncoderOf[Connection]
}
