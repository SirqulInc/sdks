package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import LineItem._

case class LineItem (
  description: Option[String],
item: Option[String],
pricePerItem: Option[Integer],
total: Option[Integer],
tax: Option[Integer],
quantity: Option[Integer])

object LineItem {
  import DateTimeCodecs._

  implicit val LineItemCodecJson: CodecJson[LineItem] = CodecJson.derive[LineItem]
  implicit val LineItemDecoder: EntityDecoder[LineItem] = jsonOf[LineItem]
  implicit val LineItemEncoder: EntityEncoder[LineItem] = jsonEncoderOf[LineItem]
}
