package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import JsonElement._

case class JsonElement (
  asInt: Option[Integer],
asJsonObject: Option[JsonObject],
jsonNull: Option[Boolean],
asString: Option[String],
asBoolean: Option[Boolean],
jsonArray: Option[Boolean],
jsonObject: Option[Boolean],
jsonPrimitive: Option[Boolean],
asJsonArray: Option[JsonArray],
asJsonPrimitive: Option[JsonPrimitive],
asJsonNull: Option[JsonNull],
asNumber: Option[Any],
asDouble: Option[Double],
asFloat: Option[Float],
asLong: Option[Long],
asByte: Option[ByteArray],
asCharacter: Option[String],
asBigDecimal: Option[BigDecimal],
asBigInteger: Option[Integer],
asShort: Option[Integer])

object JsonElement {
  import DateTimeCodecs._

  implicit val JsonElementCodecJson: CodecJson[JsonElement] = CodecJson.derive[JsonElement]
  implicit val JsonElementDecoder: EntityDecoder[JsonElement] = jsonOf[JsonElement]
  implicit val JsonElementEncoder: EntityEncoder[JsonElement] = jsonEncoderOf[JsonElement]
}
