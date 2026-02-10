package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import Orders._

case class Orders (
  orders: Option[List[ShipmentOrder]])

object Orders {
  import DateTimeCodecs._

  implicit val OrdersCodecJson: CodecJson[Orders] = CodecJson.derive[Orders]
  implicit val OrdersDecoder: EntityDecoder[Orders] = jsonOf[Orders]
  implicit val OrdersEncoder: EntityEncoder[Orders] = jsonEncoderOf[Orders]
}
