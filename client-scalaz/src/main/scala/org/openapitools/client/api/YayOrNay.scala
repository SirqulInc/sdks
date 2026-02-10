package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import YayOrNay._

case class YayOrNay (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
owner: Option[Account],
yayOrNay: Option[Boolean],
likableObjectType: Option[String],
likableObjectId: Option[Long])

object YayOrNay {
  import DateTimeCodecs._

  implicit val YayOrNayCodecJson: CodecJson[YayOrNay] = CodecJson.derive[YayOrNay]
  implicit val YayOrNayDecoder: EntityDecoder[YayOrNay] = jsonOf[YayOrNay]
  implicit val YayOrNayEncoder: EntityEncoder[YayOrNay] = jsonEncoderOf[YayOrNay]
}
