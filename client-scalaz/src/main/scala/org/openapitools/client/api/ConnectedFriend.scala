package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ConnectedFriend._

case class ConnectedFriend (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
display: Option[String],
avatar: Option[Asset],
avatarURL: Option[String],
platform: Option[String],
platformId: Option[String],
invited: Option[Boolean],
locationDescription: Option[String])

object ConnectedFriend {
  import DateTimeCodecs._

  implicit val ConnectedFriendCodecJson: CodecJson[ConnectedFriend] = CodecJson.derive[ConnectedFriend]
  implicit val ConnectedFriendDecoder: EntityDecoder[ConnectedFriend] = jsonOf[ConnectedFriend]
  implicit val ConnectedFriendEncoder: EntityEncoder[ConnectedFriend] = jsonEncoderOf[ConnectedFriend]
}
