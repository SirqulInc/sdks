package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import JsonPrimitive._

case class JsonPrimitive (
  asInt: Option[Integer],
number: Option[Boolean],
boolean: Option[Boolean],
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
string: Option[Boolean],
asJsonObject: Option[JsonObject],
jsonNull: Option[Boolean],
jsonArray: Option[Boolean],
jsonObject: Option[Boolean],
jsonPrimitive: Option[Boolean],
asJsonArray: Option[JsonArray],
asJsonPrimitive: Option[JsonPrimitive],
asJsonNull: Option[JsonNull])

object JsonPrimitive {
  import DateTimeCodecs._

  implicit val JsonPrimitiveCodecJson: CodecJson[JsonPrimitive] = CodecJson.derive[JsonPrimitive]
  implicit val JsonPrimitiveDecoder: EntityDecoder[JsonPrimitive] = jsonOf[JsonPrimitive]
  implicit val JsonPrimitiveEncoder: EntityEncoder[JsonPrimitive] = jsonEncoderOf[JsonPrimitive]
}
