package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ObjectStoreResponse._

case class ObjectStoreResponse (
  jsonObject: Option[JsonObject],
request: Option[List[NameStringValueResponse]])

object ObjectStoreResponse {
  import DateTimeCodecs._

  implicit val ObjectStoreResponseCodecJson: CodecJson[ObjectStoreResponse] = CodecJson.derive[ObjectStoreResponse]
  implicit val ObjectStoreResponseDecoder: EntityDecoder[ObjectStoreResponse] = jsonOf[ObjectStoreResponse]
  implicit val ObjectStoreResponseEncoder: EntityEncoder[ObjectStoreResponse] = jsonEncoderOf[ObjectStoreResponse]
}
