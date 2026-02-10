package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime

import java.time.OffsetDateTime

import Region._

case class Region (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
latitude: Option[Double],
longitude: Option[Double],
locationDescription: Option[String],
owner: Option[Account],
shortName: Option[String],
fullName: Option[String],
bounds: Option[GeoBox],
start: Option[OffsetDateTime],
end: Option[OffsetDateTime],
polygon: Option[String],
metaData: Option[String],
children: Option[Set[Region]],
parents: Option[Set[Region]],
postalCodes: Option[Set[PostalCode]],
regionClass: Option[RegionClass],
root: Option[Boolean],
webActive: Option[Boolean],
adminActive: Option[Boolean],
visibility: Option[Visibility],
categories: Option[List[Category]],
filters: Option[List[Filter]],
truncatedLatitude: Option[Double],
truncatedLongitude: Option[Double],
versionCode: Option[Integer],
display: Option[String],
contentName: Option[String])

object Region {
  import DateTimeCodecs._
  sealed trait RegionClass
  case object NATIONAL extends RegionClass
  case object STATE extends RegionClass
  case object COUNTY extends RegionClass
  case object METROAREA extends RegionClass
  case object CITY extends RegionClass
  case object NEIGHBORHOOD extends RegionClass
  case object TERRITORY extends RegionClass
  case object CUSTOM extends RegionClass
  case object ZONE extends RegionClass

  object RegionClass {
    def toRegionClass(s: String): Option[RegionClass] = s match {
      case "NATIONAL" => Some(NATIONAL)
      case "STATE" => Some(STATE)
      case "COUNTY" => Some(COUNTY)
      case "METROAREA" => Some(METROAREA)
      case "CITY" => Some(CITY)
      case "NEIGHBORHOOD" => Some(NEIGHBORHOOD)
      case "TERRITORY" => Some(TERRITORY)
      case "CUSTOM" => Some(CUSTOM)
      case "ZONE" => Some(ZONE)
      case _ => None
    }

    def fromRegionClass(x: RegionClass): String = x match {
      case NATIONAL => "NATIONAL"
      case STATE => "STATE"
      case COUNTY => "COUNTY"
      case METROAREA => "METROAREA"
      case CITY => "CITY"
      case NEIGHBORHOOD => "NEIGHBORHOOD"
      case TERRITORY => "TERRITORY"
      case CUSTOM => "CUSTOM"
      case ZONE => "ZONE"
    }
  }

  implicit val RegionClassEnumEncoder: EncodeJson[RegionClass] =
    EncodeJson[RegionClass](is => StringEncodeJson(RegionClass.fromRegionClass(is)))

  implicit val RegionClassEnumDecoder: DecodeJson[RegionClass] =
    DecodeJson.optionDecoder[RegionClass](n => n.string.flatMap(jStr => RegionClass.toRegionClass(jStr)), "RegionClass failed to de-serialize")
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

  implicit val RegionCodecJson: CodecJson[Region] = CodecJson.derive[Region]
  implicit val RegionDecoder: EntityDecoder[Region] = jsonOf[Region]
  implicit val RegionEncoder: EntityEncoder[Region] = jsonEncoderOf[Region]
}
