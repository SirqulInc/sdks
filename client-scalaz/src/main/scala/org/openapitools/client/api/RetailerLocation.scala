package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime

import java.time.OffsetDateTime

import RetailerLocation._

case class RetailerLocation (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
latitude: Option[Double],
longitude: Option[Double],
locationDescription: Option[String],
categories: Option[List[Category]],
filters: Option[List[Filter]],
offerLocations: Option[List[OfferLocation]],
logo: Option[Asset],
picture1: Option[Asset],
picture2: Option[Asset],
qrCode: Option[Asset],
name: Option[String],
locationId: Option[String],
code: Option[String],
retailer: Option[Retailer],
assignments: Option[List[Assignment]],
currentAssignment: Option[Assignment],
profile: Option[RetailerProfile],
regions: Option[List[Region]],
offerPrintKeyPrefix: Option[String],
administrators: Option[List[Account]],
sqootId: Option[Long],
yipitId: Option[Long],
locationToken: Option[String],
building: Option[Building],
notes: Option[List[Note]],
noteCount: Option[Long],
searchIndexUpdated: Option[OffsetDateTime],
inSearchIndex: Option[Boolean],
favoriteCount: Option[Long],
hasRatings: Option[Boolean],
googlePlaceId: Option[String],
yelpId: Option[String],
display: Option[String],
appKey: Option[String],
categoryTree: Option[String],
filterTree: Option[String],
addressDisplay: Option[String],
mapQuery: Option[String],
sortName: Option[String],
fullDisplay: Option[String],
hasOffers: Option[Boolean],
billableId: Option[Long],
subType: Option[String],
contentName: Option[String],
owner: Option[Account],
secondaryType: Option[String],
locationAddress: Option[String],
validOfferLocationIds: Option[List[Long]])

object RetailerLocation {
  import DateTimeCodecs._

  implicit val RetailerLocationCodecJson: CodecJson[RetailerLocation] = CodecJson.derive[RetailerLocation]
  implicit val RetailerLocationDecoder: EntityDecoder[RetailerLocation] = jsonOf[RetailerLocation]
  implicit val RetailerLocationEncoder: EntityEncoder[RetailerLocation] = jsonEncoderOf[RetailerLocation]
}
