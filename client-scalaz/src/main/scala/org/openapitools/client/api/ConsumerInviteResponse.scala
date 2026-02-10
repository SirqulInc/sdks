package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ConsumerInviteResponse._

case class ConsumerInviteResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
inviterId: Option[Long],
inviter: Option[AccountShortResponse],
connection: Option[ConnectionResponse],
inviteText: Option[String],
token: Option[String],
albumCoverUrl: Option[String],
albumTitle: Option[String],
appName: Option[String],
welcomeText: Option[String],
application: Option[ApplicationShortResponse],
retailerLocation: Option[RetailerLocationResponse],
offer: Option[OfferShortResponse],
album: Option[AlbumResponse],
returning: Option[String])

object ConsumerInviteResponse {
  import DateTimeCodecs._

  implicit val ConsumerInviteResponseCodecJson: CodecJson[ConsumerInviteResponse] = CodecJson.derive[ConsumerInviteResponse]
  implicit val ConsumerInviteResponseDecoder: EntityDecoder[ConsumerInviteResponse] = jsonOf[ConsumerInviteResponse]
  implicit val ConsumerInviteResponseEncoder: EntityEncoder[ConsumerInviteResponse] = jsonEncoderOf[ConsumerInviteResponse]
}
