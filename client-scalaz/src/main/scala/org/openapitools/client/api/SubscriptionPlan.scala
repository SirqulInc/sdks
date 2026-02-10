package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SubscriptionPlan._

case class SubscriptionPlan (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
name: Option[String],
description: Option[String],
options: Option[List[SubscriptionOption]],
price: Option[Double],
promo: Option[Double],
transactionFee: Option[Double],
role: Option[String],
defaultPlan: Option[Boolean],
visible: Option[Boolean],
image: Option[Asset])

object SubscriptionPlan {
  import DateTimeCodecs._

  implicit val SubscriptionPlanCodecJson: CodecJson[SubscriptionPlan] = CodecJson.derive[SubscriptionPlan]
  implicit val SubscriptionPlanDecoder: EntityDecoder[SubscriptionPlan] = jsonOf[SubscriptionPlan]
  implicit val SubscriptionPlanEncoder: EntityEncoder[SubscriptionPlan] = jsonEncoderOf[SubscriptionPlan]
}
