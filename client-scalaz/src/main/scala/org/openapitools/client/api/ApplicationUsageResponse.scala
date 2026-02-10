package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime

import java.time.OffsetDateTime

import ApplicationUsageResponse._

case class ApplicationUsageResponse (
  billableEntity: Option[BillableEntityResponse],
applicationId: Option[Long],
invoiceDate: Option[OffsetDateTime],
balance: Option[Double],
totalRequests: Option[Long],
totalDataStorage: Option[Long],
totalMediaStorage: Option[Long],
totalNotifications: Option[Long],
maxMissions: Option[Long],
maxVouchers: Option[Long],
maxCoupons: Option[Long],
maxProducts: Option[Long],
maxEvents: Option[Long],
maxMedia: Option[Long],
maxLocations: Option[Long])

object ApplicationUsageResponse {
  import DateTimeCodecs._

  implicit val ApplicationUsageResponseCodecJson: CodecJson[ApplicationUsageResponse] = CodecJson.derive[ApplicationUsageResponse]
  implicit val ApplicationUsageResponseDecoder: EntityDecoder[ApplicationUsageResponse] = jsonOf[ApplicationUsageResponse]
  implicit val ApplicationUsageResponseEncoder: EntityEncoder[ApplicationUsageResponse] = jsonEncoderOf[ApplicationUsageResponse]
}
