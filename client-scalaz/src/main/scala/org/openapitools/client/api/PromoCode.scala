package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import PromoCode._

case class PromoCode (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
code: Option[String],
name: Option[String],
days: Option[Integer])

object PromoCode {
  import DateTimeCodecs._

  implicit val PromoCodeCodecJson: CodecJson[PromoCode] = CodecJson.derive[PromoCode]
  implicit val PromoCodeDecoder: EntityDecoder[PromoCode] = jsonOf[PromoCode]
  implicit val PromoCodeEncoder: EntityEncoder[PromoCode] = jsonEncoderOf[PromoCode]
}
