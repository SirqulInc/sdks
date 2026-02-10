package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import TicketOfferResponse._

case class TicketOfferResponse (
  id: Option[Long],
title: Option[String],
description: Option[String],
imageURL: Option[String],
retailer: Option[String])

object TicketOfferResponse {
  import DateTimeCodecs._

  implicit val TicketOfferResponseCodecJson: CodecJson[TicketOfferResponse] = CodecJson.derive[TicketOfferResponse]
  implicit val TicketOfferResponseDecoder: EntityDecoder[TicketOfferResponse] = jsonOf[TicketOfferResponse]
  implicit val TicketOfferResponseEncoder: EntityEncoder[TicketOfferResponse] = jsonEncoderOf[TicketOfferResponse]
}
