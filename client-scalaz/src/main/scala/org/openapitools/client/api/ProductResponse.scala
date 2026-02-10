package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ProductResponse._

case class ProductResponse (
  brand: Option[String],
productType: Option[String],
condition: Option[String],
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
unit: Option[String],
studio: Option[String],
parentalRating: Option[String],
publishDate: Option[Long],
availabilityDate: Option[Long],
size: Option[SizeGroupResponse])

object ProductResponse {
  import DateTimeCodecs._

  implicit val ProductResponseCodecJson: CodecJson[ProductResponse] = CodecJson.derive[ProductResponse]
  implicit val ProductResponseDecoder: EntityDecoder[ProductResponse] = jsonOf[ProductResponse]
  implicit val ProductResponseEncoder: EntityEncoder[ProductResponse] = jsonEncoderOf[ProductResponse]
}
