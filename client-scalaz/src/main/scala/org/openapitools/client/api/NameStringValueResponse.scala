package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import NameStringValueResponse._

case class NameStringValueResponse (
  name: Option[String],
valueString: Option[String])

object NameStringValueResponse {
  import DateTimeCodecs._

  implicit val NameStringValueResponseCodecJson: CodecJson[NameStringValueResponse] = CodecJson.derive[NameStringValueResponse]
  implicit val NameStringValueResponseDecoder: EntityDecoder[NameStringValueResponse] = jsonOf[NameStringValueResponse]
  implicit val NameStringValueResponseEncoder: EntityEncoder[NameStringValueResponse] = jsonEncoderOf[NameStringValueResponse]
}
