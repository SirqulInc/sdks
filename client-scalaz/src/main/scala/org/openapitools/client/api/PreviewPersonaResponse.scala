package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import PreviewPersonaResponse._

case class PreviewPersonaResponse (
  personaId: Option[Long],
title: Option[String],
previewAccounts: Option[List[AccountMiniResponse]],
active: Option[Boolean],
date: Option[Long],
age: Option[Integer],
gender: Option[String],
gameExperienceLevel: Option[String],
latitude: Option[Double],
longitude: Option[Double])

object PreviewPersonaResponse {
  import DateTimeCodecs._

  implicit val PreviewPersonaResponseCodecJson: CodecJson[PreviewPersonaResponse] = CodecJson.derive[PreviewPersonaResponse]
  implicit val PreviewPersonaResponseDecoder: EntityDecoder[PreviewPersonaResponse] = jsonOf[PreviewPersonaResponse]
  implicit val PreviewPersonaResponseEncoder: EntityEncoder[PreviewPersonaResponse] = jsonEncoderOf[PreviewPersonaResponse]
}
