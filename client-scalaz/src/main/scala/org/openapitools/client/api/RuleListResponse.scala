package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RuleListResponse._

case class RuleListResponse (
  start: Option[Integer],
limit: Option[Integer],
countTotal: Option[Long],
items: Option[List[RuleResponse]],
count: Option[Integer],
hasMoreResults: Option[Boolean])

object RuleListResponse {
  import DateTimeCodecs._

  implicit val RuleListResponseCodecJson: CodecJson[RuleListResponse] = CodecJson.derive[RuleListResponse]
  implicit val RuleListResponseDecoder: EntityDecoder[RuleListResponse] = jsonOf[RuleListResponse]
  implicit val RuleListResponseEncoder: EntityEncoder[RuleListResponse] = jsonEncoderOf[RuleListResponse]
}
