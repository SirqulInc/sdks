package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import WordzWordResponse._

case class WordzWordResponse (
  id: Option[Long],
word: Option[String],
definition: Option[String],
scores: Option[ScoreListResponse],
icon: Option[AssetShortResponse],
image: Option[AssetShortResponse],
authorOverride: Option[String],
updatedDate: Option[Long],
startDate: Option[Long],
endDate: Option[Long],
createdDate: Option[Long],
active: Option[Boolean],
allocateTickets: Option[Boolean],
ticketType: Option[String],
ticketCount: Option[Long],
points: Option[Long])

object WordzWordResponse {
  import DateTimeCodecs._

  implicit val WordzWordResponseCodecJson: CodecJson[WordzWordResponse] = CodecJson.derive[WordzWordResponse]
  implicit val WordzWordResponseDecoder: EntityDecoder[WordzWordResponse] = jsonOf[WordzWordResponse]
  implicit val WordzWordResponseEncoder: EntityEncoder[WordzWordResponse] = jsonEncoderOf[WordzWordResponse]
}
