package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import JsonArray._

case class JsonArray (
  asInt: Option[Integer],
asString: Option[String],
asBoolean: Option[Boolean],
asNumber: Option[Any],
asDouble: Option[Double],
asFloat: Option[Float],
asLong: Option[Long],
asByte: Option[ByteArray],
asCharacter: Option[String],
asBigDecimal: Option[BigDecimal],
asBigInteger: Option[Integer],
asShort: Option[Integer],
asJsonObject: Option[JsonObject],
jsonNull: Option[Boolean],
jsonArray: Option[Boolean],
jsonObject: Option[Boolean],
jsonPrimitive: Option[Boolean],
asJsonArray: Option[JsonArray],
asJsonPrimitive: Option[JsonPrimitive],
asJsonNull: Option[JsonNull])

object JsonArray {
  import DateTimeCodecs._

  implicit val JsonArrayCodecJson: CodecJson[JsonArray] = CodecJson.derive[JsonArray]
  implicit val JsonArrayDecoder: EntityDecoder[JsonArray] = jsonOf[JsonArray]
  implicit val JsonArrayEncoder: EntityEncoder[JsonArray] = jsonEncoderOf[JsonArray]
}
