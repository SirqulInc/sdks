package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ConnectionResponse._

case class ConnectionResponse (
  connectionId: Option[Long],
connectionAccountId: Option[String],
connectionPendingId: Option[String],
display: Option[String],
locationDisplay: Option[String],
connectionViewedDate: Option[Long],
profileImage: Option[String],
title: Option[String],
connectionAccountType: Option[String],
trusted: Option[Boolean],
following: Option[Boolean],
friendRequested: Option[Boolean],
friendRequestPending: Option[Boolean],
blocked: Option[Boolean],
friend: Option[Boolean])

object ConnectionResponse {
  import DateTimeCodecs._

  implicit val ConnectionResponseCodecJson: CodecJson[ConnectionResponse] = CodecJson.derive[ConnectionResponse]
  implicit val ConnectionResponseDecoder: EntityDecoder[ConnectionResponse] = jsonOf[ConnectionResponse]
  implicit val ConnectionResponseEncoder: EntityEncoder[ConnectionResponse] = jsonEncoderOf[ConnectionResponse]
}
