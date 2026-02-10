package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RetailerLocationResponse._

case class RetailerLocationResponse (
  retailerLocationId: Option[Long],
name: Option[String],
contact: Option[ContactInfoResponse],
latitude: Option[Double],
longitude: Option[Double],
active: Option[Boolean],
favoriteId: Option[Long],
favorite: Option[Boolean],
responsible: Option[ProfileShortResponse],
manager: Option[ProfileShortResponse],
categories: Option[List[CategoryResponse]],
filters: Option[List[FilterResponse]],
logo: Option[AssetShortResponse],
picture1: Option[AssetShortResponse],
picture2: Option[AssetShortResponse],
billableEntity: Option[BillableEntityResponse],
counts: Option[RetailerCountResponse],
retailer: Option[RetailerShortResponse],
offers: Option[ListResponse],
internalId: Option[String],
detailsHeader: Option[String],
detailsBody: Option[String],
hours: Option[String],
locationToken: Option[String],
building: Option[String],
qrCodeUrl: Option[String],
distance: Option[Double],
googlePlaceId: Option[String],
yelpId: Option[String])

object RetailerLocationResponse {
  import DateTimeCodecs._

  implicit val RetailerLocationResponseCodecJson: CodecJson[RetailerLocationResponse] = CodecJson.derive[RetailerLocationResponse]
  implicit val RetailerLocationResponseDecoder: EntityDecoder[RetailerLocationResponse] = jsonOf[RetailerLocationResponse]
  implicit val RetailerLocationResponseEncoder: EntityEncoder[RetailerLocationResponse] = jsonEncoderOf[RetailerLocationResponse]
}
