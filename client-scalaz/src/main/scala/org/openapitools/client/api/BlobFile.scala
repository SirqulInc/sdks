package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import BlobFile._

case class BlobFile (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
owner: Option[Account],
application: Option[Application],
folderUri: Option[String],
fileName: Option[String],
file: Option[List[ByteArray]])

object BlobFile {
  import DateTimeCodecs._

  implicit val BlobFileCodecJson: CodecJson[BlobFile] = CodecJson.derive[BlobFile]
  implicit val BlobFileDecoder: EntityDecoder[BlobFile] = jsonOf[BlobFile]
  implicit val BlobFileEncoder: EntityEncoder[BlobFile] = jsonEncoderOf[BlobFile]
}
