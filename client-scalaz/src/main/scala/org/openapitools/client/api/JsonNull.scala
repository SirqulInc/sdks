package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import JsonNull._

case class JsonNull (
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

object JsonNull {
  import DateTimeCodecs._

  implicit val JsonNullCodecJson: CodecJson[JsonNull] = CodecJson.derive[JsonNull]
  implicit val JsonNullDecoder: EntityDecoder[JsonNull] = jsonOf[JsonNull]
  implicit val JsonNullEncoder: EntityEncoder[JsonNull] = jsonEncoderOf[JsonNull]
}
