package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SubscriptionPlanResponse._

case class SubscriptionPlanResponse (
  id: Option[Long],
name: Option[String],
description: Option[String],
options: Option[List[SubscriptionOptionResponse]],
price: Option[Double],
promo: Option[Double],
transactionFee: Option[Double],
role: Option[String],
defaultPlan: Option[Boolean],
visible: Option[Boolean],
image: Option[AssetShortResponse])

object SubscriptionPlanResponse {
  import DateTimeCodecs._

  implicit val SubscriptionPlanResponseCodecJson: CodecJson[SubscriptionPlanResponse] = CodecJson.derive[SubscriptionPlanResponse]
  implicit val SubscriptionPlanResponseDecoder: EntityDecoder[SubscriptionPlanResponse] = jsonOf[SubscriptionPlanResponse]
  implicit val SubscriptionPlanResponseEncoder: EntityEncoder[SubscriptionPlanResponse] = jsonEncoderOf[SubscriptionPlanResponse]
}
