package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import Chronology._

case class Chronology (
  zone: Option[DateTimeZone])

object Chronology {
  import DateTimeCodecs._

  implicit val ChronologyCodecJson: CodecJson[Chronology] = CodecJson.derive[Chronology]
  implicit val ChronologyDecoder: EntityDecoder[Chronology] = jsonOf[Chronology]
  implicit val ChronologyEncoder: EntityEncoder[Chronology] = jsonEncoderOf[Chronology]
}
