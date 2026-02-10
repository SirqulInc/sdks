package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import LikableResponse._

case class LikableResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
likeCount: Option[Long],
dislikeCount: Option[Long],
returning: Option[String])

object LikableResponse {
  import DateTimeCodecs._

  implicit val LikableResponseCodecJson: CodecJson[LikableResponse] = CodecJson.derive[LikableResponse]
  implicit val LikableResponseDecoder: EntityDecoder[LikableResponse] = jsonOf[LikableResponse]
  implicit val LikableResponseEncoder: EntityEncoder[LikableResponse] = jsonEncoderOf[LikableResponse]
}
