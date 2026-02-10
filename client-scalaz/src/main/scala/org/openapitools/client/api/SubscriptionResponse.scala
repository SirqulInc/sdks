package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SubscriptionResponse._

case class SubscriptionResponse (
  id: Option[Long],
subscriptionPlan: Option[SubscriptionPlanResponse],
promoCode: Option[String],
active: Option[Boolean])

object SubscriptionResponse {
  import DateTimeCodecs._

  implicit val SubscriptionResponseCodecJson: CodecJson[SubscriptionResponse] = CodecJson.derive[SubscriptionResponse]
  implicit val SubscriptionResponseDecoder: EntityDecoder[SubscriptionResponse] = jsonOf[SubscriptionResponse]
  implicit val SubscriptionResponseEncoder: EntityEncoder[SubscriptionResponse] = jsonEncoderOf[SubscriptionResponse]
}
