package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import QuestionResponse._

case class QuestionResponse (
  id: Option[Long],
question: Option[String],
image: Option[AssetShortResponse],
videoURL: Option[String],
active: Option[Boolean],
answers: Option[List[AnswerResponse]],
scores: Option[ScoreListResponse],
tickets: Option[TicketListResponse],
owner: Option[AccountShortResponse],
icon: Option[AssetShortResponse],
authorOverride: Option[String],
updatedDate: Option[Long],
startDate: Option[Long],
endDate: Option[Long],
createdDate: Option[Long],
tags: Option[String],
allocateTickets: Option[Boolean],
ticketType: Option[String],
ticketCount: Option[Long],
points: Option[Long])

object QuestionResponse {
  import DateTimeCodecs._

  implicit val QuestionResponseCodecJson: CodecJson[QuestionResponse] = CodecJson.derive[QuestionResponse]
  implicit val QuestionResponseDecoder: EntityDecoder[QuestionResponse] = jsonOf[QuestionResponse]
  implicit val QuestionResponseEncoder: EntityEncoder[QuestionResponse] = jsonEncoderOf[QuestionResponse]
}
