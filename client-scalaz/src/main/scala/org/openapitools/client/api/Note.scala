package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import Note._

case class Note (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
latitude: Option[Double],
longitude: Option[Double],
locationDescription: Option[String],
owner: Option[Account],
notableType: Option[String],
notableId: Option[Long],
noteTag: Option[String],
notes: Option[List[Note]],
likes: Option[List[YayOrNay]],
assets: Option[List[Asset]],
noteDescription: Option[String],
likeCount: Option[Long],
dislikeCount: Option[Long],
noteCount: Option[Long],
flags: Option[List[Flag]],
flagCount: Option[Long],
flagThreshold: Option[FlagThreshold],
contentName: Option[String],
defaultThreshold: Option[Long])

object Note {
  import DateTimeCodecs._

  implicit val NoteCodecJson: CodecJson[Note] = CodecJson.derive[Note]
  implicit val NoteDecoder: EntityDecoder[Note] = jsonOf[Note]
  implicit val NoteEncoder: EntityEncoder[Note] = jsonEncoderOf[Note]
}
