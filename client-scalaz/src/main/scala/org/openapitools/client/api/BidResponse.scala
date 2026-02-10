package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import BidResponse._

case class BidResponse (
  bidId: Option[Long],
biddableType: Option[String],
biddableId: Option[Long],
amountPerView: Option[Double],
amountPerAction: Option[Double],
currentDailyBudget: Option[Double],
currentBudget: Option[Double],
currentBudgetExpiration: Option[Long],
currentBudgetStart: Option[Long],
budgetAmount: Option[Double],
budgetSchedule: Option[BudgetSchedule])

object BidResponse {
  import DateTimeCodecs._
  sealed trait BudgetSchedule
  case object DAILY extends BudgetSchedule
  case object WEEKLY extends BudgetSchedule
  case object MONTHLY extends BudgetSchedule
  case object YEARLY extends BudgetSchedule

  object BudgetSchedule {
    def toBudgetSchedule(s: String): Option[BudgetSchedule] = s match {
      case "DAILY" => Some(DAILY)
      case "WEEKLY" => Some(WEEKLY)
      case "MONTHLY" => Some(MONTHLY)
      case "YEARLY" => Some(YEARLY)
      case _ => None
    }

    def fromBudgetSchedule(x: BudgetSchedule): String = x match {
      case DAILY => "DAILY"
      case WEEKLY => "WEEKLY"
      case MONTHLY => "MONTHLY"
      case YEARLY => "YEARLY"
    }
  }

  implicit val BudgetScheduleEnumEncoder: EncodeJson[BudgetSchedule] =
    EncodeJson[BudgetSchedule](is => StringEncodeJson(BudgetSchedule.fromBudgetSchedule(is)))

  implicit val BudgetScheduleEnumDecoder: DecodeJson[BudgetSchedule] =
    DecodeJson.optionDecoder[BudgetSchedule](n => n.string.flatMap(jStr => BudgetSchedule.toBudgetSchedule(jStr)), "BudgetSchedule failed to de-serialize")

  implicit val BidResponseCodecJson: CodecJson[BidResponse] = CodecJson.derive[BidResponse]
  implicit val BidResponseDecoder: EntityDecoder[BidResponse] = jsonOf[BidResponse]
  implicit val BidResponseEncoder: EntityEncoder[BidResponse] = jsonEncoderOf[BidResponse]
}
