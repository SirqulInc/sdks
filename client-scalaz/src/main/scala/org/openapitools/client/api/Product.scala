package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import Product._

case class Product (
  brand: Option[String],
productType: Option[ProductType],
condition: Option[Condition],
isbn: Option[String],
asin: Option[String],
catalogNumbers: Option[List[String]],
department: Option[String],
features: Option[List[String]],
minimumPrice: Option[Double],
width: Option[Double],
height: Option[Double],
depth: Option[Double],
weight: Option[Double],
unit: Option[Unit],
studio: Option[String],
parentalRating: Option[String],
publishDate: Option[Long],
availabilityDate: Option[Long],
size: Option[SizeGroup])

object Product {
  import DateTimeCodecs._
  sealed trait ProductType
  case object APPAREL extends ProductType
  case object APPLIANCES extends ProductType
  case object APPS extends ProductType
  case object ARTSCRAFTS extends ProductType
  case object AUTOMOTIVE extends ProductType
  case object BABY extends ProductType
  case object BEAUTY extends ProductType
  case object BOOKS extends ProductType
  case object CLASSICAL extends ProductType
  case object COLLECTIBLES extends ProductType
  case object DVD extends ProductType
  case object ELECTRONICS extends ProductType
  case object GIFTCARDS extends ProductType
  case object GOURMETFOOD extends ProductType
  case object GROCERY extends ProductType
  case object HEALTHPERSONALCARE extends ProductType
  case object HOMEGARDEN extends ProductType
  case object INDUSTRIAL extends ProductType
  case object JEWELRY extends ProductType
  case object KITCHEN extends ProductType
  case object LAWNGARDEN extends ProductType
  case object MAGAZINES extends ProductType
  case object MISCELLANEOUS extends ProductType
  case object MUSICALINSTRUMENTS extends ProductType
  case object OFFICEPRODUCTS extends ProductType
  case object OTHER extends ProductType
  case object OUTDOORLIVING extends ProductType
  case object PCHARDWARE extends ProductType
  case object PETSUPPLIES extends ProductType
  case object SHOES extends ProductType
  case object SOFTWARE extends ProductType
  case object SPORTINGGOODS extends ProductType
  case object TOOLS extends ProductType
  case object TOYS extends ProductType
  case object VIDEOGAMES extends ProductType
  case object WATCHES extends ProductType
  case object WIRELESS extends ProductType
  case object WIRELESSACCESSORIES extends ProductType

  object ProductType {
    def toProductType(s: String): Option[ProductType] = s match {
      case "APPAREL" => Some(APPAREL)
      case "APPLIANCES" => Some(APPLIANCES)
      case "APPS" => Some(APPS)
      case "ARTSCRAFTS" => Some(ARTSCRAFTS)
      case "AUTOMOTIVE" => Some(AUTOMOTIVE)
      case "BABY" => Some(BABY)
      case "BEAUTY" => Some(BEAUTY)
      case "BOOKS" => Some(BOOKS)
      case "CLASSICAL" => Some(CLASSICAL)
      case "COLLECTIBLES" => Some(COLLECTIBLES)
      case "DVD" => Some(DVD)
      case "ELECTRONICS" => Some(ELECTRONICS)
      case "GIFTCARDS" => Some(GIFTCARDS)
      case "GOURMETFOOD" => Some(GOURMETFOOD)
      case "GROCERY" => Some(GROCERY)
      case "HEALTHPERSONALCARE" => Some(HEALTHPERSONALCARE)
      case "HOMEGARDEN" => Some(HOMEGARDEN)
      case "INDUSTRIAL" => Some(INDUSTRIAL)
      case "JEWELRY" => Some(JEWELRY)
      case "KITCHEN" => Some(KITCHEN)
      case "LAWNGARDEN" => Some(LAWNGARDEN)
      case "MAGAZINES" => Some(MAGAZINES)
      case "MISCELLANEOUS" => Some(MISCELLANEOUS)
      case "MUSICALINSTRUMENTS" => Some(MUSICALINSTRUMENTS)
      case "OFFICEPRODUCTS" => Some(OFFICEPRODUCTS)
      case "OTHER" => Some(OTHER)
      case "OUTDOORLIVING" => Some(OUTDOORLIVING)
      case "PCHARDWARE" => Some(PCHARDWARE)
      case "PETSUPPLIES" => Some(PETSUPPLIES)
      case "SHOES" => Some(SHOES)
      case "SOFTWARE" => Some(SOFTWARE)
      case "SPORTINGGOODS" => Some(SPORTINGGOODS)
      case "TOOLS" => Some(TOOLS)
      case "TOYS" => Some(TOYS)
      case "VIDEOGAMES" => Some(VIDEOGAMES)
      case "WATCHES" => Some(WATCHES)
      case "WIRELESS" => Some(WIRELESS)
      case "WIRELESSACCESSORIES" => Some(WIRELESSACCESSORIES)
      case _ => None
    }

    def fromProductType(x: ProductType): String = x match {
      case APPAREL => "APPAREL"
      case APPLIANCES => "APPLIANCES"
      case APPS => "APPS"
      case ARTSCRAFTS => "ARTSCRAFTS"
      case AUTOMOTIVE => "AUTOMOTIVE"
      case BABY => "BABY"
      case BEAUTY => "BEAUTY"
      case BOOKS => "BOOKS"
      case CLASSICAL => "CLASSICAL"
      case COLLECTIBLES => "COLLECTIBLES"
      case DVD => "DVD"
      case ELECTRONICS => "ELECTRONICS"
      case GIFTCARDS => "GIFTCARDS"
      case GOURMETFOOD => "GOURMETFOOD"
      case GROCERY => "GROCERY"
      case HEALTHPERSONALCARE => "HEALTHPERSONALCARE"
      case HOMEGARDEN => "HOMEGARDEN"
      case INDUSTRIAL => "INDUSTRIAL"
      case JEWELRY => "JEWELRY"
      case KITCHEN => "KITCHEN"
      case LAWNGARDEN => "LAWNGARDEN"
      case MAGAZINES => "MAGAZINES"
      case MISCELLANEOUS => "MISCELLANEOUS"
      case MUSICALINSTRUMENTS => "MUSICALINSTRUMENTS"
      case OFFICEPRODUCTS => "OFFICEPRODUCTS"
      case OTHER => "OTHER"
      case OUTDOORLIVING => "OUTDOORLIVING"
      case PCHARDWARE => "PCHARDWARE"
      case PETSUPPLIES => "PETSUPPLIES"
      case SHOES => "SHOES"
      case SOFTWARE => "SOFTWARE"
      case SPORTINGGOODS => "SPORTINGGOODS"
      case TOOLS => "TOOLS"
      case TOYS => "TOYS"
      case VIDEOGAMES => "VIDEOGAMES"
      case WATCHES => "WATCHES"
      case WIRELESS => "WIRELESS"
      case WIRELESSACCESSORIES => "WIRELESSACCESSORIES"
    }
  }

  implicit val ProductTypeEnumEncoder: EncodeJson[ProductType] =
    EncodeJson[ProductType](is => StringEncodeJson(ProductType.fromProductType(is)))

  implicit val ProductTypeEnumDecoder: DecodeJson[ProductType] =
    DecodeJson.optionDecoder[ProductType](n => n.string.flatMap(jStr => ProductType.toProductType(jStr)), "ProductType failed to de-serialize")
  sealed trait Condition
  case object `NEW` extends Condition
  case object USED extends Condition
  case object REFURBISHED extends Condition
  case object OTHER extends Condition

  object Condition {
    def toCondition(s: String): Option[Condition] = s match {
      case "`NEW`" => Some(`NEW`)
      case "USED" => Some(USED)
      case "REFURBISHED" => Some(REFURBISHED)
      case "OTHER" => Some(OTHER)
      case _ => None
    }

    def fromCondition(x: Condition): String = x match {
      case `NEW` => "`NEW`"
      case USED => "USED"
      case REFURBISHED => "REFURBISHED"
      case OTHER => "OTHER"
    }
  }

  implicit val ConditionEnumEncoder: EncodeJson[Condition] =
    EncodeJson[Condition](is => StringEncodeJson(Condition.fromCondition(is)))

  implicit val ConditionEnumDecoder: DecodeJson[Condition] =
    DecodeJson.optionDecoder[Condition](n => n.string.flatMap(jStr => Condition.toCondition(jStr)), "Condition failed to de-serialize")
  sealed trait Unit
  case object MILIMETER extends Unit
  case object CENTIMETER extends Unit
  case object METER extends Unit
  case object INCH extends Unit
  case object FOOT extends Unit
  case object YARD extends Unit

  object Unit {
    def toUnit(s: String): Option[Unit] = s match {
      case "MILIMETER" => Some(MILIMETER)
      case "CENTIMETER" => Some(CENTIMETER)
      case "METER" => Some(METER)
      case "INCH" => Some(INCH)
      case "FOOT" => Some(FOOT)
      case "YARD" => Some(YARD)
      case _ => None
    }

    def fromUnit(x: Unit): String = x match {
      case MILIMETER => "MILIMETER"
      case CENTIMETER => "CENTIMETER"
      case METER => "METER"
      case INCH => "INCH"
      case FOOT => "FOOT"
      case YARD => "YARD"
    }
  }

  implicit val UnitEnumEncoder: EncodeJson[Unit] =
    EncodeJson[Unit](is => StringEncodeJson(Unit.fromUnit(is)))

  implicit val UnitEnumDecoder: DecodeJson[Unit] =
    DecodeJson.optionDecoder[Unit](n => n.string.flatMap(jStr => Unit.toUnit(jStr)), "Unit failed to de-serialize")

  implicit val ProductCodecJson: CodecJson[Product] = CodecJson.derive[Product]
  implicit val ProductDecoder: EntityDecoder[Product] = jsonOf[Product]
  implicit val ProductEncoder: EntityEncoder[Product] = jsonEncoderOf[Product]
}
