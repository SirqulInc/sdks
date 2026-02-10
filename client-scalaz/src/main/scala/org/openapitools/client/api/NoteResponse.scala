package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import NoteResponse._

case class NoteResponse (
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
returning: Option[String])

object NoteResponse {
  import DateTimeCodecs._

  implicit val NoteResponseCodecJson: CodecJson[NoteResponse] = CodecJson.derive[NoteResponse]
  implicit val NoteResponseDecoder: EntityDecoder[NoteResponse] = jsonOf[NoteResponse]
  implicit val NoteResponseEncoder: EntityEncoder[NoteResponse] = jsonEncoderOf[NoteResponse]
}
