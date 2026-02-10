package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import Verb._

case class Verb (
  tag: Option[String],
body: Option[String],
attributes: Option[Map[String, String]],
children: Option[List[Verb]])

object Verb {
  import DateTimeCodecs._

  implicit val VerbCodecJson: CodecJson[Verb] = CodecJson.derive[Verb]
  implicit val VerbDecoder: EntityDecoder[Verb] = jsonOf[Verb]
  implicit val VerbEncoder: EntityEncoder[Verb] = jsonEncoderOf[Verb]
}
