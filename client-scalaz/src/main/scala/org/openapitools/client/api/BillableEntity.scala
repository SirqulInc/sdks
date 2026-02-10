package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import BillableEntity._

case class BillableEntity (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
name: Option[String],
contactInfo: Option[ContactInfo],
responsible: Option[Account],
retailers: Option[List[Retailer]],
managers: Option[List[Account]],
categories: Option[List[Category]],
filters: Option[List[Filter]],
media: Option[List[Asset]],
mediaAlbum: Option[Album],
subscription: Option[Subscription],
disbursementIntrospect: Option[ThirdPartyNetwork],
authorizeNetTransactionKey: Option[String],
authorizeNetApiKey: Option[String])

object BillableEntity {
  import DateTimeCodecs._

  implicit val BillableEntityCodecJson: CodecJson[BillableEntity] = CodecJson.derive[BillableEntity]
  implicit val BillableEntityDecoder: EntityDecoder[BillableEntity] = jsonOf[BillableEntity]
  implicit val BillableEntityEncoder: EntityEncoder[BillableEntity] = jsonEncoderOf[BillableEntity]
}
