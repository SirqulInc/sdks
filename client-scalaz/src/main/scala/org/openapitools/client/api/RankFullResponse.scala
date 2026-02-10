package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RankFullResponse._

case class RankFullResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
rankings: Option[List[RankListResponse]],
returning: Option[String])

object RankFullResponse {
  import DateTimeCodecs._

  implicit val RankFullResponseCodecJson: CodecJson[RankFullResponse] = CodecJson.derive[RankFullResponse]
  implicit val RankFullResponseDecoder: EntityDecoder[RankFullResponse] = jsonOf[RankFullResponse]
  implicit val RankFullResponseEncoder: EntityEncoder[RankFullResponse] = jsonEncoderOf[RankFullResponse]
}
