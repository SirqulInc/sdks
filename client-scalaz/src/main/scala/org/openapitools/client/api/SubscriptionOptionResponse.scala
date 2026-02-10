package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SubscriptionOptionResponse._

case class SubscriptionOptionResponse (
  id: Option[Long],
name: Option[String],
price: Option[Double],
quantity: Option[Integer],
threshold: Option[Integer],
visible: Option[Boolean],
optionType: Option[String])

object SubscriptionOptionResponse {
  import DateTimeCodecs._

  implicit val SubscriptionOptionResponseCodecJson: CodecJson[SubscriptionOptionResponse] = CodecJson.derive[SubscriptionOptionResponse]
  implicit val SubscriptionOptionResponseDecoder: EntityDecoder[SubscriptionOptionResponse] = jsonOf[SubscriptionOptionResponse]
  implicit val SubscriptionOptionResponseEncoder: EntityEncoder[SubscriptionOptionResponse] = jsonEncoderOf[SubscriptionOptionResponse]
}
