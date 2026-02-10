package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import AlbumContestListResponse._

case class AlbumContestListResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
items: Option[List[AlbumContestResponse]],
hasMoreResults: Option[Boolean],
count: Option[Integer],
countTotal: Option[Long],
returning: Option[String])

object AlbumContestListResponse {
  import DateTimeCodecs._

  implicit val AlbumContestListResponseCodecJson: CodecJson[AlbumContestListResponse] = CodecJson.derive[AlbumContestListResponse]
  implicit val AlbumContestListResponseDecoder: EntityDecoder[AlbumContestListResponse] = jsonOf[AlbumContestListResponse]
  implicit val AlbumContestListResponseEncoder: EntityEncoder[AlbumContestListResponse] = jsonEncoderOf[AlbumContestListResponse]
}
