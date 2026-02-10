package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import NoteFullResponse._

case class NoteFullResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
noteId: Option[Long],
comment: Option[String],
tags: Option[String],
likesCount: Option[Long],
dislikesCount: Option[Long],
dateCreated: Option[Long],
createdDate: Option[Long],
updatedDate: Option[Long],
owner: Option[AccountShortResponse],
latitude: Option[Double],
longitude: Option[Double],
locationDescription: Option[String],
attachedAssets: Option[List[AssetShortResponse]],
likes: Option[List[LikeResponse]],
hasLiked: Option[Boolean],
hasDisliked: Option[Boolean],
returning: Option[String])

object NoteFullResponse {
  import DateTimeCodecs._

  implicit val NoteFullResponseCodecJson: CodecJson[NoteFullResponse] = CodecJson.derive[NoteFullResponse]
  implicit val NoteFullResponseDecoder: EntityDecoder[NoteFullResponse] = jsonOf[NoteFullResponse]
  implicit val NoteFullResponseEncoder: EntityEncoder[NoteFullResponse] = jsonEncoderOf[NoteFullResponse]
}
