package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import TwiMLResponse._

case class TwiMLResponse (
  tag: Option[String],
body: Option[String],
attributes: Option[Map[String, String]],
children: Option[List[Verb]])

object TwiMLResponse {
  import DateTimeCodecs._

  implicit val TwiMLResponseCodecJson: CodecJson[TwiMLResponse] = CodecJson.derive[TwiMLResponse]
  implicit val TwiMLResponseDecoder: EntityDecoder[TwiMLResponse] = jsonOf[TwiMLResponse]
  implicit val TwiMLResponseEncoder: EntityEncoder[TwiMLResponse] = jsonEncoderOf[TwiMLResponse]
}
