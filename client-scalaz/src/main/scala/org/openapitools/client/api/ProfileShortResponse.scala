package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ProfileShortResponse._

case class ProfileShortResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
accountId: Option[Long],
locationDisplay: Option[String],
display: Option[String],
username: Option[String],
profileImage: Option[String],
profileAvatar: Option[AssetShortResponse],
returning: Option[String])

object ProfileShortResponse {
  import DateTimeCodecs._

  implicit val ProfileShortResponseCodecJson: CodecJson[ProfileShortResponse] = CodecJson.derive[ProfileShortResponse]
  implicit val ProfileShortResponseDecoder: EntityDecoder[ProfileShortResponse] = jsonOf[ProfileShortResponse]
  implicit val ProfileShortResponseEncoder: EntityEncoder[ProfileShortResponse] = jsonEncoderOf[ProfileShortResponse]
}
