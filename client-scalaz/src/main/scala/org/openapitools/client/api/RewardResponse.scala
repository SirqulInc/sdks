package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RewardResponse._

case class RewardResponse (
  offerId: Option[Long],
title: Option[String],
subTitle: Option[String],
details: Option[String],
artwork: Option[AssetShortResponse],
finePrint: Option[String],
redemptionCode: Option[String],
redemptionStatus: Option[Integer],
transactionId: Option[Long],
estimatedValue: Option[Double])

object RewardResponse {
  import DateTimeCodecs._

  implicit val RewardResponseCodecJson: CodecJson[RewardResponse] = CodecJson.derive[RewardResponse]
  implicit val RewardResponseDecoder: EntityDecoder[RewardResponse] = jsonOf[RewardResponse]
  implicit val RewardResponseEncoder: EntityEncoder[RewardResponse] = jsonEncoderOf[RewardResponse]
}
