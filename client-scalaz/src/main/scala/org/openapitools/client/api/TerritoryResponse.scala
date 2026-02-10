package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import TerritoryResponse._

case class TerritoryResponse (
  id: Option[Long],
name: Option[String])

object TerritoryResponse {
  import DateTimeCodecs._

  implicit val TerritoryResponseCodecJson: CodecJson[TerritoryResponse] = CodecJson.derive[TerritoryResponse]
  implicit val TerritoryResponseDecoder: EntityDecoder[TerritoryResponse] = jsonOf[TerritoryResponse]
  implicit val TerritoryResponseEncoder: EntityEncoder[TerritoryResponse] = jsonEncoderOf[TerritoryResponse]
}
