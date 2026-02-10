package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import AssetListResponse._

case class AssetListResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
items: Option[List[AssetResponse]],
hasMoreResults: Option[Boolean],
count: Option[Integer],
returning: Option[String])

object AssetListResponse {
  import DateTimeCodecs._

  implicit val AssetListResponseCodecJson: CodecJson[AssetListResponse] = CodecJson.derive[AssetListResponse]
  implicit val AssetListResponseDecoder: EntityDecoder[AssetListResponse] = jsonOf[AssetListResponse]
  implicit val AssetListResponseEncoder: EntityEncoder[AssetListResponse] = jsonEncoderOf[AssetListResponse]
}
