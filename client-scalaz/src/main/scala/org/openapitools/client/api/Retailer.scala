package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import Retailer._

case class Retailer (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
latitude: Option[Double],
longitude: Option[Double],
locationDescription: Option[String],
name: Option[String],
responsible: Option[Account],
manager: Option[Account],
detailsHeader: Option[String],
detailsBody: Option[String],
detailsLineLeft1: Option[String],
detailsLineLeft2: Option[String],
detailsLineRight1: Option[String],
metaDescription: Option[String],
directions: Option[String],
hours: Option[String],
homePhone: Option[String],
cellPhone: Option[String],
cellCarrier: Option[CellCarrier],
businessPhone: Option[String],
businessPhoneExt: Option[String],
faxNumber: Option[String],
timeZone: Option[String],
utcOffset: Option[String],
code501c3: Option[String],
emailAddress: Option[String],
address: Option[Address],
web: Option[String],
featured: Option[Boolean],
listed: Option[Boolean],
categories: Option[List[Category]],
territory: Option[Territory],
locations: Option[List[RetailerLocation]],
yipitId: Option[Long],
facebookUrl: Option[String],
twitterUrl: Option[String],
visibility: Option[Visibility],
notes: Option[List[Note]],
noteCount: Option[Long],
appKey: Option[String],
categoryTree: Option[String],
filterTree: Option[String],
billableId: Option[Long],
subType: Option[String],
contentName: Option[String],
owner: Option[Account])

object Retailer {
  import DateTimeCodecs._
  sealed trait Visibility
  case object PUBLIC extends Visibility
  case object `PRIVATE` extends Visibility
  case object FRIENDS extends Visibility

  object Visibility {
    def toVisibility(s: String): Option[Visibility] = s match {
      case "PUBLIC" => Some(PUBLIC)
      case "`PRIVATE`" => Some(`PRIVATE`)
      case "FRIENDS" => Some(FRIENDS)
      case _ => None
    }

    def fromVisibility(x: Visibility): String = x match {
      case PUBLIC => "PUBLIC"
      case `PRIVATE` => "`PRIVATE`"
      case FRIENDS => "FRIENDS"
    }
  }

  implicit val VisibilityEnumEncoder: EncodeJson[Visibility] =
    EncodeJson[Visibility](is => StringEncodeJson(Visibility.fromVisibility(is)))

  implicit val VisibilityEnumDecoder: DecodeJson[Visibility] =
    DecodeJson.optionDecoder[Visibility](n => n.string.flatMap(jStr => Visibility.toVisibility(jStr)), "Visibility failed to de-serialize")

  implicit val RetailerCodecJson: CodecJson[Retailer] = CodecJson.derive[Retailer]
  implicit val RetailerDecoder: EntityDecoder[Retailer] = jsonOf[Retailer]
  implicit val RetailerEncoder: EntityEncoder[Retailer] = jsonEncoderOf[Retailer]
}
