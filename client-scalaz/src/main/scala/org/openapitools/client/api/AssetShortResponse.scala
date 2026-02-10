package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import AssetShortResponse._

case class AssetShortResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
assetId: Option[Long],
fileName: Option[String],
caption: Option[String],
mediaType: Option[String],
thumbnailURL: Option[String],
coverURL: Option[String],
fullURL: Option[String],
assetVersion: Option[String],
versionName: Option[String],
versionCode: Option[Integer],
returning: Option[String])

object AssetShortResponse {
  import DateTimeCodecs._

  implicit val AssetShortResponseCodecJson: CodecJson[AssetShortResponse] = CodecJson.derive[AssetShortResponse]
  implicit val AssetShortResponseDecoder: EntityDecoder[AssetShortResponse] = jsonOf[AssetShortResponse]
  implicit val AssetShortResponseEncoder: EntityEncoder[AssetShortResponse] = jsonEncoderOf[AssetShortResponse]
}
