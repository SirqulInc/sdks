package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RankResponse._

case class RankResponse (
  owner: Option[AccountShortResponse],
rank: Option[String],
scoreValue: Option[Long],
timeValue: Option[Long],
countValue: Option[Long],
updated: Option[Long])

object RankResponse {
  import DateTimeCodecs._

  implicit val RankResponseCodecJson: CodecJson[RankResponse] = CodecJson.derive[RankResponse]
  implicit val RankResponseDecoder: EntityDecoder[RankResponse] = jsonOf[RankResponse]
  implicit val RankResponseEncoder: EntityEncoder[RankResponse] = jsonEncoderOf[RankResponse]
}
