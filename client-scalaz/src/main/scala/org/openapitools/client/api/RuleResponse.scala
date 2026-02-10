package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RuleResponse._

case class RuleResponse (
  ruleId: Option[Long],
title: Option[String],
description: Option[String],
ruleTypeId: Option[Long],
ruleTypeTitle: Option[String],
ruleTypeDescription: Option[String],
ruleValueType: Option[String],
ruleValue: Option[String])

object RuleResponse {
  import DateTimeCodecs._

  implicit val RuleResponseCodecJson: CodecJson[RuleResponse] = CodecJson.derive[RuleResponse]
  implicit val RuleResponseDecoder: EntityDecoder[RuleResponse] = jsonOf[RuleResponse]
  implicit val RuleResponseEncoder: EntityEncoder[RuleResponse] = jsonEncoderOf[RuleResponse]
}
