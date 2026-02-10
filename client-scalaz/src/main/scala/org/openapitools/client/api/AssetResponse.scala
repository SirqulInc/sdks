package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import AssetResponse._

case class AssetResponse (
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
display: Option[String],
locationDescription: Option[String],
uploader: Option[AccountShortResponse],
likesCount: Option[Long],
commentsCount: Option[Integer],
latitude: Option[Double],
longitude: Option[Double],
attachedMediaType: Option[String],
attachedAssetURL: Option[String],
created: Option[Long],
updated: Option[Long],
searchTags: Option[String],
metaData: Option[String],
returning: Option[String])

object AssetResponse {
  import DateTimeCodecs._

  implicit val AssetResponseCodecJson: CodecJson[AssetResponse] = CodecJson.derive[AssetResponse]
  implicit val AssetResponseDecoder: EntityDecoder[AssetResponse] = jsonOf[AssetResponse]
  implicit val AssetResponseEncoder: EntityEncoder[AssetResponse] = jsonEncoderOf[AssetResponse]
}
