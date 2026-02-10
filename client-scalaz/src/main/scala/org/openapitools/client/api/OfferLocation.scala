package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime

import java.time.OffsetDateTime

import OfferLocation._

case class OfferLocation (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
latitude: Option[Double],
longitude: Option[Double],
locationDescription: Option[String],
offer: Option[Offer],
location: Option[RetailerLocation],
distance: Option[Double],
altitude: Option[Double],
customValue: Option[Double],
locationDetail: Option[String],
audiences: Option[List[Audience]],
qrInviteCode: Option[Asset],
notes: Option[List[Note]],
noteCount: Option[Long],
searchIndexUpdated: Option[OffsetDateTime],
inSearchIndex: Option[Boolean],
favoriteCount: Option[Long],
addedCount: Option[Integer],
display: Option[String],
appKey: Option[String],
devicePower: Option[Double],
powerLoss: Option[Double],
udid: Option[String],
billableId: Option[Long],
subType: Option[String],
contentName: Option[String],
contentAsset: Option[Asset],
owner: Option[Account],
secondaryType: Option[String],
categoryIds: Option[List[Long]],
filterIds: Option[List[Long]])

object OfferLocation {
  import DateTimeCodecs._

  implicit val OfferLocationCodecJson: CodecJson[OfferLocation] = CodecJson.derive[OfferLocation]
  implicit val OfferLocationDecoder: EntityDecoder[OfferLocation] = jsonOf[OfferLocation]
  implicit val OfferLocationEncoder: EntityEncoder[OfferLocation] = jsonEncoderOf[OfferLocation]
}
