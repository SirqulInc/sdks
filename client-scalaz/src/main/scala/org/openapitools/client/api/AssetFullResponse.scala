package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import AssetFullResponse._

case class AssetFullResponse (
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
comments: Option[List[NoteFullResponse]],
likes: Option[List[LikeResponse]],
hasLiked: Option[Boolean],
hasDisliked: Option[Boolean],
metFlagThreshold: Option[Boolean],
returning: Option[String])

object AssetFullResponse {
  import DateTimeCodecs._

  implicit val AssetFullResponseCodecJson: CodecJson[AssetFullResponse] = CodecJson.derive[AssetFullResponse]
  implicit val AssetFullResponseDecoder: EntityDecoder[AssetFullResponse] = jsonOf[AssetFullResponse]
  implicit val AssetFullResponseEncoder: EntityEncoder[AssetFullResponse] = jsonEncoderOf[AssetFullResponse]
}
